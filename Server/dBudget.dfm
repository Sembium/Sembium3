inherited dmBudget: TdmBudget
  Height = 609
  Width = 788
  object qryBudgetOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bo.BUDGET_ORDER_BRANCH_CODE,'
      '  bo.BUDGET_ORDER_CODE,'
      '  bo.BUDGET_ORDER_CLASS_CODE,'
      ''
      '  bo.TOTAL_PRICE,'
      ''
      '  ( select'
      '      Sum('
      '        Nvl2('
      '          boi.ANNUL_EMPLOYEE_CODE,'
      '          null,'
      '          Nvl2('
      '            boi.CLOSE_EMPLOYEE_CODE,'
      '            null,'
      '            boi.TOTAL_PRICE'
      '          )'
      '        )'
      '      )'
      '    from'
      '      BUDGET_ORDER_ITEMS boi'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '      (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '      (boi.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as PLAN_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Sum(%BOIO_PLAN_TOTAL_PRICE[boio])'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOIO_PLAN_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as ACCOUNT_TOTAL_PRICE,'
      ''
      '  ('
      '    ('
      '      ( select'
      '          Sum('
      '            Nvl2('
      '              boi.ANNUL_EMPLOYEE_CODE,'
      '              null,'
      '              Nvl2('
      '                boi.CLOSE_EMPLOYEE_CODE,'
      '                null,'
      '                boi.TOTAL_PRICE'
      '              )'
      '            )'
      '          )'
      '        from'
      '          BUDGET_ORDER_ITEMS boi'
      '        where'
      
        '          (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '          (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '          (boi.ANNUL_EMPLOYEE_CODE is null)'
      '      ) -'
      '      ( select'
      '          Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '        from'
      '          BOI_ORDERS boio'
      '        where'
      
        '          (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANC' +
        'H_CODE) and'
      '          (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '          (boio.ANNUL_EMPLOYEE_CODE is null)'
      '      ) '
      '    )'
      '    /'
      '    ( select'
      '        Sum('
      '          Nvl2('
      '            boi.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            Nvl2('
      '              boi.CLOSE_EMPLOYEE_CODE,'
      '              null,'
      '              boi.TOTAL_PRICE'
      '            )'
      '          )'
      '        )'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (boi.ANNUL_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as REMAINING_TOTAL_PRICE_PERCENT,'
      ''
      '  ( select'
      '      1 - Sign(Count(*))'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null) and'
      '      ( ( (boio.BOI_ORDER_TYPE_CODE = 1) and'
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      '              (sd.STORNO_EMPLOYEE_CODE is null) and'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDE' +
        'R_OBJECT_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJEC' +
        'T_CODE)'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (boio.BOI_ORDER_TYPE_CODE in (2, 3)) and'
      '          (boio.ACCOUNT_TOTAL_PRICE is not null)'
      '        ) or'
      ''
      '        ( (boio.BOI_ORDER_TYPE_CODE = 4) and'
      '          ( ( ( ( select'
      '                    boi.BUDGET_ORDER_ITEM_TYPE_CODE'
      '                  from'
      '                    BUDGET_ORDER_ITEMS boi'
      '                  where'
      
        '                    (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_' +
        'ORDER_BRANCH_CODE) and'
      
        '                    (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_C' +
        'ODE) and'
      
        '                    (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_OR' +
        'DER_ITEM_CODE)'
      '                ) = 1'
      '              ) and'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.DE' +
        'LIVERY_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = boio.DELIVERY_' +
        'OBJECT_CODE) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                    (sd.IN_OUT = 1)'
      '                )'
      '              )'
      '            ) or'
      '            (boio.ACCOUNT_TOTAL_PRICE is not null)'
      '          )'
      '        )'
      '      )'
      '  ) as CAN_ANNUL,'
      ''
      '  bo.GENERATOR_DEPT_CODE,'
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = bo.GENERATOR_DEPT_CODE)'
      '  ) as GENERATOR_DEPT_NAME,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = bo.GENERATOR_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as GENERATOR_DEPT_IDENTIFIER,'
      ''
      '  bo.GENERATOR_EMPLOYEE_CODE,'
      ''
      '  bo.DEVELOPER_DEPT_CODE,'
      '  ( select'
      '      d.NAME'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = bo.DEVELOPER_DEPT_CODE)'
      '  ) as DEVELOPER_DEPT_NAME,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = bo.DEVELOPER_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEVELOPER_DEPT_IDENTIFIER,'
      ''
      '  bo.BEGIN_DATE,'
      '  bo.END_DATE,'
      '  bo.DESCRIPTION,'
      '  bo.BO_REGULARITY_TYPE_CODE,'
      '  %HAS_DOC_ITEMS[bo] as HAS_DOCUMENTATION,'
      '  bo.DOC_BRANCH_CODE,'
      '  bo.DOC_CODE,'
      '  bo.PRODUCT_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '  ) as PRODUCT_NO,'
      ''
      '  bo.ORG_TASK_PROPOSAL_STATE_CODE,'
      ''
      '  bo.CREATE_EMPLOYEE_CODE,'
      '  bo.CREATE_DATE,'
      '  bo.CREATE_TIME,'
      '  bo.CHANGE_EMPLOYEE_CODE,'
      '  bo.CHANGE_DATE,'
      '  bo.CHANGE_TIME,'
      '  bo.CLOSE_EMPLOYEE_CODE,'
      '  bo.CLOSE_DATE,'
      '  bo.CLOSE_TIME,'
      '  bo.ANNUL_EMPLOYEE_CODE,'
      '  bo.ANNUL_DATE,'
      '  bo.ANNUL_TIME'
      ''
      'from'
      '  BUDGET_ORDERS bo'
      ''
      'where'
      '  (bo.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (bo.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) '
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bo]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'BUDGET_ORDERS_FOR_EDIT'
    AfterProviderStartTransaction = qryBudgetOrderAfterProviderStartTransaction
    Left = 184
    Top = 64
    object qryBudgetOrderBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBudgetOrderBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBudgetOrderGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object qryBudgetOrderGENERATOR_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_EMPLOYEE_CODE'
    end
    object qryBudgetOrderBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBudgetOrderEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBudgetOrderDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object qryBudgetOrderBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object qryBudgetOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBudgetOrderCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBudgetOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBudgetOrderCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBudgetOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBudgetOrderCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryBudgetOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBudgetOrderANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBudgetOrderANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBudgetOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBudgetOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBudgetOrderTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryBudgetOrderREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
    end
    object qryBudgetOrderPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryBudgetOrderDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object qryBudgetOrderACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object qryBudgetOrderBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object qryBudgetOrderCAN_ANNUL: TAbmesFloatField
      FieldName = 'CAN_ANNUL'
      ProviderFlags = []
    end
    object qryBudgetOrderGENERATOR_DEPT_NAME: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBudgetOrderGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryBudgetOrderDEVELOPER_DEPT_NAME: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBudgetOrderDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryBudgetOrderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryBudgetOrderHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
    end
    object qryBudgetOrderPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBudgetOrderPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryBudgetOrderORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
    end
    object qryBudgetOrderBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOIO_PLAN_TOTAL_PRICE'
    end
  end
  object prvBudgetOrder: TDataSetProvider
    DataSet = qryBudgetOrder
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvBudgetOrderUpdateError
    AfterUpdateRecord = prvBudgetOrderAfterUpdateRecord
    BeforeUpdateRecord = prvBudgetOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvBudgetOrderBeforeApplyUpdates
    AfterApplyUpdates = prvBudgetOrderAfterApplyUpdates
    Left = 184
    Top = 8
  end
  object dsBudgetOrder: TDataSource
    DataSet = qryBudgetOrder
    Left = 184
    Top = 120
  end
  object qryBudgetOrderItems: TAbmesSQLQuery
    DataSource = dsBudgetOrder
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE,'
      ''
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  ( select'
      '      boidt.BOI_DISTRIBUTION_TYPE_NAME'
      '    from'
      '      BOI_DISTRIBUTION_TYPES boidt'
      '    where'
      
        '      (boidt.BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_T' +
        'YPE_CODE)'
      '  ) as BOI_DISTRIBUTION_TYPE_NAME,'
      ''
      '  boi.BUDGET_PRODUCT_CODE,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NO,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NAME,'
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_DOC_CODE,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_HAS_DOC,'
      ''
      '  ( select'
      '      p.BOI_ORDER_TYPE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BOI_ORDER_TYPE_CODE,'
      '  ( select'
      '      boiot.BOI_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      BOI_ORDER_TYPES boiot'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE) and'
      '      (boiot.BOI_ORDER_TYPE_CODE = p.BOI_ORDER_TYPE_CODE)'
      '  ) as BOI_ORDER_TYPE_ABBREV,'
      ''
      '  boi.DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boi.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  boi.BEGIN_DATE,'
      '  boi.END_DATE,'
      ''
      '  boi.DISTRIBUTION_DATE_UNIT_CODE,'
      ''
      '  case'
      '    when'
      
        '      (MiscUtils.LargeZero(DateTimeUtils.ExactTimeUnitsBetween(b' +
        'oi.BEGIN_DATE, boi.END_DATE, boi.DISTRIBUTION_DATE_UNIT_CODE)) =' +
        ' 0)'
      '    then'
      '      To_number(null)'
      '    else'
      '      boi.TOTAL_PRICE /'
      
        '        DateTimeUtils.ExactTimeUnitsBetween(boi.BEGIN_DATE, boi.' +
        'END_DATE, boi.DISTRIBUTION_DATE_UNIT_CODE)'
      '  end as DISTRIBUTED_SINGLE_PRICE,'
      '  '
      '  boi.IS_CONFIRMED,'
      '  boi.IS_CANCELED,'
      '  boi.IS_FOR_RECONSIDERATION,'
      '  boi.TOTAL_PRICE,'
      '  ( boi.TOTAL_PRICE /'
      '    ( select'
      '        bo.TOTAL_PRICE'
      '      from'
      '        BUDGET_ORDERS bo'
      '      where'
      
        '        (boi.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (boi.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE)'
      '    )'
      '  ) as BO_PRICE_PERCENT,'
      ''
      '  ( select'
      '      Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOIO_TOTAL_PRICE,'
      ''
      '  ('
      '    ( Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      ) -'
      '      Coalesce('
      '        ( select'
      '            Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '          from'
      '            BOI_ORDERS boio'
      '          where'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        0'
      '      )'
      '    )'
      '    /'
      '    Decode('
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      ),'
      '      0,'
      '      null,'
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      )'
      '    )'
      '  ) as REMAINING_TOTAL_PRICE_PERCENT,'
      ''
      '  ( case'
      
        '      when (ContextDate < boi.BEGIN_DATE) or (ContextDate > boi.END_' +
        'DATE) then'
      '        null'
      '    else'
      '      %COUNT_WORKDAYS[ContextDate~boi.END_DATE] /'
      '      Decode('
      '        %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE],'
      '        0,'
      '        null,'
      '        %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
      '      )'
      '    end'
      '  ) as REMAINING_WORKDAYS_PERCENT,'
      ''
      '  boi.DOC_BRANCH_CODE,'
      '  boi.DOC_CODE,'
      '  %HAS_DOC_ITEMS[boi] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null )'
      '  ) as BOI_ORDER_COUNT,'
      ''
      '  ( select'
      '      1 - Sign(Count(*))'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null) and'
      '      ( ( (boio.BOI_ORDER_TYPE_CODE = 1) and'
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      '              (sd.STORNO_EMPLOYEE_CODE is null) and'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDE' +
        'R_OBJECT_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJEC' +
        'T_CODE)'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (boio.BOI_ORDER_TYPE_CODE in (2, 3)) and'
      '          (boio.ACCOUNT_TOTAL_PRICE is not null)'
      '        ) or'
      ''
      '        ( (boio.BOI_ORDER_TYPE_CODE = 4) and'
      '          ( ( ( ( select'
      '                    boi.BUDGET_ORDER_ITEM_TYPE_CODE'
      '                  from'
      '                    BUDGET_ORDER_ITEMS boi'
      '                  where'
      
        '                    (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_' +
        'ORDER_BRANCH_CODE) and'
      
        '                    (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_C' +
        'ODE) and'
      
        '                    (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_OR' +
        'DER_ITEM_CODE)'
      '                ) = 1'
      '              ) and'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    STORE_DEALS sd'
      '                  where'
      
        '                    (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.DE' +
        'LIVERY_OBJECT_BRANCH_CODE) and'
      
        '                    (sd.BND_PROCESS_OBJECT_CODE = boio.DELIVERY_' +
        'OBJECT_CODE) and'
      '                    (sd.STORNO_EMPLOYEE_CODE is null) and'
      '                    (sd.IN_OUT = 1)'
      '                )'
      '              )'
      '            ) or'
      '            (boio.ACCOUNT_TOTAL_PRICE is not null)'
      '          )'
      '        )'
      '      )'
      '  ) as CAN_ANNUL,'
      ''
      ''
      '  boi.DECISION_ENTER_EMPLOYEE_CODE,'
      '  boi.DECISION_ENTER_DATE,'
      '  boi.DECISION_APPROVE_EMPLOYEE_CODE,'
      '  boi.DECISION_APPROVE_DATE,'
      ''
      '  boi.CREATE_EMPLOYEE_CODE,'
      '  boi.CREATE_DATE,'
      '  boi.CREATE_TIME,'
      '  boi.CHANGE_EMPLOYEE_CODE,'
      '  boi.CHANGE_DATE,'
      '  boi.CHANGE_TIME,'
      '  boi.CLOSE_EMPLOYEE_CODE,'
      '  boi.CLOSE_DATE,'
      '  boi.CLOSE_TIME,'
      '  boi.ANNUL_EMPLOYEE_CODE,'
      '  boi.ANNUL_DATE,'
      '  boi.ANNUL_TIME,'
      ''
      '  Nvl2(boi.ANNUL_EMPLOYEE_CODE, null, 1) as NULL_WHEN_ANNULED,'
      '  Nvl2(boi.CLOSE_EMPLOYEE_CODE, null, 1) as NULL_WHEN_CLOSED,'
      ''
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE'
      ''
      'from'
      '  BUDGET_ORDER_ITEMS boi'
      '  '
      'where'
      '  (boi.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (boi.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)'
      ''
      'order by'
      '  boi.BUDGET_ORDER_ITEM_CODE')
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
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[ContextDate~boi.END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[boi]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'BUDGET_ORDER_ITEMS_FOR_EDIT'
    Left = 184
    Top = 176
    object qryBudgetOrderItemsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBudgetOrderItemsBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBudgetOrderItemsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBudgetOrderItemsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object qryBudgetOrderItemsBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBudgetOrderItemsBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object qryBudgetOrderItemsBUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_NO'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBudgetOrderItemsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryBudgetOrderItemsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryBudgetOrderItemsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBudgetOrderItemsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBudgetOrderItemsDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DISTRIBUTION_DATE_UNIT_CODE'
    end
    object qryBudgetOrderItemsTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryBudgetOrderItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBudgetOrderItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBudgetOrderItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBudgetOrderItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBudgetOrderItemsCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemsCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBudgetOrderItemsCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryBudgetOrderItemsANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemsANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBudgetOrderItemsANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBudgetOrderItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBudgetOrderItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBudgetOrderItemsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qryBudgetOrderItemsDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DISTRIBUTED_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
    end
    object qryBudgetOrderItemsNULL_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'NULL_WHEN_ANNULED'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsNULL_WHEN_CLOSED: TAbmesFloatField
      FieldName = 'NULL_WHEN_CLOSED'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qryBudgetOrderItemsBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBOI_ORDER_COUNT: TAbmesFloatField
      FieldName = 'BOI_ORDER_COUNT'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
    end
    object qryBudgetOrderItemsIS_FOR_RECONSIDERATION: TAbmesFloatField
      FieldName = 'IS_FOR_RECONSIDERATION'
    end
    object qryBudgetOrderItemsDECISION_ENTER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_ENTER_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemsDECISION_ENTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_ENTER_DATE'
    end
    object qryBudgetOrderItemsDECISION_APPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_APPROVE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemsDECISION_APPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_APPROVE_DATE'
    end
    object qryBudgetOrderItemsCAN_ANNUL: TAbmesFloatField
      FieldName = 'CAN_ANNUL'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBOIO_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOIO_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBC_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBC_DOC_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_CODE'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBC_HAS_DOC: TAbmesFloatField
      FieldName = 'BC_HAS_DOC'
      ProviderFlags = []
    end
    object qryBudgetOrderItemsBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object qryBudgetOrderItemsREMAINING_WORKDAYS_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_WORKDAYS_PERCENT'
      ProviderFlags = []
    end
  end
  object qryBORegularityTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  BO_REGULARITY_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 400
    object qryBORegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object qryBORegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
  end
  object prvBORegularityTypes: TDataSetProvider
    DataSet = qryBORegularityTypes
    Options = [poReadOnly]
    Left = 256
    Top = 344
  end
  object qryBOIDistributionTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  BOI_DISTRIBUTION_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 376
    Top = 400
    object qryBOIDistributionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object qryBOIDistributionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
    object qryBOIDistributionTypesBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
  end
  object prvBOIDistributionTypes: TDataSetProvider
    DataSet = qryBOIDistributionTypes
    Options = [poReadOnly]
    Left = 376
    Top = 344
  end
  object qryBudgetOrders: TAbmesSQLQuery
    BeforeOpen = qryBudgetOrdersBeforeOpen
    AfterClose = qryBudgetOrdersAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
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
        Value = '3'
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
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEVELOPER_DEPT_CODE'
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
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '10'
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bo.BUDGET_ORDER_BRANCH_CODE,'
      '  bo.BUDGET_ORDER_CODE,'
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || bo.BUDGET_ORDER_CODE || '#39'/'#39' || bor' +
        't.BO_REGULARITY_TYPE_ABBREV'
      '    from'
      '      DEPTS d,'
      '      BO_REGULARITY_TYPES bort'
      '    where'
      '      (d.DEPT_CODE = bo.BUDGET_ORDER_BRANCH_CODE) and'
      
        '      (bort.BO_REGULARITY_TYPE_CODE = bo.BO_REGULARITY_TYPE_CODE' +
        ')'
      '  ) as BUDGET_ORDER_IDENTIFIER,'
      ''
      '  bo.GENERATOR_DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = bo.GENERATOR_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as GENERATOR_DEPT_IDENTIFIER,'
      ''
      '  bo.DEVELOPER_DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = bo.DEVELOPER_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEVELOPER_DEPT_IDENTIFIER,'
      ''
      '  Nvl2('
      '    bo.ANNUL_EMPLOYEE_CODE,'
      '    5,'
      '    Nvl2('
      '      bo.CLOSE_EMPLOYEE_CODE,'
      '      4,'
      '      Decode('
      '        Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '        1,'
      '        Decode('
      '          Sign(bo.END_DATE - ContextDate), -1,'
      '          3,'
      '          2'
      '        )'
      '      )'
      '    )'
      '  ) as BUDGET_ORDER_STATUS_CODE,'
      ''
      '  bo.BEGIN_DATE,'
      '  bo.END_DATE,'
      ''
      '  bo.DESCRIPTION,'
      ''
      '  ( case'
      '      when (ContextDate > bo.END_DATE) then'
      '        null'
      '    else'
      
        '      %COUNT_WORKDAYS[Greatest(ContextDate, bo.BEGIN_DATE)~bo.END_' +
        'DATE] /'
      '      Decode('
      '        %COUNT_WORKDAYS[bo.BEGIN_DATE~bo.END_DATE],'
      '        0,'
      '        null,'
      '        %COUNT_WORKDAYS[bo.BEGIN_DATE~bo.END_DATE]'
      '      )'
      '    end'
      '  ) as DAYS_LEFT_PERCENT,'
      ''
      '  bo.TOTAL_PRICE as PROJECT_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Sum('
      '        Nvl2('
      '          boi.ANNUL_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      )'
      '    from'
      '      BUDGET_ORDER_ITEMS boi'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '      (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '      (boi.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as PLAN_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Sum(%BOIO_PLAN_TOTAL_PRICE[boio])'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOIO_PLAN_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as ACCOUNT_TOTAL_PRICE,'
      ''
      '  ('
      '    ('
      '      ( select'
      '          Sum('
      '            Nvl2('
      '              boi.ANNUL_EMPLOYEE_CODE,'
      '              null,'
      '              boi.TOTAL_PRICE'
      '            )'
      '          )'
      '        from'
      '          BUDGET_ORDER_ITEMS boi'
      '        where'
      
        '          (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '          (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '          (boi.ANNUL_EMPLOYEE_CODE is null)'
      '      ) -'
      '      ( select'
      '          Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '        from'
      '          BOI_ORDERS boio'
      '        where'
      
        '          (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANC' +
        'H_CODE) and'
      '          (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      '          (boio.ANNUL_EMPLOYEE_CODE is null)'
      '      ) '
      '    )'
      '    /'
      '    ( select'
      '        Sum('
      '          Nvl2('
      '            boi.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            boi.TOTAL_PRICE'
      '          )'
      '        )'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (boi.ANNUL_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as REMAINING_TOTAL_PRICE_PERCENT,'
      ''
      '  %HAS_DOC_ITEMS[bo] as HAS_DOCUMENTATION,'
      '  bo.DOC_BRANCH_CODE,'
      '  bo.DOC_CODE,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      ''
      '  ( select'
      '      otps.ORG_TASK_PROPOSAL_STATE_ABBREV'
      '    from'
      '      ORG_TASK_PROPOSAL_STATES otps'
      '    where'
      
        '      (otps.ORG_TASK_PROPOSAL_STATE_CODE = bo.ORG_TASK_PROPOSAL_' +
        'STATE_CODE)'
      '  ) as ORG_TASK_PROPOSAL_STATE_ABBREV,'
      ''
      '  bo.CREATE_EMPLOYEE_CODE,'
      '  bo.CREATE_DATE,'
      '  bo.CREATE_TIME,'
      '  bo.CHANGE_EMPLOYEE_CODE,'
      '  bo.CHANGE_DATE,'
      '  bo.CHANGE_TIME,'
      '  bo.CLOSE_EMPLOYEE_CODE,'
      '  bo.CLOSE_DATE,'
      '  bo.CLOSE_TIME,'
      '  bo.ANNUL_EMPLOYEE_CODE,'
      '  bo.ANNUL_DATE,'
      '  bo.ANNUL_TIME'
      ''
      'from'
      '  BUDGET_ORDERS bo'
      ''
      'where'
      '  (bo.BUDGET_ORDER_CLASS_CODE = :BUDGET_ORDER_CLASS_CODE) and'
      ''
      '  ( Nvl2('
      '      bo.ANNUL_EMPLOYEE_CODE,'
      '      5,'
      '      Nvl2('
      '        bo.CLOSE_EMPLOYEE_CODE,'
      '        4,'
      '        Decode('
      '          Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '          1,'
      '          Decode('
      '            Sign(bo.END_DATE - ContextDate), -1,'
      '            3,'
      '            2'
      '          )'
      '        )'
      '      )'
      '    )'
      '    between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '    (bo.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) ) ' +
        'and'
      ''
      '  ( (:BUDGET_ORDER_CODE is null) or'
      '    (bo.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) ) and'
      ''
      '  ( (:BO_REGULARITY_TYPE_CODE is null) or'
      
        '    (bo.BO_REGULARITY_TYPE_CODE = :BO_REGULARITY_TYPE_CODE) ) an' +
        'd'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = :GENERATOR_DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = bo.GENERATOR_DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = :DEVELOPER_DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = bo.DEVELOPER_DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_DATE is null) or'
      '    (bo.END_DATE >= :BEGIN_DATE) ) and'
      ''
      '  ( (:END_DATE is null) or'
      '    (bo.BEGIN_DATE <= :END_DATE) ) and'
      ''
      '  ('
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        ( Nvl2('
      '            boi.ANNUL_EMPLOYEE_CODE,'
      '            10,'
      '            Nvl2('
      '              boi.CLOSE_EMPLOYEE_CODE,'
      '              9,'
      '              case'
      '                when'
      '                  (ContextDate < boi.BEGIN_DATE) and'
      '                  (boi.IS_CONFIRMED = 0) and'
      '                  (boi.IS_FOR_RECONSIDERATION = 0) and'
      '                  (boi.IS_CANCELED = 0) then'
      '                  1'
      '                when'
      '                  (ContextDate < boi.BEGIN_DATE) and'
      '                  (boi.IS_CONFIRMED = 0) and'
      '                  (boi.IS_FOR_RECONSIDERATION = 1) and'
      '                  (boi.IS_CANCELED = 0) then'
      '                  2'
      '                when'
      
        '                  (ContextDate between boi.BEGIN_DATE and boi.END_' +
        'DATE) and'
      '                  (boi.IS_CONFIRMED = 0) and'
      '                  (boi.IS_FOR_RECONSIDERATION = 0) and'
      '                  (boi.IS_CANCELED = 0) then'
      '                  3'
      '                when'
      
        '                  (ContextDate between boi.BEGIN_DATE and boi.END_' +
        'DATE) and'
      '                  (boi.IS_FOR_RECONSIDERATION = 1) then'
      '                  4'
      '                when'
      '                  (boi.IS_CANCELED = 1) then'
      '                  5'
      '                when'
      '                  (ContextDate < boi.BEGIN_DATE) and'
      '                  (boi.IS_CONFIRMED = 1) then'
      '                  6'
      '                when'
      
        '                  (ContextDate between boi.BEGIN_DATE and boi.END_' +
        'DATE) and'
      '                  (boi.IS_CONFIRMED = 1) then'
      '                  7'
      '                else'
      '                  8'
      '              end'
      '            )'
      '          )'
      
        '          between :MIN_ITEM_STATUS_CODE and :MAX_ITEM_STATUS_COD' +
        'E'
      '        )'
      '      )'
      '    ) or'
      '    (not exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) '
      '      )      '
      '    )'
      '  ) and'
      ''
      '  ( (:BUDGET_PRODUCT_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi,'
      '        PRODUCT_RELATIONS pr'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:BOI_ORDER_TYPE_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi,'
      '        PRODUCTS p'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (boi.BUDGET_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '        (p.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DEPT_CODE is null) or'
      '    (:DEPT_CODE = 1) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr,'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '        (dr.DESCENDANT_DEPT_CODE = boi.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:BOI_DISTRIBUTION_TYPE_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '        (boi.BOI_DISTRIBUTION_TYPE_CODE = :BOI_DISTRIBUTION_TYPE' +
        '_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ITEM_BEGIN_DATE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (boi.END_DATE >= :ITEM_BEGIN_DATE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ITEM_END_DATE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '        (boi.BEGIN_DATE <= :ITEM_END_DATE)'
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
      '          (tfp.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '      )'
      '  ) and'
      ''
      '  ( (:ORG_TASK_PROPOSAL_STATE_CODE is null) or'
      
        '    (bo.ORG_TASK_PROPOSAL_STATE_CODE = :ORG_TASK_PROPOSAL_STATE_' +
        'CODE)'
      '  )'
      ''
      'order by'
      '  bo.BEGIN_DATE,'
      '  bo.TOTAL_PRICE,'
      '  BUDGET_ORDER_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[Greatest(ContextDate, bo.BEGIN_DATE)~bo.END_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[bo.BEGIN_DATE~bo.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bo]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    TableName = 'BUDGET_ORDERS'
    Left = 72
    Top = 64
    object qryBudgetOrdersBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBudgetOrdersBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBudgetOrdersBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_IDENTIFIER'
      Size = 182
    end
    object qryBudgetOrdersGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object qryBudgetOrdersGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryBudgetOrdersDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object qryBudgetOrdersDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryBudgetOrdersBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
    end
    object qryBudgetOrdersBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBudgetOrdersEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBudgetOrdersDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object qryBudgetOrdersPROJECT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROJECT_TOTAL_PRICE'
    end
    object qryBudgetOrdersPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryBudgetOrdersACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object qryBudgetOrdersREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
    end
    object qryBudgetOrdersCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBudgetOrdersCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBudgetOrdersCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBudgetOrdersCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBudgetOrdersCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBudgetOrdersCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryBudgetOrdersANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBudgetOrdersANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBudgetOrdersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryBudgetOrdersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBudgetOrdersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBudgetOrdersDAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'DAYS_LEFT_PERCENT'
    end
    object qryBudgetOrdersPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryBudgetOrdersORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Size = 100
    end
    object qryBudgetOrdersBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOIO_PLAN_TOTAL_PRICE'
    end
  end
  object prvBudgetOrders: TDataSetProvider
    DataSet = qryBudgetOrders
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 8
  end
  object qryBudgetOrdersDetail: TAbmesSQLQuery
    DataSource = dsBudgetOrders
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE,'
      ''
      '  Nvl2('
      '    boi.ANNUL_EMPLOYEE_CODE,'
      '    10,'
      '    Nvl2('
      '      boi.CLOSE_EMPLOYEE_CODE,'
      '      9,'
      '      case'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          1'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 1) and'
      '          (boi.IS_CANCELED = 0) then'
      '          2'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          3'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_FOR_RECONSIDERATION = 1) then'
      '          4'
      '        when'
      '          (boi.IS_CANCELED = 1) then'
      '          5'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 1) then'
      '          6'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 1) then'
      '          7'
      '        else'
      '          8'
      '      end'
      '    )'
      '  ) as BUDGET_ITEM_STATUS_CODE,'
      ''
      '  boi.BUDGET_PRODUCT_CODE,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NO,'
      '  '
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NAME,'
      '  '
      '  ( select'
      '      boiot.BOI_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      BOI_ORDER_TYPES boiot'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE) and'
      '      (boiot.BOI_ORDER_TYPE_CODE = p.BOI_ORDER_TYPE_CODE)'
      '  ) as BOI_ORDER_TYPE_ABBREV,'
      ''
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  ( select'
      '      boidt.BOI_DISTRIBUTION_TYPE_ABBREV'
      '    from'
      '      BOI_DISTRIBUTION_TYPES boidt'
      '    where'
      
        '      (boidt.BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_T' +
        'YPE_CODE)'
      '  ) as BOI_DISTRIBUTION_TYPE_ABBREV,'
      ''
      '  boi.DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boi.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  boi.BEGIN_DATE,'
      '  boi.END_DATE,'
      ''
      '  Decode(Sign(ContextDate - boi.BEGIN_DATE),'
      '    -1, boi.BEGIN_DATE - ContextDate,'
      '    null'
      '  ) as DAYS_TO_START,'
      ''
      '  ( case'
      '      when (ContextDate > boi.END_DATE) then'
      '        null'
      '    else'
      
        '      %COUNT_WORKDAYS[Greatest(ContextDate, boi.BEGIN_DATE)~boi.EN' +
        'D_DATE] /'
      '      Decode('
      '        %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE],'
      '        0,'
      '        null,'
      '        %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
      '      )'
      '    end'
      '  ) as DAYS_LEFT_PERCENT,'
      ''
      '  boi.TOTAL_PRICE,'
      '  boi.IS_CONFIRMED,'
      '  (boi.TOTAL_PRICE / bo.TOTAL_PRICE) as BO_PRICE_PERCENT,'
      ''
      '  ( select'
      '      Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as ACCOUNT_TOTAL_PRICE,'
      ''
      '  ('
      '    ( Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      ) -'
      '      Coalesce('
      '        ( select'
      '            Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '          from'
      '            BOI_ORDERS boio'
      '          where'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        0'
      '      )'
      '    )'
      '    /'
      '    Decode('
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      ),'
      '      0,'
      '      null,'
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      )'
      '    )'
      '  ) as REMAINING_TOTAL_PRICE_PERCENT,'
      ''
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_DOC_CODE,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_HAS_DOC,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOI_ORDER_COUNT,'
      ''
      '  %HAS_DOC_ITEMS[boi] as HAS_DOCUMENTATION,'
      '  boi.DOC_BRANCH_CODE,'
      '  boi.DOC_CODE,'
      ''
      '  boi.CREATE_EMPLOYEE_CODE,'
      '  boi.CREATE_DATE,'
      '  boi.CREATE_TIME,'
      '  boi.CHANGE_EMPLOYEE_CODE,'
      '  boi.CHANGE_DATE,'
      '  boi.CHANGE_TIME,'
      '  boi.CLOSE_EMPLOYEE_CODE,'
      '  boi.CLOSE_DATE,'
      '  boi.CLOSE_TIME,'
      '  boi.ANNUL_EMPLOYEE_CODE,'
      '  boi.ANNUL_DATE,'
      '  boi.ANNUL_TIME,'
      ''
      '  Nvl2(boi.ANNUL_EMPLOYEE_CODE, null, 1) as NULL_WHEN_ANNULED,'
      '  Nvl2(boi.CLOSE_EMPLOYEE_CODE, null, 1) as NULL_WHEN_CLOSED,'
      ''
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE,'
      ''
      '  ( select'
      
        '      boit.BUDGET_ORDER_ITEM_TYPE_ABBREV || '#39'     '#39' || boit.BUDG' +
        'ET_ORDER_ITEM_TYPE_NAME'
      '    from'
      '      BUDGET_ORDER_ITEM_TYPES boit'
      '    where'
      
        '      (boit.BUDGET_ORDER_ITEM_TYPE_CODE = boi.BUDGET_ORDER_ITEM_' +
        'TYPE_CODE)'
      '  ) as BUDGET_ORDER_ITEM_TYPE_DISPLAY'
      ''
      'from'
      '  BUDGET_ORDERS bo,'
      '  BUDGET_ORDER_ITEMS boi'
      ''
      'where'
      '  (bo.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (bo.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      
        '  (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE) a' +
        'nd'
      '  (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE)'
      ''
      'order by'
      '  boi.BUDGET_ORDER_ITEM_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[Greatest(ContextDate, boi.BEGIN_DATE)~boi.END_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
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
        Name = 'HAS_DOC_ITEMS[boi]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 72
    Top = 176
    object qryBudgetOrdersDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBudgetOrdersDetailBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBudgetOrdersDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object qryBudgetOrdersDetailBUDGET_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ITEM_STATUS_CODE'
    end
    object qryBudgetOrdersDetailBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object qryBudgetOrdersDetailBUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_NO'
    end
    object qryBudgetOrdersDetailBUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_PRODUCT_NAME'
      Size = 100
    end
    object qryBudgetOrdersDetailBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryBudgetOrdersDetailBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object qryBudgetOrdersDetailBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
    object qryBudgetOrdersDetailDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryBudgetOrdersDetailDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryBudgetOrdersDetailBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBudgetOrdersDetailEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBudgetOrdersDetailDAYS_TO_START: TAbmesFloatField
      FieldName = 'DAYS_TO_START'
    end
    object qryBudgetOrdersDetailDAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'DAYS_LEFT_PERCENT'
    end
    object qryBudgetOrdersDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryBudgetOrdersDetailIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
    end
    object qryBudgetOrdersDetailBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
    end
    object qryBudgetOrdersDetailREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
    end
    object qryBudgetOrdersDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBudgetOrdersDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBudgetOrdersDetailHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryBudgetOrdersDetailBOI_ORDER_COUNT: TAbmesFloatField
      FieldName = 'BOI_ORDER_COUNT'
    end
    object qryBudgetOrdersDetailCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersDetailCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBudgetOrdersDetailCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBudgetOrdersDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersDetailCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBudgetOrdersDetailCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBudgetOrdersDetailCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersDetailCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBudgetOrdersDetailCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryBudgetOrdersDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBudgetOrdersDetailANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBudgetOrdersDetailANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBudgetOrdersDetailBC_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_BRANCH_CODE'
    end
    object qryBudgetOrdersDetailBC_DOC_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_CODE'
    end
    object qryBudgetOrdersDetailBC_HAS_DOC: TAbmesFloatField
      FieldName = 'BC_HAS_DOC'
    end
    object qryBudgetOrdersDetailNULL_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'NULL_WHEN_ANNULED'
    end
    object qryBudgetOrdersDetailNULL_WHEN_CLOSED: TAbmesFloatField
      FieldName = 'NULL_WHEN_CLOSED'
    end
    object qryBudgetOrdersDetailBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object qryBudgetOrdersDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object qryBudgetOrdersDetailBUDGET_ORDER_ITEM_TYPE_DISPLAY: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_DISPLAY'
      Size = 205
    end
  end
  object dsBudgetOrders: TDataSource
    DataSet = qryBudgetOrders
    Left = 72
    Top = 120
  end
  object qryGetMaxBudgetOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(bo.BUDGET_ORDER_CODE) as MAX_BUDGET_ORDER_CODE'
      'from'
      '  BUDGET_ORDERS bo'
      'where'
      '  (bo.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 232
    object qryGetMaxBudgetOrderCodeMAX_BUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'MAX_BUDGET_ORDER_CODE'
    end
  end
  object qryGetMaxBudgetOrderItemCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(boi.BUDGET_ORDER_ITEM_CODE) as MAX_BUDGET_ORDER_ITEM_CODE'
      'from'
      '  BUDGET_ORDER_ITEMS boi'
      'where'
      '  (boi.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (boi.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 288
    object qryGetMaxBudgetOrderItemCodeMAX_BUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'MAX_BUDGET_ORDER_ITEM_CODE'
    end
  end
  object qryInsertBOIProductOrderPSD: TAbmesSQLQuery
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
        Name = 'IS_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
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
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT ('
      ' PLANNED_STORE_DEAL_BRANCH_CODE,'
      ' PLANNED_STORE_DEAL_CODE,'
      ' PLANNED_STORE_DEAL_TYPE_CODE,'
      ' STORE_DEAL_TYPE_CODE,'
      ' PRIORITY_CODE,'
      ' IS_PLANNED_MANUALLY,'
      ' BND_PROCESS_OBJECT_BRANCH_CODE,'
      ' BND_PROCESS_OBJECT_CODE,'
      ' BND_PROCESS_CODE,'
      ' STORE_CODE,'
      ' STORE_DEAL_BEGIN_DATE,'
      ' STORE_DEAL_END_DATE,'
      ' PRODUCT_CODE,'
      ' QUANTITY,'
      ' ACCOUNT_QUANTITY,'
      ' CREATE_EMPLOYEE_CODE,'
      ' CREATE_DATE,'
      ' CREATE_TIME,'
      ' CHANGE_EMPLOYEE_CODE,'
      ' CHANGE_DATE,'
      ' CHANGE_TIME,'
      ' ANNUL_EMPLOYEE_CODE,'
      ' ANNUL_DATE,'
      ' ANNUL_TIME,'
      ' DEPT_CODE'
      ') values ('
      ' :PLANNED_STORE_DEAL_BRANCH_CODE,'
      ' :PLANNED_STORE_DEAL_CODE,'
      ' (2 - :IS_CONFIRMED),'
      ' :STORE_DEAL_TYPE_CODE,'
      
        ' (select DEFAULT_PRIORITY_CODE from COMMON_OPTIONS where (CODE =' +
        ' 1)),'
      ' 0,'
      ' :BOI_ORDER_OBJECT_BRANCH_CODE,'
      ' :BOI_ORDER_OBJECT_CODE,'
      ' 190,'
      ' :STORE_CODE,'
      ' :PLAN_DATE,'
      ' :PLAN_DATE,'
      ' :PRODUCT_CODE,'
      ' :QUANTITY,'
      
        ' (select (:QUANTITY * p.ACCOUNT_MEASURE_COEF) from PRODUCTS p wh' +
        'ere (p.PRODUCT_CODE = :PRODUCT_CODE)),'
      ' :CREATE_EMPLOYEE_CODE,'
      ' :CREATE_DATE,'
      ' :CREATE_TIME,'
      ' :CHANGE_EMPLOYEE_CODE,'
      ' :CHANGE_DATE,'
      ' :CHANGE_TIME,'
      ' Decode(:IS_CANCELED, 1, :CHANGE_EMPLOYEE_CODE, null),'
      ' Decode(:IS_CANCELED, 1, :CHANGE_DATE, null),'
      ' Decode(:IS_CANCELED, 1, :CHANGE_TIME, null),'
      ' :CONSUMER_DEPT_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 8
  end
  object qryModifyBOIProductOrderPSD: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_CONFIRMED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
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
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PLANNED_STORE_DEALS_FOR_EDIT'
      'set'
      '  PLANNED_STORE_DEAL_TYPE_CODE   = (2 - :IS_CONFIRMED),'
      
        '  STORE_CODE                     = Decode(IN_OUT, -1, :STORE_COD' +
        'E, 1, :CONSUMER_DEPT_CODE),'
      '  STORE_DEAL_BEGIN_DATE          = :PLAN_DATE,'
      '  STORE_DEAL_END_DATE            = :PLAN_DATE,'
      '  PRODUCT_CODE                   = :PRODUCT_CODE,'
      '  QUANTITY                       = :QUANTITY,'
      
        '  ACCOUNT_QUANTITY               = (select (:QUANTITY * p.ACCOUN' +
        'T_MEASURE_COEF) from PRODUCTS p where (p.PRODUCT_CODE = :PRODUCT' +
        '_CODE)),'
      '  CREATE_EMPLOYEE_CODE           = :CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE                    = :CREATE_DATE,'
      '  CREATE_TIME                    = :CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE           = :CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE                    = :CHANGE_DATE,'
      '  CHANGE_TIME                    = :CHANGE_TIME,'
      '  CLOSE_EMPLOYEE_CODE            = :CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE                     = :CLOSE_DATE,'
      '  CLOSE_TIME                     = :CLOSE_TIME,'
      
        '  ANNUL_EMPLOYEE_CODE            = Decode(:IS_CANCELED, 1, :CHAN' +
        'GE_EMPLOYEE_CODE, :ANNUL_EMPLOYEE_CODE),'
      
        '  ANNUL_DATE                     = Decode(:IS_CANCELED, 1, :CHAN' +
        'GE_DATE, :ANNUL_DATE),'
      
        '  ANNUL_TIME                     = Decode(:IS_CANCELED, 1, :CHAN' +
        'GE_TIME, :ANNUL_TIME),'
      
        '  DEPT_CODE                      = Decode(IN_OUT, -1, :CONSUMER_' +
        'DEPT_CODE)'
      ''
      'where'
      
        '  (BND_PROCESS_OBJECT_BRANCH_CODE = :BOI_ORDER_OBJECT_BRANCH_COD' +
        'E) and'
      '  (BND_PROCESS_OBJECT_CODE        = :BOI_ORDER_OBJECT_CODE) and'
      '  (BND_PROCESS_CODE               = 190)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 552
    Top = 56
  end
  object qryCascadeProcessBOIOrders: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CHANGE_EMPLOYEE_CODE'
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
        DataType = ftFloat
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_DATE'
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
        Name = 'IS_CANCELED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  update'
      '    BOI_ORDERS_FOR_EDIT boiofe'
      '  set'
      '    IS_CANCELED                    = :IS_CANCELED,'
      '    CLOSE_EMPLOYEE_CODE            = :CLOSE_EMPLOYEE_CODE,'
      '    CLOSE_DATE                     = :CLOSE_DATE,'
      '    CLOSE_TIME                     = :CLOSE_TIME,'
      '    ANNUL_EMPLOYEE_CODE            = :ANNUL_EMPLOYEE_CODE,'
      '    ANNUL_DATE                     = :ANNUL_DATE,'
      '    ANNUL_TIME                     = :ANNUL_TIME'
      '  where'
      
        '    (boiofe.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE' +
        ') and'
      '    (boiofe.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      
        '    (boiofe.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE) an' +
        'd'
      '    (boiofe.ANNUL_EMPLOYEE_CODE is null);'
      ''
      '  for x in'
      '    ( select'
      '        boio.BOI_ORDER_OBJECT_BRANCH_CODE,'
      '        boio.BOI_ORDER_OBJECT_CODE'
      '      from'
      '        BOI_ORDERS boio'
      '      where'
      
        '        (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '        (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      
        '        (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE) ' +
        'and'
      '        (boio.ANNUL_EMPLOYEE_CODE is null) and'
      
        '        ( ( (:ANNUL_EMPLOYEE_CODE is null) and                  ' +
        '-- mojem da anulirame veche prikliucheni redove, anuliraneto e s' +
        ' po-visok prioritet'
      '            (boio.CLOSE_EMPLOYEE_CODE is null) ) or'
      '          (:ANNUL_EMPLOYEE_CODE is not null)'
      '        )'
      '    )'
      ''
      '  loop'
      ''
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psdfe'
      '    set'
      
        '      CLOSE_EMPLOYEE_CODE            = Coalesce(CLOSE_EMPLOYEE_C' +
        'ODE, :CLOSE_EMPLOYEE_CODE),'
      
        '      CLOSE_DATE                     = Coalesce(CLOSE_DATE, :CLO' +
        'SE_DATE),'
      
        '      CLOSE_TIME                     = Coalesce(CLOSE_TIME, :CLO' +
        'SE_TIME),'
      
        '      ANNUL_EMPLOYEE_CODE            = Coalesce(:ANNUL_EMPLOYEE_' +
        'CODE, Decode(:IS_CANCELED, 1, :CHANGE_EMPLOYEE_CODE, :ANNUL_EMPL' +
        'OYEE_CODE)),'
      
        '      ANNUL_DATE                     = Coalesce(:ANNUL_DATE, Dec' +
        'ode(:IS_CANCELED, 1, :CHANGE_DATE, :ANNUL_DATE)),'
      
        '      ANNUL_TIME                     = Coalesce(:ANNUL_TIME, Dec' +
        'ode(:IS_CANCELED, 1, :CHANGE_TIME, :ANNUL_TIME))'
      '    where'
      
        '      (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = x.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (psdfe.BND_PROCESS_OBJECT_CODE = x.BOI_ORDER_OBJECT_CODE);'
      ''
      '  end loop;'
      ''
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 232
  end
  object qryCloseOrAnnulBudgetOrderItems: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CHANGE_EMPLOYEE_CODE'
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
        DataType = ftUnknown
        Name = 'CHANGE_DATE'
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
        DataType = ftUnknown
        Name = 'CHANGE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ANNUL_TIME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  for x in'
      '    ( select'
      '        boi.BUDGET_ORDER_BRANCH_CODE,'
      '        boi.BUDGET_ORDER_CODE,'
      '        boi.BUDGET_ORDER_ITEM_CODE'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (boi.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '        (boi.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '        (boi.ANNUL_EMPLOYEE_CODE is null) and'
      
        '        ( ( (:ANNUL_EMPLOYEE_CODE is null) and                  ' +
        '-- mojem da anulirame veche prikliucheni redove, anuliraneto e s' +
        ' po-visok prioritet'
      '            (boi.CLOSE_EMPLOYEE_CODE is null) ) or'
      '          (:ANNUL_EMPLOYEE_CODE is not null)'
      '        )'
      '    )'
      ''
      '  loop'
      ''
      '    update'
      '      BUDGET_ORDER_ITEMS_FOR_EDIT boife'
      '    set'
      
        '      CLOSE_EMPLOYEE_CODE            = Coalesce(CLOSE_EMPLOYEE_C' +
        'ODE, :CLOSE_EMPLOYEE_CODE),'
      
        '      CLOSE_DATE                     = Coalesce(CLOSE_DATE, :CLO' +
        'SE_DATE),'
      
        '      CLOSE_TIME                     = Coalesce(CLOSE_TIME, :CLO' +
        'SE_TIME),'
      '      ANNUL_EMPLOYEE_CODE            = :ANNUL_EMPLOYEE_CODE,'
      '      ANNUL_DATE                     = :ANNUL_DATE,'
      '      ANNUL_TIME                     = :ANNUL_TIME'
      '    where'
      
        '      (boife.BUDGET_ORDER_BRANCH_CODE = x.BUDGET_ORDER_BRANCH_CO' +
        'DE) and'
      '      (boife.BUDGET_ORDER_CODE = x.BUDGET_ORDER_CODE) and'
      
        '      (boife.BUDGET_ORDER_ITEM_CODE = x.BUDGET_ORDER_ITEM_CODE) ' +
        'and'
      '      (boife.ANNUL_EMPLOYEE_CODE is null);'
      ''
      '    update'
      '      BOI_ORDERS_FOR_EDIT boiofe'
      '    set'
      
        '      CLOSE_EMPLOYEE_CODE            = Coalesce(CLOSE_EMPLOYEE_C' +
        'ODE, :CLOSE_EMPLOYEE_CODE),'
      
        '      CLOSE_DATE                     = Coalesce(CLOSE_DATE, :CLO' +
        'SE_DATE),'
      
        '      CLOSE_TIME                     = Coalesce(CLOSE_TIME, :CLO' +
        'SE_TIME),'
      '      ANNUL_EMPLOYEE_CODE            = :ANNUL_EMPLOYEE_CODE,'
      '      ANNUL_DATE                     = :ANNUL_DATE,'
      '      ANNUL_TIME                     = :ANNUL_TIME'
      '    where'
      
        '      (boiofe.BUDGET_ORDER_BRANCH_CODE = x.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boiofe.BUDGET_ORDER_CODE = x.BUDGET_ORDER_CODE) and'
      
        '      (boiofe.BUDGET_ORDER_ITEM_CODE = x.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boiofe.ANNUL_EMPLOYEE_CODE is null);'
      ''
      '    for y in'
      '      ( select'
      '          boio.BOI_ORDER_OBJECT_BRANCH_CODE,'
      '          boio.BOI_ORDER_OBJECT_CODE,'
      '          boio.IS_CANCELED'
      '        from'
      '          BOI_ORDERS boio'
      '        where'
      
        '          (boio.BUDGET_ORDER_BRANCH_CODE = x.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '          (boio.BUDGET_ORDER_CODE = x.BUDGET_ORDER_CODE) and'
      
        '          (boio.BUDGET_ORDER_ITEM_CODE = x.BUDGET_ORDER_ITEM_COD' +
        'E)'
      '      )'
      ''
      '    loop'
      ''
      '      update'
      '        PLANNED_STORE_DEALS_FOR_EDIT psdfe'
      '      set'
      
        '        CLOSE_EMPLOYEE_CODE            = Coalesce(CLOSE_EMPLOYEE' +
        '_CODE, :CLOSE_EMPLOYEE_CODE),'
      
        '        CLOSE_DATE                     = Coalesce(CLOSE_DATE, :C' +
        'LOSE_DATE),'
      
        '        CLOSE_TIME                     = Coalesce(CLOSE_TIME, :C' +
        'LOSE_TIME),'
      
        '        ANNUL_EMPLOYEE_CODE            = Coalesce(:ANNUL_EMPLOYE' +
        'E_CODE, Decode(y.IS_CANCELED, 1, :CHANGE_EMPLOYEE_CODE, :ANNUL_E' +
        'MPLOYEE_CODE)),'
      
        '        ANNUL_DATE                     = Coalesce(:ANNUL_DATE, D' +
        'ecode(y.IS_CANCELED, 1, :CHANGE_DATE, :ANNUL_DATE)),'
      
        '        ANNUL_TIME                     = Coalesce(:ANNUL_TIME, D' +
        'ecode(y.IS_CANCELED, 1, :CHANGE_TIME, :ANNUL_TIME))'
      '      where'
      
        '        (psdfe.BND_PROCESS_OBJECT_BRANCH_CODE = y.BOI_ORDER_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '        (psdfe.BND_PROCESS_OBJECT_CODE = y.BOI_ORDER_OBJECT_CODE' +
        ');'
      ''
      '    end loop;'
      ''
      '  end loop;'
      'end;'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 280
  end
  object qryDeptBudget: TAbmesSQLQuery
    BeforeOpen = qryDeptBudgetBeforeOpen
    AfterOpen = qryDeptBudgetAfterOpen
    AfterClose = qryDeptBudgetAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LOCAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
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
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_BO_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_BO_STATUS'
        ParamType = ptInput
        Value = '4'
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
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'IS_LOCAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LOCAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bp.PRODUCT_CODE as BUDGET_PRODUCT_CODE,'
      '  p.PARENT_CODE,'
      ''
      '  Decode(d.DEPT_CODE, :DEPT_CODE, 0, 1) as IS_NOT_PARENT_DEPT,'
      '  d.DEPT_CODE,'
      
        '  Decode(:IS_LOCAL, 1, '#39#39', Decode(d.DEPT_CODE, :DEPT_CODE, '#39#39', '#39 +
        '            '#39')) || d.NAME as DEPT_NAME,'
      '  d.PARENT_CODE as PARENT_DEPT_CODE,'
      '  ( ( select'
      '        dt.DEPT_TYPE_ABBREV'
      '      from'
      '        DEPT_TYPES dt'
      '      where'
      '        (dt.DEPT_TYPE_CODE = d.DEPT_TYPE_CODE)'
      '    )'
      '    ||'
      '    d.CUSTOM_CODE'
      '    ||'
      '    d.SUFFIX_LETTER'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  %DATE_UNITS_SQL'
      ''
      '  -- totals'
      ''
      
        '  Cast(Sum(bx.DEPT_PLAN_PRICE) as Number) as TOTAL_DEPT_PLAN_PRI' +
        'CE,'
      ''
      
        '  Cast(Sum(bx.BOIO_PLAN_PRICE) as Number) as TOTAL_BOIO_PLAN_PRI' +
        'CE,'
      
        '  Cast(%PRICE_DEVIATION[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.BOIO_PLAN' +
        '_PRICE)] as Number) as BOIO_PLAN_TO_PLAN_DEV,'
      
        '  Cast(%PRICE_DEVIATION_PERCENT[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.B' +
        'OIO_PLAN_PRICE)] as Number) as BOIO_PLAN_TO_PLAN_DEV_P,'
      ''
      
        '  Cast(Sum(bx.DEPT_REAL_PRICE) as Number) as TOTAL_DEPT_REAL_PRI' +
        'CE,'
      
        '  Cast(%PRICE_DEVIATION[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.DEPT_REAL' +
        '_PRICE)] as Number) as REAL_TO_PLAN_DEV,'
      
        '  Cast(%PRICE_DEVIATION_PERCENT[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.D' +
        'EPT_REAL_PRICE)] as Number) as REAL_TO_PLAN_DEV_P,'
      
        '  Cast(%PRICE_DEVIATION[Sum(bx.BOIO_PLAN_PRICE)~Sum(bx.DEPT_REAL' +
        '_PRICE)] as Number) as REAL_TO_BOIO_PLAN_DEV,'
      
        '  Cast(%PRICE_DEVIATION_PERCENT[Sum(bx.BOIO_PLAN_PRICE)~Sum(bx.D' +
        'EPT_REAL_PRICE)] as Number) as REAL_TO_BOIO_PLAN_DEV_P'
      ''
      '  -- end totals'
      ''
      'from'
      '  DEPTS d,'
      '  BUDGET_PRODUCTS bp,'
      '  PRODUCTS p,'
      '  ( select'
      
        '      (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, txd.%THE_X_DA' +
        'TE, :TIME_UNIT_CODE) + 1) as DATE_NO,'
      '      boi.BUDGET_PRODUCT_CODE,'
      '      boi.DEPT_CODE,'
      '      txd.%THE_X_DATE as THE_DATE,'
      ''
      '      Sum('
      '        ( DateTimeUtils.ExactTimeUnitsBetween('
      '            Greatest(txd.THE_FIRST_DATE, boi.BEGIN_DATE),'
      '            Least(txd.THE_LAST_DATE, boi.END_DATE),'
      '            boi.DISTRIBUTION_DATE_UNIT_CODE'
      '          ) /'
      
        '          DateTimeUtils.ExactTimeUnitsBetween(boi.BEGIN_DATE, bo' +
        'i.END_DATE, boi.DISTRIBUTION_DATE_UNIT_CODE)'
      '        ) *'
      '        boi.PLAN_PRICE'
      '      ) as DEPT_PLAN_PRICE,'
      ''
      '      Sum('
      '        ( select'
      '            Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '          from'
      '            BOI_ORDERS boio'
      '          where'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null) and'
      
        '            (%BOIO_PLAN_DATE[boio] between txd.THE_FIRST_DATE an' +
        'd txd.THE_LAST_DATE) -- narochno e PLAN_DATE, a ne ACCOUNT_DATE'
      '        )'
      '      ) as DEPT_REAL_PRICE,'
      ''
      '      Sum('
      '        ( select'
      '            Sum(%BOIO_PLAN_TOTAL_PRICE[boio])'
      '          from'
      '            BOI_ORDERS boio'
      '          where'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null) and'
      
        '            (%BOIO_PLAN_DATE[boio] between txd.THE_FIRST_DATE an' +
        'd txd.THE_LAST_DATE)'
      '        )'
      '      ) as BOIO_PLAN_PRICE'
      ''
      '    from'
      '      %THE_X_DATES txd,'
      '      ( select'
      '          boi.BUDGET_ORDER_BRANCH_CODE,'
      '          boi.BUDGET_ORDER_CODE,'
      '          boi.BUDGET_ORDER_ITEM_CODE,'
      '          boi.BUDGET_PRODUCT_CODE,'
      '          boi.DEPT_CODE,'
      '          boi.BEGIN_DATE,'
      '          boi.END_DATE,'
      '          boi.DISTRIBUTION_DATE_UNIT_CODE,'
      '          (boi.END_DATE - boi.BEGIN_DATE + 1) as DAYS,'
      '          boi.TOTAL_PRICE as PLAN_PRICE'
      ''
      '        from'
      '          BUDGET_ORDER_ITEMS boi'
      '        where'
      '          (boi.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '          ( (:BOI_DISTRIBUTION_TYPE_CODE is null) or'
      
        '            (:BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_' +
        'TYPE_CODE) ) and'
      ''
      '          ( (:BUDGET_ORDER_ITEM_TYPE is null) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 1) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE in (%boit_DELIVER' +
        'IES_INTRODUCING, %boit_INTERNAL_INTRODUCING, %boit_EXPENSE))'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 2) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE in (%boit_DELIVER' +
        'IES_INTRODUCING, %boit_INTERNAL_INTRODUCING))'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 3) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_DELIVERIE' +
        'S_INTRODUCING)'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 4) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_INTERNAL_' +
        'INTRODUCING)'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 5) and'
      '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_EXPENSE)'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 6) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_EXPLOITAT' +
        'ION)'
      '            )'
      '          ) and'
      ''
      '          -- malko riazane, otvyn pak go ima uslovieto'
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_RELATIONS pr,'
      '              PRODUCTS p2'
      '            where'
      
        '              (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) ' +
        'and'
      
        '              (pr.DESCENDANT_PRODUCT_CODE = boi.BUDGET_PRODUCT_C' +
        'ODE) and'
      '              (p2.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE) and'
      '              ( (p2.IS_GROUP = 1) or'
      '                (:BOI_ORDER_TYPE_CODE is null) or'
      '                (p2.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              DEPT_RELATIONS dr'
      '            where'
      '              (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '              (dr.DESCENDANT_DEPT_CODE = boi.DEPT_CODE)'
      '            )'
      '          ) and'
      ''
      '          (exists('
      '            select'
      '              1'
      ''
      '            from'
      '              BUDGET_ORDERS bo,'
      '              BUDGET_ORDER_ITEMS boi2'
      ''
      '            where'
      
        '              (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '              (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      ''
      
        '              (bo.BUDGET_ORDER_CLASS_CODE = :BUDGET_ORDER_CLASS_' +
        'CODE) and'
      ''
      
        '              (bo.BUDGET_ORDER_BRANCH_CODE = boi2.BUDGET_ORDER_B' +
        'RANCH_CODE) and'
      
        '              (bo.BUDGET_ORDER_CODE = boi2.BUDGET_ORDER_CODE) an' +
        'd'
      ''
      '              (bo.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '              ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '                (:BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE)'
      '              ) and'
      ''
      '              ( (:BUDGET_ORDER_CODE is null) or'
      '                (:BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE)'
      '              ) and'
      ''
      '              ( (:GENERATOR_DEPT_CODE is null) or'
      '                (:GENERATOR_DEPT_CODE = bo.GENERATOR_DEPT_CODE)'
      '              ) and'
      ''
      '              ( (:BO_REGULARITY_TYPE_CODE is null) or'
      
        '                (:BO_REGULARITY_TYPE_CODE = bo.BO_REGULARITY_TYP' +
        'E_CODE)'
      '              ) and'
      ''
      '              ( (:ORG_TASK_PROPOSAL_STATE_CODE is null) or'
      
        '                (:ORG_TASK_PROPOSAL_STATE_CODE = bo.ORG_TASK_PRO' +
        'POSAL_STATE_CODE)'
      '              ) and'
      ''
      '              ( Nvl2('
      '                  bo.ANNUL_EMPLOYEE_CODE,'
      '                  5,'
      '                  Nvl2('
      '                    bo.CLOSE_EMPLOYEE_CODE,'
      '                    4,'
      '                    Decode('
      '                      Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '                      1,'
      '                      Decode('
      '                        Sign(bo.END_DATE - ContextDate), -1,'
      '                        3,'
      '                        2'
      '                      )'
      '                    )'
      '                  )'
      '                ) between :MIN_BO_STATUS and :MAX_BO_STATUS'
      '              ) and'
      ''
      '              ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '                exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      TEMP_FILTERED_PRODUCTS tfp'
      '                    where'
      '                      (tfp.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '                  )'
      '              )'
      ''
      '            group by'
      '              bo.ANNUL_EMPLOYEE_CODE,'
      '              bo.CLOSE_EMPLOYEE_CODE,'
      '              bo.BEGIN_DATE'
      '            )'
      '          )'
      ''
      '      ) boi'
      ''
      '    where'
      '      (txd.%THE_X_DATE between'
      '        :BEGIN_DATE and'
      
        '        DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_UNIT' +
        '_CODE, :TIME_UNIT_COUNT) - 1'
      '      ) and'
      '      (boi.BEGIN_DATE <= txd.THE_LAST_DATE) and'
      '      (boi.END_DATE >= txd.THE_FIRST_DATE)'
      ''
      ''
      '    group by'
      '      txd.%THE_X_DATE,'
      '      boi.DEPT_CODE,'
      '      boi.BUDGET_PRODUCT_CODE'
      '  ) bx'
      '  '
      'where'
      '  ( ( (:IS_LOCAL = 0) and'
      '      ( (d.DEPT_CODE = :DEPT_CODE) or'
      '        (d.PARENT_CODE = :DEPT_CODE) )'
      '    ) or'
      '    '
      '    ( (:IS_LOCAL = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = d.DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = bx.DEPT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (bp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  '
      '  (p.IS_INACTIVE = 0) and'
      ''
      '  ( (p.IS_GROUP = 1) or'
      '    (:BOI_ORDER_TYPE_CODE is null) or'
      '    (p.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = bx.BUDGET_PRODUCT_CODE)'
      '    )'
      '  ) and'
      '  '
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = d.DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = bx.DEPT_CODE)'
      '    )'
      '  )'
      '  '
      ''
      'group by'
      '  bp.PRODUCT_CODE,'
      '  p.PARENT_CODE,'
      '  d.DEPT_CODE,'
      '  d.NAME,'
      '  d.DEPT_TYPE_CODE,'
      '  d.CUSTOM_CODE,'
      '  d.SUFFIX_LETTER,'
      '  d.PARENT_CODE'
      ''
      'order by'
      '  DEPT_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DATE_UNITS_SQL'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.BOIO_PLAN_PRICE)]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'PRICE_DEVIATION_PERCENT[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.BOIO_PLAN' +
          '_PRICE)]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.DEPT_REAL_PRICE)]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'PRICE_DEVIATION_PERCENT[Sum(bx.DEPT_PLAN_PRICE)~Sum(bx.DEPT_REAL' +
          '_PRICE)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION[Sum(bx.BOIO_PLAN_PRICE)~Sum(bx.DEPT_REAL_PRICE)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PRICE_DEVIATION_PERCENT[Sum(bx.BOIO_PLAN_PRICE)~Sum(bx.DEPT_REAL' +
          '_PRICE)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATE'
        ParamType = ptInput
        Value = 'THE_WEEK_DATE'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_DATE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_WEEK_DATES'
      end
      item
        DataType = ftWideString
        Name = 'boit_DELIVERIES_INTRODUCING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_INTERNAL_INTRODUCING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_EXPENSE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_EXPLOITATION'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    Left = 520
    Top = 384
  end
  object prvDeptBudget: TDataSetProvider
    DataSet = qryDeptBudget
    Left = 520
    Top = 336
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
      '  KEY_FIELD_NAME'
      'from'
      '  THE_DATE_UNITS'
      'where'
      '  THE_DATE_UNIT_CODE = :THE_DATE_UNIT_CODE'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 624
    Top = 248
    object qryGetPeriodFieldNamesTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object qryGetPeriodFieldNamesKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
  end
  object prvBudgetMaster: TDataSetProvider
    DataSet = qryBudgetMaster
    UpdateMode = upWhereKeyOnly
    Left = 520
    Top = 232
  end
  object qryBudgetMaster: TAbmesSQLQuery
    BeforeOpen = qryBudgetMasterBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRODUCT_CODE as BUDGET_PRODUCT_CODE,'
      '  p.PARENT_CODE,'
      '  p.NAME,'
      '  p.CUSTOM_CODE,'
      '  p.IS_GROUP,'
      '  p.BOI_ORDER_TYPE_CODE,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as HAS_DOCUMENTATION,'
      '  p.IS_INACTIVE,'
      '  To_Number(null) as TOTAL_REAL_PRICE,'
      '  To_Number(null) as TOTAL_PLAN_PRICE,'
      '  To_Number(null) as TOTAL_BOIO_PLAN_PRICE,'
      ''
      '  To_Char(p.CUSTOM_CODE) as CUSTOM_CODE_AS_TEXT,'
      ''
      '  Decode('
      '    ( select'
      '        Max(p2.CUSTOM_CODE)'
      '      from'
      '        PRODUCTS p2'
      '      where'
      '        (p2.PARENT_CODE = p.PARENT_CODE) and'
      ''
      '        ( (p.IS_GROUP = 1) or'
      '          (:BOI_ORDER_TYPE_CODE is null) or'
      '          (p.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '        ) and'
      ''
      '        (p.IS_INACTIVE = 0) and'
      ''
      '        (not exists('
      '          select'
      '            1'
      '          from'
      '            PRODUCT_RELATIONS pr,'
      '            PRODUCTS p2'
      '          where'
      '            (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '            (pr.ANCESTOR_PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '            (p2.IS_INACTIVE = 1)'
      '          )'
      '        ) and'
      ''
      '        ( (:BUDGET_PRODUCT_CODE is null) or'
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_RELATIONS pr'
      '            where'
      
        '              (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) ' +
        'and'
      '              (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '            )'
      '          )'
      '        )'
      '    ),'
      '    p.CUSTOM_CODE,'
      '    1,'
      '    0'
      '  ) as IS_LAST_CHILD,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PARENT_CODE = p.PRODUCT_CODE) and'
      ''
      '      ( (p.IS_GROUP = 1) or'
      '        (:BOI_ORDER_TYPE_CODE is null) or'
      '        (p.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '      ) and'
      ''
      '      (p.IS_INACTIVE = 0) and'
      ''
      '      (not exists('
      '        select'
      '          1'
      '        from'
      '          PRODUCT_RELATIONS pr,'
      '          PRODUCTS p2'
      '        where'
      '          (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '          (pr.ANCESTOR_PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '          (p2.IS_INACTIVE = 1)'
      '        )'
      '      ) and'
      ''
      '      ( (:BUDGET_PRODUCT_CODE is null) or'
      '        (exists('
      '          select'
      '            1'
      '          from'
      '            PRODUCT_RELATIONS pr'
      '          where'
      
        '            (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) an' +
        'd'
      '            (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '          )'
      '        )'
      '      )'
      '  ) as HAS_CHILDREN,'
      ''
      '  ( ( select'
      '        Count(*)'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '        (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '        (pr.ANCESTOR_PRODUCT_CODE <> pr.DESCENDANT_PRODUCT_CODE)' +
        ' and'
      '        (pr.ANCESTOR_PRODUCT_CODE <> %TREE_ROOT_CODE)'
      '    ) -'
      '    ( select'
      '        Count(*)'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '        (pr.DESCENDANT_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      
        '        (pr.ANCESTOR_PRODUCT_CODE <> pr.DESCENDANT_PRODUCT_CODE)' +
        ' and'
      '        (pr.ANCESTOR_PRODUCT_CODE <> %TREE_ROOT_CODE)'
      '    )'
      '  ) as BUDGET_PRODUCT_LEVEL'
      ''
      'from'
      '  BUDGET_PRODUCTS bp,'
      '  PRODUCTS p'
      ''
      'where'
      '  (p.PRODUCT_CODE = bp.PRODUCT_CODE) and'
      ''
      '  ( (p.IS_GROUP = 1) or'
      '    (:BOI_ORDER_TYPE_CODE is null) or'
      '    (p.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  (p.IS_INACTIVE = 0) and'
      ''
      '  (not exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr,'
      '      PRODUCTS p2'
      '    where'
      '      (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pr.ANCESTOR_PRODUCT_CODE = p2.PRODUCT_CODE) and'
      '      (p2.IS_INACTIVE = 1)'
      '    )'
      '  ) and'
      ''
      '  ( (:BUDGET_PRODUCT_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        PRODUCT_RELATIONS pr'
      '      where'
      '        (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      '        (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  CUSTOM_CODE')
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
        Name = 'TREE_ROOT_CODE'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 520
    Top = 280
    object qryBudgetMasterNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryBudgetMasterIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
    end
    object qryBudgetMasterDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBudgetMasterDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBudgetMasterHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryBudgetMasterIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryBudgetMasterTOTAL_REAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_REAL_PRICE'
    end
    object qryBudgetMasterTOTAL_PLAN_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PLAN_PRICE'
    end
    object qryBudgetMasterBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryBudgetMasterBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object qryBudgetMasterPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object qryBudgetMasterCUSTOM_CODE: TAbmesFloatField
      FieldName = 'CUSTOM_CODE'
    end
    object qryBudgetMasterTOTAL_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_BOIO_PLAN_PRICE'
    end
    object qryBudgetMasterCUSTOM_CODE_AS_TEXT: TAbmesWideStringField
      FieldName = 'CUSTOM_CODE_AS_TEXT'
      Size = 40
    end
    object qryBudgetMasterIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
    end
    object qryBudgetMasterHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
    end
    object qryBudgetMasterBUDGET_PRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_LEVEL'
    end
  end
  object qryBudgetOrderItemsByTimeUnits: TAbmesSQLQuery
    BeforeOpen = qryBudgetOrderItemsByTimeUnitsBeforeOpen
    AfterOpen = qryBudgetOrderItemsByTimeUnitsAfterOpen
    AfterClose = qryBudgetOrderItemsByTimeUnitsAfterClose
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
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
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
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
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
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_BO_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_BO_STATUS'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bp.PRODUCT_CODE as BUDGET_PRODUCT_CODE,'
      '  p.PARENT_CODE,'
      '  bx.BUDGET_ORDER_CLASS_CODE,'
      ''
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || bo.BUDGET_ORDER_CODE || '#39'/'#39' || bor' +
        't.BO_REGULARITY_TYPE_ABBREV'
      '    from'
      '      BUDGET_ORDERS bo,'
      '      DEPTS d,'
      '      BO_REGULARITY_TYPES bort'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '      (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '      (d.DEPT_CODE = bo.BUDGET_ORDER_BRANCH_CODE) and'
      
        '      (bort.BO_REGULARITY_TYPE_CODE = bo.BO_REGULARITY_TYPE_CODE' +
        ')'
      '  ) as BUDGET_ORDER_IDENTIFIER,'
      ''
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE,'
      ''
      '  boi.ANNUL_EMPLOYEE_CODE,'
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE,'
      ''
      '  ( select'
      '      bo.BO_REGULARITY_TYPE_CODE'
      '    from'
      '      BUDGET_ORDERS bo'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '      (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) '
      '  ) as BO_REGULARITY_TYPE_CODE,'
      '  '
      '  ( select'
      '      bort.BO_REGULARITY_TYPE_NAME'
      '    from'
      '      BUDGET_ORDERS bo,'
      '      BO_REGULARITY_TYPES bort'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '      (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (bort.BO_REGULARITY_TYPE_CODE = bo.BO_REGULARITY_TYPE_CODE' +
        ')'
      '  ) as BO_REGULARITY_TYPE_NAME,'
      '  '
      '  ( select'
      '      p2.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as CUSTOM_CODE,'
      ''
      '  ( select'
      '      p2.NAME'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NAME,'
      ''
      '  ( select'
      '      p2.BOI_ORDER_TYPE_CODE'
      '    from'
      '      PRODUCTS p2'
      '    where'
      '      (p2.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BOI_ORDER_TYPE_CODE,'
      ''
      '  ( select'
      '      boiot.BOI_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTS p2,'
      '      BOI_ORDER_TYPES boiot'
      '    where'
      '      (p2.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE) and'
      '      (p2.BOI_ORDER_TYPE_CODE = boiot.BOI_ORDER_TYPE_CODE)'
      '  ) as BOI_ORDER_TYPE_ABBREV,'
      ''
      '  Nvl2('
      '    boi.ANNUL_EMPLOYEE_CODE,'
      '    10,'
      '    Nvl2('
      '      boi.CLOSE_EMPLOYEE_CODE,'
      '      9,'
      '      case'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          1'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 1) and'
      '          (boi.IS_CANCELED = 0) then'
      '          2'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          3'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_FOR_RECONSIDERATION = 1) then'
      '          4'
      '        when'
      '          (boi.IS_CANCELED = 1) then'
      '          5'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 1) then'
      '          6'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 1) then'
      '          7'
      '        else'
      '          8'
      '      end'
      '    )'
      '  ) as BUDGET_ORDER_ITEM_STATUS_CODE,'
      '  '
      '  %HAS_DOC_ITEMS[boi] as HAS_DOCUMENTATION,'
      '  boi.DOC_BRANCH_CODE,'
      '  boi.DOC_CODE,'
      '  '
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boi.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      '  '
      '  ( select'
      '      bdt.BOI_DISTRIBUTION_TYPE_NAME'
      ''
      '    from'
      '      BOI_DISTRIBUTION_TYPES bdt'
      '    where'
      
        '      (bdt.BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_TYP' +
        'E_CODE)'
      '  ) as BOI_DISTRIBUTION_TYPE_NAME,'
      ''
      '  ( select'
      '      %CLOSED_BUDGET_ORDER_STATUS_CODE'
      '    from'
      '      DUAL'
      '  ) as MAX_STATUS_CODE,'
      ''
      '  ( select'
      '      %CLOSED_BOI_STATUS_CODE'
      '    from'
      '      DUAL'
      '  ) as MAX_ITEM_STATUS_CODE,'
      ''
      '  %DATE_UNITS_SQL'
      ''
      'from'
      '  BUDGET_PRODUCTS bp,'
      '  PRODUCTS p,'
      '  BUDGET_ORDER_ITEMS boi,'
      '  ( select'
      '      bxx.BUDGET_ORDER_CLASS_CODE,'
      '      bxx.DATE_NO,'
      '      bxx.THE_DATE,'
      '      bxx.BUDGET_ORDER_BRANCH_CODE,'
      '      bxx.BUDGET_ORDER_CODE,'
      '      bxx.BUDGET_ORDER_ITEM_CODE,'
      '      bxx.BUDGET_PRODUCT_CODE,'
      '      bxx.PLAN_PRICE,'
      '      bxx.BOIO_PLAN_PRICE,'
      
        '      %PRICE_DEVIATION[bxx.PLAN_PRICE~bxx.BOIO_PLAN_PRICE] as BO' +
        'IO_PLAN_TO_PLAN_DEV,'
      
        '      %PRICE_DEVIATION_PERCENT[bxx.PLAN_PRICE~bxx.BOIO_PLAN_PRIC' +
        'E] as BOIO_PLAN_TO_PLAN_DEV_P,'
      '      bxx.REAL_PRICE,'
      
        '      %PRICE_DEVIATION[bxx.PLAN_PRICE~bxx.REAL_PRICE] as REAL_TO' +
        '_PLAN_DEV,'
      
        '      %PRICE_DEVIATION_PERCENT[bxx.PLAN_PRICE~bxx.REAL_PRICE] as' +
        ' REAL_TO_PLAN_DEV_P,'
      
        '      %PRICE_DEVIATION[bxx.BOIO_PLAN_PRICE~bxx.REAL_PRICE] as RE' +
        'AL_TO_BOIO_PLAN_DEV,'
      
        '      %PRICE_DEVIATION_PERCENT[bxx.BOIO_PLAN_PRICE~bxx.REAL_PRIC' +
        'E] as REAL_TO_BOIO_PLAN_DEV_P,'
      '      bxx.IS_DISTRIBUTED'
      '    from'
      '      ( select'
      '          ( select'
      '              bo.BUDGET_ORDER_CLASS_CODE'
      '            from'
      '              BUDGET_ORDERS bo'
      '            where'
      
        '              (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '              (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) '
      '          ) as BUDGET_ORDER_CLASS_CODE,'
      ''
      
        '          (DateTimeUtils.TimeUnitsBetween(:BEGIN_DATE, txd.%THE_' +
        'X_DATE, :TIME_UNIT_CODE) + 1) as DATE_NO,'
      '          txd.%THE_X_DATE as THE_DATE,'
      '          boi.BUDGET_ORDER_BRANCH_CODE,'
      '          boi.BUDGET_ORDER_CODE,'
      '          boi.BUDGET_ORDER_ITEM_CODE,'
      '          boi.BUDGET_PRODUCT_CODE,'
      ''
      '          ( ( DateTimeUtils.ExactTimeUnitsBetween('
      '                Greatest(txd.THE_FIRST_DATE, boi.BEGIN_DATE),'
      '                Least(txd.THE_LAST_DATE, boi.END_DATE),'
      '                boi.DISTRIBUTION_DATE_UNIT_CODE'
      '              ) /'
      
        '              DateTimeUtils.ExactTimeUnitsBetween(boi.BEGIN_DATE' +
        ', boi.END_DATE, boi.DISTRIBUTION_DATE_UNIT_CODE)'
      '            ) *'
      '            boi.TOTAL_PRICE'
      '          ) as PLAN_PRICE,'
      ''
      '          ( select'
      '              Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '            from'
      '              BOI_ORDERS boio'
      '            where'
      
        '              (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_' +
        'BRANCH_CODE) and'
      
        '              (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) a' +
        'nd'
      
        '              (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_IT' +
        'EM_CODE) and'
      '              (boio.ANNUL_EMPLOYEE_CODE is null) and'
      
        '              (%BOIO_PLAN_DATE[boio] between txd.THE_FIRST_DATE ' +
        'and txd.THE_LAST_DATE) -- narochno e PLAN_DATE, a ne ACCOUNT_DAT' +
        'E'
      '          ) as REAL_PRICE,'
      ''
      '          ( select'
      '              Sum(%BOIO_PLAN_TOTAL_PRICE[boio])'
      '            from'
      '              BOI_ORDERS boio'
      '            where'
      
        '              (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_' +
        'BRANCH_CODE) and'
      
        '              (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) a' +
        'nd'
      
        '              (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_IT' +
        'EM_CODE) and'
      '              (boio.ANNUL_EMPLOYEE_CODE is null) and'
      
        '              (%BOIO_PLAN_DATE[boio] between txd.THE_FIRST_DATE ' +
        'and txd.THE_LAST_DATE)'
      '          ) as BOIO_PLAN_PRICE,'
      ''
      '          ( select'
      '              Sign(Count(*))'
      '            from'
      '              DEPT_RELATIONS dr'
      '            where'
      '              (dr.ANCESTOR_DEPT_CODE = boi.DEPT_CODE) and'
      '              (dr.DESCENDANT_DEPT_CODE <> boi.DEPT_CODE) and'
      '              (dr.DESCENDANT_DEPT_CODE = :DEPT_CODE)'
      '          ) as IS_DISTRIBUTED'
      ''
      '        from'
      '          %THE_X_DATES txd,'
      '          BUDGET_ORDER_ITEMS boi'
      ''
      '        where'
      '          (txd.%THE_X_DATE between'
      '            :BEGIN_DATE and'
      
        '            DateTimeUtils.IncDateByTimeUnits(:BEGIN_DATE, :TIME_' +
        'UNIT_CODE, :TIME_UNIT_COUNT) - 1'
      '          ) and'
      '      '
      '          (boi.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '          ( (:BUDGET_ORDER_ITEM_TYPE is null) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 1) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE in (%boit_DELIVER' +
        'IES_INTRODUCING, %boit_INTERNAL_INTRODUCING, %boit_EXPENSE))'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 2) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE in (%boit_DELIVER' +
        'IES_INTRODUCING, %boit_INTERNAL_INTRODUCING))'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 3) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_DELIVERIE' +
        'S_INTRODUCING)'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 4) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_INTERNAL_' +
        'INTRODUCING)'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 5) and'
      '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_EXPENSE)'
      '            ) or'
      ''
      '            ( (:BUDGET_ORDER_ITEM_TYPE = 6) and'
      
        '              (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_EXPLOITAT' +
        'ION)'
      '            )'
      '          ) and'
      ''
      '          (boi.BEGIN_DATE <= txd.THE_LAST_DATE) and'
      '          (boi.END_DATE >= txd.THE_FIRST_DATE) and'
      ''
      '          -- malko riazane, otvyn pak go ima uslovieto'
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              PRODUCT_RELATIONS pr,'
      '              PRODUCTS p2'
      '            where'
      
        '              (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) ' +
        'and'
      
        '              (pr.DESCENDANT_PRODUCT_CODE = boi.BUDGET_PRODUCT_C' +
        'ODE) and'
      '              (p2.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE) and'
      '              ( (p2.IS_GROUP = 1) or'
      '                (:BOI_ORDER_TYPE_CODE is null) or'
      '                (p2.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      
        '          ( -- kaskadno razpredelen biudjeten limit za forp ot p' +
        'o-visoko nivo'
      '            (exists('
      '              select'
      '                1'
      '              from'
      '                DEPT_RELATIONS dr'
      '              where'
      '                (dr.ANCESTOR_DEPT_CODE = boi.DEPT_CODE) and'
      '                (dr.DESCENDANT_DEPT_CODE <> boi.DEPT_CODE) and'
      '                (dr.DESCENDANT_DEPT_CODE = :DEPT_CODE) and'
      '                (boi.BOI_DISTRIBUTION_TYPE_CODE = 2)'
      '              )'
      '            ) or'
      ''
      '            (exists('
      '              select'
      '                1'
      '              from'
      '                DEPT_RELATIONS dr'
      '              where'
      '                (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '                (dr.DESCENDANT_DEPT_CODE = boi.DEPT_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:BOI_DISTRIBUTION_TYPE_CODE is null) or'
      
        '            (:BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_' +
        'TYPE_CODE) ) and'
      ''
      '          (exists('
      '            select'
      '              1'
      ''
      '            from'
      '              BUDGET_ORDERS bo,'
      '              BUDGET_ORDER_ITEMS boi2'
      ''
      '            where'
      
        '              (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '              (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      ''
      
        '              (bo.BUDGET_ORDER_CLASS_CODE = :BUDGET_ORDER_CLASS_' +
        'CODE) and'
      ''
      
        '              (bo.BUDGET_ORDER_BRANCH_CODE = boi2.BUDGET_ORDER_B' +
        'RANCH_CODE) and'
      
        '              (bo.BUDGET_ORDER_CODE = boi2.BUDGET_ORDER_CODE) an' +
        'd'
      ''
      '              (bo.ANNUL_EMPLOYEE_CODE is null) and'
      ''
      '              ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      
        '                (:BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRA' +
        'NCH_CODE)'
      '              ) and'
      ''
      '              ( (:BUDGET_ORDER_CODE is null) or'
      '                (:BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE)'
      '              ) and'
      ''
      '              ( (:GENERATOR_DEPT_CODE is null) or'
      '                (:GENERATOR_DEPT_CODE = bo.GENERATOR_DEPT_CODE)'
      '              ) and'
      ''
      '              ( (:BO_REGULARITY_TYPE_CODE is null) or'
      
        '                (:BO_REGULARITY_TYPE_CODE = bo.BO_REGULARITY_TYP' +
        'E_CODE)'
      '              ) and'
      ''
      '              ( (:ORG_TASK_PROPOSAL_STATE_CODE is null) or'
      
        '                (:ORG_TASK_PROPOSAL_STATE_CODE = bo.ORG_TASK_PRO' +
        'POSAL_STATE_CODE)'
      '              ) and'
      ''
      '              ( Nvl2('
      '                  bo.ANNUL_EMPLOYEE_CODE,'
      '                  5,'
      '                  Nvl2('
      '                    bo.CLOSE_EMPLOYEE_CODE,'
      '                    4,'
      '                    Decode('
      '                      Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '                      1,'
      '                      Decode('
      '                        Sign(bo.END_DATE - ContextDate), -1,'
      '                        3,'
      '                        2'
      '                      )'
      '                    )'
      '                  )'
      '                ) between :MIN_BO_STATUS and :MAX_BO_STATUS'
      '              ) and'
      ''
      '              ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '                exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      TEMP_FILTERED_PRODUCTS tfp'
      '                    where'
      '                      (tfp.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '                  )'
      '              )'
      ''
      '            group by'
      '              bo.ANNUL_EMPLOYEE_CODE,'
      '              bo.CLOSE_EMPLOYEE_CODE,'
      '              bo.BEGIN_DATE'
      '            )'
      '          )'
      '      ) bxx'
      '  ) bx'
      ''
      'where'
      '  (bp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  '
      
        '  (boi.BUDGET_ORDER_BRANCH_CODE = bx.BUDGET_ORDER_BRANCH_CODE) a' +
        'nd'
      '  (boi.BUDGET_ORDER_CODE = bx.BUDGET_ORDER_CODE) and'
      '  (boi.BUDGET_ORDER_ITEM_CODE = bx.BUDGET_ORDER_ITEM_CODE) and'
      ''
      '  ( (p.IS_GROUP = 1) or'
      '    (:BOI_ORDER_TYPE_CODE is null) or'
      '    (p.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      BUDGET_ORDERS bo'
      '    where'
      
        '      (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_COD' +
        'E) and'
      '      (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '      (bo.BUDGET_ORDER_CLASS_CODE = :BUDGET_ORDER_CLASS_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = p.PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = bx.BUDGET_PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = p.PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = bx.BUDGET_PRODUCT_CODE)'
      '    )'
      '  )'
      ''
      'group by'
      '  bp.PRODUCT_CODE,'
      '  p.PARENT_CODE,'
      '  bx.BUDGET_ORDER_CLASS_CODE,'
      '  p.CUSTOM_CODE,'
      '  p.NAME,'
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE, '
      '  boi.BUDGET_PRODUCT_CODE,'
      '  boi.ANNUL_EMPLOYEE_CODE,'
      '  boi.CLOSE_EMPLOYEE_CODE,'
      '  boi.IS_CONFIRMED,'
      '  boi.IS_CANCELED,'
      '  boi.IS_FOR_RECONSIDERATION,'
      '  boi.BEGIN_DATE,'
      '  boi.END_DATE,'
      '  boi.DOC_BRANCH_CODE,'
      '  boi.DOC_CODE,'
      '  boi.DEPT_CODE,'
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE'
      ''
      'order by'
      '  BUDGET_ORDER_IDENTIFIER,'
      '  BUDGET_ORDER_CODE,'
      '  BUDGET_ORDER_ITEM_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[boi]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CLOSED_BUDGET_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'CLOSED_BOI_STATUS_CODE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'DATE_UNITS_SQL'
        ParamType = ptInput
        Value = 'Min(bx.IS_DISTRIBUTED) as IS_DISTRIBUTED'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION[bxx.PLAN_PRICE~bxx.BOIO_PLAN_PRICE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION_PERCENT[bxx.PLAN_PRICE~bxx.BOIO_PLAN_PRICE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION[bxx.PLAN_PRICE~bxx.REAL_PRICE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION_PERCENT[bxx.PLAN_PRICE~bxx.REAL_PRICE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION[bxx.BOIO_PLAN_PRICE~bxx.REAL_PRICE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'PRICE_DEVIATION_PERCENT[bxx.BOIO_PLAN_PRICE~bxx.REAL_PRICE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATE'
        ParamType = ptInput
        Value = 'THE_WEEK_DATE'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_DATE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'THE_X_DATES'
        ParamType = ptInput
        Value = 'THE_WEEK_DATES'
      end
      item
        DataType = ftWideString
        Name = 'boit_DELIVERIES_INTRODUCING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_INTERNAL_INTRODUCING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_EXPENSE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_EXPLOITATION'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    Left = 624
    Top = 352
  end
  object prvBudgetOrderItemsByTimeUnits: TDataSetProvider
    DataSet = qryBudgetOrderItemsByTimeUnits
    Left = 624
    Top = 304
  end
  object qryBOIOrderTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  boiot.BOI_ORDER_TYPE_CODE,'
      '  boiot.BOI_ORDER_TYPE_ABBREV,'
      '  boiot.BOI_ORDER_TYPE_NAME'
      'from'
      '  BOI_ORDER_TYPES boiot'
      'order by'
      '  boiot.BOI_ORDER_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 168
    object qryBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_NAME'
      Size = 100
    end
  end
  object prvBOIOrderTypes: TDataSetProvider
    DataSet = qryBOIOrderTypes
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 120
  end
  object qryBOIOrdersMaster: TAbmesSQLQuery
    BeforeOpen = qryBOIOrdersMasterBeforeOpen
    AfterClose = qryBOIOrdersMasterAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '2'
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
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEVELOPER_DEPT_CODE'
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
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_BOI_ORDERS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MIN_BOIO_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_BOIO_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
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
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
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
        Name = 'DELIVERY_PROJECT_CODE'
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
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Nvl2('
      '    bo.ANNUL_EMPLOYEE_CODE,'
      '    5,'
      '    Nvl2('
      '      bo.CLOSE_EMPLOYEE_CODE,'
      '      4,'
      '      Decode('
      '        Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '        1,'
      '        Decode('
      '          Sign(bo.END_DATE - ContextDate), -1,'
      '          3,'
      '          2'
      '        )'
      '      )'
      '    )'
      '  ) as BUDGET_ORDER_STATUS_CODE,'
      ''
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || bo.BUDGET_ORDER_CODE || '#39'/'#39' || bor' +
        't.BO_REGULARITY_TYPE_ABBREV'
      '    from'
      '      DEPTS d,'
      '      BO_REGULARITY_TYPES bort'
      '    where'
      '      (d.DEPT_CODE = bo.BUDGET_ORDER_BRANCH_CODE) and'
      
        '      (bort.BO_REGULARITY_TYPE_CODE = bo.BO_REGULARITY_TYPE_CODE' +
        ')'
      '  ) as BUDGET_ORDER_IDENTIFIER,'
      ''
      '  bo.BEGIN_DATE,'
      '  bo.END_DATE,'
      ''
      '  bo.DESCRIPTION,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '  ) as BUDGET_ORDER_PRODUCT_NAME,'
      ''
      '  ( select'
      '      otps.ORG_TASK_PROPOSAL_STATE_ABBREV'
      '    from'
      '      ORG_TASK_PROPOSAL_STATES otps'
      '    where'
      
        '      (otps.ORG_TASK_PROPOSAL_STATE_CODE = bo.ORG_TASK_PROPOSAL_' +
        'STATE_CODE)'
      '  ) as ORG_TASK_PROPOSAL_STATE_ABBREV,'
      ''
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE,'
      ''
      '  boi.ANNUL_EMPLOYEE_CODE,'
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE,'
      ''
      '  Nvl2('
      '    boi.ANNUL_EMPLOYEE_CODE,'
      '    10,'
      '    Nvl2('
      '      boi.CLOSE_EMPLOYEE_CODE,'
      '      9,'
      '      case'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          1'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 1) and'
      '          (boi.IS_CANCELED = 0) then'
      '          2'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          3'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_FOR_RECONSIDERATION = 1) then'
      '          4'
      '        when'
      '          (boi.IS_CANCELED = 1) then'
      '          5'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 1) then'
      '          6'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 1) then'
      '          7'
      '        else'
      '          8'
      '      end'
      '    )'
      '  ) as BUDGET_ITEM_STATUS_CODE,'
      ''
      '  ( select'
      '      p.BOI_ORDER_TYPE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BOI_ORDER_TYPE_CODE,'
      '  '
      '  boi.BUDGET_PRODUCT_CODE,'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NO,'
      '  '
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BUDGET_PRODUCT_NAME,'
      '  '
      '  boi.BEGIN_DATE as BOI_BEGIN_DATE,'
      '  boi.END_DATE as BOI_END_DATE,'
      '  boi.DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boi.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  boi.DISTRIBUTION_DATE_UNIT_CODE,'
      '  case'
      '    when'
      '      ( %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE] < '
      '        ( select'
      '            tdu.AVERAGE_WORKDAYS'
      '          from'
      '            THE_DATE_UNITS tdu'
      '          where'
      
        '            (tdu.THE_DATE_UNIT_CODE = boi.DISTRIBUTION_DATE_UNIT' +
        '_CODE)'
      '        ) '
      '      ) then To_number(null)'
      '    else'
      '      ( boi.TOTAL_PRICE /'
      '        Decode('
      '          %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE],'
      '          0,'
      '          null,'
      '          %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
      '        )'
      '      ) *'
      '      ( select'
      '          tdu.AVERAGE_WORKDAYS'
      '        from'
      '          THE_DATE_UNITS tdu'
      '        where'
      
        '          (tdu.THE_DATE_UNIT_CODE = boi.DISTRIBUTION_DATE_UNIT_C' +
        'ODE)'
      '      ) '
      '  end as DISTRIBUTED_SINGLE_PRICE,'
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  ( select'
      '      boidt.BOI_DISTRIBUTION_TYPE_ABBREV'
      '    from'
      '      BOI_DISTRIBUTION_TYPES boidt'
      '    where'
      
        '      (boidt.BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_T' +
        'YPE_CODE)'
      '  ) as BOI_DISTRIBUTION_TYPE_ABBREV,'
      '  boi.TOTAL_PRICE,'
      '  (boi.TOTAL_PRICE / bo.TOTAL_PRICE) as BO_PRICE_PERCENT,'
      '  ('
      '    ( Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ) -'
      '      Coalesce('
      '        ( select'
      '            Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio])'
      '          from'
      '            BOI_ORDERS boio'
      '          where'
      
        '            (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '            (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '            (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '            (boio.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        0'
      '      )'
      '    )'
      '    /'
      '    Decode('
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ),'
      '      0,'
      '      null,'
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      )'
      '    )'
      '  ) as REMAINING_TOTAL_PRICE_PERCENT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BOI_ORDERS boio'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)' +
        ' and'
      '      (boio.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOI_ORDER_COUNT,'
      ''
      '  bo.DOC_BRANCH_CODE as BO_DOC_BRANCH_CODE,'
      '  bo.DOC_CODE as BO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[bo] as BO_HAS_DOC,'
      ''
      '  boi.DOC_BRANCH_CODE as BOI_DOC_BRANCH_CODE,'
      '  boi.DOC_CODE as BOI_DOC_CODE,'
      '  %HAS_DOC_ITEMS[boi] as BOI_HAS_DOC,'
      ''
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_HAS_DOC,'
      ''
      '  ( select'
      
        '      boit.BUDGET_ORDER_ITEM_TYPE_ABBREV || '#39'     '#39' || boit.BUDG' +
        'ET_ORDER_ITEM_TYPE_NAME'
      '    from'
      '      BUDGET_ORDER_ITEM_TYPES boit'
      '    where'
      
        '      (boit.BUDGET_ORDER_ITEM_TYPE_CODE = boi.BUDGET_ORDER_ITEM_' +
        'TYPE_CODE)'
      '  ) as BUDGET_ORDER_ITEM_TYPE,'
      ''
      '  boi.IS_CONFIRMED as BOI_IS_CONFIRMED'
      ''
      'from'
      '  BUDGET_ORDERS bo,'
      '  BUDGET_ORDER_ITEMS boi'
      ''
      'where'
      '  (bo.BUDGET_ORDER_CLASS_CODE = :BUDGET_ORDER_CLASS_CODE) and'
      ''
      
        '  (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE) a' +
        'nd'
      '  (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      ''
      '  ( ( select'
      '        p.BOI_ORDER_TYPE_CODE'
      '      from'
      '        PRODUCTS p'
      '      where'
      '        (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '    ) = :BOI_ORDER_TYPE_CODE) and'
      ''
      '  ( Nvl2('
      '      bo.ANNUL_EMPLOYEE_CODE,'
      '      5,'
      '      Nvl2('
      '        bo.CLOSE_EMPLOYEE_CODE,'
      '        4,'
      '        Decode('
      '          Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '          1,'
      '          Decode('
      '            Sign(bo.END_DATE - ContextDate), -1,'
      '            3,'
      '            2'
      '          )'
      '        )'
      '      )'
      '    )'
      '    between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:BUDGET_ORDER_BRANCH_CODE is null) or'
      '    (bo.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE)'
      '  ) and'
      ''
      '  ( (:BUDGET_ORDER_CODE is null) or'
      '    (bo.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)'
      '  ) and'
      ''
      '  ( (:BUDGET_ORDER_ITEM_CODE is null) or'
      '    (boi.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE)'
      '  ) and'
      ''
      '  ( (:BO_REGULARITY_TYPE_CODE is null) or'
      '    (bo.BO_REGULARITY_TYPE_CODE = :BO_REGULARITY_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:ORG_TASK_PROPOSAL_STATE_CODE is null) or'
      
        '    (bo.ORG_TASK_PROPOSAL_STATE_CODE = :ORG_TASK_PROPOSAL_STATE_' +
        'CODE)'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = :GENERATOR_DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = bo.GENERATOR_DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = :DEVELOPER_DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = bo.DEVELOPER_DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_DATE is null) or'
      '    (bo.END_DATE >= :BEGIN_DATE) ) and'
      ''
      '  ( (:END_DATE is null) or'
      '    (bo.BEGIN_DATE <= :END_DATE) ) and'
      ''
      '  ( Nvl2('
      '      boi.ANNUL_EMPLOYEE_CODE,'
      '      10,'
      '      Nvl2('
      '        boi.CLOSE_EMPLOYEE_CODE,'
      '        9,'
      '        case'
      '          when'
      '            (ContextDate < boi.BEGIN_DATE) and'
      '            (boi.IS_CONFIRMED = 0) and'
      '            (boi.IS_FOR_RECONSIDERATION = 0) and'
      '            (boi.IS_CANCELED = 0) then'
      '            1'
      '          when'
      '            (ContextDate < boi.BEGIN_DATE) and'
      '            (boi.IS_CONFIRMED = 0) and'
      '            (boi.IS_FOR_RECONSIDERATION = 1) and'
      '            (boi.IS_CANCELED = 0) then'
      '            2'
      '          when'
      
        '            (ContextDate between boi.BEGIN_DATE and boi.END_DATE) ' +
        'and'
      '            (boi.IS_CONFIRMED = 0) and'
      '            (boi.IS_FOR_RECONSIDERATION = 0) and'
      '            (boi.IS_CANCELED = 0) then'
      '            3'
      '          when'
      
        '            (ContextDate between boi.BEGIN_DATE and boi.END_DATE) ' +
        'and'
      '            (boi.IS_FOR_RECONSIDERATION = 1) then'
      '            4'
      '          when'
      '            (boi.IS_CANCELED = 1) then'
      '            5'
      '          when'
      '            (ContextDate < boi.BEGIN_DATE) and'
      '            (boi.IS_CONFIRMED = 1) then'
      '            6'
      '          when'
      
        '            (ContextDate between boi.BEGIN_DATE and boi.END_DATE) ' +
        'and'
      '            (boi.IS_CONFIRMED = 1) then'
      '            7'
      '          else'
      '            8'
      '        end'
      '      )'
      '    )'
      '    between :MIN_ITEM_STATUS_CODE and :MAX_ITEM_STATUS_CODE'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      PRODUCT_RELATIONS pr'
      '    where'
      '      (pr.ANCESTOR_PRODUCT_CODE = :BUDGET_PRODUCT_CODE) and'
      '      (pr.DESCENDANT_PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '    )'
      '  ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      DEPT_RELATIONS dr'
      '    where'
      '      (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '      (dr.DESCENDANT_DEPT_CODE = boi.DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:BOI_DISTRIBUTION_TYPE_CODE is null) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '        (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '        (boi.BOI_DISTRIBUTION_TYPE_CODE = :BOI_DISTRIBUTION_TYPE' +
        '_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ITEM_BEGIN_DATE is null) or'
      '    (boi.END_DATE >= :ITEM_BEGIN_DATE) ) and'
      ''
      '  ( (:ITEM_END_DATE is null) or'
      '    (boi.BEGIN_DATE <= :ITEM_END_DATE) ) and'
      ''
      '  ( (:BUDGET_ORDER_ITEM_TYPE is null) or'
      ''
      '    ( (:BUDGET_ORDER_ITEM_TYPE = 1) and'
      
        '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE in (%boit_DELIVERIES_INTR' +
        'ODUCING, %boit_INTERNAL_INTRODUCING, %boit_EXPENSE))'
      '    ) or'
      ''
      '    ( (:BUDGET_ORDER_ITEM_TYPE = 2) and'
      
        '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE in (%boit_DELIVERIES_INTR' +
        'ODUCING, %boit_INTERNAL_INTRODUCING))'
      '    ) or'
      ''
      '    ( (:BUDGET_ORDER_ITEM_TYPE = 3) and'
      
        '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_DELIVERIES_INTROD' +
        'UCING)'
      '    ) or'
      ''
      '    ( (:BUDGET_ORDER_ITEM_TYPE = 4) and'
      
        '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_INTERNAL_INTRODUC' +
        'ING)'
      '    ) or'
      ''
      '    ( (:BUDGET_ORDER_ITEM_TYPE = 5) and'
      '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_EXPENSE)'
      '    ) or'
      ''
      '    ( (:BUDGET_ORDER_ITEM_TYPE = 6) and'
      '      (boi.BUDGET_ORDER_ITEM_TYPE_CODE = %boit_EXPLOITATION)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_FILTERED_BY_BOI_ORDERS = 0) or'
      '    (exists('
      '      select'
      '        1'
      '      from'
      '        BOI_ORDERS boio'
      '      where'
      
        '        (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '        (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '        (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_COD' +
        'E) and'
      '        ('
      '          Nvl2('
      '            boio.ANNUL_EMPLOYEE_CODE,'
      '            7,'
      '            Nvl2('
      '              boio.CLOSE_EMPLOYEE_CODE,'
      '              6,'
      '              case'
      '                when'
      '                  (%BOIO_PLAN_DATE[boio] > ContextDate) and'
      '                  (boio.IS_CONFIRMED = 0) and'
      '                  (boio.IS_CANCELED = 0) then'
      '                  1'
      '                when'
      '                  (%BOIO_PLAN_DATE[boio] <= ContextDate) and'
      '                  (boio.IS_CONFIRMED = 0) and'
      '                  (boio.IS_CANCELED = 0) then'
      '                  2'
      '                when'
      '                  (boio.IS_CANCELED = 1) then'
      '                  3'
      '                when'
      '                  (%BOIO_PLAN_DATE[boio] > ContextDate) and'
      '                  (boio.IS_CONFIRMED = 1) then'
      '                  4'
      '                else'
      '                  5'
      '              end'
      '            )'
      
        '          ) between :MIN_BOIO_STATUS_CODE and :MAX_BOIO_STATUS_C' +
        'ODE'
      '        ) and'
      ''
      '        ( (:BOI_ORDER_CODE is null) or'
      '          (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '        ) and'
      ''
      '        (exists('
      '          select'
      '            1'
      '          from'
      '            DEPT_RELATIONS dr'
      '          where'
      '            (dr.ANCESTOR_DEPT_CODE = :CONSUMER_DEPT_CODE) and'
      '            (dr.DESCENDANT_DEPT_CODE = boio.CONSUMER_DEPT_CODE)'
      '          )'
      '        ) and'
      ''
      '        ( (:BOIO_BEGIN_PLAN_DATE is null) or'
      '          (:BOIO_BEGIN_PLAN_DATE <= %BOIO_PLAN_DATE[boio])'
      '        ) and'
      ''
      '        ( (:BOIO_END_PLAN_DATE is null) or'
      '          (:BOIO_END_PLAN_DATE >= %BOIO_PLAN_DATE[boio])'
      '        ) and'
      ''
      '        ('
      '          ( (:BOI_ORDER_TYPE_CODE = 1) and'
      '            ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    TEMP_FILTERED_PRODUCTS tfp'
      '                  where'
      '                    (tfp.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '                )'
      '              )'
      '            ) and'
      '            (exists('
      '              select'
      '                1'
      '              from'
      '                DEPT_RELATIONS dr'
      '              where'
      '                (dr.ANCESTOR_DEPT_CODE = :STORE_CODE) and'
      '                (dr.DESCENDANT_DEPT_CODE = boio.STORE_CODE)'
      '              )'
      '            )'
      '          ) or'
      ''
      '          ( (:BOI_ORDER_TYPE_CODE = 2) and'
      '            ( (:COMPANY_CODE is null) or'
      '              (:COMPANY_CODE = boio.COMPANY_CODE)'
      '            )'
      '          ) or'
      ''
      '          (:BOI_ORDER_TYPE_CODE = 3) or'
      ''
      '          ( (:BOI_ORDER_TYPE_CODE = 4) and'
      '            ( ( (:DELIVERY_DEAL_TYPE_CODE is null) and'
      '                (:DCD_BRANCH_CODE is null) and'
      '                (:DCD_CODE is null) and'
      '                (:DELIVERY_PROJECT_CODE is null)'
      '              ) or'
      '              (exists'
      '                ( select'
      '                    1'
      '                  from'
      '                    DELIVERY_CONTRACTS dc,'
      '                    DELIVERY_PROJECTS dp,'
      '                    DEFICIT_COVER_DECISIONS dcd'
      '                  where'
      
        '                    (dc.DELIVERY_OBJECT_BRANCH_CODE = boio.DELIV' +
        'ERY_OBJECT_BRANCH_CODE) and'
      
        '                    (dc.DELIVERY_OBJECT_CODE = boio.DELIVERY_OBJ' +
        'ECT_CODE) and'
      ''
      
        '                    (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_B' +
        'RANCH_CODE) and'
      
        '                    (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) an' +
        'd'
      
        '                    (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJ' +
        'ECT_CODE) and'
      ''
      
        '                    (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_' +
        'BRANCH_CODE) and'
      
        '                    (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) a' +
        'nd'
      ''
      ''
      '                    ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
      
        '                      (dcd.DELIVERY_DEAL_TYPE_CODE = :DELIVERY_D' +
        'EAL_TYPE_CODE)'
      '                    ) and'
      ''
      '                    ( (:DCD_BRANCH_CODE is null) or'
      '                      (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE)'
      '                    ) and'
      ''
      '                    ( (:DCD_CODE is null) or'
      '                      (dcd.DCD_CODE = :DCD_CODE)'
      '                    ) and'
      ''
      '                    ( (:DELIVERY_PROJECT_CODE is null) or'
      
        '                      (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJ' +
        'ECT_CODE)'
      '                    )'
      '                )'
      '              )'
      '            )'
      '          )'
      '        ) and'
      ''
      '        ( (:BOIO_BEGIN_ACCOUNT_DATE is null) or'
      '          (:BOIO_BEGIN_ACCOUNT_DATE <= %BOIO_ACCOUNT_DATE[boio])'
      '        ) and'
      ''
      '        ( (:BOIO_END_ACCOUNT_DATE is null) or'
      '          (:BOIO_END_ACCOUNT_DATE >= %BOIO_ACCOUNT_DATE[boio])'
      '        ) and'
      ''
      '        ( (:DOCUMENT_ID_TEXT is null) or'
      '          (:DOCUMENT_ID_TEXT = boio.DOCUMENT_ID_TEXT)'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '    exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_2 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '      )'
      '  )'
      ''
      'order by'
      '  bo.BEGIN_DATE,'
      '  boi.BEGIN_DATE,'
      '  BUDGET_PRODUCT_NO,'
      '  BUDGET_ORDER_IDENTIFIER,'
      '  boi.BUDGET_ORDER_ITEM_CODE    ')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bo]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[boi]'
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
        Name = 'boit_DELIVERIES_INTRODUCING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_INTERNAL_INTRODUCING'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_EXPENSE'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'boit_EXPLOITATION'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_DATE[boio]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_DATE[boio]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
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
        Name = 'CHOSEN_PRODUCTS_2'
        ParamType = ptInput
      end>
    TableName = 'BUDGET_ORDERS'
    Left = 328
    Top = 64
    object qryBOIOrdersMasterBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
    end
    object qryBOIOrdersMasterBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_IDENTIFIER'
      Size = 182
    end
    object qryBOIOrdersMasterBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBOIOrdersMasterEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBOIOrdersMasterDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object qryBOIOrdersMasterBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersMasterBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersMasterBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersMasterBUDGET_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ITEM_STATUS_CODE'
    end
    object qryBOIOrdersMasterBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object qryBOIOrdersMasterBUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_NO'
    end
    object qryBOIOrdersMasterBUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_PRODUCT_NAME'
      Size = 100
    end
    object qryBOIOrdersMasterDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DISTRIBUTION_DATE_UNIT_CODE'
    end
    object qryBOIOrdersMasterBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object qryBOIOrdersMasterBOI_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_BEGIN_DATE'
    end
    object qryBOIOrdersMasterBOI_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_END_DATE'
    end
    object qryBOIOrdersMasterDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryBOIOrdersMasterTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryBOIOrdersMasterBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
    end
    object qryBOIOrdersMasterREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
    end
    object qryBOIOrdersMasterBO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_BRANCH_CODE'
    end
    object qryBOIOrdersMasterBO_DOC_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_CODE'
    end
    object qryBOIOrdersMasterBO_HAS_DOC: TAbmesFloatField
      FieldName = 'BO_HAS_DOC'
    end
    object qryBOIOrdersMasterBOI_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOI_DOC_BRANCH_CODE'
    end
    object qryBOIOrdersMasterBOI_DOC_CODE: TAbmesFloatField
      FieldName = 'BOI_DOC_CODE'
    end
    object qryBOIOrdersMasterBOI_HAS_DOC: TAbmesFloatField
      FieldName = 'BOI_HAS_DOC'
    end
    object qryBOIOrdersMasterBC_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_BRANCH_CODE'
    end
    object qryBOIOrdersMasterBC_DOC_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_CODE'
    end
    object qryBOIOrdersMasterBC_HAS_DOC: TAbmesFloatField
      FieldName = 'BC_HAS_DOC'
    end
    object qryBOIOrdersMasterBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryBOIOrdersMasterBOI_ORDER_COUNT: TAbmesFloatField
      FieldName = 'BOI_ORDER_COUNT'
    end
    object qryBOIOrdersMasterDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryBOIOrdersMasterBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
    object qryBOIOrdersMasterDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DISTRIBUTED_SINGLE_PRICE'
    end
    object qryBOIOrdersMasterBUDGET_ORDER_ITEM_TYPE: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
      Size = 205
    end
    object qryBOIOrdersMasterANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBOIOrdersMasterBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object qryBOIOrdersMasterBUDGET_ORDER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_PRODUCT_NAME'
      Size = 100
    end
    object qryBOIOrdersMasterORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Size = 100
    end
    object qryBOIOrdersMasterBOI_IS_CONFIRMED: TAbmesFloatField
      FieldName = 'BOI_IS_CONFIRMED'
      Required = True
    end
  end
  object prvBOIOrdersMaster: TDataSetProvider
    DataSet = qryBOIOrdersMaster
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 8
  end
  object qryBOIOrdersDetail: TAbmesSQLQuery
    BeforeOpen = qryBOIOrdersDetailBeforeOpen
    AfterClose = qryBOIOrdersDetailAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
        Size = 8
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
        Name = 'IS_FILTERED_BY_BOI_ORDERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_BOIO_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_BOIO_STATUS_CODE'
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
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
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
        Name = 'DELIVERY_PROJECT_CODE'
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
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  boio.BOI_ORDER_OBJECT_BRANCH_CODE,'
      '  boio.BOI_ORDER_OBJECT_CODE,'
      
        '  To_Number(:BUDGET_ORDER_BRANCH_CODE) as BUDGET_ORDER_BRANCH_CO' +
        'DE,'
      '  To_Number(:BUDGET_ORDER_CODE) as BUDGET_ORDER_CODE,'
      '  To_Number(:BUDGET_ORDER_ITEM_CODE) as BUDGET_ORDER_ITEM_CODE,'
      '  boio.BOI_ORDER_CODE,'
      ''
      '  Nvl2('
      '    boio.ANNUL_EMPLOYEE_CODE,'
      '    7,'
      '    Nvl2('
      '      boio.CLOSE_EMPLOYEE_CODE,'
      '      6,'
      '      case'
      '        when'
      '          (ContextDate < %BOIO_PLAN_DATE[boio]) and'
      '          (boio.IS_CONFIRMED = 0) and'
      '          (boio.IS_CANCELED = 0) then'
      '          1'
      '        when'
      '          (ContextDate >= %BOIO_PLAN_DATE[boio]) and'
      '          (boio.IS_CONFIRMED = 0) and'
      '          (boio.IS_CANCELED = 0) then'
      '          2'
      '        when'
      '          (boio.IS_CANCELED = 1) then'
      '          3'
      '        when'
      '          (ContextDate < %BOIO_PLAN_DATE[boio]) and'
      '          (boio.IS_CONFIRMED = 1) then'
      '          4'
      '        else'
      '          5'
      '      end'
      '    )'
      '  ) as BOI_ORDER_STATUS_CODE,'
      ''
      '  boio.CONSUMER_DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boio.CONSUMER_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as CONSUMER_DEPT_IDENTIFIER,'
      '  ( select'
      '      %HAS_DOC_ITEMS[d]'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = boio.CONSUMER_DEPT_CODE)'
      '  ) as CONSUMER_DEPT_HAS_DOC,'
      '  ( select'
      '      d.DOC_BRANCH_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = boio.CONSUMER_DEPT_CODE)'
      '  ) as CONSUMER_DEPT_DOC_BRANCH_CODE,'
      '  ( select'
      '      d.DOC_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = boio.CONSUMER_DEPT_CODE)'
      '  ) as CONSUMER_DEPT_DOC_CODE,'
      ''
      '  boio.PRODUCT_CODE,'
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as PRODUCT_HAS_DOC,'
      '  ( select'
      '      p.DOC_BRANCH_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as PRODUCT_DOC_BRANCH_CODE,'
      '  ( select'
      '      p.DOC_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as PRODUCT_DOC_CODE,'
      ''
      '  ( select'
      '      p.MEASURE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as MEASURE_CODE,'
      '  ( select'
      '      p.ACCOUNT_MEASURE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as ACCOUNT_MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE) and'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE) and'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      ''
      ''
      '  boio.QUANTITY,'
      '  ( select'
      '      boio.QUANTITY * p.ACCOUNT_MEASURE_COEF'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as ACCOUNT_QUANTITY,'
      ''
      
        '  %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_CODE ~ ContextDa' +
        'te] as PRODUCT_SINGLE_PRICE,'
      ''
      
        '  ( %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_CODE ~ Context' +
        'Date] /'
      '    ( select'
      '        p.ACCOUNT_MEASURE_COEF'
      '      from'
      '        PRODUCTS p'
      '      where'
      '        (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '    )'
      '  ) as PRODUCT_ACC_SINGLE_PRICE,'
      ''
      
        '  (boio.QUANTITY * %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODU' +
        'CT_CODE ~ ContextDate]) as PRODUCT_TOTAL_PRICE,'
      ''
      
        '  ( boio.QUANTITY * %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PROD' +
        'UCT_CODE ~ ContextDate] /'
      '    ( select'
      '        NullIf(boi.TOTAL_PRICE, 0)'
      '      from'
      '        BUDGET_ORDER_ITEMS boi'
      '      where'
      
        '        (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '        (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '        (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_COD' +
        'E)'
      '    )'
      '  ) as PRODUCT_BOI_PRICE_PERCENT,'
      ''
      '  boio.STORE_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boio.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_QUANTITY,'
      '  ( select'
      '      Sum(sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_ACCOUNT_QUANTITY,'
      '  ( select'
      '      Sum('
      '        sd.TOTAL_PRICE *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '            (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '        )'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_TOTAL_PRICE,'
      '  ( select'
      '      Max(sd.STORE_DEAL_DATE)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_LAST_DEAL_DATE,'
      ''
      '  boio.COMPANY_CODE,'
      '  %GET_PARTNER_NAME[boio.COMPANY_CODE] as COMPANY_NAME,'
      '  boio.DESCRIPTION,'
      '  boio.CURRENCY_CODE,'
      '  ( select'
      '      c.CURRENCY_ABBREV'
      '    from'
      '      CURRENCIES c'
      '    where'
      '      (c.CURRENCY_CODE = boio.CURRENCY_CODE)'
      '  ) as CURRENCY_NAME,'
      ''
      '  %BOIO_PLAN_TOTAL_PRICE[boio] as PLAN_TOTAL_PRICE,'
      '  %BOIO_PLAN_DATE[boio] as PLAN_DATE,'
      '  ( select'
      '      %BOIO_PLAN_TOTAL_PRICE[boio] / NullIf(boi.TOTAL_PRICE, 0)'
      '    from'
      '      BUDGET_ORDER_ITEMS boi'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)'
      '  ) as COMPANY_BOI_PRICE_PERCENT,'
      '  ( select'
      '      %BOIO_PLAN_TOTAL_PRICE[boio] / NullIf(boi.TOTAL_PRICE, 0)'
      '    from'
      '      BUDGET_ORDER_ITEMS boi'
      '    where'
      
        '      (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_C' +
        'ODE) and'
      '      (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '      (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE)'
      '  ) as WASTE_BOI_PRICE_PERCENT,'
      '  boio.DOCUMENT_TYPE_TEXT,'
      '  boio.DOCUMENT_ID_TEXT,'
      ''
      '  %BOIO_ACCOUNT_TOTAL_PRICE[boio] as ACCOUNT_TOTAL_PRICE,'
      '  %BOIO_ACCOUNT_DATE[boio] as ACCOUNT_DATE,'
      ''
      
        '  (%BOIO_PLAN_TOTAL_PRICE[boio] - %BOIO_ACCOUNT_TOTAL_PRICE[boio' +
        ']) as PRICE_DEVIATION,'
      
        '  ( (%BOIO_PLAN_TOTAL_PRICE[boio] - %BOIO_ACCOUNT_TOTAL_PRICE[bo' +
        'io]) /'
      '     NullIf(%BOIO_PLAN_TOTAL_PRICE[boio], 0)'
      '  ) as PRICE_DEVIATION_PERCENT,'
      ''
      '  Nvl2(%BOIO_PLAN_DATE[boio],'
      
        '    %COUNT_WORKDAYS[Coalesce(%BOIO_ACCOUNT_DATE[boio], ContextDate' +
        ')~%BOIO_PLAN_DATE[boio]],'
      '    null'
      '  ) as DATES_DEVIATION,'
      ''
      '  ( select'
      
        '      (boio.QUANTITY - Coalesce(Sum(sd.QUANTITY), 0)) / NullIf(b' +
        'oio.QUANTITY, 0)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_QUANTITY_DEV_P,'
      ''
      '  ( select'
      
        '      (boio.QUANTITY * p.ACCOUNT_MEASURE_COEF - Coalesce(Sum(sd.' +
        'ACCOUNT_QUANTITY), 0)) / NullIf(boio.QUANTITY * p.ACCOUNT_MEASUR' +
        'E_COEF, 0)'
      '    from'
      '      STORE_DEALS sd,'
      '      PRODUCTS p'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      
        '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE) ' +
        'and'
      '      (boio.PRODUCT_CODE = p.PRODUCT_CODE)'
      '    group by'
      '      p.ACCOUNT_MEASURE_COEF'
      '  ) as PRODUCT_REAL_ACC_QTY_DEV_P,'
      ''
      '  ( 1 -'
      '    ( ( select'
      '          Avg('
      '            (sd.TOTAL_PRICE / sd.QUANTITY) *'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = sd.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '            )'
      '          )'
      '        from'
      '          STORE_DEALS sd'
      '        where'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (sd.IN_OUT = -1) and'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OB' +
        'JECT_BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CO' +
        'DE)'
      '      ) /'
      
        '      NullIf(%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_COD' +
        'E ~ ContextDate], 0)'
      '    )'
      '  ) as PRODUCT_AVG_S_PRICE_DEV_P,'
      ''
      '  ( 1 -'
      '    ( ( select'
      '          Avg('
      '            (sd.TOTAL_PRICE / sd.ACCOUNT_QUANTITY) *'
      '            ( select'
      '                cr.FIXING'
      '              from'
      '                CURRENCY_RATES cr'
      '              where'
      '                (cr.CURRENCY_CODE = sd.CURRENCY_CODE) and'
      '                (cr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '            )'
      '          )'
      '        from'
      '          STORE_DEALS sd'
      '        where'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (sd.IN_OUT = -1) and'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OB' +
        'JECT_BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CO' +
        'DE)'
      '      ) /'
      
        '      ( NullIf(%PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_C' +
        'ODE ~ ContextDate], 0) /'
      '        ( select'
      '            p.ACCOUNT_MEASURE_COEF'
      '          from'
      '            PRODUCTS p'
      '          where'
      '            (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) as PRODUCT_AVG_ACC_S_PRICE_DEV_P,'
      ''
      '  ( 1 -'
      '    ( ( select'
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
      '          STORE_DEALS sd'
      '        where'
      '          (sd.STORNO_EMPLOYEE_CODE is null) and'
      '          (sd.IN_OUT = -1) and'
      
        '          (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OB' +
        'JECT_BRANCH_CODE) and'
      
        '          (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CO' +
        'DE)'
      '      ) /'
      '      NullIf('
      
        '        (boio.QUANTITY * %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio' +
        '.PRODUCT_CODE ~ ContextDate]),'
      '        0'
      '      )'
      '    )'
      '  ) PRODUCT_REAL_PRICE_DEV_P,'
      ''
      '  Nvl2(%BOIO_PLAN_DATE[boio],'
      
        '    %COUNT_WORKDAYS[Coalesce(%BOIO_ACCOUNT_DATE[boio], ContextDate' +
        ')~%BOIO_PLAN_DATE[boio]],'
      '    null'
      '  ) as PRODUCT_LAST_SD_DAYS_DEV,'
      ''
      '  boio.ANNUL_EMPLOYEE_CODE,'
      '  Nvl2(boio.ANNUL_EMPLOYEE_CODE, null, 1) as NULL_WHEN_ANNULED,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = boio.DELIVERY_OBJECT_BRAN' +
        'CH_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = boio.DELIVERY_OBJECT_CODE)'
      '  ) as DELIVERY_IDENTIFIER,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      
        '      (fo.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE) ' +
        'and'
      '      (fo.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as HAS_FIN_ORDER,'
      ''
      '  boio.DOC_BRANCH_CODE,'
      '  boio.DOC_CODE,'
      '  %HAS_DOC_ITEMS[boio] as HAS_DOC_ITEMS'
      ''
      'from'
      '  BOI_ORDERS boio'
      ''
      'where'
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) an' +
        'd'
      '  (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE) and'
      ''
      '  ( (:IS_FILTERED_BY_BOI_ORDERS = 0) or'
      '    ('
      '      ('
      '        Nvl2('
      '          boio.ANNUL_EMPLOYEE_CODE,'
      '          7,'
      '          Nvl2('
      '            boio.CLOSE_EMPLOYEE_CODE,'
      '            6,'
      '            case'
      '              when'
      '                (ContextDate < %BOIO_PLAN_DATE[boio]) and'
      '                (boio.IS_CONFIRMED = 0) and'
      '                (boio.IS_CANCELED = 0) then'
      '                1'
      '              when'
      '                (ContextDate >= %BOIO_PLAN_DATE[boio]) and'
      '                (boio.IS_CONFIRMED = 0) and'
      '                (boio.IS_CANCELED = 0) then'
      '                2'
      '              when'
      '                (boio.IS_CANCELED = 1) then'
      '                3'
      '              when'
      '                (ContextDate < %BOIO_PLAN_DATE[boio]) and'
      '                (boio.IS_CONFIRMED = 1) then'
      '                4'
      '              else'
      '                5'
      '            end'
      '          )'
      
        '        ) between :MIN_BOIO_STATUS_CODE and :MAX_BOIO_STATUS_COD' +
        'E'
      '      ) and'
      ''
      '      ( (:BOI_ORDER_CODE is null) or'
      '        (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '      ) and'
      ''
      '      (exists('
      '        select'
      '          1'
      '        from'
      '          DEPT_RELATIONS dr'
      '        where'
      '          (dr.ANCESTOR_DEPT_CODE = :CONSUMER_DEPT_CODE) and'
      '          (dr.DESCENDANT_DEPT_CODE = boio.CONSUMER_DEPT_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:BOIO_BEGIN_PLAN_DATE is null) or'
      '        (:BOIO_BEGIN_PLAN_DATE <= %BOIO_PLAN_DATE[boio])'
      '      ) and'
      ''
      '      ( (:BOIO_END_PLAN_DATE is null) or'
      '        (:BOIO_END_PLAN_DATE >= %BOIO_PLAN_DATE[boio])'
      '      ) and'
      ''
      '      ('
      '        ( (:BOI_ORDER_TYPE_CODE = 1) and'
      '          ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  TEMP_FILTERED_PRODUCTS tfp'
      '                where'
      '                  (tfp.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '              )'
      '            )'
      '          ) and'
      '          (exists('
      '            select'
      '              1'
      '            from'
      '              DEPT_RELATIONS dr'
      '            where'
      '              (dr.ANCESTOR_DEPT_CODE = :STORE_CODE) and'
      '              (dr.DESCENDANT_DEPT_CODE = boio.STORE_CODE)'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (:BOI_ORDER_TYPE_CODE = 2) and'
      '          ( (:COMPANY_CODE is null) or'
      '            (:COMPANY_CODE = boio.COMPANY_CODE)'
      '          )'
      '        ) or'
      ''
      '        (:BOI_ORDER_TYPE_CODE = 3) or'
      ''
      '        ( (:BOI_ORDER_TYPE_CODE = 4) and'
      '          ( ( (:DELIVERY_DEAL_TYPE_CODE is null) and'
      '              (:DCD_BRANCH_CODE is null) and'
      '              (:DCD_CODE is null) and'
      '              (:DELIVERY_PROJECT_CODE is null)'
      '            ) or'
      '            (exists'
      '              ( select'
      '                  1'
      '                from'
      '                  DELIVERY_CONTRACTS dc,'
      '                  DELIVERY_PROJECTS dp,'
      '                  DEFICIT_COVER_DECISIONS dcd'
      '                where'
      
        '                  (dc.DELIVERY_OBJECT_BRANCH_CODE = boio.DELIVER' +
        'Y_OBJECT_BRANCH_CODE) and'
      
        '                  (dc.DELIVERY_OBJECT_CODE = boio.DELIVERY_OBJEC' +
        'T_CODE) and'
      ''
      
        '                  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRA' +
        'NCH_CODE) and'
      '                  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      
        '                  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJEC' +
        'T_CODE) and'
      ''
      
        '                  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BR' +
        'ANCH_CODE) and'
      '                  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      ''
      '                  ( (:DELIVERY_DEAL_TYPE_CODE is null) or'
      
        '                    (dcd.DELIVERY_DEAL_TYPE_CODE = :DELIVERY_DEA' +
        'L_TYPE_CODE)'
      '                  ) and'
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
      '                  )'
      '              )'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:BOIO_BEGIN_ACCOUNT_DATE is null) or'
      '        (:BOIO_BEGIN_ACCOUNT_DATE <= %BOIO_ACCOUNT_DATE[boio])'
      '      ) and'
      ''
      '      ( (:BOIO_END_ACCOUNT_DATE is null) or'
      '        (:BOIO_END_ACCOUNT_DATE >= %BOIO_ACCOUNT_DATE[boio])'
      '      ) and'
      ''
      '      ( (:DOCUMENT_ID_TEXT is null) or'
      '        (:DOCUMENT_ID_TEXT = boio.DOCUMENT_ID_TEXT)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  boio.BOI_ORDER_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_DATE[boio]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
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
        DataType = ftString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[boio.COMPANY_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_DATE[boio]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Coalesce(%BOIO_ACCOUNT_DATE[boio], ContextDate)~%BO' +
          'IO_PLAN_DATE[boio]]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[boio]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
        Size = 4000
      end>
    Left = 328
    Top = 168
    object qryBOIOrdersDetailBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_BRANCH_CODE'
    end
    object qryBOIOrdersDetailBOI_ORDER_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_CODE'
    end
    object qryBOIOrdersDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersDetailBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersDetailBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrdersDetailBOI_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_STATUS_CODE'
    end
    object qryBOIOrdersDetailCONSUMER_DEPT_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_CODE'
    end
    object qryBOIOrdersDetailCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryBOIOrdersDetailCONSUMER_DEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_HAS_DOC'
    end
    object qryBOIOrdersDetailCONSUMER_DEPT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_DOC_BRANCH_CODE'
    end
    object qryBOIOrdersDetailCONSUMER_DEPT_DOC_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_DOC_CODE'
    end
    object qryBOIOrdersDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryBOIOrdersDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryBOIOrdersDetailPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object qryBOIOrdersDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryBOIOrdersDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryBOIOrdersDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryBOIOrdersDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryBOIOrdersDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryBOIOrdersDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryBOIOrdersDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryBOIOrdersDetailPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
    end
    object qryBOIOrdersDetailPRODUCT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_PRICE'
    end
    object qryBOIOrdersDetailPRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'PRODUCT_BOI_PRICE_PERCENT'
    end
    object qryBOIOrdersDetailSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryBOIOrdersDetailSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object qryBOIOrdersDetailPRODUCT_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY'
    end
    object qryBOIOrdersDetailPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_TOTAL_PRICE'
    end
    object qryBOIOrdersDetailPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_LAST_DEAL_DATE'
    end
    object qryBOIOrdersDetailCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object qryBOIOrdersDetailDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object qryBOIOrdersDetailCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryBOIOrdersDetailCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 5
    end
    object qryBOIOrdersDetailPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryBOIOrdersDetailPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object qryBOIOrdersDetailCOMPANY_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'COMPANY_BOI_PRICE_PERCENT'
    end
    object qryBOIOrdersDetailDOCUMENT_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_TYPE_TEXT'
      Size = 50
    end
    object qryBOIOrdersDetailDOCUMENT_ID_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_ID_TEXT'
      Size = 50
    end
    object qryBOIOrdersDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object qryBOIOrdersDetailACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACCOUNT_DATE'
    end
    object qryBOIOrdersDetailPRICE_DEVIATION: TAbmesFloatField
      FieldName = 'PRICE_DEVIATION'
    end
    object qryBOIOrdersDetailDATES_DEVIATION: TAbmesFloatField
      FieldName = 'DATES_DEVIATION'
    end
    object qryBOIOrdersDetailCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 153
    end
    object qryBOIOrdersDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryBOIOrdersDetailPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
    end
    object qryBOIOrdersDetailPRODUCT_REAL_QUANTITY_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY_DEV_P'
    end
    object qryBOIOrdersDetailPRODUCT_REAL_ACC_QTY_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACC_QTY_DEV_P'
    end
    object qryBOIOrdersDetailPRODUCT_AVG_S_PRICE_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_AVG_S_PRICE_DEV_P'
    end
    object qryBOIOrdersDetailPRODUCT_REAL_PRICE_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_PRICE_DEV_P'
    end
    object qryBOIOrdersDetailPRODUCT_LAST_SD_DAYS_DEV: TAbmesFloatField
      FieldName = 'PRODUCT_LAST_SD_DAYS_DEV'
    end
    object qryBOIOrdersDetailWASTE_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'WASTE_BOI_PRICE_PERCENT'
    end
    object qryBOIOrdersDetailPRODUCT_ACC_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_SINGLE_PRICE'
    end
    object qryBOIOrdersDetailPRODUCT_AVG_ACC_S_PRICE_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_AVG_ACC_S_PRICE_DEV_P'
    end
    object qryBOIOrdersDetailPRICE_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'PRICE_DEVIATION_PERCENT'
    end
    object qryBOIOrdersDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBOIOrdersDetailNULL_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'NULL_WHEN_ANNULED'
    end
    object qryBOIOrdersDetailDELIVERY_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DELIVERY_IDENTIFIER'
      Size = 100
    end
    object qryBOIOrdersDetailHAS_FIN_ORDER: TAbmesFloatField
      FieldName = 'HAS_FIN_ORDER'
    end
    object qryBOIOrdersDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBOIOrdersDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBOIOrdersDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object qryBOIOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      end>
    SQL.Strings = (
      'select'
      '  boio.BOI_ORDER_OBJECT_BRANCH_CODE,'
      '  boio.BOI_ORDER_OBJECT_CODE,'
      '  boio.BOI_ORDER_CODE,'
      ''
      '  boio.BUDGET_ORDER_BRANCH_CODE,'
      '  boio.BUDGET_ORDER_CODE,'
      '  boio.BUDGET_ORDER_ITEM_CODE,'
      ''
      '  Nvl2('
      '    bo.ANNUL_EMPLOYEE_CODE,'
      '    5,'
      '    Nvl2('
      '      bo.CLOSE_EMPLOYEE_CODE,'
      '      4,'
      '      Decode('
      '        Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '        1,'
      '        Decode('
      '          Sign(bo.END_DATE - ContextDate), -1,'
      '          3,'
      '          2'
      '        )'
      '      )'
      '    )'
      '  ) as BUDGET_ORDER_STATUS_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = boio.BUDGET_ORDER_BRANCH_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as BUDGET_ORDER_BRANCH_IDENTIFIER,'
      ''
      '  ( select'
      '      bort.BO_REGULARITY_TYPE_NAME'
      '    from'
      '      BO_REGULARITY_TYPES bort'
      '    where'
      
        '      (bo.BO_REGULARITY_TYPE_CODE = bort.BO_REGULARITY_TYPE_CODE' +
        ')'
      '  ) as BO_REGULARITY_TYPE_NAME,'
      ''
      '  bo.GENERATOR_DEPT_CODE,'
      '  bo.DEVELOPER_DEPT_CODE,'
      ''
      '  Nvl2('
      '    boi.ANNUL_EMPLOYEE_CODE,'
      '    10,'
      '    Nvl2('
      '      boi.CLOSE_EMPLOYEE_CODE,'
      '      9,'
      '      case'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          1'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 1) and'
      '          (boi.IS_CANCELED = 0) then'
      '          2'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          3'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_FOR_RECONSIDERATION = 1) then'
      '          4'
      '        when'
      '          (boi.IS_CANCELED = 1) then'
      '          5'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 1) then'
      '          6'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 1) then'
      '          7'
      '        else'
      '          8'
      '      end'
      '    )'
      '  ) as BUDGET_ORDER_ITEM_STATUS_CODE,'
      ''
      '  boi.BUDGET_PRODUCT_CODE,'
      ''
      '  boi.DEPT_CODE as BOI_DEPT_CODE,'
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  ( select'
      '      boidt.BOI_DISTRIBUTION_TYPE_NAME'
      '    from'
      '      BOI_DISTRIBUTION_TYPES boidt'
      '    where'
      
        '      (boidt.BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_T' +
        'YPE_CODE)'
      '  ) as BOI_DISTRIBUTION_TYPE_NAME,'
      ''
      '  Decode('
      '    Sign(ContextDate - boi.BEGIN_DATE),'
      '    -1, (boi.BEGIN_DATE - ContextDate),'
      '    null'
      '  ) as BOI_DAYS_TO_START,'
      '  boi.BEGIN_DATE as BOI_BEGIN_DATE,'
      '  boi.END_DATE as BOI_END_DATE,'
      '  NullIf('
      '    case'
      
        '      when ContextDate between boi.BEGIN_DATE and boi.END_DATE the' +
        'n'
      
        '        %COUNT_WORKDAYS[ContextDate~ boi.END_DATE] / NullIf(%COUNT' +
        '_WORKDAYS[boi.BEGIN_DATE~ boi.END_DATE], 0)'
      '      else'
      '        null'
      '    end,'
      '    0'
      '  ) as BOI_DAYS_LEFT_PERCENT,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (boi.DISTRIBUTION_DATE_UNIT_CODE = tdu.THE_DATE_UNIT_CODE)'
      '  ) as DISTRIBUTION_DATE_UNIT_NAME,'
      '  case'
      '    when'
      '      ( %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE] < '
      '        ( select'
      '            tdu.AVERAGE_WORKDAYS'
      '          from'
      '            THE_DATE_UNITS tdu'
      '          where'
      
        '            (tdu.THE_DATE_UNIT_CODE = boi.DISTRIBUTION_DATE_UNIT' +
        '_CODE)'
      '        )'
      '      ) then To_number(null)'
      '    else'
      '      ( boi.TOTAL_PRICE /'
      '        Decode('
      '          %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE],'
      '          0,'
      '          null,'
      '          %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
      '        )'
      '      ) *'
      '      ( select'
      '          tdu.AVERAGE_WORKDAYS'
      '        from'
      '          THE_DATE_UNITS tdu'
      '        where'
      
        '          (tdu.THE_DATE_UNIT_CODE = boi.DISTRIBUTION_DATE_UNIT_C' +
        'ODE)'
      '      ) '
      '  end as BOI_DISTRIBUTED_SINGLE_PRICE,'
      '  boi.TOTAL_PRICE as BOI_TOTAL_PRICE,'
      '  (boi.TOTAL_PRICE / bo.TOTAL_PRICE) as BO_TOTAL_PRICE_PERCENT,'
      '  ( select'
      '      Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '    from'
      '      BOI_ORDERS boio2'
      '    where'
      
        '      (boio2.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH' +
        '_CODE) and'
      '      (boio2.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '      (boio2.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_COD' +
        'E) and'
      '      (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOI_REAL_PRICE,'
      ''
      '  ( Nvl2('
      '      boi.ANNUL_EMPLOYEE_CODE,'
      '      null,'
      '      Nvl2('
      '        boi.CLOSE_EMPLOYEE_CODE,'
      '        null,'
      '        boi.TOTAL_PRICE'
      '      )'
      '    ) -'
      '    ( select'
      '        Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '      from'
      '        BOI_ORDERS boio2'
      '      where'
      
        '        (boio2.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRAN' +
        'CH_CODE) and'
      '        (boio2.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '        (boio2.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_C' +
        'ODE) and'
      '        (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as BOI_REMAINING_PRICE,'
      ''
      '  ('
      '    ( Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ) -'
      '      ( select'
      '          Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '        from'
      '          BOI_ORDERS boio2'
      '        where'
      
        '          (boio2.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '          (boio2.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '          (boio2.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '          (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '      )'
      '    )'
      '    /'
      '    Decode('
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ),'
      '      0,'
      '      null,'
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      )'
      '    )'
      '  ) as BOI_REMAINING_PRICE_PERCENT,'
      ''
      '  ('
      '    Decode(Sign(ContextDate - boi.BEGIN_DATE), -1,'
      '      null,'
      '      Decode(Sign(boi.END_DATE - ContextDate), -1,'
      '        null,'
      '        ('
      '          %COUNT_WORKDAYS[boi.BEGIN_DATE~ContextDate] /'
      '          Decode('
      '            %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE],'
      '            0,'
      '            null,'
      '            %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
      '          )'
      '        )'
      '      )'
      '    ) -'
      '    ('
      '      ( select'
      '          Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '        from'
      '          BOI_ORDERS boio2'
      '        where'
      
        '          (boio2.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BR' +
        'ANCH_CODE) and'
      '          (boio2.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
      
        '          (boio2.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM' +
        '_CODE) and'
      '          (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '      ) /'
      '      Decode('
      '        Nvl2('
      '          boi.ANNUL_EMPLOYEE_CODE,'
      '          null,'
      '          Nvl2('
      '            boi.CLOSE_EMPLOYEE_CODE,'
      '            null,'
      '            boi.TOTAL_PRICE'
      '          )'
      '        ),'
      '        0,'
      '        null,'
      '        Nvl2('
      '          boi.ANNUL_EMPLOYEE_CODE,'
      '          null,'
      '          Nvl2('
      '            boi.CLOSE_EMPLOYEE_CODE,'
      '            null,'
      '            boi.TOTAL_PRICE'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as BOI_DEVIATION_PERCENT,'
      ''
      '  ( select'
      '      p.MEASURE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as MEASURE_CODE,'
      ''
      '  ( select'
      '      p.ACCOUNT_MEASURE_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as ACCOUNT_MEASURE_CODE,'
      ''
      
        '  ( %PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_CODE ~ Context' +
        'Date] /'
      '    ( select'
      '        p.ACCOUNT_MEASURE_COEF'
      '      from'
      '        PRODUCTS p'
      '      where'
      '        (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '    )'
      '  ) as PRODUCT_SINGLE_PRICE,'
      ''
      '  ( select'
      '      p.ACCOUNT_MEASURE_COEF'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as ACCOUNT_MEASURE_COEF,'
      ''
      '  ( select'
      '      boio.QUANTITY * p.ACCOUNT_MEASURE_COEF'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boio.PRODUCT_CODE)'
      '  ) as ACCOUNT_QUANTITY,'
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_QUANTITY,'
      '  ( select'
      '      Sum(sd.ACCOUNT_QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_ACCOUNT_QUANTITY,'
      '  ( select'
      '      Sum('
      '        sd.TOTAL_PRICE *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (sd.CURRENCY_CODE = cr.CURRENCY_CODE) and'
      '            (sd.STORE_DEAL_DATE = cr.RATE_DATE)'
      '        )'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_REAL_TOTAL_PRICE,'
      '  ( select'
      '      Max(sd.STORE_DEAL_DATE)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = -1) and'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = boio.BOI_ORDER_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = boio.BOI_ORDER_OBJECT_CODE)'
      '  ) as PRODUCT_LAST_DEAL_DATE,'
      ''
      '  boi.IS_CONFIRMED as BOI_IS_CONFIRMED,'
      ''
      '  %BOIO_PLAN_TOTAL_PRICE[boio] as PLAN_TOTAL_PRICE_BC,'
      ''
      '  %BOIO_ACCOUNT_TOTAL_PRICE[boio] as ACCOUNT_TOTAL_PRICE_BC,'
      ''
      '  boio.BOI_ORDER_TYPE_CODE,'
      '  boio.CONSUMER_DEPT_CODE,'
      '  boio.PRODUCT_CODE,'
      '  boio.STORE_CODE,'
      '  boio.QUANTITY,'
      '  boio.COMPANY_CODE,'
      '  boio.DESCRIPTION,'
      '  boio.CURRENCY_CODE,'
      '  boio.DOCUMENT_TYPE_TEXT,'
      '  boio.DOCUMENT_ID_TEXT,'
      '  boio.PLAN_TOTAL_PRICE,'
      '  boio.PLAN_DATE,'
      '  boio.ACCOUNT_TOTAL_PRICE,'
      '  boio.ACCOUNT_DATE,'
      '  boio.IS_CONFIRMED,'
      '  boio.IS_CANCELED,'
      '  boio.DECISION_EMPLOYEE_CODE,'
      '  boio.DECISION_DATE,'
      '  boio.CREATE_EMPLOYEE_CODE,'
      '  boio.CREATE_DATE,'
      '  boio.CREATE_TIME,'
      '  boio.CHANGE_EMPLOYEE_CODE,'
      '  boio.CHANGE_DATE,'
      '  boio.CHANGE_TIME,'
      '  boio.CLOSE_EMPLOYEE_CODE,'
      '  boio.CLOSE_DATE,'
      '  boio.CLOSE_TIME,'
      '  boio.ANNUL_EMPLOYEE_CODE,'
      '  boio.ANNUL_DATE,'
      '  boio.ANNUL_TIME,'
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
      ''
      '  ( ( select'
      '        Sign(Count(*))'
      '      from'
      '        REAL_FIN_MODEL_LINES rfml'
      '      where'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '        (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '    ) *'
      '    ( select'
      '        /*+ORDERED*/'
      '        1 - Sign(Count(*))'
      '      from'
      '        REAL_FIN_MODEL_LINES rfml,'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '        (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '        (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '        (psd.REMAINING_QUANTITY > 0)'
      '    ) *'
      '    Nvl2(fo.CLOSE_EMPLOYEE_CODE, 0, 1)'
      '  ) as FO_IS_COMPLETED,'
      ''
      '  To_Number(null) as FO_CLOSE_REQUESTED,'
      ''
      '  boio.DELIVERY_OBJECT_BRANCH_CODE,'
      '  boio.DELIVERY_OBJECT_CODE,'
      
        '  boio.DELIVERY_OBJECT_BRANCH_CODE as BND_PROCESS_OBJECT_BRANCH_' +
        'CODE,'
      '  boio.DELIVERY_OBJECT_CODE as BND_PROCESS_OBJECT_CODE,'
      ''
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE,'
      ''
      '  boio.DOC_BRANCH_CODE,'
      '  boio.DOC_CODE,'
      '  %HAS_DOC_ITEMS[boio] as HAS_DOC_ITEMS'
      ''
      'from'
      '  BOI_ORDERS boio,'
      '  BUDGET_ORDER_ITEMS boi,'
      '  BUDGET_ORDERS bo,'
      '  FIN_ORDERS fo'
      ''
      'where'
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE)' +
        ' and'
      '  (boio.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      '  (boio.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE) and'
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = bo.BUDGET_ORDER_BRANCH_CODE) ' +
        'and'
      '  (boio.BUDGET_ORDER_CODE = bo.BUDGET_ORDER_CODE) and'
      ''
      
        '  (boio.BOI_ORDER_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (boio.BOI_ORDER_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE(+)) a' +
        'nd'
      '  (fo.ANNUL_EMPLOYEE_CODE(+) is null) and'
      ''
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) an' +
        'd'
      '  (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE) and'
      '  (boio.BOI_ORDER_CODE = :BOI_ORDER_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[ContextDate~ boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~ boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio2]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~ContextDate]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PSD_SINGLE_PRICE_IN_BASE_CURRENCY[boio.PRODUCT_CODE ~ ContextDate]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_PLAN_TOTAL_PRICE[boio]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio]'
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
        Name = 'HAS_DOC_ITEMS[boio]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'BOI_ORDERS_FOR_EDIT'
    AfterProviderStartTransaction = qryBOIOrderAfterProviderStartTransaction
    Left = 424
    Top = 64
    object qryBOIOrderBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_BRANCH_CODE'
    end
    object qryBOIOrderBOI_ORDER_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_CODE'
    end
    object qryBOIOrderBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrderBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrderBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrderBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBOIOrderBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_BRANCH_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryBOIOrderBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBOIOrderGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_STATUS_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_DEPT_CODE: TAbmesFloatField
      FieldName = 'BOI_DEPT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryBOIOrderBOI_DAYS_TO_START: TAbmesFloatField
      FieldName = 'BOI_DAYS_TO_START'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_BEGIN_DATE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_END_DATE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_DAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DAYS_LEFT_PERCENT'
      ProviderFlags = []
    end
    object qryBOIOrderDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'DISTRIBUTION_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryBOIOrderBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTED_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryBOIOrderBO_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_TOTAL_PRICE_PERCENT'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_REAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_REAL_PRICE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_REMAINING_PRICE: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE_PERCENT'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DEVIATION_PERCENT'
      ProviderFlags = []
    end
    object qryBOIOrderMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qryBOIOrderPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qryBOIOrderACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryBOIOrderPRODUCT_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY'
      ProviderFlags = []
    end
    object qryBOIOrderPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qryBOIOrderPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_TOTAL_PRICE'
      ProviderFlags = []
    end
    object qryBOIOrderPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_LAST_DEAL_DATE'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object qryBOIOrderCONSUMER_DEPT_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_CODE'
    end
    object qryBOIOrderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryBOIOrderSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryBOIOrderQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryBOIOrderCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object qryBOIOrderDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object qryBOIOrderCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryBOIOrderDOCUMENT_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_TYPE_TEXT'
      Size = 50
    end
    object qryBOIOrderDOCUMENT_ID_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_ID_TEXT'
      Size = 50
    end
    object qryBOIOrderPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryBOIOrderPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object qryBOIOrderACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object qryBOIOrderACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACCOUNT_DATE'
    end
    object qryBOIOrderIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
    end
    object qryBOIOrderIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
    end
    object qryBOIOrderDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qryBOIOrderDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
    end
    object qryBOIOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBOIOrderCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBOIOrderCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBOIOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBOIOrderCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBOIOrderCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBOIOrderCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBOIOrderCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBOIOrderCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryBOIOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBOIOrderANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBOIOrderANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBOIOrderBOI_IS_CONFIRMED: TAbmesFloatField
      FieldName = 'BOI_IS_CONFIRMED'
      ProviderFlags = []
    end
    object qryBOIOrderPLAN_TOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE_BC'
      ProviderFlags = []
    end
    object qryBOIOrderACCOUNT_TOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE_BC'
      ProviderFlags = []
    end
    object qryBOIOrderBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderFO_IS_COMPLETED: TAbmesFloatField
      FieldName = 'FO_IS_COMPLETED'
      ProviderFlags = []
    end
    object qryBOIOrderFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
    end
    object qryBOIOrderDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qryBOIOrderDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qryBOIOrderBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryBOIOrderBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      ProviderFlags = []
      Required = True
    end
    object qryBOIOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryBOIOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryBOIOrderHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
  end
  object prvBOIOrder: TDataSetProvider
    DataSet = qryBOIOrder
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvBOIOrderUpdateError
    AfterUpdateRecord = prvBOIOrderAfterUpdateRecord
    BeforeUpdateRecord = prvBOIOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvBOIOrderBeforeApplyUpdates
    AfterApplyUpdates = prvBOIOrderAfterApplyUpdates
    Left = 424
    Top = 8
  end
  object qryBOIOrderInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      end>
    SQL.Strings = (
      'select'
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE,'
      ''
      '  Nvl2('
      '    bo.ANNUL_EMPLOYEE_CODE,'
      '    5,'
      '    Nvl2('
      '      bo.CLOSE_EMPLOYEE_CODE,'
      '      4,'
      '      Decode('
      '        Sign(ContextDate - bo.BEGIN_DATE), -1,'
      '        1,'
      '        Decode('
      '          Sign(bo.END_DATE - ContextDate), -1,'
      '          3,'
      '          2'
      '        )'
      '      )'
      '    )'
      '  ) as BUDGET_ORDER_STATUS_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = bo.BUDGET_ORDER_BRANCH_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as BUDGET_ORDER_BRANCH_IDENTIFIER,'
      ''
      '  ( select'
      '      bort.BO_REGULARITY_TYPE_NAME'
      '    from'
      '      BO_REGULARITY_TYPES bort'
      '    where'
      
        '      (bo.BO_REGULARITY_TYPE_CODE = bort.BO_REGULARITY_TYPE_CODE' +
        ')'
      '  ) as BO_REGULARITY_TYPE_NAME,'
      ''
      '  bo.GENERATOR_DEPT_CODE,'
      '  bo.DEVELOPER_DEPT_CODE,'
      ''
      '  Nvl2('
      '    boi.ANNUL_EMPLOYEE_CODE,'
      '    10,'
      '    Nvl2('
      '      boi.CLOSE_EMPLOYEE_CODE,'
      '      9,'
      '      case'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          1'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 1) and'
      '          (boi.IS_CANCELED = 0) then'
      '          2'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 0) and'
      '          (boi.IS_FOR_RECONSIDERATION = 0) and'
      '          (boi.IS_CANCELED = 0) then'
      '          3'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_FOR_RECONSIDERATION = 1) then'
      '          4'
      '        when'
      '          (boi.IS_CANCELED = 1) then'
      '          5'
      '        when'
      '          (ContextDate < boi.BEGIN_DATE) and'
      '          (boi.IS_CONFIRMED = 1) then'
      '          6'
      '        when'
      
        '          (ContextDate between boi.BEGIN_DATE and boi.END_DATE) an' +
        'd'
      '          (boi.IS_CONFIRMED = 1) then'
      '          7'
      '        else'
      '          8'
      '      end'
      '    )'
      '  ) as BUDGET_ORDER_ITEM_STATUS_CODE,'
      ''
      '  boi.BUDGET_PRODUCT_CODE,'
      '  ( select'
      '      p.BND_NORMAL_GROUP_PRODUCT_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = boi.BUDGET_PRODUCT_CODE)'
      '  ) as BC_PRODUCT_CODE,'
      ''
      '  boi.DEPT_CODE as BOI_DEPT_CODE,'
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  ( select'
      '      boidt.BOI_DISTRIBUTION_TYPE_NAME'
      '    from'
      '      BOI_DISTRIBUTION_TYPES boidt'
      '    where'
      
        '      (boidt.BOI_DISTRIBUTION_TYPE_CODE = boi.BOI_DISTRIBUTION_T' +
        'YPE_CODE)'
      '  ) as BOI_DISTRIBUTION_TYPE_NAME,'
      ''
      '  Decode('
      '    Sign(ContextDate - boi.BEGIN_DATE),'
      '    -1, (boi.BEGIN_DATE - ContextDate),'
      '    null'
      '  ) as BOI_DAYS_TO_START,'
      '  boi.BEGIN_DATE as BOI_BEGIN_DATE,'
      '  boi.END_DATE as BOI_END_DATE,'
      '  NullIf('
      '    case'
      '      when (ContextDate <= boi.END_DATE) then'
      
        '        %COUNT_WORKDAYS[Greatest(ContextDate, boi.BEGIN_DATE)~ boi' +
        '.END_DATE] / NullIf(%COUNT_WORKDAYS[boi.BEGIN_DATE~ boi.END_DATE' +
        '], 0)'
      '      else'
      '        null'
      '    end,'
      '    0'
      '  ) as BOI_DAYS_LEFT_PERCENT,'
      ''
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (boi.DISTRIBUTION_DATE_UNIT_CODE = tdu.THE_DATE_UNIT_CODE)'
      '  ) as DISTRIBUTION_DATE_UNIT_NAME,'
      ''
      '  case'
      '    when'
      
        '      (MiscUtils.LargeZero(DateTimeUtils.ExactTimeUnitsBetween(b' +
        'oi.BEGIN_DATE, boi.END_DATE, boi.DISTRIBUTION_DATE_UNIT_CODE)) =' +
        ' 0)'
      '    then'
      '      To_number(null)'
      '    else'
      '      boi.TOTAL_PRICE /'
      
        '        DateTimeUtils.ExactTimeUnitsBetween(boi.BEGIN_DATE, boi.' +
        'END_DATE, boi.DISTRIBUTION_DATE_UNIT_CODE)'
      '  end as BOI_DISTRIBUTED_SINGLE_PRICE,'
      ''
      '  boi.TOTAL_PRICE as BOI_TOTAL_PRICE,'
      '  (boi.TOTAL_PRICE / bo.TOTAL_PRICE) as BO_TOTAL_PRICE_PERCENT,'
      '  ( select'
      '      Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '    from'
      '      BOI_ORDERS boio2'
      '    where'
      
        '      (boio2.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_' +
        'CODE) and'
      '      (boio2.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '      (boio2.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_CODE' +
        ') and'
      '      (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as BOI_REAL_PRICE,'
      ''
      '  NullIf('
      '    ( Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ) -'
      '      Coalesce('
      '        ( select'
      '            Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '          from'
      '            BOI_ORDERS boio2'
      '          where'
      
        '            (boio2.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_B' +
        'RANCH_CODE) and'
      
        '            (boio2.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) an' +
        'd'
      
        '            (boio2.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITE' +
        'M_CODE) and'
      '            (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        0'
      '      )'
      '    ),'
      '    0'
      '  ) as BOI_REMAINING_PRICE,'
      ''
      '  ('
      '    ( Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ) -'
      '      Coalesce('
      '        ( select'
      '            Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '          from'
      '            BOI_ORDERS boio2'
      '          where'
      
        '            (boio2.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_B' +
        'RANCH_CODE) and'
      
        '            (boio2.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) an' +
        'd'
      
        '            (boio2.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITE' +
        'M_CODE) and'
      '            (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '        ),'
      '        0'
      '      )'
      '    )'
      '    /'
      '    Decode('
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      ),'
      '      0,'
      '      null,'
      '      Nvl2('
      '        boi.ANNUL_EMPLOYEE_CODE,'
      '        null,'
      '        Nvl2('
      '          boi.CLOSE_EMPLOYEE_CODE,'
      '          null,'
      '          boi.TOTAL_PRICE'
      '        )'
      '      )'
      '    )'
      '  ) as BOI_REMAINING_PRICE_PERCENT,'
      ''
      '  ('
      '    Decode(Sign(ContextDate - boi.BEGIN_DATE), -1,'
      '      0,'
      '      Decode(Sign(boi.END_DATE - ContextDate), -1,'
      '        null,'
      '        ('
      '          %COUNT_WORKDAYS[boi.BEGIN_DATE~ContextDate] /'
      '          Decode('
      '            %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE],'
      '            0,'
      '            null,'
      '            %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
      '          )'
      '        )'
      '      )'
      '    ) -'
      '    ('
      '      ( select'
      '          Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio2])'
      '        from'
      '          BOI_ORDERS boio2'
      '        where'
      
        '          (boio2.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRA' +
        'NCH_CODE) and'
      '          (boio2.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      
        '          (boio2.BUDGET_ORDER_ITEM_CODE = boi.BUDGET_ORDER_ITEM_' +
        'CODE) and'
      '          (boio2.ANNUL_EMPLOYEE_CODE is null)'
      '      ) /'
      '      Decode('
      '        Nvl2('
      '          boi.ANNUL_EMPLOYEE_CODE,'
      '          null,'
      '          Nvl2('
      '            boi.CLOSE_EMPLOYEE_CODE,'
      '            null,'
      '            boi.TOTAL_PRICE'
      '          )'
      '        ),'
      '        0,'
      '        null,'
      '        Nvl2('
      '          boi.ANNUL_EMPLOYEE_CODE,'
      '          null,'
      '          Nvl2('
      '            boi.CLOSE_EMPLOYEE_CODE,'
      '            null,'
      '            boi.TOTAL_PRICE'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) as BOI_DEVIATION_PERCENT,'
      ''
      '  boi.IS_CONFIRMED as BOI_IS_CONFIRMED,'
      ''
      '  bo.DOC_BRANCH_CODE as BO_DOC_BRANCH_CODE,'
      '  bo.DOC_CODE as BO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[bo] as BO_HAS_DOC,'
      ''
      '  boi.BUDGET_ORDER_ITEM_TYPE_CODE,'
      '  ( select'
      '      boit.BUDGET_ORDER_ITEM_TYPE_ABBREV'
      '    from'
      '      BUDGET_ORDER_ITEM_TYPES boit'
      '    where'
      
        '      (boit.BUDGET_ORDER_ITEM_TYPE_CODE = boi.BUDGET_ORDER_ITEM_' +
        'TYPE_CODE)'
      '  ) as BUDGET_ORDER_ITEM_TYPE_ABBREV,'
      ''
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '  ) as BO_PRODUCT_NO,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = bo.PRODUCT_CODE)'
      '  ) as BO_PRODUCT_NAME'
      ''
      'from'
      '  BUDGET_ORDER_ITEMS boi,'
      '  BUDGET_ORDERS bo'
      ''
      'where'
      
        '  (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE) a' +
        'nd'
      '  (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
      ''
      '  (boi.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (boi.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boi.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS[Greatest(ContextDate, boi.BEGIN_DATE)~ boi.END_DATE' +
          ']'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~ boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'BOIO_ACCOUNT_TOTAL_PRICE[boio2]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~ContextDate]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[bo]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'BOI_ORDERS'
    Left = 552
    Top = 168
    object qryBOIOrderInfoBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBOIOrderInfoBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBOIOrderInfoBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object qryBOIOrderInfoBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
    end
    object qryBOIOrderInfoBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_BRANCH_IDENTIFIER'
      Size = 46
    end
    object qryBOIOrderInfoBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
    object qryBOIOrderInfoGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object qryBOIOrderInfoDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object qryBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_STATUS_CODE'
    end
    object qryBOIOrderInfoBOI_DEPT_CODE: TAbmesFloatField
      FieldName = 'BOI_DEPT_CODE'
    end
    object qryBOIOrderInfoBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
    object qryBOIOrderInfoBOI_DAYS_TO_START: TAbmesFloatField
      FieldName = 'BOI_DAYS_TO_START'
    end
    object qryBOIOrderInfoBOI_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_BEGIN_DATE'
    end
    object qryBOIOrderInfoBOI_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_END_DATE'
    end
    object qryBOIOrderInfoBOI_DAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DAYS_LEFT_PERCENT'
    end
    object qryBOIOrderInfoDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'DISTRIBUTION_DATE_UNIT_NAME'
      Size = 50
    end
    object qryBOIOrderInfoBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTED_SINGLE_PRICE'
    end
    object qryBOIOrderInfoBOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_TOTAL_PRICE'
    end
    object qryBOIOrderInfoBO_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_TOTAL_PRICE_PERCENT'
    end
    object qryBOIOrderInfoBOI_REAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_REAL_PRICE'
    end
    object qryBOIOrderInfoBOI_REMAINING_PRICE: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE'
    end
    object qryBOIOrderInfoBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE_PERCENT'
    end
    object qryBOIOrderInfoBOI_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DEVIATION_PERCENT'
    end
    object qryBOIOrderInfoBC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BC_PRODUCT_CODE'
    end
    object qryBOIOrderInfoBOI_IS_CONFIRMED: TAbmesFloatField
      FieldName = 'BOI_IS_CONFIRMED'
    end
    object qryBOIOrderInfoBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object qryBOIOrderInfoBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object qryBOIOrderInfoBO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_BRANCH_CODE'
    end
    object qryBOIOrderInfoBO_DOC_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_CODE'
    end
    object qryBOIOrderInfoBO_HAS_DOC: TAbmesFloatField
      FieldName = 'BO_HAS_DOC'
    end
    object qryBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object qryBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object qryBOIOrderInfoBO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BO_PRODUCT_NO'
    end
    object qryBOIOrderInfoBO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BO_PRODUCT_NAME'
      Size = 100
    end
  end
  object prvBOIOrderInfo: TDataSetProvider
    DataSet = qryBOIOrderInfo
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvBOIOrderAfterUpdateRecord
    BeforeUpdateRecord = prvBOIOrderBeforeUpdateRecord
    Left = 552
    Top = 120
  end
  object qryGetMaxBOIOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      end>
    SQL.Strings = (
      'select'
      '  Max(boio.BOI_ORDER_CODE) as MAX_BOI_ORDER_CODE'
      'from'
      '  BOI_ORDERS boio'
      'where'
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) an' +
        'd'
      '  (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 360
    object qryGetMaxBOIOrderCodeMAX_BOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'MAX_BOI_ORDER_CODE'
    end
  end
  object qryBudgetOrderClasses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  boc.BUDGET_ORDER_CLASS_CODE,'
      '  boc.BUDGET_ORDER_CLASS_NAME'
      'from'
      '  BUDGET_ORDER_CLASSES boc'
      'order by'
      '  boc.BUDGET_ORDER_CLASS_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 696
    Top = 56
    object qryBudgetOrderClassesBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryBudgetOrderClassesBUDGET_ORDER_CLASS_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_CLASS_NAME'
      Size = 100
    end
  end
  object prvBudgetOrderClasses: TDataSetProvider
    DataSet = qryBudgetOrderClasses
    UpdateMode = upWhereKeyOnly
    Left = 696
    Top = 8
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'PRICE_DEVIATION_PERCENT'
        Strings.Strings = (
          'Decode('
          '  %1, %2, null,'
          '  Decode('
          '    %1, 0, null,'
          '    (Coalesce(%2, 0) - %1) / %1)'
          ')')
      end
      item
        Name = 'PRICE_DEVIATION'
        Strings.Strings = (
          'Decode(%1, %2, null, Coalesce(%2, 0) - %1)')
      end
      item
        Name = 'CLOSED_BUDGET_ORDER_STATUS_CODE'
        Strings.Strings = (
          '4')
      end
      item
        Name = 'CLOSED_BOI_STATUS_CODE'
        Strings.Strings = (
          '9')
      end
      item
        Name = 'BOIO_PLAN_DATE'
        Strings.Strings = (
          'Decode('
          '  %1.BOI_ORDER_TYPE_CODE, 4,'
          '  Decode('
          '    ( select'
          '        lib_boi.BUDGET_ORDER_ITEM_TYPE_CODE'
          '      from'
          '        BUDGET_ORDER_ITEMS lib_boi'
          '      where'
          
            '        (lib_boi.BUDGET_ORDER_BRANCH_CODE = %1.BUDGET_ORDER_BRAN' +
            'CH_CODE) and'
          '        (lib_boi.BUDGET_ORDER_CODE = %1.BUDGET_ORDER_CODE) and'
          
            '        (lib_boi.BUDGET_ORDER_ITEM_CODE = %1.BUDGET_ORDER_ITEM_C' +
            'ODE)'
          '    ),'
          '    1,'
          '    ( select'
          '        lib_dp.DELIVERY_DATE'
          '      from'
          '        DELIVERY_CONTRACTS lib_dc,'
          '        DELIVERY_PROJECTS lib_dp'
          '      where'
          
            '        (lib_dc.DCD_OBJECT_BRANCH_CODE = lib_dp.DCD_OBJECT_BRANC' +
            'H_CODE) and'
          '        (lib_dc.DCD_OBJECT_CODE = lib_dp.DCD_OBJECT_CODE) and'
          
            '        (lib_dc.DELIVERY_PROJECT_CODE = lib_dp.DELIVERY_PROJECT_' +
            'CODE) and'
          '                      '
          
            '        (lib_dc.DELIVERY_OBJECT_BRANCH_CODE = %1.DELIVERY_OBJECT' +
            '_BRANCH_CODE) and'
          '        (lib_dc.DELIVERY_OBJECT_CODE = %1.DELIVERY_OBJECT_CODE)'
          '    ),'
          '    %1.PLAN_DATE'
          '  ),'
          '  %1.PLAN_DATE'
          ')')
      end
      item
        Name = 'BOIO_ACCOUNT_DATE'
        Strings.Strings = (
          'Decode('
          '  %1.BOI_ORDER_TYPE_CODE,'
          '  1,'
          '  ( select'
          '      Max(lib_sd.STORE_DEAL_DATE)'
          '    from'
          '      STORE_DEALS lib_sd'
          '    where'
          
            '      (lib_sd.BND_PROCESS_OBJECT_BRANCH_CODE = %1.BOI_ORDER_OBJE' +
            'CT_BRANCH_CODE) and'
          
            '      (lib_sd.BND_PROCESS_OBJECT_CODE = %1.BOI_ORDER_OBJECT_CODE' +
            ') and'
          '      (lib_sd.STORNO_EMPLOYEE_CODE is null) and'
          '      (lib_sd.IN_OUT = -1)'
          '  ),'
          '  4,'
          '  Decode('
          '    ( select'
          '        lib_boi.BUDGET_ORDER_ITEM_TYPE_CODE'
          '      from'
          '        BUDGET_ORDER_ITEMS lib_boi'
          '      where'
          
            '        (lib_boi.BUDGET_ORDER_BRANCH_CODE = %1.BUDGET_ORDER_BRAN' +
            'CH_CODE) and'
          '        (lib_boi.BUDGET_ORDER_CODE = %1.BUDGET_ORDER_CODE) and'
          
            '        (lib_boi.BUDGET_ORDER_ITEM_CODE = %1.BUDGET_ORDER_ITEM_C' +
            'ODE)'
          '    ),'
          '    1,'
          '    ( select'
          '        Max(lib_sd.STORE_DEAL_DATE)'
          '      from'
          '        STORE_DEALS lib_sd'
          '      where'
          
            '        (lib_sd.BND_PROCESS_OBJECT_BRANCH_CODE = %1.DELIVERY_OBJ' +
            'ECT_BRANCH_CODE) and'
          
            '        (lib_sd.BND_PROCESS_OBJECT_CODE = %1.DELIVERY_OBJECT_COD' +
            'E) and'
          '        (lib_sd.STORNO_EMPLOYEE_CODE is null) and'
          '        (lib_sd.IN_OUT = 1)'
          '    ),'
          '    %1.ACCOUNT_DATE'
          '  ),'
          '  %1.ACCOUNT_DATE'
          ')')
      end>
    Left = 688
    Top = 160
  end
  object qryBudgetOrderItemTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  boit.BUDGET_ORDER_ITEM_TYPE_CODE,'
      '  boit.BUDGET_ORDER_ITEM_TYPE_NO,'
      '  boit.BUDGET_ORDER_ITEM_TYPE_NAME,'
      '  boit.BUDGET_ORDER_ITEM_TYPE_ABBREV'
      'from'
      '  BUDGET_ORDER_ITEM_TYPES boit'
      'order by'
      '  boit.BUDGET_ORDER_ITEM_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 480
    object qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NO: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_NO'
      Required = True
    end
    object qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvBudgetOrderItemTypes: TDataSetProvider
    DataSet = qryBudgetOrderItemTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 80
    Top = 432
  end
  object qryNewBOIOrderNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      end>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(boio.BOI_ORDER_CODE), 0) + 1) as NEW_BOI_ORDER_C' +
        'ODE'
      ''
      'from'
      '  BOI_ORDERS boio'
      ''
      'where'
      
        '  (boio.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) an' +
        'd'
      '  (boio.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boio.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 248
    object qryNewBOIOrderNoNEW_BOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'NEW_BOI_ORDER_CODE'
    end
  end
  object prvBOIOrdersDetail: TDataSetProvider
    DataSet = qryBOIOrdersDetail
    Left = 328
    Top = 120
  end
  object qryOrgTaskProposalStates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  otps.ORG_TASK_PROPOSAL_STATE_CODE,'
      '  otps.ORG_TASK_PROPOSAL_STATE_NO,'
      '  otps.ORG_TASK_PROPOSAL_STATE_NAME,'
      '  otps.ORG_TASK_PROPOSAL_STATE_ABBREV'
      'from'
      '  ORG_TASK_PROPOSAL_STATES otps'
      'order by'
      '  otps.ORG_TASK_PROPOSAL_STATE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 480
    object qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_NO'
      Required = True
    end
    object qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_NAME'
      Required = True
      Size = 100
    end
    object qryOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object prvOrgTaskProposalStates: TDataSetProvider
    DataSet = qryOrgTaskProposalStates
    Options = [poReadOnly, poUseQuoteChar]
    Left = 664
    Top = 432
  end
  object qryBOIOrderDeliveryData: TAbmesSQLQuery
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
      
        '  dp.TOTAL_PRICE * %CURRENCY_FIXING[dp.CURRENCY_CODE~dp.DELIVERY' +
        '_DATE] as PLAN_TOTAL_PRICE,'
      ''
      '  dp.DELIVERY_DATE as PLAN_DATE,'
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
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = 1)'
      '  ) as ACCOUNT_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Max(sd.STORE_DEAL_DATE)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = 1)'
      '  ) as ACCOUNT_DATE,'
      ''
      '  dp.PRODUCT_CODE,'
      ''
      '  dp.WORK_QUANTITY as PLAN_QUANTITY,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = dc.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = dc.DELIVERY_OBJECT_CODE) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      '      (sd.IN_OUT = 1)'
      '  ) as REAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      PRODUCTS p,'
      '      MEASURES m'
      '    where'
      '      (p.PRODUCT_CODE = dp.PRODUCT_CODE) and'
      '      (p.MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV'
      ''
      'from'
      '  DELIVERY_CONTRACTS dc,'
      '  DELIVERY_PROJECTS dp'
      ''
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dp.DCD_OBJECT_BRANCH_CODE) and'
      '  (dc.DCD_OBJECT_CODE = dp.DCD_OBJECT_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = dp.DELIVERY_PROJECT_CODE) and'
      ''
      
        '  (dc.DELIVERY_OBJECT_BRANCH_CODE = :DELIVERY_OBJECT_BRANCH_CODE' +
        ') and'
      '  (dc.DELIVERY_OBJECT_CODE = :DELIVERY_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
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
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 536
    object qryBOIOrderDeliveryDataPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryBOIOrderDeliveryDataPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object qryBOIOrderDeliveryDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object qryBOIOrderDeliveryDataACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACCOUNT_DATE'
    end
    object qryBOIOrderDeliveryDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qryBOIOrderDeliveryDataPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object qryBOIOrderDeliveryDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryBOIOrderDeliveryDataREAL_QUANTITY: TAbmesFloatField
      FieldName = 'REAL_QUANTITY'
    end
  end
  object prvBOIOrderDeliveryData: TDataSetProvider
    DataSet = qryBOIOrderDeliveryData
    Left = 456
    Top = 488
  end
  object qryBOIOrderStoreDealsMinMaxDates: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Min(sd.STORE_DEAL_DATE) as MIN_STORE_DEAL_DATE,'
      '  Max(sd.STORE_DEAL_DATE) as MAX_STORE_DEAL_DATE'
      'from'
      '  STORE_DEALS sd'
      'where'
      
        '  (sd.BND_PROCESS_OBJECT_BRANCH_CODE = :BOI_ORDER_OBJECT_BRANCH_' +
        'CODE) and'
      '  (sd.BND_PROCESS_OBJECT_CODE = :BOI_ORDER_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 256
    Top = 536
    object qryBOIOrderStoreDealsMinMaxDatesMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_STORE_DEAL_DATE'
    end
    object qryBOIOrderStoreDealsMinMaxDatesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_STORE_DEAL_DATE'
    end
  end
  object prvBOIOrderStoredDealsMinMaxDates: TDataSetProvider
    DataSet = qryBOIOrderStoreDealsMinMaxDates
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 488
  end
end
