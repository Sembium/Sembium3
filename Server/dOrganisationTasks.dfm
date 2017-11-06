inherited dmOrganisationTasks: TdmOrganisationTasks
  OldCreateOrder = False
  Height = 376
  Width = 771
  object qryOrgTaskProposalResultTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  otprt.ORG_TASK_PROP_RESULT_TYPE_CODE,'
      '  otprt.ORG_TASK_PROP_RESULT_TYPE_NAME,'
      '  otprt.ORG_TASK_PROP_RESULT_TYPE_ABBR'
      'from'
      '  ORG_TASK_PROP_RESULT_TYPES otprt'
      'order by'
      '  otprt.ORG_TASK_PROP_RESULT_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 64
    object qryOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
    end
    object qryOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_NAME'
      Size = 250
    end
    object qryOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_ABBR: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_ABBR'
      Size = 100
    end
  end
  object prvOrgTaskProposalResultTypes: TDataSetProvider
    DataSet = qryOrgTaskProposalResultTypes
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 16
  end
  object qryOrganisationTaskProposals: TAbmesSQLQuery
    BeforeOpen = qryOrganisationTaskProposalsBeforeOpen
    AfterClose = qryOrganisationTaskProposalsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_PROPOSAL_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PROPOSAL_STATE_CODE'
        ParamType = ptInput
        Value = '13'
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANAGER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANAGER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_CYCLES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_CYCLES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
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
        Name = 'HAS_PRODUCTION_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_PRODUCTION_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PO_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PO_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_PRODUCTION_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_ENGINEERING_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_ENGINEERING_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EO_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EO_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_ENGINEERING_ORDER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  otp.ORG_TASK_PROPOSAL_CODE,'
      '  %OTP_STATE_CODE[otp~s~ml~eo] as OTP_STATE_CODE,'
      '  otp.ORG_TASK_PROPOSAL_NO,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      ORG_TASK_PROPOSALS otp2'
      '    start with'
      '      (otp2.ORG_TASK_PROPOSAL_CODE = otp.ORG_TASK_PROPOSAL_CODE)'
      '    connect by'
      
        '      (otp2.ORG_TASK_PROPOSAL_CODE = prior otp2.REPLACED_ORG_TAS' +
        'K_PROP_CODE)'
      '  ) as ORG_TASK_PROPOSAL_CYCLE_NO,'
      ''
      '  otp.CREATE_DATE,'
      '  otp.ANNUL_EMPLOYEE_CODE,'
      ''
      '  otp.DOC_BRANCH_CODE,'
      '  otp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[otp] as PROPOSAL_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = otp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = otp.DOC_CODE)'
      '  ) as P_DOC_EMPTINESS_REQ_CODE,'
      ''
      '  ( select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = otp.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = otp.DOC_CODE)'
      '  ) as P_DOC_IS_COMPLETE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = otp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = otp.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as P_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = otp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = otp.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as P_UNAUTHORIZED_ACTIVE_DI_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = otp.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = otp.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as P_UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  otp.DESCRIPTION,'
      '  otp.PLAN_PROPOSAL_DATE,'
      ''
      '  ( select'
      '      '#39' '#39' || e.ABBREV || '#39'    '#39' ||'
      '      e.FIRST_NAME ||'
      '      Nvl2(e.MIDDLE_NAME,'
      '        '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '        '#39' '#39') ||'
      '      e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = otp.PLAN_PROPOSAL_EMPLOYEE_CODE)'
      '  ) as PLAN_PROPOSAL_EMPLOYEE_ABBREV,'
      ''
      '  ( select'
      '      '#39' '#39' || e.ABBREV || '#39'    '#39' ||'
      '      e.FIRST_NAME ||'
      '      Nvl2(e.MIDDLE_NAME,'
      '        '#39' '#39' || Substr(e.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '        '#39' '#39') ||'
      '      e.LAST_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = otp.MANAGER_EMPLOYEE_CODE)'
      '  ) as MANAGER_EMPLOYEE_ABBREV,'
      ''
      '  otp.RESULT_DATE,'
      '  otp.ORG_TASK_PROP_RESULT_TYPE_CODE,'
      ''
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = otp.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      '  eo.ENGINEERING_ORDER_CODE,'
      ''
      '  Nvl2(eo.ENGINEERING_ORDER_CODE,'
      '    ( case'
      '        when (eo.ANNUL_EMPLOYEE_CODE is not null) then'
      '          8'
      '        when (eo.CLOSE_EMPLOYEE_CODE is not null) then'
      '          7'
      '        when (eo.ACTIVATE_EMPLOYEE_CODE is not null) then'
      
        '          Decode(%SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null' +
        '], 5, 6, 5)'
      '        when eo.ENGINEERING_DEPT_CODE is null then'
      '          1'
      '        when eo.ENGINEERING_EMPLOYEE_CODE is null then'
      '          2'
      '      else'
      
        '        3 + Decode(Sign(eo.ENGINEERING_PLAN_END_DATE - ContextDa' +
        'te), 1, 0, 1)'
      '      end'
      '    ),'
      '    null'
      '  ) as EO_STATE_CODE,'
      ''
      '  Nvl2('
      '    eo.ENGINEERING_ORDER_CODE,'
      '    ( ( select'
      '          d.CUSTOM_CODE'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = eo.ENGINEERING_ORDER_BRANCH_CODE)'
      '      ) ||'
      '      '#39'/'#39' || eo.ENGINEERING_ORDER_NO || '#39'/'#39' ||'
      '      ( select'
      '          eot.ENGINEERING_ORDER_TYPE_ABBREV'
      '        from'
      '          ENGINEERING_ORDER_TYPES eot'
      '        where'
      
        '          (eot.ENGINEERING_ORDER_TYPE_CODE = eo.ENGINEERING_ORDE' +
        'R_TYPE_CODE)'
      '      )'
      '    ),'
      '    null'
      '  ) as ENGINEERING_ORDER_IDENTIFIER,'
      ''
      '  Nvl2(eo.ENGINEERING_ORDER_CODE,'
      '    %COUNT_WORKDAYS['
      '      eo.ACTIVATE_DATE~'
      '      Coalesce(eo.CLOSE_DATE, ContextDate)'
      '    ],'
      '    null'
      '  ) as ENGINEERING_REAL_WORKDAYS,'
      ''
      '  otp.ENGINEERING_PLAN_BEGIN_DATE,'
      '  otp.ENGINEERING_PLAN_END_DATE,'
      ''
      '  Nvl2('
      '    otp.ENGINEERING_PLAN_BEGIN_DATE,'
      '    %COUNT_WORKDAYS['
      
        '      Coalesce(%OTP_ENGINEERING_REAL_BEGIN_DATE[otp], ContextDat' +
        'e)~'
      '      otp.ENGINEERING_PLAN_BEGIN_DATE],'
      '    null'
      '  ) as ENGINEERING_BEGIN_DAYS_LEFT,'
      ''
      '  Nvl2('
      '    otp.ENGINEERING_PLAN_END_DATE,'
      '    %COUNT_WORKDAYS['
      
        '      Coalesce(%OTP_ENGINEERING_REAL_END_DATE[otp], ContextDate)' +
        '~'
      '      otp.ENGINEERING_PLAN_END_DATE],'
      '    null'
      '  ) as ENGINEERING_END_DAYS_LEFT,'
      ''
      
        '  %OTP_ENGINEERING_REAL_BEGIN_DATE[otp] as ENGINEERING_REAL_BEGI' +
        'N_DATE,'
      
        '  %OTP_ENGINEERING_REAL_END_DATE[otp] as ENGINEERING_REAL_END_DA' +
        'TE,'
      ''
      '  eo.DOC_BRANCH_CODE as EO_DOC_BRANCH_CODE,'
      '  eo.DOC_CODE as EO_DOC_CODE,'
      '  %HAS_DOC_ITEMS[eo] as EO_HAS_DOC_ITEMS,'
      ''
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      ''
      '  Nvl2(s.SALE_OBJECT_BRANCH_CODE,'
      '    %ML_STATE[s~ml],'
      '    null'
      '  ) as ML_STATE_CODE,'
      ''
      '  Nvl2(s.SALE_OBJECT_BRANCH_CODE,'
      '    Nvl2('
      '      ( select'
      '           Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          MATERIAL_LIST_LINES mll,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '          (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.BND_PROCESS_CODE <> 110) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      ),'
      '      %COUNT_WORKDAYS['
      '        ( select'
      '             Min(sd.STORE_DEAL_DATE)'
      '          from'
      '            MATERIAL_LIST_LINES mll,'
      '            STORE_DEALS sd'
      '          where'
      
        '            (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_COD' +
        'E) and'
      '            (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '            (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '            (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      '            (sd.IN_OUT = -1) and'
      '            (sd.BND_PROCESS_CODE <> 110) and'
      '            (sd.STORNO_EMPLOYEE_CODE is null)'
      '        )~'
      '        case'
      '          when'
      '            exists'
      '              ( select'
      '                  1'
      '                from'
      '                  PLANNED_STORE_DEALS psd'
      '                where'
      
        '                  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_P' +
        'ROCESS_OBJECT_BRANCH_CODE) and'
      
        '                  (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_' +
        'OBJECT_CODE) and'
      
        '                  (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) an' +
        'd'
      '                  (psd.IN_OUT = 1) and'
      '                  (psd.IS_PLANNED_MANUALLY = 0) and'
      '                  (psd.BND_PROCESS_CODE <> 110) and'
      '                  (psd.IS_ACTIVE = 0)'
      '              )'
      '            then'
      '            ( select'
      '                Max(sd.STORE_DEAL_DATE)'
      '              from'
      '                STORE_DEALS sd'
      '              where'
      
        '                (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE' +
        ') and'
      '                (sd.IN_OUT = 1) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null)'
      '            )'
      '        else'
      '          ContextDate'
      '        end'
      '      ],'
      '      null'
      '    ),'
      '    null'
      '  ) as SALE_PRODUCTION_WORKDAYS,'
      ''
      '  otp.PRODUCTION_PLAN_BEGIN_DATE,'
      '  otp.PRODUCTION_PLAN_END_DATE,'
      ''
      '  Nvl2('
      '    otp.PRODUCTION_PLAN_BEGIN_DATE,'
      '    %COUNT_WORKDAYS['
      
        '      Coalesce(%OTP_PRODUCTION_REAL_BEGIN_DATE[otp~s], ContextDa' +
        'te)~'
      '      otp.PRODUCTION_PLAN_BEGIN_DATE],'
      '    null'
      '  ) as PRODUCTION_BEGIN_DAYS_LEFT,'
      ''
      '  Nvl2('
      '    otp.PRODUCTION_PLAN_END_DATE,'
      '    %COUNT_WORKDAYS['
      
        '      Coalesce(%OTP_PRODUCTION_REAL_END_DATE[otp~s], ContextDate' +
        ')~'
      '      otp.PRODUCTION_PLAN_END_DATE],'
      '    null'
      '  ) as PRODUCTION_END_DAYS_LEFT,'
      ''
      
        '  %OTP_PRODUCTION_REAL_BEGIN_DATE[otp~s] as PRODUCTION_REAL_BEGI' +
        'N_DATE,'
      
        '  %OTP_PRODUCTION_REAL_END_DATE[otp~s] as PRODUCTION_REAL_END_DA' +
        'TE,'
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
      '  s.DOC_BRANCH_CODE as PROD_ORDER_DOC_BRANCH_CODE,'
      '  s.DOC_CODE as PROD_ORDER_DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as PROD_ORDER_HAS_DOC_ITEMS,'
      ''
      '  -- project prices'
      ''
      '  %PRJ_PROJECT_TOTAL_PRICE[otp] as PRJ_PROJECT_TOTAL_PRICE,'
      '  otp.ENGINEERING_PRICE as PRJ_ENG_PROJECT_PRICE,'
      
        '  (otp.ENGINEERING_PRICE / %PRJ_PROJECT_TOTAL_PRICE[otp]) as PRJ' +
        '_ENG_PROJECT_PRICE_P,'
      '  otp.PRODUCTION_PRICE as PRJ_PROD_PROJECT_PRICE,'
      
        '  (otp.PRODUCTION_PRICE / %PRJ_PROJECT_TOTAL_PRICE[otp]) as PRJ_' +
        'PROD_PROJECT_PRICE_P,'
      '  otp.APPLY_PRICE,'
      ''
      '  -- boi prices'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)] as PRJ' +
        '_BOI_TOTAL_PRICE,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)] as PRJ_DELIV' +
        'ERY_BOI_PRICE,'
      '  ( %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)] /'
      '    %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_DELIVERY_BOI_PRICE_P,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)] as PRJ_EXPEN' +
        'SE_BOI_PRICE,'
      '  ( %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_EXPENSE_BOI_PRICE_P,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)] as PRJ_EN' +
        'G_BOI_PRICE,'
      '  ( %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOI_PRICE_P,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)] as PRJ_PR' +
        'OD_BOI_PRICE,'
      '  ( %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOI_PRICE_P,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)] as PRJ_APPLY' +
        '_BOI_TOTAL_PRICE,'
      ''
      '  -- boio_plan prices'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)] ' +
        'as PRJ_BOIO_PLAN_TOTAL_PRICE,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)] as PRJ' +
        '_DELIVERY_BOIO_PLAN_PRICE,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)] /'
      
        '    %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)' +
        ']'
      '  ) as PRJ_DELIVERY_BOIO_PLAN_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)] as PRJ' +
        '_EXPENSE_BOIO_PLAN_PRICE,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)] /'
      
        '    %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)' +
        ']'
      '  ) as PRJ_EXPENSE_BOIO_PLAN_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)] as ' +
        'PRJ_ENG_BOIO_PLAN_PRICE,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)] /'
      
        '    %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)' +
        ']'
      '  ) as PRJ_ENG_BOIO_PLAN_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)] as ' +
        'PRJ_PROD_BOIO_PLAN_PRICE,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)] /'
      
        '    %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)' +
        ']'
      '  ) as PRJ_PROD_BOIO_PLAN_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)] as PRJ' +
        '_APPLY_BOIO_PL_TOTAL_PRICE,'
      ''
      '  -- boio_account prices'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3' +
        ')] as PRJ_BOIO_ACCOUNT_TOTAL_PRICE,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)] as ' +
        'PRJ_DELIVERY_BOIO_ACC_PRICE,'
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)] /'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2,' +
        ' 3)]'
      '  ) as PRJ_DELIVERY_BOIO_ACC_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)] as ' +
        'PRJ_EXPENSE_BOIO_ACC_PRICE,'
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)] /'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2,' +
        ' 3)]'
      '  ) as PRJ_EXPENSE_BOIO_ACC_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)] ' +
        'as PRJ_ENG_BOIO_ACC_PRICE,'
      
        '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)' +
        '] /'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2,' +
        ' 3)]'
      '  ) as PRJ_ENG_BOIO_ACC_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)] ' +
        'as PRJ_PROD_BOIO_ACC_PRICE,'
      
        '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)' +
        '] /'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2,' +
        ' 3)]'
      '  ) as PRJ_PROD_BOIO_ACC_PRICE_P,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)] as ' +
        'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE,'
      ''
      '  NullIf('
      
        '    Coalesce(otp.ENGINEERING_PRICE, 0) + Coalesce(otp.PRODUCTION' +
        '_PRICE, 0) -'
      '    Coalesce(otp.APPLY_PRICE, 0),'
      '    0'
      '  ) as PRJ_PRICE_DEV_PROJECT,'
      ''
      '  NullIf('
      
        '    Coalesce(%PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2,' +
        ' 3)], 0) -'
      
        '    Coalesce(%PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)], ' +
        '0),'
      '    0'
      '  ) as PRJ_PRICE_DEV_BOI,'
      ''
      '  NullIf('
      
        '    Coalesce(%PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~' +
        '(1, 2, 3)], 0) -'
      
        '    Coalesce(%PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~' +
        '(4)], 0),'
      '    0'
      '  ) as PRJ_PRICE_DEV_BOIO_PLAN,'
      ''
      '  NullIf('
      
        '    Coalesce(%PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, ' +
        '2)~(1, 2, 3)], 0) -'
      
        '    Coalesce(%PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, ' +
        '2)~(4)], 0),'
      '    0'
      '  ) as PRJ_PRICE_DEV_BOIO_ACCOUNT'
      ''
      'from'
      '  ORG_TASK_PROPOSALS otp,'
      '  PRODUCTS p,'
      '  ENGINEERING_ORDERS eo,'
      '  SALES s,'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      '  (otp.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      '  (otp.PRODUCT_CODE = eo.PRODUCT_CODE(+)) and'
      '  (eo.ANNUL_EMPLOYEE_CODE(+) is null) and'
      '  (eo.CLOSE_EMPLOYEE_CODE(+) is null) and'
      '  (eo.PARENT_ENGINEERING_ORDER_CODE(+) is null) and'
      ''
      
        '  (otp.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+)) a' +
        'nd'
      '  (otp.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      
        '  (%OTP_STATE_CODE[otp~s~ml~eo] between :MIN_PROPOSAL_STATE_CODE' +
        ' and :MAX_PROPOSAL_STATE_CODE) and'
      ''
      '  ( (:ORG_TASK_PROPOSAL_NO is null) or'
      '    (:ORG_TASK_PROPOSAL_NO = otp.ORG_TASK_PROPOSAL_NO)'
      '  ) and'
      ''
      '  ( (:CREATE_BEGIN_DATE is null) or'
      '    (otp.CREATE_DATE >= :CREATE_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:CREATE_END_DATE is null) or'
      '    (otp.CREATE_DATE <= :CREATE_END_DATE)'
      '  ) and'
      ''
      '  ( (:PLAN_PROPOSAL_BEGIN_DATE is null) or'
      '    (otp.PLAN_PROPOSAL_DATE >= :PLAN_PROPOSAL_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:PLAN_PROPOSAL_END_DATE is null) or'
      '    (otp.PLAN_PROPOSAL_DATE <= :PLAN_PROPOSAL_END_DATE)'
      '  ) and'
      ''
      '  ( (:PLAN_PROPOSAL_EMPLOYEE_CODE is null) or'
      
        '    (otp.PLAN_PROPOSAL_EMPLOYEE_CODE = :PLAN_PROPOSAL_EMPLOYEE_C' +
        'ODE)'
      '  ) and'
      ''
      '  ( (:MANAGER_EMPLOYEE_CODE is null) or'
      '    (otp.MANAGER_EMPLOYEE_CODE = :MANAGER_EMPLOYEE_CODE)'
      '  ) and'
      ''
      '  ( (:RESULT_BEGIN_DATE is null) or'
      '    (otp.RESULT_DATE >= :RESULT_BEGIN_DATE)'
      '  ) and'
      ''
      '  ( (:RESULT_END_DATE is null) or'
      '    (otp.RESULT_DATE <= :RESULT_END_DATE)'
      '  ) and'
      ''
      '  ( (:RESULT_TYPE_CODE is null) or'
      '    (otp.ORG_TASK_PROP_RESULT_TYPE_CODE = :RESULT_TYPE_CODE)'
      '  ) and'
      ''
      '  ( ( select'
      '        Count(*)'
      '      from'
      '        ORG_TASK_PROPOSALS otp2'
      '      start with'
      
        '        (otp2.ORG_TASK_PROPOSAL_CODE = otp.ORG_TASK_PROPOSAL_COD' +
        'E)'
      '      connect by'
      
        '        (otp2.ORG_TASK_PROPOSAL_CODE = prior otp2.REPLACED_ORG_T' +
        'ASK_PROP_CODE)'
      
        '    ) between Coalesce(To_Number(:MIN_CYCLES), -9999999999) and ' +
        'Coalesce(To_Number(:MAX_CYCLES), 9999999999)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = otp.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:DEPT_CODE is null) or'
      '    (:DEPT_CODE = otp.DEPT_CODE)'
      '  ) and'
      ''
      '      -- (1) wsichki'
      '  ( (:HAS_PRODUCTION_ORDER = 1) or'
      ''
      '      -- (2) ima OPW'
      '    ( (:HAS_PRODUCTION_ORDER = 2) and'
      '      ( (s.SALE_OBJECT_BRANCH_CODE is not null) and'
      '        (Coalesce('
      '          ( case'
      '              when (s.ANNUL_EMPLOYEE_CODE is not null) then'
      '                13'
      
        '              when (s.FINISH_EMPLOYEE_CODE is not null) and (ml.' +
        'ML_OBJECT_BRANCH_CODE is null) then'
      '                12'
      
        '              when (ml.IS_ARCHIVED = 1) and (s.FINISH_EMPLOYEE_C' +
        'ODE is not null) then'
      '                11'
      
        '              when (ml.IS_ARCHIVED = 1) and (s.FINISH_EMPLOYEE_C' +
        'ODE is null) then'
      '                10'
      
        '              when (ml.CLOSE_EMPLOYEE_CODE is not null) and (s.F' +
        'INISH_EMPLOYEE_CODE is not null) then'
      '                9'
      
        '              when (ml.CLOSE_EMPLOYEE_CODE is not null) and (s.F' +
        'INISH_EMPLOYEE_CODE is null) then'
      '                8'
      '              when'
      '                (exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      PLANNED_STORE_DEALS psd'
      '                    where'
      
        '                      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.B' +
        'ND_PROCESS_OBJECT_BRANCH_CODE) and'
      
        '                      (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROC' +
        'ESS_OBJECT_CODE) and'
      
        '                      (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE' +
        ') and'
      '                      (psd.IN_OUT = 1) and'
      '                      (psd.IS_PLANNED_MANUALLY = 0) and'
      '                      (psd.BND_PROCESS_CODE <> 110) and'
      '                      (psd.IS_ACTIVE = 0)'
      '                  )'
      '                ) then'
      '                7'
      '              when'
      '                ( (ml.LIMITING_EMPLOYEE_CODE is not null) or'
      
        '                  ( (s.MODEL_DEVELOPMENT_TYPE_CODE = %mdt_WITHOU' +
        'T_MODEL) and'
      '                    (ml.ML_OBJECT_BRANCH_CODE is null) and'
      
        '                    ( ( (s.PRODUCTION_START_PLAN_DATE is not nul' +
        'l) and'
      
        '                        (s.PRODUCTION_START_PLAN_DATE >= Context' +
        'Date)'
      '                      ) or'
      '                      (exists'
      '                        ( select'
      '                           1'
      '                         from'
      '                           STORE_DEALS sd'
      '                         where'
      
        '                           (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ' +
        's.SALE_OBJECT_BRANCH_CODE) and'
      
        '                           (sd.BND_PROCESS_OBJECT_CODE = s.SALE_' +
        'OBJECT_CODE) and'
      '                           (sd.IN_OUT = -1) and'
      '                           (sd.STORNO_EMPLOYEE_CODE is null)'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                ) then'
      '                6'
      '              when'
      '                ('
      '                  (ml.ML_OBJECT_BRANCH_CODE is not null) and'
      '                  ( %COUNT_WORKDAYS['
      '                      ContextDate~'
      
        '                      %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRA' +
        'NCH_CODE~ ml.ML_OBJECT_CODE]'
      
        '                    ] <= (select co.ML_LIMITING_WORKDAYS from CO' +
        'MMON_OPTIONS co where (co.CODE = 1))'
      '                  )'
      '                ) then'
      '                5'
      '              when'
      '                ( (ml.ML_OBJECT_BRANCH_CODE is not null) or'
      
        '                  ( (s.MODEL_DEVELOPMENT_TYPE_CODE = %mdt_WITHOU' +
        'T_MODEL) and'
      '                    (ml.ML_OBJECT_BRANCH_CODE is null) and'
      '                    (s.OKIDU_EMPLOYEE_CODE is not null) and'
      '                    (s.PRODUCTION_DEPT_CODE is not null)'
      '                  )'
      '                ) then'
      '                4'
      
        '              when (s.OKIDU_EMPLOYEE_CODE is not null) and (s.PR' +
        'ODUCTION_DEPT_CODE is not null) then'
      '                3'
      '              when (s.OKIDU_EMPLOYEE_CODE is not null) then'
      '                2'
      '              else'
      '                1'
      '            end'
      
        '          ), 0) between :MIN_PO_STATE_CODE and :MAX_PO_STATE_COD' +
        'E'
      '        )'
      '      )'
      '    ) or'
      ''
      '      -- (3) nqma OPW'
      '    ( (:HAS_PRODUCTION_ORDER = 3) and'
      '      (s.SALE_OBJECT_BRANCH_CODE is null)'
      '    )'
      '  ) and'
      ''
      '    -- (1) wsichki'
      '  ( (:HAS_ENGINEERING_ORDER = 1) or'
      ''
      '      -- (2) ima OPIR'
      '    ( (:HAS_ENGINEERING_ORDER = 2) and'
      '      (eo.ENGINEERING_ORDER_CODE is not null) and'
      '      ( ( case'
      '            when (eo.ANNUL_EMPLOYEE_CODE is not null) then'
      '              8'
      '            when (eo.CLOSE_EMPLOYEE_CODE is not null) then'
      '              7'
      '            when (eo.ACTIVATE_EMPLOYEE_CODE is not null) then'
      
        '              Decode(%SPEC_STATE[eo.PRODUCT_CODE~null~null~null~' +
        'null], 5, 6, 5)'
      '            when eo.ENGINEERING_DEPT_CODE is null then'
      '              1'
      '            when eo.ENGINEERING_EMPLOYEE_CODE is null then'
      '              2'
      '          else'
      '            3 + Decode('
      '                  Sign('
      '                    ( %INC_DATE_BY_WORKDAYS['
      '                        (eo.ENGINEERING_PLAN_END_DATE + 1)~'
      
        '                        (-(eo.ENGINEERING_PLAN_WORKDAYS + (selec' +
        't co.EO_ACTIVATING_WORKDAYS from COMMON_OPTIONS co where (co.COD' +
        'E = 1))))'
      '                      ] - ContextDate'
      '                    )'
      '                  ),'
      '                  1, 0,'
      '                  1'
      '                )'
      '          end'
      '        ) between :MIN_EO_STATE_CODE and :MAX_EO_STATE_CODE'
      '      )'
      '    ) or'
      ''
      '      -- (3) nqma OPIR'
      '    ( (:HAS_ENGINEERING_ORDER = 3) and'
      '      (eo.ENGINEERING_ORDER_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( (:ENGINEERING_PLAN_BEGIN_DATE is null) or'
      '    (:ENGINEERING_PLAN_END_DATE is null) or'
      
        '    ( (:ENGINEERING_PLAN_BEGIN_DATE <= otp.ENGINEERING_PLAN_END_' +
        'DATE) and'
      
        '      (:ENGINEERING_PLAN_END_DATE >= otp.ENGINEERING_PLAN_BEGIN_' +
        'DATE)'
      '    )'
      '  ) and'
      ''
      '  ( (:PRODUCTION_PLAN_BEGIN_DATE is null) or'
      '    (:PRODUCTION_PLAN_END_DATE is null) or'
      
        '    ( (:PRODUCTION_PLAN_BEGIN_DATE <= otp.PRODUCTION_PLAN_END_DA' +
        'TE) and'
      
        '      (:PRODUCTION_PLAN_END_DATE >= otp.PRODUCTION_PLAN_BEGIN_DA' +
        'TE)'
      '    )'
      '  ) and'
      ''
      '  -- procesen obhwat'
      '  %PRC_DATA_FILTER['
      '    OTP~'
      '    ORG_TASK_PROPOSAL_CODE~'
      '    otp.ORG_TASK_PROPOSAL_CODE~'
      '    :PRC_FUNC_CODE~'
      '    :PRC_KNOWL_CODE~'
      '    :PRC_BASE_OP_CODE~'
      '    :PRC_BASE_ACTION_CODE~'
      '    :PRC_CONCRETE_OP_CODE~'
      '    :PRC_CONCRETE_ACTION_CODE] and'
      ''
      '  -- za da se wijdat parametrite'
      '  (:PRC_FUNC_CODE * null is null) and'
      '  (:PRC_KNOWL_CODE * null is null) and'
      '  (:PRC_BASE_OP_CODE * null is null) and'
      '  (:PRC_BASE_ACTION_CODE * null is null) and'
      '  (:PRC_CONCRETE_OP_CODE * null is null) and'
      '  (:PRC_CONCRETE_ACTION_CODE * null is null)'
      ''
      'order by'
      '  otp.ORG_TASK_PROPOSAL_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'OTP_STATE_CODE[otp~s~ml~eo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[otp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      eo.ACTIVATE_DATE~'#13#10'      Coalesce(eo.CLOS' +
          'E_DATE, ContextDate)'#13#10'    ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      Coalesce(%OTP_ENGINEERING_REAL_BEGIN_DATE' +
          '[otp], ContextDate)~'#13#10'      otp.ENGINEERING_PLAN_BEGIN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OTP_ENGINEERING_REAL_BEGIN_DATE[otp]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      Coalesce(%OTP_ENGINEERING_REAL_END_DATE[o' +
          'tp], ContextDate)~'#13#10'      otp.ENGINEERING_PLAN_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OTP_ENGINEERING_REAL_END_DATE[otp]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'ML_STATE[s~ml]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'        ( select'#13#10'             Min(sd.STORE_DEA' +
          'L_DATE)'#13#10'          from'#13#10'            MATERIAL_LIST_LINES mll,'#13#10' ' +
          '           STORE_DEALS sd'#13#10'          where'#13#10'            (mll.ML_' +
          'OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'#13#10'            ' +
          '(mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'#13#10'            (mll.M' +
          'LL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10 +
          '            (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) a' +
          'nd'#13#10'            (sd.IN_OUT = -1) and'#13#10'            (sd.BND_PROCES' +
          'S_CODE <> 110) and'#13#10'            (sd.STORNO_EMPLOYEE_CODE is null' +
          ')'#13#10'        )~'#13#10'        case'#13#10'          when'#13#10'            exists'#13 +
          #10'              ( select'#13#10'                  1'#13#10'                fr' +
          'om'#13#10'                  PLANNED_STORE_DEALS psd'#13#10'                w' +
          'here'#13#10'                  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml' +
          '.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'                  (psd.BND' +
          '_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'#13#10'        ' +
          '          (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'#13#10'     ' +
          '             (psd.IN_OUT = 1) and'#13#10'                  (psd.IS_PLA' +
          'NNED_MANUALLY = 0) and'#13#10'                  (psd.BND_PROCESS_CODE ' +
          '<> 110) and'#13#10'                  (psd.IS_ACTIVE = 0)'#13#10'            ' +
          '  )'#13#10'            then'#13#10'            ( select'#13#10'                Max' +
          '(sd.STORE_DEAL_DATE)'#13#10'              from'#13#10'                STORE_' +
          'DEALS sd'#13#10'              where'#13#10'                (sd.BND_PROCESS_O' +
          'BJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'#13#10'            ' +
          '    (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'#13#10'     ' +
          '           (sd.IN_OUT = 1) and'#13#10'                (sd.STORNO_EMPLO' +
          'YEE_CODE is null)'#13#10'            )'#13#10'        else'#13#10'          Contex' +
          'tDate'#13#10'        end'#13#10'      ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      Coalesce(%OTP_PRODUCTION_REAL_BEGIN_DATE[' +
          'otp~s], ContextDate)~'#13#10'      otp.PRODUCTION_PLAN_BEGIN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OTP_PRODUCTION_REAL_BEGIN_DATE[otp~s]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      Coalesce(%OTP_PRODUCTION_REAL_END_DATE[ot' +
          'p~s], ContextDate)~'#13#10'      otp.PRODUCTION_PLAN_END_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OTP_PRODUCTION_REAL_END_DATE[otp~s]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_PROJECT_TOTAL_PRICE[otp]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[otp.PRODUCT_CODE~(1, 2)~(4)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'mdt_WITHOUT_MODEL'
        ParamType = ptInput
        Value = '3'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'                      ContextDate~'#13#10'           ' +
          '           %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ m' +
          'l.ML_OBJECT_CODE]'#13#10'                    ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJECT_' +
          'CODE]'
        ParamType = ptInput
        Value = 'to_date('#39'07-07-07'#39')'
      end
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS['#13#10'                        (eo.ENGINEERING_P' +
          'LAN_END_DATE + 1)~'#13#10'                        (-(eo.ENGINEERING_PL' +
          'AN_WORKDAYS + (select co.EO_ACTIVATING_WORKDAYS from COMMON_OPTI' +
          'ONS co where (co.CODE = 1))))'#13#10'                      ]'
        ParamType = ptInput
        Value = 'to_date('#39'07-07-07'#39')'
      end
      item
        DataType = ftWideString
        Name = 
          'PRC_DATA_FILTER['#13#10'    OTP~'#13#10'    ORG_TASK_PROPOSAL_CODE~'#13#10'    otp' +
          '.ORG_TASK_PROPOSAL_CODE~'#13#10'    :PRC_FUNC_CODE~'#13#10'    :PRC_KNOWL_CO' +
          'DE~'#13#10'    :PRC_BASE_OP_CODE~'#13#10'    :PRC_BASE_ACTION_CODE~'#13#10'    :PR' +
          'C_CONCRETE_OP_CODE~'#13#10'    :PRC_CONCRETE_ACTION_CODE]'
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
    TableName = 'ORG_TASK_PROPOSALS_FOR_EDIT'
    Left = 80
    Top = 60
    object qryOrganisationTaskProposalsORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOrganisationTaskProposalsORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object qryOrganisationTaskProposalsORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryOrganisationTaskProposalsP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'P_DOC_EMPTINESS_REQ_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsP_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'P_DOC_IS_COMPLETE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsP_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAPPROVED_ACTIVE_DI_COUNT'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object qryOrganisationTaskProposalsPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_PROPOSAL_DATE'
    end
    object qryOrganisationTaskProposalsRESULT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESULT_DATE'
    end
    object qryOrganisationTaskProposalsORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
    end
    object qryOrganisationTaskProposalsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryOrganisationTaskProposalsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryOrganisationTaskProposalsEO_STATE_CODE: TAbmesFloatField
      FieldName = 'EO_STATE_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_REAL_WORKDAYS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsSALE_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'SALE_PRODUCTION_WORKDAYS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPROD_ORDER_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPROD_ORDER_DOC_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_DOC_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsOTP_STATE_CODE: TAbmesFloatField
      FieldName = 'OTP_STATE_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOrganisationTaskProposalsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOrganisationTaskProposalsANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryOrganisationTaskProposalsPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PROPOSAL_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPROD_ORDER_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PROD_ORDER_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPLAN_PROPOSAL_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'PLAN_PROPOSAL_EMPLOYEE_ABBREV'
      Size = 54
    end
    object qryOrganisationTaskProposalsEO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EO_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsEO_DOC_CODE: TAbmesFloatField
      FieldName = 'EO_DOC_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsEO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EO_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalsPRJ_PROJECT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROJECT_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_PROJECT_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_PROJECT_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_PROJECT_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_PROJECT_PRICE_P'
    end
    object qryOrganisationTaskProposalsAPPLY_PRICE: TAbmesFloatField
      FieldName = 'APPLY_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOI_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOI_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOI_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOI_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_PRICE_P'
    end
    object qryOrganisationTaskProposalsPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_PRICE_DEV_PROJECT: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_PROJECT'
    end
    object qryOrganisationTaskProposalsPRJ_PRICE_DEV_BOI: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOI'
    end
    object qryOrganisationTaskProposalsPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_PLAN'
    end
    object qryOrganisationTaskProposalsPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
    end
    object qryOrganisationTaskProposalsENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_IDENTIFIER'
      Size = 87
    end
    object qryOrganisationTaskProposalsSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object qryOrganisationTaskProposalsENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
    end
    object qryOrganisationTaskProposalsENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object qryOrganisationTaskProposalsENGINEERING_BEGIN_DAYS_LEFT: TAbmesFloatField
      FieldName = 'ENGINEERING_BEGIN_DAYS_LEFT'
    end
    object qryOrganisationTaskProposalsENGINEERING_END_DAYS_LEFT: TAbmesFloatField
      FieldName = 'ENGINEERING_END_DAYS_LEFT'
    end
    object qryOrganisationTaskProposalsENGINEERING_REAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_REAL_BEGIN_DATE'
    end
    object qryOrganisationTaskProposalsENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_REAL_END_DATE'
    end
    object qryOrganisationTaskProposalsPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_PLAN_BEGIN_DATE'
    end
    object qryOrganisationTaskProposalsPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_PLAN_END_DATE'
    end
    object qryOrganisationTaskProposalsPRODUCTION_BEGIN_DAYS_LEFT: TAbmesFloatField
      FieldName = 'PRODUCTION_BEGIN_DAYS_LEFT'
    end
    object qryOrganisationTaskProposalsPRODUCTION_END_DAYS_LEFT: TAbmesFloatField
      FieldName = 'PRODUCTION_END_DAYS_LEFT'
    end
    object qryOrganisationTaskProposalsPRODUCTION_REAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_REAL_BEGIN_DATE'
    end
    object qryOrganisationTaskProposalsPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_REAL_END_DATE'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_PROJECT_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_PROJECT_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_PROJECT_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_PROJECT_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_DELIVERY_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOI_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_EXPENSE_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOI_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_DELIVERY_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_EXPENSE_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_ENG_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_PRICE'
    end
    object qryOrganisationTaskProposalsPRJ_PROD_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_PRICE'
    end
    object qryOrganisationTaskProposalsMANAGER_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'MANAGER_EMPLOYEE_ABBREV'
      Size = 54
    end
  end
  object prvOrganisationTaskProposals: TDataSetProvider
    DataSet = qryOrganisationTaskProposals
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 12
  end
  object qryProductEngineeringOrder: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eo.ENGINEERING_ORDER_CODE,'
      ''
      '  ( case'
      '      when (eo.ANNUL_EMPLOYEE_CODE is not null) then'
      '        8'
      '      when (eo.CLOSE_EMPLOYEE_CODE is not null) then'
      '        7'
      '      when (eo.ACTIVATE_EMPLOYEE_CODE is not null) then'
      
        '        Decode(%SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null],' +
        ' 5, 6, 5)'
      '      when eo.ENGINEERING_DEPT_CODE is null then'
      '        1'
      '      when eo.ENGINEERING_EMPLOYEE_CODE is null then'
      '        2'
      '    else'
      
        '       3 + Decode(Sign(eo.ENGINEERING_PLAN_END_DATE - ContextDat' +
        'e), 1, 0, 1)'
      '    end'
      '  ) as EO_STATE_CODE,'
      ''
      '  eo.DOC_BRANCH_CODE,'
      '  eo.DOC_CODE,'
      '  %HAS_DOC_ITEMS[eo] as EO_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = eo.ENGINEERING_ORDER_BRANCH_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as ENGINEERING_DEPT_IDENTIFIER,'
      ''
      '  eo.ENGINEERING_ORDER_NO,'
      ''
      '  ( select'
      '      eot.ENGINEERING_ORDER_TYPE_ABBREV'
      '    from'
      '      ENGINEERING_ORDER_TYPES eot'
      '    where'
      
        '      (eot.ENGINEERING_ORDER_TYPE_CODE = eo.ENGINEERING_ORDER_TY' +
        'PE_CODE)'
      '  ) as ENGINEERING_ORDER_TYPE_ABBREV,'
      ''
      '  %COUNT_WORKDAYS['
      '    eo.ACTIVATE_DATE~'
      '    Coalesce(eo.CLOSE_DATE, ContextDate)'
      '  ] as ENGINEERING_REAL_WORKDAYS'
      ''
      'from'
      '  ENGINEERING_ORDERS eo'
      ''
      'where'
      '  (eo.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (eo.ANNUL_EMPLOYEE_CODE is null) and'
      '  (eo.CLOSE_EMPLOYEE_CODE is null) and'
      '  (eo.PARENT_ENGINEERING_ORDER_CODE is null)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[eo.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[eo]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'    eo.ACTIVATE_DATE~'#13#10'    Coalesce(eo.CLOSE_DA' +
          'TE, ContextDate)'#13#10'  ]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 64
    object qryProductEngineeringOrderENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductEngineeringOrderEO_STATE_CODE: TAbmesFloatField
      FieldName = 'EO_STATE_CODE'
    end
    object qryProductEngineeringOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProductEngineeringOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProductEngineeringOrderENGINEERING_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'ENGINEERING_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryProductEngineeringOrderENGINEERING_ORDER_NO: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_NO'
    end
    object qryProductEngineeringOrderENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
      Size = 5
    end
    object qryProductEngineeringOrderENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_REAL_WORKDAYS'
    end
    object qryProductEngineeringOrderEO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EO_HAS_DOC_ITEMS'
    end
  end
  object prvProductEngineeringOrder: TDataSetProvider
    DataSet = qryProductEngineeringOrder
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 16
  end
  object qryProductProductionOrder: TAbmesSQLQuery
    OnCalcFields = qryProductProductionOrderCalcFields
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
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      '  '
      '  ( select'
      '      pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PRODUCTION_ORDER_TYPE_ABBREV,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.SALE_BRANCH_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as SALE_BRANCH_IDENTIFIER,'
      '  '
      '  s.SALE_NO,'
      '  '
      '  ( select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '  ) as SALE_TYPE_ABBREV,'
      '  '
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as PO_HAS_DOC_ITEMS,'
      ''
      '  Nvl2('
      '    ( select'
      '         Min(sd.STORE_DEAL_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.BND_PROCESS_CODE <> 110) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      '    %COUNT_WORKDAYS['
      '      ( select'
      '           Min(sd.STORE_DEAL_DATE)'
      '        from'
      '          MATERIAL_LIST_LINES mll,'
      '          STORE_DEALS sd'
      '        where'
      
        '          (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE)' +
        ' and'
      '          (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '          (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '          (sd.IN_OUT = -1) and'
      '          (sd.BND_PROCESS_CODE <> 110) and'
      '          (sd.STORNO_EMPLOYEE_CODE is null)'
      '      )~'
      '      case'
      '        when'
      '          exists'
      '            ( select'
      '                1'
      '              from'
      '                PLANNED_STORE_DEALS psd'
      '              where'
      
        '                (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PRO' +
        'CESS_OBJECT_BRANCH_CODE) and'
      
        '                (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OB' +
        'JECT_CODE) and'
      '                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'
      '                (psd.IN_OUT = 1) and'
      '                (psd.IS_PLANNED_MANUALLY = 0) and'
      '                (psd.BND_PROCESS_CODE <> 110) and'
      '                (psd.IS_ACTIVE = 0)'
      '            )'
      '          then'
      '          ( select'
      '              Max(sd.STORE_DEAL_DATE)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT' +
        '_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) ' +
        'and'
      '              (sd.IN_OUT = 1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '      else'
      '        ContextDate'
      '      end'
      '    ],'
      '    null'
      '  ) as PRODUCTION_WORKDAYS,'
      ''
      '  ( select'
      '      psd.COMPLETED_QUANTITY'
      '    from'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH' +
        '_CODE) and'
      '      (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (psd.PRODUCT_CODE = s.PRODUCT_CODE) and'
      '      (psd.IN_OUT = 1) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (psd.BND_PROCESS_CODE <> 110)'
      '  ) as COMPLETED_QUANTITY,'
      ''
      '  s.MANUFACTURE_QUANTITY'
      ''
      'from'
      '  SALES s,'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'ML_STATE[s~ml]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'      ( select'#13#10'           Min(sd.STORE_DEAL_DA' +
          'TE)'#13#10'        from'#13#10'          MATERIAL_LIST_LINES mll,'#13#10'         ' +
          ' STORE_DEALS sd'#13#10'        where'#13#10'          (mll.ML_OBJECT_BRANCH_' +
          'CODE = ml.ML_OBJECT_BRANCH_CODE) and'#13#10'          (mll.ML_OBJECT_C' +
          'ODE = ml.ML_OBJECT_CODE) and'#13#10'          (mll.MLL_OBJECT_BRANCH_C' +
          'ODE = sd.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'          (mll.MLL' +
          '_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'#13#10'          (sd.IN' +
          '_OUT = -1) and'#13#10'          (sd.BND_PROCESS_CODE <> 110) and'#13#10'    ' +
          '      (sd.STORNO_EMPLOYEE_CODE is null)'#13#10'      )~'#13#10'      case'#13#10' ' +
          '       when'#13#10'          exists'#13#10'            ( select'#13#10'           ' +
          '     1'#13#10'              from'#13#10'                PLANNED_STORE_DEALS ' +
          'psd'#13#10'              where'#13#10'                (psd.BND_PROCESS_OBJEC' +
          'T_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE) and'#13#10'        ' +
          '        (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_COD' +
          'E) and'#13#10'                (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CO' +
          'DE) and'#13#10'                (psd.IN_OUT = 1) and'#13#10'                (' +
          'psd.IS_PLANNED_MANUALLY = 0) and'#13#10'                (psd.BND_PROCE' +
          'SS_CODE <> 110) and'#13#10'                (psd.IS_ACTIVE = 0)'#13#10'      ' +
          '      )'#13#10'          then'#13#10'          ( select'#13#10'              Max(s' +
          'd.STORE_DEAL_DATE)'#13#10'            from'#13#10'              STORE_DEALS ' +
          'sd'#13#10'            where'#13#10'              (sd.BND_PROCESS_OBJECT_BRAN' +
          'CH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'#13#10'              (sd.BND_' +
          'PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'#13#10'              (sd' +
          '.IN_OUT = 1) and'#13#10'              (sd.STORNO_EMPLOYEE_CODE is null' +
          ')'#13#10'          )'#13#10'      else'#13#10'        ContextDate'#13#10'      end'#13#10'    ' +
          ']'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 64
    object qryProductProductionOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryProductProductionOrderSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryProductProductionOrderML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object qryProductProductionOrderPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryProductProductionOrderSALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_BRANCH_IDENTIFIER'
      Size = 46
    end
    object qryProductProductionOrderSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryProductProductionOrderSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryProductProductionOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProductProductionOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProductProductionOrderPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object qryProductProductionOrderCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object qryProductProductionOrderMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
    end
    object qryProductProductionOrderPO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PO_HAS_DOC_ITEMS'
    end
    object qryProductProductionOrder_REMAINING_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_QUANTITY_PERCENT'
      Calculated = True
    end
  end
  object prvProductProductionOrder: TDataSetProvider
    DataSet = qryProductProductionOrder
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 16
  end
  object qryOrganisationTaskProposal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  otp.ORG_TASK_PROPOSAL_CODE,'
      '  %OTP_STATE_CODE[otp~s~ml~eo] as OTP_STATE_CODE,'
      '  otp.ORG_TASK_PROPOSAL_NO,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      ORG_TASK_PROPOSALS otp2'
      '    start with'
      '      (otp2.ORG_TASK_PROPOSAL_CODE = otp.ORG_TASK_PROPOSAL_CODE)'
      '    connect by'
      
        '      (otp2.ORG_TASK_PROPOSAL_CODE = prior otp2.REPLACED_ORG_TAS' +
        'K_PROP_CODE)'
      '  ) as ORG_TASK_PROPOSAL_CYCLE_NO,'
      ''
      '  otp.REPLACED_ORG_TASK_PROP_CODE,'
      ''
      '  otp.CREATE_EMPLOYEE_CODE,'
      '  otp.CREATE_DATE,'
      '  otp.CREATE_TIME,'
      ''
      '  otp.CHANGE_EMPLOYEE_CODE,'
      '  otp.CHANGE_DATE,'
      '  otp.CHANGE_TIME,'
      ''
      '  otp.CLOSE_EMPLOYEE_CODE,'
      '  otp.CLOSE_DATE,'
      '  otp.CLOSE_TIME,'
      ''
      '  otp.ANNUL_EMPLOYEE_CODE,'
      '  otp.ANNUL_DATE,'
      '  otp.ANNUL_TIME,'
      ''
      '  otp.DOC_BRANCH_CODE,'
      '  otp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[otp] as PROPOSAL_HAS_DOC_ITEMS,'
      ''
      '  otp.DESCRIPTION,'
      '  otp.PLAN_PROPOSAL_DATE,'
      '  otp.PLAN_PROPOSAL_EMPLOYEE_CODE,'
      '  otp.RESULT_DATE,'
      '  otp.ORG_TASK_PROP_RESULT_TYPE_CODE,'
      '  otp.PRODUCT_CODE,'
      '  otp.DEPT_CODE,'
      ''
      '  ( select'
      '      otp2.ORG_TASK_PROPOSAL_CODE'
      '    from'
      '      ORG_TASK_PROPOSALS otp2'
      '    where'
      
        '      (otp2.REPLACED_ORG_TASK_PROP_CODE = otp.ORG_TASK_PROPOSAL_' +
        'CODE)'
      '  ) as REPLACEMENT_ORG_TASK_PROP_CODE,'
      ''
      '  otp.SALE_OBJECT_BRANCH_CODE,'
      '  otp.SALE_OBJECT_CODE,'
      ''
      '  Nvl2('
      '    otp.SALE_OBJECT_BRANCH_CODE,'
      
        '    To_Char(otp.SALE_OBJECT_BRANCH_CODE) || '#39';'#39' || To_Char(otp.S' +
        'ALE_OBJECT_CODE),'
      '    null'
      '  ) as SALE_OBJECT_PK,'
      ''
      '  otp.IS_PREMATURELY_CLOSED,'
      ''
      '  ( select'
      '      db.DUMMY_BLOB_DATA'
      '    from'
      '      DUMMY_BLOB db'
      '  ) as PRC_DATA,'
      ''
      '  otp.ENGINEERING_PRICE,'
      '  otp.ENGINEERING_PLAN_BEGIN_DATE,'
      '  otp.ENGINEERING_PLAN_END_DATE,'
      '  otp.PRODUCTION_PRICE,'
      '  otp.PRODUCTION_PLAN_BEGIN_DATE,'
      '  otp.PRODUCTION_PLAN_END_DATE,'
      '  otp.APPLY_PRICE,'
      '  otp.MANAGER_EMPLOYEE_CODE'
      ''
      'from'
      '  ORG_TASK_PROPOSALS otp,'
      '  ENGINEERING_ORDERS eo,'
      '  SALES s,'
      '  MATERIAL_LISTS ml'
      ''
      'where'
      '  (otp.PRODUCT_CODE = eo.PRODUCT_CODE(+)) and'
      '  (eo.ANNUL_EMPLOYEE_CODE(+) is null) and'
      '  (eo.CLOSE_EMPLOYEE_CODE(+) is null) and'
      '  (eo.PARENT_ENGINEERING_ORDER_CODE(+) is null) and'
      ''
      
        '  (otp.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE(+)) a' +
        'nd'
      '  (otp.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      '  (otp.ORG_TASK_PROPOSAL_CODE = :ORG_TASK_PROPOSAL_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'OTP_STATE_CODE[otp~s~ml~eo]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[otp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'ORG_TASK_PROPOSALS_FOR_EDIT'
    AfterProviderStartTransaction = qryOrganisationTaskProposalAfterProviderStartTransaction
    Left = 80
    Top = 168
    object qryOrganisationTaskProposalORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryOrganisationTaskProposalOTP_STATE_CODE: TAbmesFloatField
      FieldName = 'OTP_STATE_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object qryOrganisationTaskProposalORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalREPLACED_ORG_TASK_PROP_CODE: TAbmesFloatField
      FieldName = 'REPLACED_ORG_TASK_PROP_CODE'
    end
    object qryOrganisationTaskProposalCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryOrganisationTaskProposalCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryOrganisationTaskProposalCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryOrganisationTaskProposalCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryOrganisationTaskProposalCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryOrganisationTaskProposalCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryOrganisationTaskProposalCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryOrganisationTaskProposalCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryOrganisationTaskProposalCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryOrganisationTaskProposalANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryOrganisationTaskProposalANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryOrganisationTaskProposalANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryOrganisationTaskProposalDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryOrganisationTaskProposalDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryOrganisationTaskProposalDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object qryOrganisationTaskProposalPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_PROPOSAL_DATE'
    end
    object qryOrganisationTaskProposalPLAN_PROPOSAL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
    end
    object qryOrganisationTaskProposalRESULT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESULT_DATE'
    end
    object qryOrganisationTaskProposalORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
    end
    object qryOrganisationTaskProposalPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryOrganisationTaskProposalDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryOrganisationTaskProposalPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PROPOSAL_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalREPLACEMENT_ORG_TASK_PROP_CODE: TAbmesFloatField
      FieldName = 'REPLACEMENT_ORG_TASK_PROP_CODE'
      ProviderFlags = []
    end
    object qryOrganisationTaskProposalSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qryOrganisationTaskProposalSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qryOrganisationTaskProposalSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      ProviderFlags = []
      Size = 81
    end
    object qryOrganisationTaskProposalIS_PREMATURELY_CLOSED: TAbmesFloatField
      FieldName = 'IS_PREMATURELY_CLOSED'
      FieldValueType = fvtBoolean
    end
    object qryOrganisationTaskProposalPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
    object qryOrganisationTaskProposalENGINEERING_PRICE: TAbmesFloatField
      FieldName = 'ENGINEERING_PRICE'
    end
    object qryOrganisationTaskProposalENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
    end
    object qryOrganisationTaskProposalENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object qryOrganisationTaskProposalPRODUCTION_PRICE: TAbmesFloatField
      FieldName = 'PRODUCTION_PRICE'
    end
    object qryOrganisationTaskProposalPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_PLAN_BEGIN_DATE'
    end
    object qryOrganisationTaskProposalPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_PLAN_END_DATE'
    end
    object qryOrganisationTaskProposalAPPLY_PRICE: TAbmesFloatField
      FieldName = 'APPLY_PRICE'
    end
    object qryOrganisationTaskProposalMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
  end
  object prvOrganisationTaskProposal: TDataSetProvider
    DataSet = qryOrganisationTaskProposal
    UpdateMode = upWhereKeyOnly
    OnGetData = prvOrganisationTaskProposalGetData
    AfterUpdateRecord = prvOrganisationTaskProposalAfterUpdateRecord
    BeforeUpdateRecord = prvOrganisationTaskProposalBeforeUpdateRecord
    BeforeApplyUpdates = prvOrganisationTaskProposalBeforeApplyUpdates
    AfterApplyUpdates = prvOrganisationTaskProposalAfterApplyUpdates
    Left = 80
    Top = 120
  end
  object qryNewOrgTaskProposalCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_ORG_TASK_PROPOSALS.NextVal as NEW_ORG_TASK_PROPOSAL_CODE'
      'from'
      '  DUAL'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 200
    object qryNewOrgTaskProposalCodeNEW_ORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'NEW_ORG_TASK_PROPOSAL_CODE'
    end
  end
  object qryNewOrgTaskProposalNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  (Coalesce(Max(otp.ORG_TASK_PROPOSAL_NO), 0) + 1) as NEW_ORG_TA' +
        'SK_PROPOSAL_NO'
      'from'
      '  ORG_TASK_PROPOSALS otp')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 248
    object qryNewOrgTaskProposalNoNEW_ORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'NEW_ORG_TASK_PROPOSAL_NO'
    end
  end
  object qryGetOrgTaskProposalCycleNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as ORG_TASK_PROPOSAL_CYCLE_NO'
      'from'
      '  ORG_TASK_PROPOSALS otp'
      'start with'
      '  (otp.ORG_TASK_PROPOSAL_CODE = :ORG_TASK_PROPOSAL_CODE)'
      'connect by'
      
        '  (otp.ORG_TASK_PROPOSAL_CODE = prior otp.REPLACED_ORG_TASK_PROP' +
        '_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 296
    object qryGetOrgTaskProposalCycleNoORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
    end
  end
  object qryGetHasOrganisationTaskProposal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_ORG_TASK_PROPOSAL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sign(Count(*)) as HAS_ORG_TASK_PROPOSAL'
      ''
      'from'
      '  ORG_TASK_PROPOSALS otp'
      ''
      'where'
      '  (otp.ANNUL_EMPLOYEE_CODE is null) and'
      '  (otp.ORG_TASK_PROP_RESULT_TYPE_CODE = 1) and'
      '  (otp.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (otp.ORG_TASK_PROPOSAL_CODE <> :EXCEPT_ORG_TASK_PROPOSAL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 152
    object qryGetHasOrganisationTaskProposalHAS_ORG_TASK_PROPOSAL: TAbmesFloatField
      FieldName = 'HAS_ORG_TASK_PROPOSAL'
      FieldValueType = fvtBoolean
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'PRJ_BOI_TOTAL_PRICE'
        Strings.Strings = (
          '( select'
          '    NullIf(Sum(boi.TOTAL_PRICE), 0)'
          '  from'
          '    BUDGET_ORDERS bo,'
          '    BUDGET_ORDER_ITEMS boi'
          '  where'
          
            '    (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE)' +
            ' and'
          '    (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
          ''
          '    (bo.BUDGET_ORDER_CLASS_CODE = %boc_INVEST) and'
          ''
          '    (bo.ANNUL_EMPLOYEE_CODE is null) and'
          '    (boi.ANNUL_EMPLOYEE_CODE is null) and'
          ''
          '    (bo.ORG_TASK_PROPOSAL_STATE_CODE in %2) and'
          '    (boi.BUDGET_ORDER_ITEM_TYPE_CODE in %3) and'
          ''
          '    (bo.PRODUCT_CODE = %1)'
          ')')
      end
      item
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
        Strings.Strings = (
          '( select'
          '    NullIf(Sum(%BOIO_PLAN_TOTAL_PRICE[boio]), 0)'
          '  from'
          '    BUDGET_ORDERS bo,'
          '    BUDGET_ORDER_ITEMS boi,'
          '    BOI_ORDERS boio'
          '  where'
          
            '    (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE)' +
            ' and'
          '    (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
          '    '
          
            '    (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_COD' +
            'E) and'
          '    (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
          
            '    (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_CODE) a' +
            'nd'
          ''
          '    (bo.BUDGET_ORDER_CLASS_CODE = %boc_INVEST) and'
          ''
          '    (bo.ANNUL_EMPLOYEE_CODE is null) and'
          '    (boi.ANNUL_EMPLOYEE_CODE is null) and'
          '    (boio.ANNUL_EMPLOYEE_CODE is null) and'
          ''
          '    (bo.ORG_TASK_PROPOSAL_STATE_CODE in %2) and'
          '    (boi.BUDGET_ORDER_ITEM_TYPE_CODE in %3) and'
          ''
          '    (bo.PRODUCT_CODE = %1)'
          ')')
      end
      item
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
        Strings.Strings = (
          '( select'
          '    NullIf(Sum(%BOIO_ACCOUNT_TOTAL_PRICE[boio]), 0)'
          '  from'
          '    BUDGET_ORDERS bo,'
          '    BUDGET_ORDER_ITEMS boi,'
          '    BOI_ORDERS boio'
          '  where'
          
            '    (bo.BUDGET_ORDER_BRANCH_CODE = boi.BUDGET_ORDER_BRANCH_CODE)' +
            ' and'
          '    (bo.BUDGET_ORDER_CODE = boi.BUDGET_ORDER_CODE) and'
          '    '
          
            '    (boi.BUDGET_ORDER_BRANCH_CODE = boio.BUDGET_ORDER_BRANCH_COD' +
            'E) and'
          '    (boi.BUDGET_ORDER_CODE = boio.BUDGET_ORDER_CODE) and'
          
            '    (boi.BUDGET_ORDER_ITEM_CODE = boio.BUDGET_ORDER_ITEM_CODE) a' +
            'nd'
          ''
          '    (bo.BUDGET_ORDER_CLASS_CODE = %boc_INVEST) and'
          ''
          '    (bo.ANNUL_EMPLOYEE_CODE is null) and'
          '    (boi.ANNUL_EMPLOYEE_CODE is null) and'
          '    (boio.ANNUL_EMPLOYEE_CODE is null) and'
          ''
          '    (bo.ORG_TASK_PROPOSAL_STATE_CODE in %2) and'
          '    (boi.BUDGET_ORDER_ITEM_TYPE_CODE in %3) and'
          ''
          '    (bo.PRODUCT_CODE = %1)'
          ')')
      end
      item
        Name = 'OTP_ENGINEERING_REAL_BEGIN_DATE'
        Strings.Strings = (
          '( select'
          '    Min(lib_eo.CREATE_DATE)'
          '  from'
          '    ENGINEERING_ORDERS lib_eo'
          '  where'
          '    (lib_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '    (lib_eo.ANNUL_EMPLOYEE_CODE is null) and'
          '    (lib_eo.PARENT_ENGINEERING_ORDER_CODE is null)'
          ')')
      end
      item
        Name = 'OTP_ENGINEERING_REAL_END_DATE'
        Strings.Strings = (
          'Decode('
          '  ( select'
          '      Count(*)'
          '    from'
          '      ENGINEERING_ORDERS lib_eo'
          '    where'
          '      (lib_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '      (lib_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '      (lib_eo.ANNUL_EMPLOYEE_CODE is null) and'
          '      (lib_eo.PARENT_ENGINEERING_ORDER_CODE is null)'
          '  ),'
          '  0, To_Date(null),'
          '  1, To_Date(null),'
          '  ( select'
          '      Max(lib_eo.CLOSE_DATE)'
          '    from'
          '      ENGINEERING_ORDERS lib_eo'
          '    where'
          '      (lib_eo.PRODUCT_CODE = %1.PRODUCT_CODE) and'
          '      (lib_eo.CLOSE_EMPLOYEE_CODE is not null) and'
          '      (lib_eo.ANNUL_EMPLOYEE_CODE is null) and'
          '      (lib_eo.PARENT_ENGINEERING_ORDER_CODE is null)'
          '  )'
          ')')
      end
      item
        Name = 'OTP_PRODUCTION_REAL_BEGIN_DATE'
        Strings.Strings = (
          '( case'
          
            '    when %2.CREATE_DATE is not null and %OTP_ENGINEERING_REAL_EN' +
            'D_DATE[%1] is not null then'
          
            '      Greatest(%2.CREATE_DATE, %OTP_ENGINEERING_REAL_END_DATE[%1' +
            '])'
          '    else'
          '      To_Date(null)'
          '  end'
          ')')
      end
      item
        Name = 'OTP_PRODUCTION_REAL_END_DATE'
        Strings.Strings = (
          'Nvl2('
          '  %OTP_ENGINEERING_REAL_END_DATE[%1],'
          '  %2.FINISH_DATE,'
          '  To_Date(null)'
          ')')
      end
      item
        Name = 'PRJ_PROJECT_TOTAL_PRICE'
        Strings.Strings = (
          'NullIf('
          
            '  Coalesce(%1.ENGINEERING_PRICE, 0) + Coalesce(%1.PRODUCTION_PRI' +
            'CE, 0),'
          '  0'
          ')')
      end>
    Left = 56
    Top = 320
  end
  object qryCloseOrgTaskProposal: TAbmesSQLQuery
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
        Name = 'IS_PREMATURELY_CLOSED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  ORG_TASK_PROPOSALS_FOR_EDIT otpfe'
      'set'
      '  otpfe.CLOSE_EMPLOYEE_CODE = :CLOSE_EMPLOYEE_CODE,'
      '  otpfe.CLOSE_DATE = :CLOSE_DATE,'
      '  otpfe.CLOSE_TIME = :CLOSE_TIME,'
      '  otpfe.IS_PREMATURELY_CLOSED = :IS_PREMATURELY_CLOSED'
      'where'
      '  (otpfe.ORG_TASK_PROPOSAL_CODE = :ORG_TASK_PROPOSAL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 256
  end
  object qryGetOrgTaskProposalCodeByNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  otp.ORG_TASK_PROPOSAL_CODE'
      'from'
      '  ORG_TASK_PROPOSALS otp'
      'where'
      '  (otp.ORG_TASK_PROPOSAL_NO = :ORG_TASK_PROPOSAL_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 256
    object qryGetOrgTaskProposalCodeByNoORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
    end
  end
  object qryAvailableProductionOrders: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  (To_Char(s.SALE_OBJECT_BRANCH_CODE) || '#39';'#39' || To_Char(s.SALE_O' +
        'BJECT_CODE)) as SALE_OBJECT_PK,'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  po.PROCESS_OBJECT_IDENTIFIER'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTION_ORDER_TYPES pot,'
      '  PROCESS_OBJECTS po'
      ''
      'where'
      
        '  (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE' +
        ') and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (s.SALE_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      ''
      '  (s.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (pot.PROD_ORDER_BASE_TYPE_CODE = %pobt_PROJECT) and'
      '  (s.SALE_ORDER_TYPE_CODE = %sot_PRODUCTION_ORDER) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null)'
      ''
      'order by'
      '  po.PROCESS_OBJECT_IDENTIFIER')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'pobt_PROJECT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'sot_PRODUCTION_ORDER'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 176
    object qryAvailableProductionOrdersSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      Size = 81
    end
    object qryAvailableProductionOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qryAvailableProductionOrdersSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
    object qryAvailableProductionOrdersPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
  end
  object prvAvailableProductionOrders: TDataSetProvider
    DataSet = qryAvailableProductionOrders
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 128
  end
  object qryOTPInvestPrices: TAbmesSQLQuery
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
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  NullIf('
      
        '    Coalesce(%PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3' +
        ')], 0) -'
      
        '    Coalesce(%PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)], 0)' +
        ','
      '    0'
      '  ) as PRJ_PRICE_DEV_BOI,'
      ''
      '  NullIf('
      
        '    Coalesce(%PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1' +
        ', 2, 3)], 0) -'
      
        '    Coalesce(%PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4' +
        ')], 0),'
      '    0'
      '  ) as PRJ_PRICE_DEV_BOIO_PLAN,'
      ''
      '  NullIf('
      
        '    Coalesce(%PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)' +
        '~(1, 2, 3)], 0) -'
      
        '    Coalesce(%PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)' +
        '~(4)], 0),'
      '    0'
      '  ) as PRJ_PRICE_DEV_BOIO_ACCOUNT,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)] as PRJ_APPLY_B' +
        'OI_TOTAL_PRICE,'
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)] as PRJ_A' +
        'PPLY_BOIO_PL_TOTAL_PRICE,'
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)] as PR' +
        'J_APPLY_BOIO_ACC_TOTAL_PRICE,'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)] as PRJ_B' +
        'OI_TOTAL_PRICE,'
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)] as' +
        ' PRJ_BOIO_PLAN_TOTAL_PRICE,'
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]' +
        ' as PRJ_BOIO_ACCOUNT_TOTAL_PRICE,'
      ''
      '  -- boi prices percents'
      ''
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_DELIVERY_BOI_PRICE_P,'
      ''
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_EXPENSE_BOI_PRICE_P,'
      ''
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOI_PRICE_P,'
      ''
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOI_PRICE_P,'
      ''
      '  -- boio_plan prices percents'
      ''
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_DELIVERY_BOIO_PLAN_PRICE_P,'
      ''
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(3)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_EXPENSE_BOIO_PLAN_PRICE_P,'
      ''
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOIO_PLAN_PRICE_P,'
      ''
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOIO_PLAN_PRICE_P,'
      ''
      '  -- boio_account prices percents'
      ''
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1)] /'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3' +
        ')]'
      '  ) as PRJ_DELIVERY_BOIO_ACC_PRICE_P,'
      ''
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(3)] /'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3' +
        ')]'
      '  ) as PRJ_EXPENSE_BOIO_ACC_PRICE_P,'
      ''
      
        '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)] ' +
        '/'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3' +
        ')]'
      '  ) as PRJ_ENG_BOIO_ACC_PRICE_P,'
      ''
      
        '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)] ' +
        '/'
      
        '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3' +
        ')]'
      '  ) as PRJ_PROD_BOIO_ACC_PRICE_P,'
      '  -- syzrqvane'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)] as PRJ_ENG_' +
        'BOI_TOTAL_PRICE,'
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOI_TOTAL_PRICE_DEL_P,'
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOI_TOTAL_PRICE_EXP_P,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)] as PR' +
        'J_ENG_BOIO_PLAN_TOTAL_PRICE,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(3)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)] as' +
        ' PRJ_ENG_BOIO_ACC_TOTAL_PRICE,'
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1)] /'
      '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOIO_ACC_TOT_PR_DEL_P,'
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(3)] /'
      '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
      '  ) as PRJ_ENG_BOIO_ACC_TOT_PR_EXP_P,'
      ''
      '  -- realizaciq'
      ''
      
        '  %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)] as PRJ_PROD' +
        '_BOI_TOTAL_PRICE,'
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOI_TOTAL_PRICE_DEL_P,'
      '  ( %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(3)] /'
      '    %PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOI_TOTAL_PRICE_EXP_P,'
      ''
      
        '  %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)] as PR' +
        'J_PROD_BOIO_PLAN_TOTAL_PRICE,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOIO_PL_TOT_PR_DEL_P,'
      '  ( %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(3)] /'
      '    %PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOIO_PL_TOT_PR_EXP_P,'
      ''
      
        '  %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)] as' +
        ' PRJ_PROD_BOIO_ACC_TOTAL_PRICE,'
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1)] /'
      '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOIO_ACC_TOT_PR_DEL_P,'
      '  ( %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(3)] /'
      '    %PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
      '  ) as PRJ_PROD_BOIO_ACC_TOT_PR_EXP_P,'
      ''
      
        '  %OTP_ENGINEERING_REAL_END_DATE[p] as ENGINEERING_REAL_END_DATE' +
        ','
      ''
      '  Nvl2('
      '    %OTP_ENGINEERING_REAL_END_DATE[p],'
      '    ( select'
      '        s.FINISH_DATE'
      '      from'
      '        SALES s'
      '      where'
      
        '        (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '    ),'
      '    To_Date(null)'
      '  ) as PRODUCTION_REAL_END_DATE'
      ''
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(4)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1, 2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1, 2, 3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(1)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOI_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(1)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE[p.PRODUCT_CODE~(2)~(3)]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'OTP_ENGINEERING_REAL_END_DATE[p]'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 168
    object qryOTPInvestPricesPRJ_PRICE_DEV_BOI: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOI'
    end
    object qryOTPInvestPricesPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_PLAN'
    end
    object qryOTPInvestPricesPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
    end
    object qryOTPInvestPricesPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOI_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOI_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOI_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOI_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_PRICE_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_TOTAL_PRICE_DEL_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_TOTAL_PRICE_EXP_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PL_TOTAL_PR_DEL_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PL_TOTAL_PR_EXP_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_TOT_PR_DEL_P'
    end
    object qryOTPInvestPricesPRJ_ENG_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_TOT_PR_EXP_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_TOTAL_PRICE_DEL_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOI_TOTAL_PRICE_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_TOTAL_PRICE_EXP_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PL_TOT_PR_DEL_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_PL_TOT_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PL_TOT_PR_EXP_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_TOTAL_PRICE'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_DEL_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_TOT_PR_DEL_P'
    end
    object qryOTPInvestPricesPRJ_PROD_BOIO_ACC_TOT_PR_EXP_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_TOT_PR_EXP_P'
    end
    object qryOTPInvestPricesENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_REAL_END_DATE'
    end
    object qryOTPInvestPricesPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_REAL_END_DATE'
    end
  end
  object prvOTPInvestPrices: TDataSetProvider
    DataSet = qryOTPInvestPrices
    Left = 208
    Top = 120
  end
end
