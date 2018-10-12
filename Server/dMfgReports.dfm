inherited dmMfgReports: TdmMfgReports
  Height = 380
  Width = 866
  object qryModelStatusStages: TAbmesSQLQuery
    BeforeOpen = qryModelStatusStagesBeforeOpen
    AfterClose = qryModelStatusStagesAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CAPACITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      '  pp.PRODUCT_CODE,'
      '  mll.PRODUCT_NEED_BEGIN_DATE,'
      '  mll.NO_AS_TEXT,'
      '  mll.NO_AS_FORMATED_TEXT,'
      '  mll.FORK_NO,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      '  mll.DETAIL_CODE,'
      '  pd.NAME as DETAIL_NAME,'
      '  pd.CUSTOM_CODE as DETAIL_CUSTOM_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pd.TECH_MEASURE_CODE)'
      '  ) as DETAIL_MEASURE_ABBREV,'
      ''
      '  pp.NAME as PRODUCT_NAME,'
      '  pp.CUSTOM_CODE as PRODUCT_CUSTOM_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pp.MEASURE_CODE)'
      '  ) as PRODUCT_WORK_MEASURE_ABBREV,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pp.TECH_MEASURE_CODE)'
      '  ) as PRODUCT_TECH_MEASURE_ABBREV,'
      ''
      '  mll.DETAIL_TECH_QUANTITY,'
      '  mll.LINE_DETAIL_TECH_QUANTITY,'
      '  mll.PRODUCT_TECH_QUANTITY,'
      '  mlms.IS_AUTO_MOVEMENT,'
      '  mll.NOTES,'
      ''
      
        '  ( (mll.PRODUCT_TECH_QUANTITY * mll.LINE_DETAIL_TECH_QUANTITY) ' +
        '/'
      '    pp.TECH_MEASURE_COEF'
      '  ) as LINE_PRODUCT_WORK_QUANTITY,'
      ''
      '  ( select'
      '      Coalesce('
      '        Sum('
      '          psd.QUANTITY *'
      
        '          %PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CO' +
        'DE ~ psd.STORE_DEAL_BEGIN_DATE]'
      '        ),'
      '        0'
      '      ) as SECONDARY_TOTAL_PRICE'
      '    from'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (mll.ANNUL_EMPLOYEE_CODE is null) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.BND_PROCESS_CODE <> 110) and'
      '      (psd.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as PLAN_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Coalesce('
      '        Sum('
      '          sd.QUANTITY -'
      '          ( select'
      
        '              Coalesce(Sum(sd2.QUANTITY), 0) as RETURNED_QUANTIT' +
        'Y'
      '            from'
      '              STORE_DEALS sd2'
      '            where'
      
        '              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEA' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJEC' +
        'T_CODE) and'
      '              (sd2.BND_PROCESS_CODE = 50) and'
      '              (sd2.IN_OUT = 1) and'
      '              (sd2.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ),'
      '        0'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as PULLED_QUANTITY,'
      ''
      '  ( select'
      '      Coalesce('
      '        Sum('
      '          ( sd.TOTAL_PRICE *'
      '            ( select'
      '                scr.FIXING'
      '              from'
      '                SECONDARY_CURRENCY_RATES scr'
      '              where'
      '                (scr.CURRENCY_CODE = sd.CURRENCY_CODE) and'
      '                (scr.RATE_DATE = sd.STORE_DEAL_DATE)'
      '            )'
      '          ) -'
      '          ( select'
      '              Coalesce('
      '                Sum('
      '                  sd2.TOTAL_PRICE *'
      '                  ( select'
      '                      scr2.FIXING'
      '                    from'
      '                      SECONDARY_CURRENCY_RATES scr2'
      '                    where'
      
        '                      (scr2.CURRENCY_CODE = sd2.CURRENCY_CODE) a' +
        'nd'
      '                      (scr2.RATE_DATE = sd2.STORE_DEAL_DATE)'
      '                  )'
      '                ),'
      '                0'
      '              ) as RETURNED_SECONDARY_TOTAL_PRICE'
      '            from'
      '              STORE_DEALS sd2'
      '            where'
      
        '              (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEA' +
        'L_OBJECT_BRANCH_CODE) and'
      
        '              (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJEC' +
        'T_CODE) and'
      '              (sd2.BND_PROCESS_CODE = 50) and'
      '              (sd2.IN_OUT = 1) and'
      '              (sd2.STORNO_EMPLOYEE_CODE is null)'
      '          )'
      '        ),'
      '        0'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as PULLED_TOTAL_PRICE,'
      ''
      '  ( select'
      '      Count(tupsd.PLANNED_STORE_DEAL_CODE)'
      '    from'
      '      TEMP_UNCOVERED_PSD tupsd'
      '    where'
      
        '      (tupsd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (tupsd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as UNCOVERED_LINES,'
      ''
      '  mlms.ML_MODEL_STAGE_NO,'
      '  mlms.DEPT_CODE as MLMS_DEPT_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (mlms.DEPT_CODE = d.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as DEPT_IDENTIFIER,'
      ''
      
        '  IncDateByWorkdays(mlms.TREATMENT_END_DATE+1, -mlms.OUTGOING_WO' +
        'RKDAYS) as PMM_BEGIN_DATE,'
      '  mlms.TREATMENT_END_DATE as PMM_END_DATE,'
      '  mlms.OUTGOING_WORKDAYS as MOVEMENT_DAYS,'
      ''
      '  Decode(:CAPACITY_STATUS, 1, To_Number(null),'
      '    Coalesce('
      '      ( select'
      '          Sum(mm.DETAIL_TECH_QUANTITY)'
      '        from'
      '          MODEL_MOVEMENTS mm'
      '        where'
      
        '          (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '          (mm.STORNO_EMPLOYEE_CODE is null) and'
      '          (mm.TO_DEPT_CODE is null)'
      '      ),'
      '      0'
      '    )'
      '  ) as MOVED_QUANTITY,'
      ''
      '  Decode(:CAPACITY_STATUS, 1, To_Number(null),'
      '    Coalesce('
      '      ( select'
      '          Sum(mm.DETAIL_TECH_QUANTITY)'
      '        from'
      '          MODEL_MOVEMENTS mm'
      '        where'
      
        '          (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '          (mm.STORNO_EMPLOYEE_CODE is null) and'
      '          (mm.TO_DEPT_CODE is not null)'
      '      ),'
      '      0'
      '    )'
      '  ) as WASTED_QUANTITY,'
      ''
      '  Decode(:CAPACITY_STATUS, 1, To_Number(null),'
      '    ('
      '      select'
      '        Sum(mm.DETAIL_TECH_QUANTITY)'
      '      from'
      '        ML_MODEL_STAGES omlms,'
      '        MODEL_MOVEMENTS mm'
      '      where'
      '        (mlms.ML_MODEL_STAGE_NO > 1) and'
      ''
      
        '        (omlms.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_C' +
        'ODE) and'
      '        (omlms.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '        (omlms.ML_MODEL_STAGE_NO <= mlms.ML_MODEL_STAGE_NO) and'
      ''
      
        '        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = omlms.MLMS_OBJECT_BRA' +
        'NCH_CODE) and'
      '        (mm.FROM_MLMS_OBJECT_CODE = omlms.MLMS_OBJECT_CODE) and'
      ''
      '        (mm.STORNO_EMPLOYEE_CODE is null) and'
      '        (mm.TO_DEPT_CODE is not null)'
      '    )'
      '  ) as TOTAL_WASTE_DETAIL_TECH_QTY,'
      ''
      '  ( select'
      '      Coalesce(Max(%HAS_DOC_ITEMS[mlms]), 0)'
      '    from'
      '      ML_MODEL_STAGES mlms'
      '    where'
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MLL_HAS_STAGE_DOCUMENTATION,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[p]'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (mll.DETAIL_CODE = p.PRODUCT_CODE)'
      '  ) as DETAIL_HAS_DOCUMENTATION,'
      ''
      '  Coalesce('
      '    ( select'
      '        %HAS_DOC_ITEMS[p]'
      '      from'
      '        PRODUCTS p'
      '      where'
      '        (mll.PRODUCT_CODE = p.PRODUCT_CODE)'
      '    ),'
      '    0'
      '  ) as PRODUCT_HAS_DOCUMENTATION,'
      ''
      '  %HAS_DOC_ITEMS[mlms] as STAGE_HAS_DOCUMENTATION,'
      ''
      '  ('
      '    select'
      '      /*+INDEX(mlmso idxMLMSO__OPERATION_VARIANT_NO)*/'
      '      Sign(Count(*))'
      '    from'
      '      MLMS_OPERATIONS mlmso'
      '    where'
      
        '      (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mlmso.IS_ACTIVE = 1) and'
      '      (mlmso.HAS_SPECIAL_CONTROL = 1)'
      '  ) as HAS_MLMSO_SPECIAL_CONTROL,'
      ''
      '  ('
      '    Sign('
      '      ('
      '        select'
      '          Count(*)'
      '        from'
      '          MATERIAL_LIST_LINES mll2'
      '        where'
      
        '          (mll2.PARENT_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_B' +
        'RANCH_CODE) and'
      '          (mll2.PARENT_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '      ) +'
      '      ('
      '        select'
      '          Count(*)'
      '        from'
      '          MATERIAL_LIST_LINES mll2'
      '        where'
      
        '          (mll2.FORK_0_MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_B' +
        'RANCH_CODE) and'
      '          (mll2.FORK_0_MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '      )'
      '    ) *'
      '    Sign(mll.NO_1) *'
      '    Nvl2(mll.PRODUCT_CODE, 0, 1)'
      '  ) as IS_SHRINKABLE,'
      ''
      '  Decode(:CAPACITY_STATUS, 0, 0,'
      '    ('
      '      select'
      '        Count(*)'
      '      from'
      '        MLMS_OPERATIONS mlmso'
      '      where'
      
        '        (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '        (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '        (mlmso.IS_ACTIVE = 1) and'
      '        (mlmso.OPERATION_TYPE_CODE = 2) and'
      '        (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      
        '        (CapacityUtils.HasMlmsoPlanExcess(mlmso.MLMSO_OBJECT_BRA' +
        'NCH_CODE, mlmso.MLMSO_OBJECT_CODE) = 1)'
      '    )'
      '  ) as UNCOVERED_CAPACITY_MLMSO_COUNT,'
      ''
      '  mlms.OUTGOING_WORKDAYS,'
      ''
      '  mlms.DOC_BRANCH_CODE as MLMS_DOC_BRANCH_CODE,'
      '  mlms.DOC_CODE as MLMS_DOC_CODE,'
      '  %HAS_DOC_ITEMS[mlms] as MLMS_HAS_DOC_ITEMS'
      ''
      'from'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms,'
      '  PRODUCTS pd,'
      '  PRODUCTS pp'
      ''
      'where'
      '  (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      '  (mll.DETAIL_CODE = pd.PRODUCT_CODE(+)) and'
      '  (mll.PRODUCT_CODE = pp.PRODUCT_CODE(+))'
      ''
      'order by'
      '  NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO,'
      '  mlms.ML_MODEL_STAGE_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PSD_SINGLE_PRICE_IN_SECONDARY_CURRENCY[psd.PRODUCT_CODE ~ psd.ST' +
          'ORE_DEAL_BEGIN_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[mlms]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 160
    object qryModelStatusStagesMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object qryModelStatusStagesMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object qryModelStatusStagesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryModelStatusStagesMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryModelStatusStagesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryModelStatusStagesPRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_NEED_BEGIN_DATE'
    end
    object qryModelStatusStagesNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryModelStatusStagesNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryModelStatusStagesFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryModelStatusStagesNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object qryModelStatusStagesDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryModelStatusStagesDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryModelStatusStagesDETAIL_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CUSTOM_CODE'
    end
    object qryModelStatusStagesDETAIL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelStatusStagesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryModelStatusStagesPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
    end
    object qryModelStatusStagesPRODUCT_WORK_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_WORK_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelStatusStagesPRODUCT_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelStatusStagesDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryModelStatusStagesLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object qryModelStatusStagesPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryModelStatusStagesLINE_PRODUCT_WORK_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_PRODUCT_WORK_QUANTITY'
    end
    object qryModelStatusStagesPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
    end
    object qryModelStatusStagesPULLED_QUANTITY: TAbmesFloatField
      FieldName = 'PULLED_QUANTITY'
    end
    object qryModelStatusStagesPULLED_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PULLED_TOTAL_PRICE'
    end
    object qryModelStatusStagesUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
    end
    object qryModelStatusStagesML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryModelStatusStagesDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryModelStatusStagesPMM_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PMM_BEGIN_DATE'
    end
    object qryModelStatusStagesPMM_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PMM_END_DATE'
    end
    object qryModelStatusStagesMOVEMENT_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DAYS'
    end
    object qryModelStatusStagesMOVED_QUANTITY: TAbmesFloatField
      FieldName = 'MOVED_QUANTITY'
    end
    object qryModelStatusStagesWASTED_QUANTITY: TAbmesFloatField
      FieldName = 'WASTED_QUANTITY'
    end
    object qryModelStatusStagesIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryModelStatusStagesMLL_HAS_STAGE_DOCUMENTATION: TAbmesFloatField
      FieldName = 'MLL_HAS_STAGE_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesTOTAL_WASTE_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TOTAL_WASTE_DETAIL_TECH_QTY'
    end
    object qryModelStatusStagesSTAGE_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'STAGE_HAS_DOCUMENTATION'
      DisplayBoolValues = '*;'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesHAS_MLMSO_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_MLMSO_SPECIAL_CONTROL'
      DisplayBoolValues = ' !; '
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesIS_SHRINKABLE: TAbmesFloatField
      FieldName = 'IS_SHRINKABLE'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusStagesMLMS_DEPT_CODE: TAbmesFloatField
      FieldName = 'MLMS_DEPT_CODE'
      FieldValueType = fvtInteger
    end
    object qryModelStatusStagesUNCOVERED_CAPACITY_MLMSO_COUNT: TAbmesFloatField
      FieldName = 'UNCOVERED_CAPACITY_MLMSO_COUNT'
    end
    object qryModelStatusStagesOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryModelStatusStagesMLMS_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_DOC_BRANCH_CODE'
    end
    object qryModelStatusStagesMLMS_DOC_CODE: TAbmesFloatField
      FieldName = 'MLMS_DOC_CODE'
    end
    object qryModelStatusStagesMLMS_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'MLMS_HAS_DOC_ITEMS'
    end
  end
  object mdModelStatusDetail: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 184
  end
  object prvModelStatus: TDataSetProvider
    DataSet = qryModelStatus
    UpdateMode = upWhereKeyOnly
    BeforeGetRecords = prvModelStatusBeforeGetRecords
    Left = 168
    Top = 136
  end
  object qryModelStatus: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      ''
      '  ( select'
      '      pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '    from'
      '      PRODUCTION_ORDER_TYPES pot'
      '    where'
      
        '      (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYPE_' +
        'CODE)'
      '  ) as PRODUCTION_ORDER_TYPE_ABBREV,'
      ''
      '  ml.IS_OPERATIONS_MODEL,'
      '  %MODEL_OPERATIONS_STATUS[ml] as MODEL_OPERATIONS_STATUS_CODE,'
      ''
      '  To_Number(:MLL_OBJECT_BRANCH_CODE) as MLL_OBJECT_BRANCH_CODE,'
      '  To_Number(:MLL_OBJECT_CODE) as MLL_OBJECT_CODE,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      ''
      '  s.SALE_ORDER_TYPE_CODE,'
      ''
      '  s.SALE_BRANCH_CODE,'
      '  ('
      '    select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '  ) as SALE_BRANCH_NO,'
      '  '
      '  s.SALE_NO,'
      '  '
      '  ('
      '    select'
      '      st.SALE_TYPE_ABBREV'
      '    from'
      '      SALE_TYPES st'
      '    where'
      '      (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE) '
      '  ) as SALE_TYPE_ABBREV,'
      '  '
      '  s.DOC_BRANCH_CODE as SALE_DOC_BRANCH_CODE,'
      '  s.DOC_CODE as SALE_DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as SALE_HAS_DOCUMENTATION,'
      '  '
      '  s.MANAGER_EMPLOYEE_CODE,'
      '  ('
      '    select'
      
        '      (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. ' +
        #39' || e.LAST_NAME) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE)'
      '  ) as MANAGER_EMPLOYEE_NAME,'
      ''
      '  Coalesce('
      '    ('
      '      select'
      '        Min(sd.STORE_DEAL_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    ),'
      '    mpnbd.MIN_PRODUCT_NEED_BEGIN_DATE'
      '  ) as MIN_STORE_DEAL_DATE,'
      ''
      '  Greatest('
      '    ('
      '      select'
      '        Coalesce(Max(sd.STORE_DEAL_DATE), %MIN_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        STORE_DEALS sd'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)      '
      '    ),'
      '    ('
      '      select'
      '        Max(mll.PRODUCT_NEED_END_DATE)'
      '      from'
      '        MATERIAL_LIST_LINES mll'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '    )  '
      '  ) as MAX_STORE_DEAL_DATE,'
      ''
      '  Nvl2('
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      
        '        Trunc(s.PRODUCTION_START_PLAN_DATE - Coalesce(Min(sd.STO' +
        'RE_DEAL_DATE), s.FINISH_DATE, ContextDate))'
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
      '    )'
      '  ) as PRODUCTION_START_RESERVE_DAYS,'
      ''
      '  ( select'
      
        '      Min(Sum(psd.COMPLETED_QUANTITY) / Sum(psd.QUANTITY)) as ST' +
        'ART_STAGE_COEF'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.BND_PROCESS_CODE <> 110)'
      '    group by'
      '      mll.NO_AS_TEXT'
      '  ) as START_STAGE_COEF,'
      ''
      '  ml.INITIAL_TREATMENT_WORKDAYS,'
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
      '      Max('
      '        %COUNT_WORKDAYS['
      '          ( select'
      '              Min(mm.MM_DATE) + 1'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)' +
        ' and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'
      '          )~'
      '          mlms.TREATMENT_BEGIN_DATE]'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MAX_OP_DATE_POSITIVE_DIFF,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      '        -Max('
      '          %COUNT_WORKDAYS['
      '            (mlms.TREATMENT_END_DATE + 1)~'
      '            case'
      '              when (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '                   ( MiscUtils.LargeZero('
      '                       mll.LINE_DETAIL_TECH_QUANTITY -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           ML_MODEL_STAGES mlms2,'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.' +
        'MLL_OBJECT_BRANCH_CODE) and'
      
        '                           (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJ' +
        'ECT_CODE) and'
      
        '                           (mlms2.ML_MODEL_STAGE_NO <= mlms.ML_M' +
        'ODEL_STAGE_NO) and'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms2.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLM' +
        'S_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is not null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       ) -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS' +
        '_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       )'
      '                     ) > 0'
      '                   ) then ContextDate'
      '            else'
      '              ( select'
      '                  Max(mm.MM_DATE)'
      '                from'
      '                  MODEL_MOVEMENTS mm'
      '                where'
      
        '                  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
        'ODE) and'
      '                  (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                  (mm.MM_DATE > mlms.TREATMENT_END_DATE)'
      '              )'
      '            end'
      '          ]'
      '         )'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mlms.TREATMENT_END_DATE < ContextDate) and'
      '        (mlms.OUTGOING_WORKDAYS > 0)'
      '    )'
      '  ) as MIN_OP_DATE_NEGATIVE_DIFF,'
      ''
      '  ml.RESULT_PRODUCT_CODE,'
      ''
      '  s.MANUFACTURE_QUANTITY,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  ml.TECH_QUANTITY,'
      ''
      '  ('
      '    select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.TECH_MEASURE_CODE)'
      '  ) as TECH_MEASURE_ABBREV,'
      ''
      '  ('
      '    select'
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
      '  ml.RESULT_STORE_CODE,'
      ''
      '  ml.ENTER_RESULT_STORE_BEGIN_DATE,'
      '  ml.ENTER_RESULT_STORE_END_DATE,'
      ''
      '  Nvl2('
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      
        '        s.ENTER_SH_STORE_PLAN_END_DATE - Coalesce(Max(sd.STORE_D' +
        'EAL_DATE), s.FINISH_DATE, ContextDate)'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (sd.IN_OUT = 1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '        ( ( select'
      '              MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '            from'
      '              PLANNED_STORE_DEALS psd'
      '            where'
      
        '              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)' +
        ' and'
      '              (psd.IN_OUT = 1)'
      '          ) <= 0'
      '        )'
      '    )'
      '  ) as ENTER_RES_STORE_RESERVE_DAYS,'
      ''
      '  ml.MAIN_DEPT_CODE,'
      ''
      '  ml.SPEC_VERSION_NO,'
      '  ml.SPEC_MODEL_VARIANT_NO,'
      ''
      '  s.OKIDU_EMPLOYEE_CODE,'
      '  ('
      '    select'
      
        '      (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. ' +
        #39' || e.LAST_NAME) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.OKIDU_EMPLOYEE_CODE)'
      '  ) as OKIDU_EMPLOYEE_NAME,'
      '  '
      '  ml.LIMITING_EMPLOYEE_CODE,'
      '  ('
      '    select'
      
        '      (e.FIRST_NAME || '#39' '#39' || SubStr(e.MIDDLE_NAME, 1, 1) || '#39'. ' +
        #39' || e.LAST_NAME) as EMPLOYEE_NAME'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = ml.LIMITING_EMPLOYEE_CODE)'
      '  ) as LIMITING_EMPLOYEE_NAME,'
      '  ml.LIMITING_DATE,'
      '  '
      '  Nvl2(ml.CLOSE_EMPLOYEE_CODE, 1, 0) as IS_CLOSED,'
      '  ml.IS_ARCHIVED,'
      ''
      '  ml.NOTES,'
      ''
      '  s.MODEL_DEVELOPMENT_TYPE_CODE,'
      '  ( select'
      '      mdt.MODEL_DEVELOPMENT_TYPE_ABBREV'
      '    from'
      '      MODEL_DEVELOPMENT_TYPES mdt'
      '    where'
      
        '      (mdt.MODEL_DEVELOPMENT_TYPE_CODE = s.MODEL_DEVELOPMENT_TYP' +
        'E_CODE)'
      '  ) as MODEL_DEVELOPMENT_TYPE_ABBREV,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      MATERIAL_LIST_LINES mll'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE)'
      '  ) as LINE_COUNT,'
      ''
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATING_ORDER,'
      ''
      '  s.WASTING_SALE_OBJ_BRANCH_CODE,'
      '  s.WASTING_SALE_OBJ_CODE,'
      ''
      '  ('
      '    select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = ws.SALE_BRANCH_CODE)'
      '  ) as WASTING_SALE_BRANCH_NO,'
      ''
      '  ws.SALE_NO as WASTING_SALE_NO,'
      ''
      '  wml.ML_OBJECT_BRANCH_CODE as WASTING_ML_OBJECT_BRANCH_CODE,'
      '  wml.ML_OBJECT_CODE as WASTING_ML_OBJECT_CODE,'
      ''
      '  ( select'
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      '  ( select'
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      '  ( select'
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_WASTE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES wcs'
      '    where'
      
        '      (wcs.WASTING_SALE_OBJ_BRANCH_CODE = s.SALE_OBJECT_BRANCH_C' +
        'ODE) and'
      '      (wcs.WASTING_SALE_OBJ_CODE = s.SALE_OBJECT_CODE)'
      '  ) as WASTE_COMPENSATOR_COUNT,'
      ''
      '  ( select'
      '       Nvl2(  '
      '         Min(sd.STORE_DEAL_DATE) - ml.LIMITING_DATE,'
      '         Decode(ml.LIMITING_DATE,'
      '           Min(sd.STORE_DEAL_DATE), 0,'
      
        '           CountWorkdays(ml.LIMITING_DATE, (Min(sd.STORE_DEAL_DA' +
        'TE)-1))'
      '         ),'
      '         null'
      '       )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as START_AFTER_LIMITING_DAYS,'
      ''
      '  ( Decode('
      '      Coalesce(s.CLIENT_COMPANY_CODE, 0),'
      '      0, p.PARTNER_PRODUCT_NAMES,'
      '      ( select'
      '          cp.NAME'
      '        from'
      '          COMPANY_PRODUCTS cp'
      '        where'
      '          (cp.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (cp.PRODUCT_CODE = p.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) as COMPANY_PRODUCT_NAMES,'
      ''
      '  s.PRODUCTION_START_PLAN_DATE'
      ''
      'from'
      '  MATERIAL_LISTS ml,'
      '  SALES s,'
      '  SALE_GROUPS sg,'
      '  PRODUCTS p,'
      '  SALES ws,'
      '  MATERIAL_LISTS wml,'
      '  ('
      '    select'
      
        '      %ML_MIN_PRODUCT_NEED_DATE[:ML_OBJECT_BRANCH_CODE~ :ML_OBJE' +
        'CT_CODE] as MIN_PRODUCT_NEED_BEGIN_DATE'
      '    from'
      '      DUAL'
      '  ) mpnbd'
      ''
      'where'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRANCH' +
        '_CODE) and'
      '  (s.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE) and'
      ''
      '  (ml.RESULT_PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      
        '  (s.WASTING_SALE_OBJ_BRANCH_CODE = ws.SALE_OBJECT_BRANCH_CODE(+' +
        ')) and'
      '  (s.WASTING_SALE_OBJ_CODE = ws.SALE_OBJECT_CODE(+)) and'
      ''
      
        '  (ws.SALE_OBJECT_BRANCH_CODE = wml.BND_PROCESS_OBJECT_BRANCH_CO' +
        'DE(+)) and'
      '  (ws.SALE_OBJECT_CODE = wml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'MODEL_OPERATIONS_STATUS[ml]'
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
        Name = 'HAS_DOC_ITEMS[s]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'MIN_DATE'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
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
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          ( select'#13#10'              Min(mm.MM_DAT' +
          'E) + 1'#13#10'            from'#13#10'              MODEL_MOVEMENTS mm'#13#10'    ' +
          '        where'#13#10'              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ' +
          'mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'              (mm.FROM_MLMS_O' +
          'BJECT_CODE = mlms.MLMS_OBJECT_CODE) and'#13#10'              (mm.STORN' +
          'O_EMPLOYEE_CODE is null) and'#13#10'              (mm.MM_DATE < mlms.T' +
          'REATMENT_BEGIN_DATE)'#13#10'          )~'#13#10'          mlms.TREATMENT_BEG' +
          'IN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'            (mlms.TREATMENT_END_DATE + 1)~'#13#10'   ' +
          '         case'#13#10'              when (ml.CLOSE_EMPLOYEE_CODE is nul' +
          'l) and'#13#10'                   ( MiscUtils.LargeZero('#13#10'             ' +
          '          mll.LINE_DETAIL_TECH_QUANTITY -'#13#10'                     ' +
          '  ( select'#13#10'                           Coalesce(Sum(mm.DETAIL_TE' +
          'CH_QUANTITY), 0)'#13#10'                         from'#13#10'               ' +
          '            ML_MODEL_STAGES mlms2,'#13#10'                           M' +
          'ODEL_MOVEMENTS mm'#13#10'                         where'#13#10'             ' +
          '              (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BR' +
          'ANCH_CODE) and'#13#10'                           (mlms2.MLL_OBJECT_COD' +
          'E = mlms.MLL_OBJECT_CODE) and'#13#10'                           (mlms2' +
          '.ML_MODEL_STAGE_NO <= mlms.ML_MODEL_STAGE_NO) and'#13#10'             ' +
          '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJE' +
          'CT_BRANCH_CODE) and'#13#10'                           (mm.FROM_MLMS_OB' +
          'JECT_CODE = mlms2.MLMS_OBJECT_CODE) and'#13#10'                       ' +
          '    (mm.TO_DEPT_CODE is not null) and'#13#10'                         ' +
          '  (mm.STORNO_EMPLOYEE_CODE is null)'#13#10'                       ) -'#13 +
          #10'                       ( select'#13#10'                           Coa' +
          'lesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'#13#10'                        ' +
          ' from'#13#10'                           MODEL_MOVEMENTS mm'#13#10'          ' +
          '               where'#13#10'                           (mm.FROM_MLMS_O' +
          'BJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'         ' +
          '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
          'ODE) and'#13#10'                           (mm.TO_DEPT_CODE is null) a' +
          'nd'#13#10'                           (mm.STORNO_EMPLOYEE_CODE is null)' +
          #13#10'                       )'#13#10'                     ) > 0'#13#10'        ' +
          '           ) then ContextDate'#13#10'            else'#13#10'              (' +
          ' select'#13#10'                  Max(mm.MM_DATE)'#13#10'                from' +
          #13#10'                  MODEL_MOVEMENTS mm'#13#10'                where'#13#10' ' +
          '                 (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OB' +
          'JECT_BRANCH_CODE) and'#13#10'                  (mm.FROM_MLMS_OBJECT_CO' +
          'DE = mlms.MLMS_OBJECT_CODE) and'#13#10'                  (mm.STORNO_EM' +
          'PLOYEE_CODE is null) and'#13#10'                  (mm.MM_DATE > mlms.T' +
          'REATMENT_END_DATE)'#13#10'              )'#13#10'            end'#13#10'          ' +
          ']'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[:ML_OBJECT_BRANCH_CODE~ :ML_OBJECT_CODE' +
          ']'
        ParamType = ptInput
        Value = 'Trunc(SysDate)'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 168
    Top = 184
    object qryModelStatusML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelStatusML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryModelStatusPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryModelStatusMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryModelStatusMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryModelStatusIS_OPERATIONS_MODEL: TAbmesFloatField
      FieldName = 'IS_OPERATIONS_MODEL'
    end
    object qryModelStatusMODEL_OPERATIONS_STATUS_CODE: TAbmesFloatField
      FieldName = 'MODEL_OPERATIONS_STATUS_CODE'
    end
    object qryModelStatusML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object qryModelStatusSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryModelStatusSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qryModelStatusSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
    end
    object qryModelStatusSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qryModelStatusSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryModelStatusSALE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_DOC_BRANCH_CODE'
    end
    object qryModelStatusSALE_DOC_CODE: TAbmesFloatField
      FieldName = 'SALE_DOC_CODE'
    end
    object qryModelStatusSALE_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SALE_HAS_DOCUMENTATION'
    end
    object qryModelStatusMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object qryModelStatusMANAGER_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'MANAGER_EMPLOYEE_NAME'
      Size = 44
    end
    object qryModelStatusMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_STORE_DEAL_DATE'
    end
    object qryModelStatusMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_STORE_DEAL_DATE'
    end
    object qryModelStatusPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_START_RESERVE_DAYS'
    end
    object qryModelStatusSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
    end
    object qryModelStatusINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object qryModelStatusPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object qryModelStatusMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
    end
    object qryModelStatusMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
    end
    object qryModelStatusRESULT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_CODE'
    end
    object qryModelStatusMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
    end
    object qryModelStatusMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryModelStatusTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryModelStatusTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryModelStatusRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object qryModelStatusENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
    end
    object qryModelStatusENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
    end
    object qryModelStatusENTER_RES_STORE_RESERVE_DAYS: TAbmesFloatField
      FieldName = 'ENTER_RES_STORE_RESERVE_DAYS'
    end
    object qryModelStatusMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qryModelStatusSPEC_VERSION_NO: TAbmesFloatField
      FieldName = 'SPEC_VERSION_NO'
    end
    object qryModelStatusSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qryModelStatusOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object qryModelStatusOKIDU_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'OKIDU_EMPLOYEE_NAME'
      Size = 44
    end
    object qryModelStatusLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object qryModelStatusLIMITING_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'LIMITING_EMPLOYEE_NAME'
      Size = 44
    end
    object qryModelStatusLIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_DATE'
    end
    object qryModelStatusIS_CLOSED: TAbmesFloatField
      FieldName = 'IS_CLOSED'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusIS_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_ARCHIVED'
      FieldValueType = fvtBoolean
    end
    object qryModelStatusNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryModelStatusCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object qryModelStatusMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
    end
    object qryModelStatusLINE_COUNT: TAbmesFloatField
      FieldName = 'LINE_COUNT'
    end
    object qryModelStatusIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
    end
    object qryModelStatusWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_BRANCH_CODE'
    end
    object qryModelStatusWASTING_SALE_OBJ_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_CODE'
    end
    object qryModelStatusWASTING_SALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_NO'
    end
    object qryModelStatusWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
    end
    object qryModelStatusWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OBJECT_BRANCH_CODE'
    end
    object qryModelStatusWASTING_ML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OBJECT_CODE'
    end
    object qryModelStatusPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryModelStatusPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryModelStatusPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryModelStatusWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryModelStatusDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryModelStatusDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryModelStatusHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
    end
    object qryModelStatusWASTE_COMPENSATOR_COUNT: TAbmesFloatField
      FieldName = 'WASTE_COMPENSATOR_COUNT'
    end
    object qryModelStatusSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
    end
    object qryModelStatusCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object qryModelStatusMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryModelStatusPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_START_PLAN_DATE'
    end
  end
  object prvModelStatusDetail: TDataSetProvider
    DataSet = mdModelStatusDetail
    Options = [poIncFieldProps]
    UpdateMode = upWhereKeyOnly
    OnGetData = prvModelStatusDetailGetData
    BeforeUpdateRecord = prvModelStatusDetailBeforeUpdateRecord
    BeforeGetRecords = prvModelStatusDetailBeforeGetRecords
    AfterGetRecords = prvModelStatusDetailAfterGetRecords
    OnGetDataSetProperties = prvModelStatusDetailGetDataSetProperties
    Left = 272
    Top = 136
  end
  object qryModelStageCount: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mll.MLL_OBJECT_CODE,'
      '  mll.PARENT_MLL_OBJECT_CODE,'
      '  Count(mlms.MLMS_OBJECT_CODE) as STAGE_COUNT'
      'from'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms'
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      '  (mll.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (mll.ML_OBJECT_CODE = :ML_OBJECT_CODE)'
      'group by'
      '  mll.MLL_OBJECT_CODE,'
      '  mll.PARENT_MLL_OBJECT_CODE  '
      'order by'
      '  mll.PARENT_MLL_OBJECT_CODE nulls first   ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 440
    Top = 56
    object qryModelStageCountMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryModelStageCountPARENT_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_CODE'
    end
    object qryModelStageCountSTAGE_COUNT: TAbmesFloatField
      FieldName = 'STAGE_COUNT'
    end
  end
  object qryArchiveModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_ARCHIVED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  MATERIAL_LISTS_FOR_EDIT'
      'set'
      '  IS_ARCHIVED = :IS_ARCHIVED'
      'where'
      '  (ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ML_OBJECT_CODE = :ML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 336
    Top = 8
  end
  object qryUnfinishedMfg: TAbmesSQLQuery
    BeforeOpen = qryUnfinishedMfgBeforeOpen
    AfterClose = qryUnfinishedMfgAfterClose
    OnCalcFields = qryUnfinishedMfgCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
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
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'UNFINISHED_TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  /*+ INDEX(ml) INDEX(s) INDEX(mll) INDEX(mlms) INDEX(p) USE_NL(' +
        'ml, s, mll, mlms, p)*/'
      ''
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE,'
      ''
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      ''
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      ''
      '  ( select'
      '      ( select'
      '          pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '        from'
      '          PRODUCTION_ORDER_TYPES pot'
      '        where'
      
        '          (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_T' +
        'YPE_CODE)'
      '      ) ||'
      '      '#39'/'#39' ||'
      '      ( select'
      '          d.CUSTOM_CODE'
      '        from'
      '          DEPTS d'
      '        where'
      '          (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '      ) ||'
      '      '#39'/'#39' ||'
      '      s.SALE_NO ||'
      '      '#39'/'#39' ||'
      '      ( select'
      '          st.SALE_TYPE_ABBREV'
      '        from'
      '          SALE_TYPES st'
      '        where'
      '          (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '      )'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE)'
      '  ) as PRODUCTION_ORDER_IDENTIFIER,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      ''
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      ''
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      SALES s,'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      ''
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wprt.WORK_PRIORITY_NO'
      '    from'
      '      SALES s,'
      '      WORK_PRIORITIES wprt'
      '    where'
      
        '      (ml.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (ml.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '      (s.WORK_PRIORITY_CODE = wprt.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  mll.NO_AS_FORMATED_TEXT,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO,'
      ''
      '  mlms.ML_MODEL_STAGE_NO,'
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
      '  p.PRODUCT_CODE as DETAIL_CODE,'
      '  p.NAME as DETAIL_NAME,'
      '  p.CUSTOM_CODE as DETAIL_NO,'
      '  %HAS_DOC_ITEMS[p] as DETAIL_HAS_DOC,'
      ''
      '  p.MEASURE_CODE as DETAIL_MEASURE_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (p.MEASURE_CODE = m.MEASURE_CODE)'
      '  ) as DETAIL_MEASURE_ABBREV,'
      ''
      '  p.TECH_MEASURE_COEF as DETAIL_TECH_MEASURE_COEF,'
      '  '
      '  ( ( select  -- vliazlo v nashia mlms'
      '        Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '      from'
      '        MODEL_MOVEMENTS mm'
      '      where'
      
        '        ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJECT_' +
        'CODE) ='
      '          ( select'
      
        '              mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OBJECT_C' +
        'ODE'
      '            from'
      '              ML_MODEL_STAGES mlms2'
      '            where'
      
        '              (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BR' +
        'ANCH_CODE) and'
      '              (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      
        '              (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE_NO ' +
        '- 1)'
      '          )'
      '        ) and'
      '        (mm.TO_DEPT_CODE is null) and'
      '        (mm.STORNO_EMPLOYEE_CODE is null) and'
      '        (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '    )'
      '    -'
      '    Decode('
      '      mlms.OUTGOING_WORKDAYS,'
      '      0,'
      '      Least('
      '        Greatest('
      
        '          ( ( select  -- izliazlo ot purvia mlms v parent reda k' +
        'am vroria ili kam brak'
      
        '                (Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0) * mll' +
        '.DETAIL_TECH_QUANTITY)'
      '              from'
      '                MODEL_MOVEMENTS mm'
      '              where'
      
        '                ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS' +
        '_OBJECT_CODE) ='
      '                  ( select'
      
        '                      mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_' +
        'OBJECT_CODE'
      '                    from'
      '                      ML_MODEL_STAGES mlms2'
      '                    where'
      
        '                      (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PARENT' +
        '_MLL_OBJECT_BRANCH_CODE) and'
      
        '                      (mlms2.MLL_OBJECT_CODE = mll.PARENT_MLL_OB' +
        'JECT_CODE) and'
      '                      (mlms2.ML_MODEL_STAGE_NO = 1)'
      '                  )'
      '                ) and'
      '                (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '            )'
      '            -'
      
        '            ( select  -- vliazlo v posleden etap na prednite raz' +
        'klonenia po nashia red'
      '                Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '              from'
      '                MODEL_MOVEMENTS mm,'
      '                ML_MODEL_STAGES mlms2'
      '              where'
      
        '                (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OB' +
        'JECT_BRANCH_CODE) and'
      
        '                (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLMS_OBJECT_CO' +
        'DE) and'
      
        '                ( (mlms2.MLL_OBJECT_BRANCH_CODE, mlms2.MLL_OBJEC' +
        'T_CODE) in'
      '                  ( select'
      '                      mll2.MLL_OBJECT_BRANCH_CODE,'
      '                      mll2.MLL_OBJECT_CODE'
      '                    from'
      '                      MATERIAL_LIST_LINES mll2'
      '                    where'
      
        '                      (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                      (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE)' +
        ' and'
      '                      (mll2.NO_AS_TEXT = mll.NO_AS_TEXT) and'
      '                      (mll2.FORK_NO < mll.FORK_NO)'
      '                  )'
      '                ) and'
      '                (mlms2.OUTGOING_WORKDAYS <> 0) and'
      '                (not exists'
      '                  ( select'
      '                      1'
      '                    from'
      '                      ML_MODEL_STAGES mlms3'
      '                    where'
      
        '                      (mlms3.MLL_OBJECT_BRANCH_CODE = mlms2.MLL_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                      (mlms3.MLL_OBJECT_CODE = mlms2.MLL_OBJECT_' +
        'CODE) and'
      
        '                      (mlms3.ML_MODEL_STAGE_NO > mlms2.ML_MODEL_' +
        'STAGE_NO) and'
      '                      (mlms3.OUTGOING_WORKDAYS <> 0)'
      '                  )'
      '                ) and'
      '                (mm.TO_DEPT_CODE is null) and'
      '                (mm.STORNO_EMPLOYEE_CODE is null)  and'
      '                (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '            )'
      '          ),'
      '          0'
      '        ),'
      '        Decode('
      '          mll.FORK_NO,'
      '          ( select'
      '              Max(mll2.FORK_NO)'
      '            from'
      '              MATERIAL_LIST_LINES mll2'
      '            where'
      
        '              (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '              (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      '              (mll2.NO_AS_TEXT = mll.NO_AS_TEXT)'
      '          ),'
      '          %MAX_NUMBER,'
      '          ( select  -- vliazlo v nashia mlms'
      '              Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_O' +
        'BJECT_CODE) ='
      '                ( select'
      
        '                    mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OB' +
        'JECT_CODE'
      '                  from'
      '                    ML_MODEL_STAGES mlms2'
      '                  where'
      
        '                    (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                    (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_COD' +
        'E) and'
      
        '                    (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STA' +
        'GE_NO - 1)'
      '                )'
      '              ) and'
      '              (mm.TO_DEPT_CODE is null) and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '          )'
      '        )'
      '      ),'
      
        '      ( select  -- izliazlo ot nashia mlms kam sledvashtia ili k' +
        'am brak'
      '          Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '        from'
      '          MODEL_MOVEMENTS mm'
      '        where'
      
        '          (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '          (mm.STORNO_EMPLOYEE_CODE is null) and'
      '          (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '      )'
      '    )'
      '  ) as TECH_QUANTITY,'
      ''
      
        '  ModelUtils.GetMllRealSinglePrice(mll.MLL_OBJECT_BRANCH_CODE, m' +
        'll.MLL_OBJECT_CODE) as TECH_SINGLE_PRICE'
      ''
      'from'
      '  SALES s,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mll,'
      '  ML_MODEL_STAGES mlms,'
      '  PRODUCTS p'
      ''
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        ') and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      '  (mll.DETAIL_CODE = p.PRODUCT_CODE) and'
      ''
      '  %IF_IS_ACTIVE and'
      ''
      '  ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      '    (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:SALE_BRANCH_CODE is null) or'
      '    (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      ''
      '  ( (:SALE_NO is null) or'
      '    (s.SALE_NO = :SALE_NO) ) and'
      ''
      '  ( (:SALE_TYPE_CODE is null) or'
      '    (:SALE_TYPE_CODE = s.SALE_TYPE_CODE) ) and'
      ''
      '  ( ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        SALE_GROUPS sg,'
      '        PRIORITIES p'
      '      where'
      
        '        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) a' +
        'nd'
      '        (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '    )'
      '    between'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '        ), 0) and'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '        ), 1000000)'
      '  ) and'
      ''
      '  (mlms.ML_MODEL_STAGE_NO > 0) and'
      ''
      '  ( (mll.PRODUCT_CODE is not null) or'
      '    (mlms.ML_MODEL_STAGE_NO > 1)'
      '  ) and'
      ''
      '  ( (mll.PARENT_MLL_OBJECT_BRANCH_CODE is not null) or'
      '    (mlms.OUTGOING_WORKDAYS > 0)'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_DEPTS = 1) or'
      '    (mlms.DEPT_CODE in'
      '      ( select'
      '          tfd.DEPT_CODE'
      '        from'
      '          TEMP_FILTERED_DEPTS tfd'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (mll.DETAIL_CODE in'
      '      ( select'
      '          tfp.PRODUCT_CODE'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( Abs('
      '      ( ( select  -- vliazlo v nashia mlms'
      '            Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '          from'
      '            MODEL_MOVEMENTS mm'
      '          where'
      
        '            ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_MLMS_OBJ' +
        'ECT_CODE) ='
      '              ( select'
      
        '                  mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLMS_OBJE' +
        'CT_CODE'
      '                from'
      '                  ML_MODEL_STAGES mlms2'
      '                where'
      
        '                  (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '                  (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)' +
        ' and'
      
        '                  (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL_STAGE' +
        '_NO - 1)'
      '              )'
      '            ) and'
      '            (mm.TO_DEPT_CODE is null) and'
      '            (mm.STORNO_EMPLOYEE_CODE is null) and'
      '            (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '        )'
      '        -'
      '        Decode('
      '          mlms.OUTGOING_WORKDAYS,'
      '          0,'
      '          Least('
      '            Greatest('
      
        '              ( ( select  -- izliazlo ot purvia mlms v parent re' +
        'da kam vroria ili kam brak'
      
        '                    (Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0) *' +
        ' mll.DETAIL_TECH_QUANTITY)'
      '                  from'
      '                    MODEL_MOVEMENTS mm'
      '                  where'
      
        '                    ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_' +
        'MLMS_OBJECT_CODE) ='
      '                      ( select'
      
        '                          mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.M' +
        'LMS_OBJECT_CODE'
      '                        from'
      '                          ML_MODEL_STAGES mlms2'
      '                        where'
      
        '                          (mlms2.MLL_OBJECT_BRANCH_CODE = mll.PA' +
        'RENT_MLL_OBJECT_BRANCH_CODE) and'
      
        '                          (mlms2.MLL_OBJECT_CODE = mll.PARENT_ML' +
        'L_OBJECT_CODE) and'
      '                          (mlms2.ML_MODEL_STAGE_NO = 1)'
      '                      )'
      '                    ) and'
      '                    (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                    (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '                )'
      '                -'
      
        '                ( select  -- vliazlo v posleden etap na prednite' +
        ' razklonenia po nashia red'
      '                    Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '                  from'
      '                    MODEL_MOVEMENTS mm,'
      '                    ML_MODEL_STAGES mlms2'
      '                  where'
      
        '                    (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLM' +
        'S_OBJECT_BRANCH_CODE) and'
      
        '                    (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLMS_OBJEC' +
        'T_CODE) and'
      
        '                    ( (mlms2.MLL_OBJECT_BRANCH_CODE, mlms2.MLL_O' +
        'BJECT_CODE) in'
      '                      ( select'
      '                          mll2.MLL_OBJECT_BRANCH_CODE,'
      '                          mll2.MLL_OBJECT_CODE'
      '                        from'
      '                          MATERIAL_LIST_LINES mll2'
      '                        where'
      
        '                          (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                          (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_C' +
        'ODE) and'
      '                          (mll2.NO_AS_TEXT = mll.NO_AS_TEXT) and'
      '                          (mll2.FORK_NO < mll.FORK_NO)'
      '                      )'
      '                    ) and'
      '                    (mlms2.OUTGOING_WORKDAYS <> 0) and'
      '                    (not exists'
      '                      ( select'
      '                          1'
      '                        from'
      '                          ML_MODEL_STAGES mlms3'
      '                        where'
      
        '                          (mlms3.MLL_OBJECT_BRANCH_CODE = mlms2.' +
        'MLL_OBJECT_BRANCH_CODE) and'
      
        '                          (mlms3.MLL_OBJECT_CODE = mlms2.MLL_OBJ' +
        'ECT_CODE) and'
      
        '                          (mlms3.ML_MODEL_STAGE_NO > mlms2.ML_MO' +
        'DEL_STAGE_NO) and'
      '                          (mlms3.OUTGOING_WORKDAYS <> 0)'
      '                      )'
      '                    ) and'
      '                    (mm.TO_DEPT_CODE is null) and'
      '                    (mm.STORNO_EMPLOYEE_CODE is null)  and'
      '                    (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '                )'
      '              ),'
      '              0'
      '            ),'
      '            Decode('
      '              mll.FORK_NO,'
      '              ( select'
      '                  Max(mll2.FORK_NO)'
      '                from'
      '                  MATERIAL_LIST_LINES mll2'
      '                where'
      
        '                  (mll2.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BR' +
        'ANCH_CODE) and'
      '                  (mll2.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      '                  (mll2.NO_AS_TEXT = mll.NO_AS_TEXT)'
      '              ),'
      '              %MAX_NUMBER,'
      '              ( select  -- vliazlo v nashia mlms'
      '                  Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '                from'
      '                  MODEL_MOVEMENTS mm'
      '                where'
      
        '                  ( (mm.FROM_MLMS_OBJECT_BRANCH_CODE, mm.FROM_ML' +
        'MS_OBJECT_CODE) ='
      '                    ( select'
      
        '                        mlms2.MLMS_OBJECT_BRANCH_CODE, mlms2.MLM' +
        'S_OBJECT_CODE'
      '                      from'
      '                        ML_MODEL_STAGES mlms2'
      '                      where'
      
        '                        (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                        (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT' +
        '_CODE) and'
      
        '                        (mlms2.ML_MODEL_STAGE_NO = mlms.ML_MODEL' +
        '_STAGE_NO - 1)'
      '                    )'
      '                  ) and'
      '                  (mm.TO_DEPT_CODE is null) and'
      '                  (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                  (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '              )'
      '            )'
      '          ),'
      
        '          ( select  -- izliazlo ot nashia mlms kam sledvashtia i' +
        'li kam brak'
      '              Coalesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)' +
        ' and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE <= :UNFINISHED_TO_DATE)'
      '          )'
      '        )'
      '      )'
      '      /'
      '      p.TECH_MEASURE_COEF'
      '    )'
      '    >='
      '    %EPS'
      '  )'
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
        Name = 'MAX_NUMBER'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_ACTIVE'
        ParamType = ptInput
        Value = '(0=0)'
      end
      item
        DataType = ftWideString
        Name = 'EPS'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 32
    Top = 56
    object qryUnfinishedMfgMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUnfinishedMfgMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUnfinishedMfgMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryUnfinishedMfgMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object qryUnfinishedMfgML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryUnfinishedMfgML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryUnfinishedMfgPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 93
    end
    object qryUnfinishedMfgPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryUnfinishedMfgPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryUnfinishedMfgPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryUnfinishedMfgWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryUnfinishedMfgNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryUnfinishedMfgNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object qryUnfinishedMfgFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      ProviderFlags = []
    end
    object qryUnfinishedMfgML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryUnfinishedMfgDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = []
    end
    object qryUnfinishedMfgDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryUnfinishedMfgDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryUnfinishedMfgDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryUnfinishedMfgDETAIL_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_MEASURE_CODE'
    end
    object qryUnfinishedMfgDETAIL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBREV'
      Size = 5
    end
    object qryUnfinishedMfgDETAIL_TECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_COEF'
    end
    object qryUnfinishedMfgTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object qryUnfinishedMfgTECH_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'TECH_SINGLE_PRICE'
    end
    object qryUnfinishedMfgQUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'QUANTITY'
      ProviderFlags = []
      Calculated = True
    end
    object qryUnfinishedMfgTOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
      Calculated = True
    end
    object qryUnfinishedMfgDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
    end
    object qryUnfinishedMfgDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
  end
  object prvUnfinishedMfg: TDataSetProvider
    DataSet = qryUnfinishedMfg
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 8
  end
  object prvModelStageCount: TDataSetProvider
    DataSet = qryModelStageCount
    Exported = False
    Options = [poReadOnly]
    Left = 440
    Top = 8
  end
  object cdsModelStageCount: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvModelStageCount'
    Left = 440
    Top = 104
    object cdsModelStageCountMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsModelStageCountPARENT_MLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PARENT_MLL_OBJECT_CODE'
    end
    object cdsModelStageCountSTAGE_COUNT: TAbmesFloatField
      FieldName = 'STAGE_COUNT'
    end
  end
  object qryCloseModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CLOSE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  MATERIAL_LISTS_FOR_EDIT'
      'set'
      '  CLOSE_EMPLOYEE_CODE = :CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE = ContextDate,'
      '  CLOSE_TIME = ContextTime'
      'where'
      '  (ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ML_OBJECT_CODE = :ML_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 336
    Top = 56
  end
  object qryUpdMllNotes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'NOTES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  MATERIAL_LIST_LINES_FOR_EDIT mll'
      'set'
      '  mll.NOTES = :NOTES'
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 464
    Top = 184
  end
  object qryProductionOrders: TAbmesSQLQuery
    BeforeOpen = qryProductionOrdersBeforeOpen
    AfterClose = qryProductionOrdersAfterClose
    OnCalcFields = qryProductionOrdersCalcFields
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
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
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ML_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ML_STATE_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CONSUME_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_UNCOVERED_LINES_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'FILTER_UNCOVERED_LINES_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_UNCOVERED_LINES_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
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
        Name = 'ALL_FILTERED_DEPTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_4'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_WORKDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OP_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_START_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENTER_SH_STORE_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_ENTER_SH_STORE_DATE_DIFF'
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
        Name = 'MIN_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_CONSUME_DATE_DIFF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_CONSUME_DATE_DIFF'
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
      'with s_tree as'
      '  ( select'
      '      *'
      '    from'
      '      ( select'
      '          *'
      '        from'
      '          SALES s2'
      '        start with'
      '          (%GET_SALE_OBJECT_TREE = 1) and'
      '          ( (s2.SALE_OBJECT_BRANCH_CODE, s2.SALE_OBJECT_CODE) ='
      '            ( select'
      '                s4.SALE_OBJECT_BRANCH_CODE,'
      '                s4.SALE_OBJECT_CODE'
      '              from'
      '                ( select'
      '                    s3.SALE_OBJECT_BRANCH_CODE,'
      '                    s3.SALE_OBJECT_CODE,'
      '                    s3.WASTING_SALE_OBJ_BRANCH_CODE'
      '                  from'
      '                    SALES s3'
      '                  start with'
      '                    (%GET_SALE_OBJECT_TREE = 1) and'
      
        '                    (s3.SALE_OBJECT_BRANCH_CODE = :TREE_SALE_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                    (s3.SALE_OBJECT_CODE = :TREE_SALE_OBJECT_COD' +
        'E)'
      '                  connect by'
      
        '                    (s3.SALE_OBJECT_BRANCH_CODE = prior s3.WASTI' +
        'NG_SALE_OBJ_BRANCH_CODE) and'
      
        '                    (s3.SALE_OBJECT_CODE = prior s3.WASTING_SALE' +
        '_OBJ_CODE)'
      '                ) s4'
      '              where'
      '                (%GET_SALE_OBJECT_TREE = 1) and'
      '                (s4.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '            )'
      '          )'
      '        connect by'
      
        '          (s2.WASTING_SALE_OBJ_BRANCH_CODE = prior s2.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      '          (s2.WASTING_SALE_OBJ_CODE = prior s2.SALE_OBJECT_CODE)'
      '      ) s5'
      '    where'
      '      (%GET_SALE_OBJECT_TREE = 1) and'
      '      (s5.ANNUL_EMPLOYEE_CODE is null)'
      '  )'
      'select'
      '  /*+ INDEX(s) INDEX(ml) INDEX(pot) */'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      ''
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      ''
      '  ( pot.PRODUCTION_ORDER_TYPE_ABBREV || '#39'/'#39' ||'
      '    ( select'
      '        To_Char(d.CUSTOM_CODE)'
      '      from'
      '        DEPTS d'
      '      where'
      '        (s.SALE_BRANCH_CODE = d.DEPT_CODE)'
      '    ) ||'
      '    '#39'/'#39' || To_Char(s.SALE_NO) || '#39'/'#39' ||'
      '    ( select'
      '        st.SALE_TYPE_ABBREV'
      '      from'
      '        SALE_TYPES st'
      '      where'
      '        (s.SALE_TYPE_CODE = st.SALE_TYPE_CODE)'
      '    )'
      '  ) as SALE_IDENTIFICATION,'
      ''
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.SALE_TYPE_CODE,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      ''
      '  ( select'
      '      ( ( select'
      '            pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '          from'
      '            PRODUCTION_ORDER_TYPES pot'
      '          where'
      
        '            (pot.PRODUCTION_ORDER_TYPE_CODE = s2.PRODUCTION_ORDE' +
        'R_TYPE_CODE)'
      '        ) ||'
      '        '#39'/'#39' ||'
      '        ( select'
      '            d.CUSTOM_CODE'
      '          from'
      '            DEPTS d'
      '          where'
      '            (d.DEPT_CODE = s2.SALE_BRANCH_CODE)'
      '        ) ||'
      '        '#39'/'#39' ||'
      '        s2.SALE_NO ||'
      '        '#39'/'#39' ||'
      '        ( select'
      '            st.SALE_TYPE_ABBREV'
      '          from'
      '            SALE_TYPES st'
      '          where'
      '            (st.SALE_TYPE_CODE = s2.SALE_TYPE_CODE)'
      '        )'
      '      )'
      '    from'
      '      SALES s2'
      '    where'
      
        '      (s2.SALE_OBJECT_BRANCH_CODE = s.WASTING_SALE_OBJ_BRANCH_CO' +
        'DE) and'
      '      (s2.SALE_OBJECT_CODE = s.WASTING_SALE_OBJ_CODE)'
      '  ) as WASTING_ORDER_IDENTIFIER,'
      ''
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATOR,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      SALES ws'
      '    where'
      
        '      (ws.WASTING_SALE_OBJ_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CO' +
        'DE) and'
      '      (ws.WASTING_SALE_OBJ_CODE = s.SALE_OBJECT_CODE)'
      '  ) as HAS_WASTE_COMPENSATORS,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll2,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      
        '      (ml.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (ml.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and'
      ''
      
        '      (mll2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE' +
        ') and'
      '      (mll2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlms.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) and'
      ''
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_WASTE,'
      ''
      '  ( select'
      '      sg.PRIORITY_CODE'
      '    from'
      '      SALE_GROUPS sg'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '  ) as PRIORITY_CODE,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '      (p.PRIORITY_NO || '#39'   '#39' || p.PRIORITY_NAME)'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  ( select'
      '      (wp.WORK_PRIORITY_NO || '#39'   '#39' || wp.WORK_PRIORITY_NAME)'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_FULL_NAME,'
      ''
      '  s.MANAGER_EMPLOYEE_CODE as OWNER_EMPLOYEE_CODE,'
      ''
      '  s.CLIENT_COMPANY_CODE as OWNER_COMPANY_CODE,'
      ''
      '  Decode('
      '    s.SALE_ORDER_TYPE_CODE,'
      '    3,'
      '    ( select'
      '        (oe.FIRST_NAME || '#39' '#39' || oe.LAST_NAME)'
      '      from'
      '        EMPLOYEES oe'
      '      where'
      '        (s.MANAGER_EMPLOYEE_CODE = oe.EMPLOYEE_CODE)'
      '    ),'
      '    ( select'
      '        c.SHORT_NAME'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '    )'
      '  ) as OWNER_NAME,'
      ''
      '  p.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      ''
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~p] as PRODUCT_OTHER_NAME,'
      ''
      '  p.MEASURE_CODE,'
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as MEASURE_ABBREV,'
      ''
      '  s.QUANTITY,'
      ''
      '  Coalesce('
      '    ( select'
      '        psd.COMPLETED_QUANTITY'
      '      from'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '        (psd.BND_PROCESS_OBJECT_CODE = ml.BND_PROCESS_OBJECT_COD' +
        'E) and'
      '        (psd.PRODUCT_CODE = ml.RESULT_PRODUCT_CODE) and'
      '        (psd.IN_OUT = 1) and'
      '        (psd.IS_PLANNED_MANUALLY = 0) and'
      '        (psd.BND_PROCESS_CODE <> 110)'
      '    ),'
      '    0'
      '  ) as QUANTITY_IN,'
      ''
      
        '  0 as QUANTITY_DIFF,  -- fiktivna stoinost, popylva se na OnGet' +
        'Data'
      
        '  0 as QUANTITY_DEVIATION_PERCENT,  -- fiktivna stoinost, popylv' +
        'a se na OnGetData'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as STORE_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.SHIPMENT_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE)'
      '  ) as SHIPMENT_STORE_IDENTIFIER,'
      ''
      
        '  %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJE' +
        'CT_CODE] as MIN_PRODUCT_NEED_BEGIN_DATE,'
      ''
      '  s.ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '  s.ENTER_SH_STORE_PLAN_END_DATE,'
      ''
      '  ( select'
      
        '      Min(psd.COMPLETED_QUANTITY / psd.QUANTITY) as START_STAGE_' +
        'COEF'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      PLANNED_STORE_DEALS psd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE) and'
      '      (mll.MLL_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (psd.BND_PROCESS_CODE <> 110)'
      '  ) as START_STAGE_COEF,'
      ''
      '  ( select'
      
        '      Count(tupsd.PLANNED_STORE_DEAL_BRANCH_CODE) as UNCOVERED_L' +
        'INES'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      TEMP_UNCOVERED_PSD tupsd'
      '    where'
      '      (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '      (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE)'
      '  ) as UNCOVERED_LINES,'
      ''
      '  s.PRODUCTION_DEPT_CODE as MAIN_DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (s.PRODUCTION_DEPT_CODE = d.DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as MAIN_DEPT_IDENTIFIER,'
      ''
      '  s.CREATE_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.CREATE_EMPLOYEE_CODE)'
      '  ) as CREATE_EMPLOYEE_ABBREV,'
      '  s.CREATE_DATE,'
      '  s.CREATE_TIME,'
      ''
      '  s.CHANGE_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.CHANGE_EMPLOYEE_CODE)'
      '  ) as CHANGE_EMPLOYEE_ABBREV,'
      '  s.CHANGE_DATE,'
      '  s.CHANGE_TIME,'
      ''
      '  s.FINISH_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.FINISH_EMPLOYEE_CODE)'
      '  ) as FINISH_EMPLOYEE_ABBREV,'
      '  s.FINISH_DATE,'
      '  s.FINISH_TIME,'
      ''
      '  s.ANNUL_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.ANNUL_EMPLOYEE_CODE)'
      '  ) as ANNUL_EMPLOYEE_ABBREV,'
      '  s.ANNUL_DATE,'
      '  s.ANNUL_TIME,'
      ''
      '  ml.LIMITING_DATE,'
      '  ml.LIMITING_TIME,'
      '  ml.LIMITING_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = ml.LIMITING_EMPLOYEE_CODE)'
      '  ) as LIMITING_EMPLOYEE_NAME,'
      ''
      '  ml.CLOSE_DATE as MODEL_CLOSE_DATE,'
      '  ml.CLOSE_TIME as MODEL_CLOSE_TIME,'
      '  ml.CLOSE_EMPLOYEE_CODE as MODEL_CLOSE_EMPLOYEE_CODE,'
      '  ( select'
      '      (e.ABBREV || '#39'   '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = ml.CLOSE_EMPLOYEE_CODE)'
      '  ) as MODEL_CLOSE_EMPLOYEE_NAME,'
      ''
      '  Decode(s.SALE_ORDER_TYPE_CODE, 1, 1, 0) as IS_SALE,'
      ''
      '  Nvl2('
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      
        '        Trunc(s.PRODUCTION_START_PLAN_DATE - Coalesce(Min(sd.STO' +
        'RE_DEAL_DATE), s.FINISH_DATE, ContextDate))'
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
      '    )'
      '  ) as PRODUCTION_START_DATE_DIFF,'
      ''
      '  Nvl2('
      '    s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      
        '        s.ENTER_SH_STORE_PLAN_END_DATE - Coalesce(Max(sd.STORE_D' +
        'EAL_DATE), s.FINISH_DATE, ContextDate)'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (sd.IN_OUT = 1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '        ( ( select'
      '              MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '            from'
      '              PLANNED_STORE_DEALS psd'
      '            where'
      
        '              (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)' +
        ' and'
      '              (psd.IN_OUT = 1)'
      '          ) <= 0'
      '        )'
      '    )'
      '  ) as ENTER_SH_STORE_DATE_DIFF,'
      ''
      '  ml.INITIAL_TREATMENT_WORKDAYS,'
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
      '      Max('
      '        %COUNT_WORKDAYS['
      '          ( select'
      '              Min(mm.MM_DATE) + 1'
      '            from'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE)' +
        ' and'
      '              (mm.STORNO_EMPLOYEE_CODE is null) and'
      '              (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'
      '          )~'
      '          mlms.TREATMENT_BEGIN_DATE]'
      '      )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      ML_MODEL_STAGES mlms'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_CODE)' +
        ' and'
      '      (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      '  ) as MAX_OP_DATE_POSITIVE_DIFF,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '    null,'
      '    ( select'
      '        -Max('
      '          %COUNT_WORKDAYS['
      '            (mlms.TREATMENT_END_DATE + 1)~'
      '            case'
      '              when (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '                   ( MiscUtils.LargeZero('
      '                       mll.LINE_DETAIL_TECH_QUANTITY -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           ML_MODEL_STAGES mlms2,'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.' +
        'MLL_OBJECT_BRANCH_CODE) and'
      
        '                           (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJ' +
        'ECT_CODE) and'
      
        '                           (mlms2.ML_MODEL_STAGE_NO <= mlms.ML_M' +
        'ODEL_STAGE_NO) and'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms2.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms2.MLM' +
        'S_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is not null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       ) -'
      '                       ( select'
      
        '                           Coalesce(Sum(mm.DETAIL_TECH_QUANTITY)' +
        ', 0)'
      '                         from'
      '                           MODEL_MOVEMENTS mm'
      '                         where'
      
        '                           (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ml' +
        'ms.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                           (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS' +
        '_OBJECT_CODE) and'
      '                           (mm.TO_DEPT_CODE is null) and'
      '                           (mm.STORNO_EMPLOYEE_CODE is null)'
      '                       )'
      '                     ) > 0'
      '                   ) then ContextDate'
      '            else'
      '              ( select'
      '                  Max(mm.MM_DATE)'
      '                from'
      '                  MODEL_MOVEMENTS mm'
      '                where'
      
        '                  (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
        'ODE) and'
      '                  (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                  (mm.MM_DATE > mlms.TREATMENT_END_DATE)'
      '              )'
      '            end'
      '          ]'
      '         )'
      '      from'
      '        MATERIAL_LIST_LINES mll,'
      '        ML_MODEL_STAGES mlms'
      '      where'
      
        '        (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) a' +
        'nd'
      '        (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '        (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH_COD' +
        'E) and'
      '        (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '        (mlms.TREATMENT_END_DATE < ContextDate) and'
      '        (mlms.OUTGOING_WORKDAYS > 0)'
      '    )'
      '  ) as MIN_OP_DATE_NEGATIVE_DIFF,'
      ''
      '  ( select'
      
        '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) ' +
        'as DEPT_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.CONSUMER_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE)'
      '  ) as CONSUMER_DEPT_IDENTIFIER,'
      ''
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '       Decode('
      '         (Min(sd.STORE_DEAL_DATE) - ml.LIMITING_DATE),'
      '         null, To_Number(null),'
      '         0, 0,'
      
        '         CountWorkdays(ml.LIMITING_DATE, (Min(sd.STORE_DEAL_DATE' +
        ')-1))'
      '       )'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      STORE_DEALS sd'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_CODE) and'
      '      (sd.IN_OUT = -1) and'
      '      (sd.BND_PROCESS_CODE <> 110) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as START_AFTER_LIMITING_DAYS,'
      ''
      '  s.CONSUME_BEGIN_DATE,'
      '  s.CONSUME_END_DATE,'
      '  ( select'
      
        '      s.CONSUME_BEGIN_DATE - Coalesce(Max(sd.STORE_DEAL_DATE), s' +
        '.FINISH_DATE, ContextDate)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '      (sd.IN_OUT = 1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '      ( ( select'
      '            MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '          from'
      '            PLANNED_STORE_DEALS psd'
      '          where'
      
        '            (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_' +
        'BRANCH_CODE) and'
      
        '            (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) a' +
        'nd'
      '            (psd.IN_OUT = 1)'
      '        ) <= 0'
      '      )'
      '  ) as CONSUME_DATE_DIFF,'
      ''
      '  ( select'
      '      Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '    from'
      '      MATERIAL_LIST_LINES mll,'
      '      EXCEPT_EVENT_DAMAGES eed'
      '    where'
      '      (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_CODE) and'
      '      (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = eed.MLL_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (mll.MLL_OBJECT_CODE = eed.MLL_OBJECT_CODE)'
      '  ) as DAMAGES_STATE_CODE,'
      ''
      
        '  To_Char(s.SALE_OBJECT_BRANCH_CODE) || '#39';'#39' || To_Char(s.SALE_OB' +
        'JECT_CODE) as SALE_OBJECT_PK,'
      ''
      '  Nvl2('
      '    s.WASTING_SALE_OBJ_CODE,'
      
        '    To_Char(s.WASTING_SALE_OBJ_BRANCH_CODE) || '#39';'#39' || To_Char(s.' +
        'WASTING_SALE_OBJ_CODE),'
      '    null'
      '  ) as WASTING_SALE_OBJ_PK,'
      ''
      '  ( select'
      '      pp.MIN_ORDER_QUANTITY'
      '    from'
      '      PRODUCT_PERIODS pp'
      '    where'
      '      (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '      (s.ENTER_SH_STORE_PLAN_END_DATE between pp.BEGIN_DATE and ' +
        'pp.END_DATE)'
      '  ) as MIN_ORDER_QUANTITY,'
      ''
      '  ( select'
      '      pp.MAX_ORDER_QUANTITY'
      '    from'
      '      PRODUCT_PERIODS pp'
      '    where'
      '      (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '      (s.ENTER_SH_STORE_PLAN_END_DATE between pp.BEGIN_DATE and ' +
        'pp.END_DATE)'
      '  ) as MAX_ORDER_QUANTITY,'
      ''
      '  ( select'
      '      pp.BALANCE_QUANTITY'
      '    from'
      '      PRODUCT_PERIODS pp'
      '    where'
      '      (pp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      
        '      (s.ENTER_SH_STORE_PLAN_END_DATE between pp.BEGIN_DATE and ' +
        'pp.END_DATE)'
      '  ) as BALANCE_QUANTITY'
      ''
      'from'
      '  %SALES_TABLE_OR_TREE s,'
      '  PRODUCTION_ORDER_TYPES pot,'
      '  MATERIAL_LISTS ml,'
      '  PRODUCTS p'
      ''
      'where'
      
        '  -- za da byde spomenato s_tree. inache kogato e SALES wmesto s' +
        '_tree rewe'
      '  ( (1 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          s_tree'
      '      )'
      '    )'
      '  ) and'
      ''
      
        '  (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_CODE' +
        ') and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        '(+)) and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE(+)) and'
      ''
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  ( (%GET_SALE_OBJECT_TREE = 1) or'
      ''
      '    ( ( (:PRODUCTION_ORDER_BASE_TYPE_CODE is null) or'
      '        (:PRODUCTION_ORDER_BASE_TYPE_CODE = 0) or'
      
        '        (pot.PROD_ORDER_BASE_TYPE_CODE = :PRODUCTION_ORDER_BASE_' +
        'TYPE_CODE)'
      '      ) and'
      ''
      '      ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      '        (:PRODUCTION_ORDER_TYPE_CODE = 0) or'
      
        '        (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TYPE_C' +
        'ODE)'
      '      ) and'
      ''
      '      (s.SALE_ORDER_TYPE_CODE in (1, 3)) and'
      '      (s.PRODUCTION_ORDER_TYPE_CODE is not null) and'
      ''
      
        '      ( ( (%ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ m' +
        'l.ML_OBJECT_CODE] is null) and'
      '          (:PROD_START_PLAN_BEGIN_DATE is null) and'
      '          (:PROD_START_PLAN_END_DATE is null)'
      '        ) or'
      ''
      '        ( ( (:PROD_START_PLAN_BEGIN_DATE is null) or'
      
        '            (%ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~' +
        ' ml.ML_OBJECT_CODE] >= :PROD_START_PLAN_BEGIN_DATE)'
      '          ) and'
      '          ( (:PROD_START_PLAN_END_DATE is null) or'
      
        '            (%ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~' +
        ' ml.ML_OBJECT_CODE] <= :PROD_START_PLAN_END_DATE)'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:SALE_BRANCH_CODE is null ) or'
      '        (:SALE_BRANCH_CODE = s.SALE_BRANCH_CODE)'
      '      ) and'
      ''
      '      ( (:SALE_TYPE_CODE is null) or'
      '        (:SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '      ) and'
      ''
      '      ( (:SALE_NO is null) or'
      '        (:SALE_NO = s.SALE_NO)'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '        exists'
      '          ( select'
      '              1'
      '            from'
      '              TEMP_FILTERED_PRODUCTS tfp'
      '            where'
      '              (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '          )'
      '      ) and'
      ''
      
        '      (%ML_STATE[s~ml] between :MIN_ML_STATE_CODE and :MAX_ML_ST' +
        'ATE_CODE) and'
      ''
      '      ( (:ENTER_SH_STORE_BEGIN_DATE is null) or'
      
        '        (s.ENTER_SH_STORE_PLAN_BEGIN_DATE >= :ENTER_SH_STORE_BEG' +
        'IN_DATE) ) and'
      ''
      '      ( (:ENTER_SH_STORE_END_DATE is null) or'
      
        '        (s.ENTER_SH_STORE_PLAN_BEGIN_DATE <= :ENTER_SH_STORE_END' +
        '_DATE) ) and'
      ''
      '      ( (:CONSUME_BEGIN_DATE is null) or'
      '        (s.CONSUME_BEGIN_DATE >= :CONSUME_BEGIN_DATE) ) and'
      ''
      '      ( (:CONSUME_END_DATE is null) or'
      '        (s.CONSUME_BEGIN_DATE <= :CONSUME_END_DATE) ) and'
      ''
      '      ( (:IS_WASTE_COMPENSATOR_STATUS = 1) or'
      ''
      '        ( (:IS_WASTE_COMPENSATOR_STATUS = 2) and'
      '          (s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '        ) or'
      '    '
      '        ( (:IS_WASTE_COMPENSATOR_STATUS = 3) and'
      '          (s.WASTING_SALE_OBJ_BRANCH_CODE is not null) and'
      ''
      '          ( ( (:WASTING_SALE_BRANCH_CODE is null) and'
      '              (:WASTING_SALE_NO is null)'
      '            ) or'
      
        '            ( (s.WASTING_SALE_OBJ_BRANCH_CODE, s.WASTING_SALE_OB' +
        'J_CODE) ='
      '              ( select'
      
        '                  ws.SALE_OBJECT_BRANCH_CODE, ws.SALE_OBJECT_COD' +
        'E'
      '                from'
      '                  SALES ws'
      '                where'
      
        '                  (ws.SALE_BRANCH_CODE = :WASTING_SALE_BRANCH_CO' +
        'DE) and'
      '                  (ws.SALE_NO = :WASTING_SALE_NO)'
      '              )'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      ( (:HAS_WASTE_STATUS = 1) or'
      '        ( ( select'
      '              3 - Sign(Count(*))'
      '            from'
      '              MATERIAL_LIST_LINES mll2,'
      '              ML_MODEL_STAGES mlms,'
      '              MODEL_MOVEMENTS mm'
      '            where'
      
        '              (ml.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRANCH_' +
        'CODE) and'
      '              (ml.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and'
      ''
      
        '              (mll2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '              (mll2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '              (mlms.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '              (mlms.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE)' +
        ' and'
      ''
      '              (mm.TO_DEPT_CODE is not null) and'
      '              (mm.STORNO_EMPLOYEE_CODE is null)'
      '          ) = :HAS_WASTE_STATUS'
      '        )'
      '      ) and'
      ''
      
        '      -- FILTER_UNCOVERED_LINES_STATE>> 1-vsichki 2-neobezpechen' +
        'i 3-obezpecheni'
      '      ( (:FILTER_UNCOVERED_LINES_STATE = 1) or'
      ''
      '        ( (:FILTER_UNCOVERED_LINES_STATE = 2) and'
      '          (exists'
      '            ( select'
      '                1'
      '              from'
      '                MATERIAL_LIST_LINES mll,'
      '                TEMP_UNCOVERED_PSD tupsd'
      '              where'
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      
        '                (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_' +
        'CODE)'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (:FILTER_UNCOVERED_LINES_STATE = 3) and'
      '          (not exists'
      '            ( select'
      '                1'
      '              from'
      '                MATERIAL_LIST_LINES mll,'
      '                TEMP_UNCOVERED_PSD tupsd'
      '              where'
      
        '                (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      
        '                (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_' +
        'OBJECT_BRANCH_CODE) and'
      
        '                (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_' +
        'CODE)'
      '            )'
      '          )'
      '        )'
      '      ) and'
      ''
      '      -- IS_SALE_STATE>> 0-vsichki 1-pp 2-op'
      '      ( (:IS_SALE_STATE = 0) or'
      '        ( (:IS_SALE_STATE = 1) and'
      '          (s.SALE_ORDER_TYPE_CODE = 1) and'
      ''
      '          ( (:OWNER_COMPANY_CODE is null) or'
      '            (:OWNER_COMPANY_CODE = s.CLIENT_COMPANY_CODE) ) and'
      ''
      '          ( (:SALE_SHIPMENT_BEGIN_DATE is null) or'
      '            (s.SHIPMENT_DATE >= :SALE_SHIPMENT_BEGIN_DATE) ) and'
      ''
      '          ( (:SALE_SHIPMENT_END_DATE is null) or'
      '            (s.SHIPMENT_DATE <= :SALE_SHIPMENT_END_DATE) ) '
      '        ) or'
      '        ( (:IS_SALE_STATE = 2) and'
      '          (s.SALE_ORDER_TYPE_CODE = 3) and'
      ''
      '          ( (:OWNER_EMPLOYEE_CODE is null) or'
      '            (:OWNER_EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE) )'
      '        )'
      '      ) and'
      ''
      '      ( (:MODEL_DEVELOPMENT_TYPE_CODE is null) or'
      
        '        (s.MODEL_DEVELOPMENT_TYPE_CODE = :MODEL_DEVELOPMENT_TYPE' +
        '_CODE)'
      '      ) and'
      ''
      '      ( (:OKIDU_EMPLOYEE_CODE is null) or'
      '        (s.OKIDU_EMPLOYEE_CODE = :OKIDU_EMPLOYEE_CODE)'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_DEPTS tfd'
      '          where'
      '            (tfd.DEPT_CODE = s.PRODUCTION_DEPT_CODE)'
      '        )'
      '      ) and'
      ''
      ''
      '      ( (:ALL_FILTERED_DEPTS_2 = 1) or'
      '        exists('
      '          select /*+ORDERED*/'
      '            1'
      '          from'
      '            MATERIAL_LIST_LINES mll,'
      '            ML_MODEL_STAGES mlms,'
      '            MLMS_OPERATIONS mlmso'
      '          where'
      
        '            (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_COD' +
        'E) and'
      '            (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '            (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRANCH' +
        '_CODE) and'
      '            (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      
        '            (mlmso.MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '            (mlmso.MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'
      '            (mlmso.MLMS_OPERATION_VARIANT_NO >= 0) and'
      ''
      '            exists('
      '              select'
      '                1'
      '              from'
      '                TEMP_FILTERED_DEPTS_2 tfd2'
      '              where'
      '                (tfd2.DEPT_CODE = mlmso.DEPT_CODE)'
      '            )'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_3 = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_DEPTS_3 tfd3'
      '          where'
      '            (tfd3.DEPT_CODE = s.SHIPMENT_STORE_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:ALL_FILTERED_DEPTS_4 = 1) or'
      '        exists('
      '          select'
      '            1'
      '          from'
      '            TEMP_FILTERED_DEPTS_4 tfd4'
      '          where'
      '            (tfd4.DEPT_CODE = s.CONSUMER_DEPT_CODE)'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_PRODUCTION_WORKDAYS is null) or'
      '        ( ( select'
      '              Max(mlms.TOTAL_TREATMENT_WORKDAYS)'
      '            from'
      '              MATERIAL_LIST_LINES mll,'
      '              ML_MODEL_STAGES mlms'
      '            where'
      
        '              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_C' +
        'ODE) and'
      '              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '              (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '              (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '              (mll.ANNUL_EMPLOYEE_CODE is null)'
      '          ) >= :BEGIN_PRODUCTION_WORKDAYS'
      '        )'
      '      ) and'
      ''
      '      ( (:END_PRODUCTION_WORKDAYS is null) or'
      '        ( ( select'
      '              Max(mlms.TOTAL_TREATMENT_WORKDAYS)'
      '            from'
      '              MATERIAL_LIST_LINES mll,'
      '              ML_MODEL_STAGES mlms'
      '            where'
      
        '              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_C' +
        'ODE) and'
      '              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '              (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '              (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      ''
      '              (mll.ANNUL_EMPLOYEE_CODE is null)'
      '          ) <= :END_PRODUCTION_WORKDAYS'
      '        )'
      '      ) and'
      ''
      '      ( ( (:BEGIN_OP_DATE_DIFF is null) and'
      '          (:END_OP_DATE_DIFF is null) ) or'
      ''
      '        ( ( select'
      '              Coalesce('
      '                Max('
      '                  %COUNT_WORKDAYS['
      '                    ( select'
      '                        Min(mm.MM_DATE) + 1'
      '                      from'
      '                        MODEL_MOVEMENTS mm'
      '                      where'
      
        '                        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.' +
        'MLMS_OBJECT_BRANCH_CODE) and'
      
        '                        (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OB' +
        'JECT_CODE) and'
      '                        (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                        (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'
      '                    )~'
      '                    mlms.TREATMENT_BEGIN_DATE'
      '                  ]'
      '                ),'
      '                0'
      '              )'
      '            from'
      '              MATERIAL_LIST_LINES mll,'
      '              ML_MODEL_STAGES mlms'
      '            where'
      
        '              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_C' +
        'ODE) and'
      '              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '              (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BRAN' +
        'CH_CODE) and'
      '              (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE)'
      
        '          ) between Coalesce(To_Number(:BEGIN_OP_DATE_DIFF), -10' +
        '00000000) and Coalesce(To_Number(:END_OP_DATE_DIFF), 1000000000)'
      '        ) or'
      ''
      '        ( Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            ( select'
      '                -Max('
      '                  %COUNT_WORKDAYS['
      '                    (mlms.TREATMENT_END_DATE + 1)~'
      '                    case'
      '                      when (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '                           ( MiscUtils.LargeZero('
      '                               mll.LINE_DETAIL_TECH_QUANTITY -'
      '                               ( select'
      
        '                                   Coalesce(Sum(mm.DETAIL_TECH_Q' +
        'UANTITY), 0)'
      '                                 from'
      '                                   ML_MODEL_STAGES mlms2,'
      '                                   MODEL_MOVEMENTS mm'
      '                                 where'
      
        '                                   (mlms2.MLL_OBJECT_BRANCH_CODE' +
        ' = mlms.MLL_OBJECT_BRANCH_CODE) and'
      
        '                                   (mlms2.MLL_OBJECT_CODE = mlms' +
        '.MLL_OBJECT_CODE) and'
      
        '                                   (mlms2.ML_MODEL_STAGE_NO <= m' +
        'lms.ML_MODEL_STAGE_NO) and'
      
        '                                   (mm.FROM_MLMS_OBJECT_BRANCH_C' +
        'ODE = mlms2.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                                   (mm.FROM_MLMS_OBJECT_CODE = m' +
        'lms2.MLMS_OBJECT_CODE) and'
      
        '                                   (mm.TO_DEPT_CODE is not null)' +
        ' and'
      
        '                                   (mm.STORNO_EMPLOYEE_CODE is n' +
        'ull)'
      '                               ) -'
      '                               ( select'
      
        '                                   Coalesce(Sum(mm.DETAIL_TECH_Q' +
        'UANTITY), 0)'
      '                                 from'
      '                                   MODEL_MOVEMENTS mm'
      '                                 where'
      
        '                                   (mm.FROM_MLMS_OBJECT_BRANCH_C' +
        'ODE = mlms.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                                   (mm.FROM_MLMS_OBJECT_CODE = m' +
        'lms.MLMS_OBJECT_CODE) and'
      '                                   (mm.TO_DEPT_CODE is null) and'
      
        '                                   (mm.STORNO_EMPLOYEE_CODE is n' +
        'ull)'
      '                               )'
      '                             ) > 0'
      '                           ) then ContextDate'
      '                    else'
      '                      ( select'
      '                          Max(mm.MM_DATE)'
      '                        from'
      '                          MODEL_MOVEMENTS mm'
      '                        where'
      
        '                          (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlm' +
        's.MLMS_OBJECT_BRANCH_CODE) and'
      
        '                          (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_' +
        'OBJECT_CODE) and'
      '                          (mm.STORNO_EMPLOYEE_CODE is null) and'
      '                          (mm.MM_DATE > mlms.TREATMENT_END_DATE)'
      '                      )'
      '                    end'
      '                  ]'
      '                 )'
      '              from'
      '                MATERIAL_LIST_LINES mll,'
      '                ML_MODEL_STAGES mlms'
      '              where'
      
        '                (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '                (mlms.MLL_OBJECT_BRANCH_CODE = mll.MLL_OBJECT_BR' +
        'ANCH_CODE) and'
      '                (mlms.MLL_OBJECT_CODE = mll.MLL_OBJECT_CODE) and'
      '                (mlms.TREATMENT_END_DATE < ContextDate) and'
      '                (mlms.OUTGOING_WORKDAYS > 0)'
      '            )'
      
        '          ) between Coalesce(To_Number(:BEGIN_OP_DATE_DIFF), -10' +
        '00000000) and Coalesce(To_Number(:END_OP_DATE_DIFF), 1000000000)'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_PRODUCTION_START_DATE_DIFF is null) or'
      '        ( Nvl2('
      '            s.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            ( select'
      
        '                Trunc(s.PRODUCTION_START_PLAN_DATE - Coalesce(Mi' +
        'n(sd.STORE_DEAL_DATE), s.FINISH_DATE, ContextDate))'
      '              from'
      '                MATERIAL_LIST_LINES mll,'
      '                STORE_DEALS sd'
      '              where'
      
        '                (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '                (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      '                (sd.IN_OUT = -1) and'
      '                (sd.BND_PROCESS_CODE <> 110) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null)'
      '            )'
      '          ) >= :BEGIN_PRODUCTION_START_DATE_DIFF'
      '        )'
      '      ) and'
      ''
      '      ( (:END_PRODUCTION_START_DATE_DIFF is null) or'
      '        ( Nvl2('
      '            s.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            ( select'
      
        '                Trunc(s.PRODUCTION_START_PLAN_DATE - Coalesce(Mi' +
        'n(sd.STORE_DEAL_DATE), s.FINISH_DATE, ContextDate))'
      '              from'
      '                MATERIAL_LIST_LINES mll,'
      '                STORE_DEALS sd'
      '              where'
      
        '                (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      
        '                (mll.MLL_OBJECT_BRANCH_CODE = sd.BND_PROCESS_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '                (mll.MLL_OBJECT_CODE = sd.BND_PROCESS_OBJECT_COD' +
        'E) and'
      '                (sd.IN_OUT = -1) and'
      '                (sd.BND_PROCESS_CODE <> 110) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null)'
      '            )'
      '          ) <= :END_PRODUCTION_START_DATE_DIFF'
      '        )'
      '      ) and'
      ''
      '      ( (:BEGIN_ENTER_SH_STORE_DATE_DIFF is null) or'
      '        ( Nvl2('
      '            s.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            ( select'
      
        '                s.ENTER_SH_STORE_PLAN_END_DATE - Coalesce(Max(sd' +
        '.STORE_DEAL_DATE), s.FINISH_DATE, ContextDate)'
      '              from'
      '                STORE_DEALS sd'
      '              where'
      
        '                (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE' +
        ') and'
      '                (sd.IN_OUT = 1) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '                ( ( select'
      
        '                      MiscUtils.LargeZero(psd.REMAINING_QUANTITY' +
        ')'
      '                    from'
      '                      PLANNED_STORE_DEALS psd'
      '                    where'
      
        '                      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                      (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJE' +
        'CT_CODE) and'
      '                      (psd.IN_OUT = 1)'
      '                  ) <= 0'
      '                )'
      '            )'
      '          ) >= :BEGIN_ENTER_SH_STORE_DATE_DIFF'
      '        )'
      '      ) and'
      ''
      '      ( (:END_ENTER_SH_STORE_DATE_DIFF is null) or'
      '        ( Nvl2('
      '            s.ANNUL_EMPLOYEE_CODE,'
      '            null,'
      '            ( select'
      
        '                s.ENTER_SH_STORE_PLAN_END_DATE - Coalesce(Max(sd' +
        '.STORE_DEAL_DATE), s.FINISH_DATE, ContextDate)'
      '              from'
      '                STORE_DEALS sd'
      '              where'
      
        '                (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '                (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE' +
        ') and'
      '                (sd.IN_OUT = 1) and'
      '                (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '                ( ( select'
      
        '                      MiscUtils.LargeZero(psd.REMAINING_QUANTITY' +
        ')'
      '                    from'
      '                      PLANNED_STORE_DEALS psd'
      '                    where'
      
        '                      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SA' +
        'LE_OBJECT_BRANCH_CODE) and'
      
        '                      (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJE' +
        'CT_CODE) and'
      '                      (psd.IN_OUT = 1)'
      '                  ) <= 0'
      '                )'
      '            )'
      '          ) <= :END_ENTER_SH_STORE_DATE_DIFF'
      '        )'
      '      ) and'
      ''
      '      ( ( select'
      '            p.PRIORITY_NO'
      '          from'
      '            SALE_GROUPS sg,'
      '            PRIORITIES p'
      '          where'
      
        '            (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJ' +
        'ECT_BRANCH_CODE) and'
      
        '            (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_COD' +
        'E) and'
      '            (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '        ) between'
      '          Coalesce('
      '            ( select'
      '                Max(p.PRIORITY_NO)'
      '              from'
      '                PRIORITIES p'
      '              where'
      '                (p.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '            ), 0) and'
      '          Coalesce('
      '            ( select'
      '                Max(p.PRIORITY_NO)'
      '              from'
      '                PRIORITIES p'
      '              where'
      '                (p.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '            ), 1000000)'
      '      ) and'
      ''
      '      ( ( (s.CONSUME_BEGIN_DATE is null) and'
      '          (:MIN_CONSUME_DATE_DIFF is null) and'
      '          (:MAX_CONSUME_DATE_DIFF is null)'
      '        ) or'
      '        ( ( select'
      
        '              s.CONSUME_BEGIN_DATE - Coalesce(Max(sd.STORE_DEAL_' +
        'DATE), s.FINISH_DATE, ContextDate)'
      '            from'
      '              STORE_DEALS sd'
      '            where'
      
        '              (sd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT' +
        '_BRANCH_CODE) and'
      
        '              (sd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) ' +
        'and'
      '              (sd.IN_OUT = 1) and'
      '              (sd.STORNO_EMPLOYEE_CODE is null) and'
      ''
      '              ( ( select'
      '                    MiscUtils.LargeZero(psd.REMAINING_QUANTITY)'
      '                  from'
      '                    PLANNED_STORE_DEALS psd'
      '                  where'
      
        '                    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                    (psd.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT' +
        '_CODE) and'
      '                    (psd.IN_OUT = 1)'
      '                ) <= 0'
      '              )'
      
        '          ) between Coalesce(To_Number(:MIN_CONSUME_DATE_DIFF), ' +
        '-999999999) and Coalesce(To_Number(:MAX_CONSUME_DATE_DIFF), 9999' +
        '99999)'
      '        )'
      '      ) and'
      ''
      '      ( (:DAMAGES_STATE_CODE is null) or'
      '        ( (:DAMAGES_STATE_CODE = -1) and'
      '          ( ( select'
      '                Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '              from'
      '                MATERIAL_LIST_LINES mll,'
      '                EXCEPT_EVENT_DAMAGES eed'
      '              where'
      
        '                (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH' +
        '_CODE) and'
      '                (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '                (mll.MLL_OBJECT_BRANCH_CODE = eed.MLL_OBJECT_BRA' +
        'NCH_CODE) and'
      '                (mll.MLL_OBJECT_CODE = eed.MLL_OBJECT_CODE)'
      '            ) is null'
      '          )'
      '        ) or'
      '        ( ( select'
      '              Max(%EXCEPT_EVENT_DAMAGE_STATE[eed])'
      '            from'
      '              MATERIAL_LIST_LINES mll,'
      '              EXCEPT_EVENT_DAMAGES eed'
      '            where'
      
        '              (mll.ML_OBJECT_BRANCH_CODE = ml.ML_OBJECT_BRANCH_C' +
        'ODE) and'
      '              (mll.ML_OBJECT_CODE = ml.ML_OBJECT_CODE) and'
      ''
      
        '              (mll.MLL_OBJECT_BRANCH_CODE = eed.MLL_OBJECT_BRANC' +
        'H_CODE) and'
      '              (mll.MLL_OBJECT_CODE = eed.MLL_OBJECT_CODE)'
      '          ) = :DAMAGES_STATE_CODE'
      '        )'
      '      ) and'
      ''
      '      %IF_IS_ACTIVE and'
      '      %IF_IS_UNARCHIVED_MODEL and'
      '      %IF_IS_COMPENSATOR_FOR_A_WASTING_SALE'
      '    )'
      '  )'
      ''
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_SALE_OBJECT_TREE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'ML_STATE[s~ml]'
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
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJECT_' +
          'CODE]'
        ParamType = ptInput
        Value = 'to_date('#39'2007-01-01'#39')'
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
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'          ( select'#13#10'              Min(mm.MM_DAT' +
          'E) + 1'#13#10'            from'#13#10'              MODEL_MOVEMENTS mm'#13#10'    ' +
          '        where'#13#10'              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = ' +
          'mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'              (mm.FROM_MLMS_O' +
          'BJECT_CODE = mlms.MLMS_OBJECT_CODE) and'#13#10'              (mm.STORN' +
          'O_EMPLOYEE_CODE is null) and'#13#10'              (mm.MM_DATE < mlms.T' +
          'REATMENT_BEGIN_DATE)'#13#10'          )~'#13#10'          mlms.TREATMENT_BEG' +
          'IN_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'            (mlms.TREATMENT_END_DATE + 1)~'#13#10'   ' +
          '         case'#13#10'              when (ml.CLOSE_EMPLOYEE_CODE is nul' +
          'l) and'#13#10'                   ( MiscUtils.LargeZero('#13#10'             ' +
          '          mll.LINE_DETAIL_TECH_QUANTITY -'#13#10'                     ' +
          '  ( select'#13#10'                           Coalesce(Sum(mm.DETAIL_TE' +
          'CH_QUANTITY), 0)'#13#10'                         from'#13#10'               ' +
          '            ML_MODEL_STAGES mlms2,'#13#10'                           M' +
          'ODEL_MOVEMENTS mm'#13#10'                         where'#13#10'             ' +
          '              (mlms2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BR' +
          'ANCH_CODE) and'#13#10'                           (mlms2.MLL_OBJECT_COD' +
          'E = mlms.MLL_OBJECT_CODE) and'#13#10'                           (mlms2' +
          '.ML_MODEL_STAGE_NO <= mlms.ML_MODEL_STAGE_NO) and'#13#10'             ' +
          '              (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJE' +
          'CT_BRANCH_CODE) and'#13#10'                           (mm.FROM_MLMS_OB' +
          'JECT_CODE = mlms2.MLMS_OBJECT_CODE) and'#13#10'                       ' +
          '    (mm.TO_DEPT_CODE is not null) and'#13#10'                         ' +
          '  (mm.STORNO_EMPLOYEE_CODE is null)'#13#10'                       ) -'#13 +
          #10'                       ( select'#13#10'                           Coa' +
          'lesce(Sum(mm.DETAIL_TECH_QUANTITY), 0)'#13#10'                        ' +
          ' from'#13#10'                           MODEL_MOVEMENTS mm'#13#10'          ' +
          '               where'#13#10'                           (mm.FROM_MLMS_O' +
          'BJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10'         ' +
          '                  (mm.FROM_MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_C' +
          'ODE) and'#13#10'                           (mm.TO_DEPT_CODE is null) a' +
          'nd'#13#10'                           (mm.STORNO_EMPLOYEE_CODE is null)' +
          #13#10'                       )'#13#10'                     ) > 0'#13#10'        ' +
          '           ) then ContextDate'#13#10'            else'#13#10'              (' +
          ' select'#13#10'                  Max(mm.MM_DATE)'#13#10'                from' +
          #13#10'                  MODEL_MOVEMENTS mm'#13#10'                where'#13#10' ' +
          '                 (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OB' +
          'JECT_BRANCH_CODE) and'#13#10'                  (mm.FROM_MLMS_OBJECT_CO' +
          'DE = mlms.MLMS_OBJECT_CODE) and'#13#10'                  (mm.STORNO_EM' +
          'PLOYEE_CODE is null) and'#13#10'                  (mm.MM_DATE > mlms.T' +
          'REATMENT_END_DATE)'#13#10'              )'#13#10'            end'#13#10'          ' +
          ']'
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
        Name = 'EXCEPT_EVENT_DAMAGE_STATE[eed]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'SALES_TABLE_OR_TREE'
        ParamType = ptInput
        Value = 'SALES'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'                    ( select'#13#10'                 ' +
          '       Min(mm.MM_DATE) + 1'#13#10'                      from'#13#10'        ' +
          '                MODEL_MOVEMENTS mm'#13#10'                      where'#13 +
          #10'                        (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms' +
          '.MLMS_OBJECT_BRANCH_CODE) and'#13#10'                        (mm.FROM_' +
          'MLMS_OBJECT_CODE = mlms.MLMS_OBJECT_CODE) and'#13#10'                 ' +
          '       (mm.STORNO_EMPLOYEE_CODE is null) and'#13#10'                  ' +
          '      (mm.MM_DATE < mlms.TREATMENT_BEGIN_DATE)'#13#10'                ' +
          '    )~'#13#10'                    mlms.TREATMENT_BEGIN_DATE'#13#10'         ' +
          '         ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'COUNT_WORKDAYS['#13#10'                    (mlms.TREATMENT_END_DATE + ' +
          '1)~'#13#10'                    case'#13#10'                      when (ml.CL' +
          'OSE_EMPLOYEE_CODE is null) and'#13#10'                           ( Mis' +
          'cUtils.LargeZero('#13#10'                               mll.LINE_DETAI' +
          'L_TECH_QUANTITY -'#13#10'                               ( select'#13#10'    ' +
          '                               Coalesce(Sum(mm.DETAIL_TECH_QUANT' +
          'ITY), 0)'#13#10'                                 from'#13#10'               ' +
          '                    ML_MODEL_STAGES mlms2,'#13#10'                    ' +
          '               MODEL_MOVEMENTS mm'#13#10'                             ' +
          '    where'#13#10'                                   (mlms2.MLL_OBJECT_' +
          'BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'#13#10'                ' +
          '                   (mlms2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE' +
          ') and'#13#10'                                   (mlms2.ML_MODEL_STAGE_' +
          'NO <= mlms.ML_MODEL_STAGE_NO) and'#13#10'                             ' +
          '      (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms2.MLMS_OBJECT_BRANC' +
          'H_CODE) and'#13#10'                                   (mm.FROM_MLMS_OB' +
          'JECT_CODE = mlms2.MLMS_OBJECT_CODE) and'#13#10'                       ' +
          '            (mm.TO_DEPT_CODE is not null) and'#13#10'                 ' +
          '                  (mm.STORNO_EMPLOYEE_CODE is null)'#13#10'           ' +
          '                    ) -'#13#10'                               ( select' +
          #13#10'                                   Coalesce(Sum(mm.DETAIL_TECH' +
          '_QUANTITY), 0)'#13#10'                                 from'#13#10'         ' +
          '                          MODEL_MOVEMENTS mm'#13#10'                  ' +
          '               where'#13#10'                                   (mm.FRO' +
          'M_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE) and'#13#10' ' +
          '                                  (mm.FROM_MLMS_OBJECT_CODE = ml' +
          'ms.MLMS_OBJECT_CODE) and'#13#10'                                   (mm' +
          '.TO_DEPT_CODE is null) and'#13#10'                                   (' +
          'mm.STORNO_EMPLOYEE_CODE is null)'#13#10'                              ' +
          ' )'#13#10'                             ) > 0'#13#10'                        ' +
          '   ) then ContextDate'#13#10'                    else'#13#10'               ' +
          '       ( select'#13#10'                          Max(mm.MM_DATE)'#13#10'    ' +
          '                    from'#13#10'                          MODEL_MOVEME' +
          'NTS mm'#13#10'                        where'#13#10'                         ' +
          ' (mm.FROM_MLMS_OBJECT_BRANCH_CODE = mlms.MLMS_OBJECT_BRANCH_CODE' +
          ') and'#13#10'                          (mm.FROM_MLMS_OBJECT_CODE = mlm' +
          's.MLMS_OBJECT_CODE) and'#13#10'                          (mm.STORNO_EM' +
          'PLOYEE_CODE is null) and'#13#10'                          (mm.MM_DATE ' +
          '> mlms.TREATMENT_END_DATE)'#13#10'                      )'#13#10'           ' +
          '         end'#13#10'                  ]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_ACTIVE'
        ParamType = ptInput
        Value = '(0=0)'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_UNARCHIVED_MODEL'
        ParamType = ptInput
        Value = '(0=0)'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_COMPENSATOR_FOR_A_WASTING_SALE'
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
        DataType = ftFloat
        Name = 'SHOW_UNCOVERED_LINES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTION_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_OPERATION_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_SHIPMENT_STORES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_CONSUMER_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRODUCTION_WORKDAYS_PERCENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRODUCTION_WORKDAYS_PERCENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GET_SALE_OBJECT_TREE'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 168
    Top = 296
    object qryProductionOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductionOrdersSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductionOrdersML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryProductionOrdersML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryProductionOrdersSALE_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFICATION'
      Size = 81
    end
    object qryProductionOrdersSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qryProductionOrdersSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object qryProductionOrdersML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object qryProductionOrdersPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryProductionOrdersPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryProductionOrdersPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryProductionOrdersWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryProductionOrdersWORK_PRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryProductionOrdersOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object qryProductionOrdersOWNER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OWNER_COMPANY_CODE'
    end
    object qryProductionOrdersOWNER_NAME: TAbmesWideStringField
      FieldName = 'OWNER_NAME'
      Size = 41
    end
    object qryProductionOrdersPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductionOrdersPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryProductionOrdersPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryProductionOrdersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryProductionOrdersPRODUCT_OTHER_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_OTHER_NAME'
      Size = 250
    end
    object qryProductionOrdersMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryProductionOrdersMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryProductionOrdersQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryProductionOrdersQUANTITY_IN: TAbmesFloatField
      FieldName = 'QUANTITY_IN'
    end
    object qryProductionOrdersQUANTITY_DIFF: TAbmesFloatField
      FieldName = 'QUANTITY_DIFF'
    end
    object qryProductionOrdersQUANTITY_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'QUANTITY_DEVIATION_PERCENT'
    end
    object qryProductionOrdersENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
    end
    object qryProductionOrdersENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
    end
    object qryProductionOrdersSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
    end
    object qryProductionOrdersUNCOVERED_LINES: TAbmesFloatField
      FieldName = 'UNCOVERED_LINES'
    end
    object qryProductionOrdersMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object qryProductionOrdersMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryProductionOrdersCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryProductionOrdersCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryProductionOrdersCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryProductionOrdersCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryProductionOrdersCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryProductionOrdersCHANGE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryProductionOrdersCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryProductionOrdersCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryProductionOrdersFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qryProductionOrdersFINISH_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'FINISH_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryProductionOrdersFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qryProductionOrdersFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qryProductionOrdersANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryProductionOrdersANNUL_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'ANNUL_EMPLOYEE_ABBREV'
      Size = 49
    end
    object qryProductionOrdersANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryProductionOrdersANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryProductionOrdersLIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_DATE'
    end
    object qryProductionOrdersLIMITING_TIME: TAbmesSQLTimeStampField
      FieldName = 'LIMITING_TIME'
    end
    object qryProductionOrdersLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object qryProductionOrdersLIMITING_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'LIMITING_EMPLOYEE_NAME'
      Size = 49
    end
    object qryProductionOrdersMODEL_CLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CLOSE_DATE'
    end
    object qryProductionOrdersMODEL_CLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'MODEL_CLOSE_TIME'
    end
    object qryProductionOrdersMODEL_CLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MODEL_CLOSE_EMPLOYEE_CODE'
    end
    object qryProductionOrdersMODEL_CLOSE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_CLOSE_EMPLOYEE_NAME'
      Size = 49
    end
    object qryProductionOrdersIS_SALE: TAbmesFloatField
      FieldName = 'IS_SALE'
    end
    object qryProductionOrdersMIN_PRODUCT_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_PRODUCT_NEED_BEGIN_DATE'
    end
    object qryProductionOrdersIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
    end
    object qryProductionOrdersHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
    end
    object qryProductionOrdersSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      Size = 46
    end
    object qryProductionOrdersPRODUCTION_START_DATE_DIFF: TAbmesFloatField
      FieldName = 'PRODUCTION_START_DATE_DIFF'
    end
    object qryProductionOrdersENTER_SH_STORE_DATE_DIFF: TAbmesFloatField
      FieldName = 'ENTER_SH_STORE_DATE_DIFF'
    end
    object qryProductionOrdersINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object qryProductionOrdersPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object qryProductionOrdersPRODUCTION_WORKDAYS_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PRODUCTION_WORKDAYS_PERCENT'
      Calculated = True
    end
    object qryProductionOrdersMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
    end
    object qryProductionOrdersMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
    end
    object qryProductionOrdersCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryProductionOrdersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryProductionOrdersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryProductionOrdersPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryProductionOrdersPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryProductionOrdersPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object qryProductionOrdersSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
    end
    object qryProductionOrdersCONSUME_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_BEGIN_DATE'
    end
    object qryProductionOrdersCONSUME_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'CONSUME_END_DATE'
    end
    object qryProductionOrdersCONSUME_DATE_DIFF: TAbmesFloatField
      FieldName = 'CONSUME_DATE_DIFF'
      ProviderFlags = []
    end
    object qryProductionOrdersDAMAGES_STATE_CODE: TAbmesFloatField
      FieldName = 'DAMAGES_STATE_CODE'
    end
    object qryProductionOrdersHAS_WASTE_COMPENSATORS: TAbmesFloatField
      FieldName = 'HAS_WASTE_COMPENSATORS'
      ProviderFlags = []
    end
    object qryProductionOrdersWASTING_SALE_OBJ_PK: TAbmesWideStringField
      FieldName = 'WASTING_SALE_OBJ_PK'
      Size = 81
    end
    object qryProductionOrdersSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      Size = 81
    end
    object qryProductionOrdersMIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_ORDER_QUANTITY'
    end
    object qryProductionOrdersMAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_ORDER_QUANTITY'
    end
    object qryProductionOrdersBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
    end
    object qryProductionOrdersWASTING_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'WASTING_ORDER_IDENTIFIER'
      Size = 188
    end
    object qryProductionOrdersQUANTITY_INTERVAL_PCT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'QUANTITY_INTERVAL_PCT'
      Calculated = True
    end
  end
  object prvProductionOrders: TDataSetProvider
    DataSet = qryProductionOrders
    OnGetData = prvProductionOrdersGetData
    Left = 168
    Top = 248
  end
  object prvModelsInvestedValues: TDataSetProvider
    DataSet = qryModelsInvestedValues
    Left = 288
    Top = 248
  end
  object qryModelsInvestedValues: TAbmesSQLQuery
    BeforeOpen = qryModelsInvestedValuesBeforeOpen
    AfterClose = qryModelsInvestedValuesAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_SINGLE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_SUM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
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
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ML_STATE_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ML_STATE_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  x.ML_OBJECT_BRANCH_CODE,'
      '  x.ML_OBJECT_CODE,'
      '  x.IS_SALE,'
      '  x.ML_STATE_CODE,'
      '  x.SALE_IDENTIFICATION,'
      '  x.PRIORITY_CODE,'
      '  x.PRIORITY_FULL_NAME,'
      '  x.WORK_PRIORITY_FULL_NAME,'
      '  x.OWNER_NAME,'
      '  x.PRODUCT_CODE,'
      '  x.PRODUCT_NAME,'
      '  x.PRODUCT_NO,'
      '  x.PRODUCT_OTHER_NAME,'
      '  x.QUANTITY,'
      '  x.MEASURE_CODE,'
      '  x.MEASURE_ABBREV,'
      '  x.ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '  x.ENTER_SH_STORE_PLAN_END_DATE,'
      ''
      
        '  (MiscUtils.GetNamedValue(x.INVESTED_VALUE, '#39'VALUE'#39') / Decode(:' +
        'INVESTED_VALUE_SINGLE, 0, 1, x.MANUFACTURE_QUANTITY)) as INVESTE' +
        'D_VALUE,'
      
        '  MiscUtils.GetNamedValue(x.INVESTED_VALUE, '#39'IS_INCOMPLETE'#39') as ' +
        'INVESTED_VALUE_IS_INCOMPLETE,'
      ''
      '  x.IS_WASTE_COMPENSATOR,'
      '  x.HAS_WASTE,'
      '  x.HAS_WASTE_COMPENSATORS,'
      '  x.CONSUMER_DEPT_IDENTIFIER,'
      '  x.SALE_OBJECT_PK,'
      '  x.WASTING_SALE_OBJ_PK,'
      '  x.SALE_OBJECT_BRANCH_CODE,'
      '  x.SALE_OBJECT_CODE'
      ''
      'from'
      '  ( with s_tree as'
      '      ( select'
      '          *'
      '        from'
      '          ( select'
      '              *'
      '            from'
      '              SALES s2'
      '            start with'
      '              (%GET_SALE_OBJECT_TREE = 1) and'
      
        '              ( (s2.SALE_OBJECT_BRANCH_CODE, s2.SALE_OBJECT_CODE' +
        ') ='
      '                ( select'
      '                    s4.SALE_OBJECT_BRANCH_CODE,'
      '                    s4.SALE_OBJECT_CODE'
      '                  from'
      '                    ( select'
      '                        s3.SALE_OBJECT_BRANCH_CODE,'
      '                        s3.SALE_OBJECT_CODE,'
      '                        s3.WASTING_SALE_OBJ_BRANCH_CODE'
      '                      from'
      '                        SALES s3'
      '                      start with'
      '                        (%GET_SALE_OBJECT_TREE = 1) and'
      
        '                        (s3.SALE_OBJECT_BRANCH_CODE = :TREE_SALE' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                        (s3.SALE_OBJECT_CODE = :TREE_SALE_OBJECT' +
        '_CODE)'
      '                      connect by'
      
        '                        (s3.SALE_OBJECT_BRANCH_CODE = prior s3.W' +
        'ASTING_SALE_OBJ_BRANCH_CODE) and'
      
        '                        (s3.SALE_OBJECT_CODE = prior s3.WASTING_' +
        'SALE_OBJ_CODE)'
      '                    ) s4'
      '                  where'
      '                    (%GET_SALE_OBJECT_TREE = 1) and'
      '                    (s4.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '                )'
      '              )'
      '            connect by'
      
        '              (s2.WASTING_SALE_OBJ_BRANCH_CODE = prior s2.SALE_O' +
        'BJECT_BRANCH_CODE) and'
      
        '              (s2.WASTING_SALE_OBJ_CODE = prior s2.SALE_OBJECT_C' +
        'ODE)'
      '          ) s5'
      '        where'
      '          (%GET_SALE_OBJECT_TREE = 1) and'
      '          (s5.ANNUL_EMPLOYEE_CODE is null)'
      '      )'
      '    select'
      '      /*+ INDEX(ml) INDEX(s) */'
      '      ml.ML_OBJECT_BRANCH_CODE,'
      '      ml.ML_OBJECT_CODE,'
      ''
      '      Decode(s.SALE_ORDER_TYPE_CODE, 1, 1, 0) as IS_SALE,'
      ''
      '      %ML_STATE[s~ml] as ML_STATE_CODE,'
      ''
      '      ( ('
      '          select'
      '            pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '          from'
      '            PRODUCTION_ORDER_TYPES pot'
      '          where'
      
        '            (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER' +
        '_TYPE_CODE)'
      '        ) || '#39'/'#39' ||'
      '        ( select'
      '            To_Char(d.CUSTOM_CODE)'
      '          from'
      '            DEPTS d'
      '          where'
      '            (s.SALE_BRANCH_CODE = d.DEPT_CODE)'
      '        ) ||'
      '        '#39'/'#39' || To_Char(s.SALE_NO) || '#39'/'#39' ||'
      '        ( select'
      '            st.SALE_TYPE_ABBREV'
      '          from'
      '            SALE_TYPES st'
      '          where'
      '            (s.SALE_TYPE_CODE = st.SALE_TYPE_CODE)'
      '        )'
      '      ) as SALE_IDENTIFICATION,'
      ''
      '      ( select'
      '          sg.PRIORITY_CODE'
      '        from'
      '          SALE_GROUPS sg'
      '        where'
      
        '          (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      '          (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '      ) as PRIORITY_CODE,'
      ''
      '      ( select'
      '          (p.PRIORITY_NO || '#39'   '#39' || p.PRIORITY_NAME)'
      '        from'
      '          SALE_GROUPS sg,'
      '          PRIORITIES p'
      '        where'
      
        '          (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '          (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)' +
        ' and'
      '          (sg.PRIORITY_CODE = p.PRIORITY_CODE)'
      '      ) as PRIORITY_FULL_NAME,'
      ''
      '      ( select'
      
        '          (wp.WORK_PRIORITY_NO || '#39'   '#39' || wp.WORK_PRIORITY_NAME' +
        ')'
      '        from'
      '          WORK_PRIORITIES wp'
      '        where'
      '          (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '      ) as WORK_PRIORITY_FULL_NAME,'
      ''
      '      Decode('
      '        s.SALE_ORDER_TYPE_CODE,'
      '        3,'
      '        ( select'
      '            (oe.FIRST_NAME || '#39' '#39' || oe.LAST_NAME)'
      '          from'
      '            EMPLOYEES oe'
      '          where'
      '            (s.MANAGER_EMPLOYEE_CODE = oe.EMPLOYEE_CODE)'
      '        ),'
      '        ( select'
      '            c.SHORT_NAME'
      '          from'
      '            COMPANIES c'
      '          where'
      '            (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '        )'
      '      ) as OWNER_NAME,'
      ''
      '      p.PRODUCT_CODE,'
      '      p.NAME as PRODUCT_NAME,'
      '      p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      
        '      %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_COD' +
        'E~s.CLIENT_COMPANY_CODE~p] as PRODUCT_OTHER_NAME,'
      ''
      '      s.QUANTITY,'
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
      '      s.ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '      s.ENTER_SH_STORE_PLAN_END_DATE,'
      ''
      '      ( select'
      '          ModelUtils.ModelInvestedValue2('
      '            ml.ML_OBJECT_BRANCH_CODE, ml.ML_OBJECT_CODE,'
      
        '            :INVESTED_VALUE_LEVEL, :INVESTED_VALUE_SUM, :INVESTE' +
        'D_VALUE_TYPE, :CURRENCY_CODE'
      '          )'
      '        from'
      '          DUAL'
      '      ) as INVESTED_VALUE,'
      ''
      '      s.MANUFACTURE_QUANTITY,'
      ''
      
        '      Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COM' +
        'PENSATOR,'
      ''
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          SALES ws'
      '        where'
      
        '          (ws.WASTING_SALE_OBJ_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '          (ws.WASTING_SALE_OBJ_CODE = s.SALE_OBJECT_CODE)'
      '      ) as HAS_WASTE_COMPENSATORS,'
      ''
      '      ( select'
      '          Sign(Count(*))'
      '        from'
      '          MATERIAL_LIST_LINES mll2,'
      '          ML_MODEL_STAGES mlms,'
      '          MODEL_MOVEMENTS mm'
      '        where'
      
        '          (ml.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRANCH_CODE' +
        ') and'
      '          (ml.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and'
      ''
      
        '          (mll2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_' +
        'CODE) and'
      '          (mll2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '          (mlms.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (mlms.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) and'
      ''
      '          (mm.TO_DEPT_CODE is not null) and'
      '          (mm.STORNO_EMPLOYEE_CODE is null)'
      '      ) as HAS_WASTE,'
      ''
      '      ( select'
      
        '          (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETT' +
        'ER) as DEPT_IDENTIFIER'
      '        from'
      '          DEPTS d,'
      '          DEPT_TYPES dt'
      '        where'
      '          (d.DEPT_CODE = s.CONSUMER_DEPT_CODE) and'
      '          (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE)'
      '      ) as CONSUMER_DEPT_IDENTIFIER,'
      ''
      
        '      To_Char(s.SALE_OBJECT_BRANCH_CODE) || '#39';'#39' || To_Char(s.SAL' +
        'E_OBJECT_CODE) as SALE_OBJECT_PK,'
      ''
      '      Nvl2('
      '        s.WASTING_SALE_OBJ_CODE,'
      
        '        To_Char(s.WASTING_SALE_OBJ_BRANCH_CODE) || '#39';'#39' || To_Cha' +
        'r(s.WASTING_SALE_OBJ_CODE),'
      '        null'
      '      ) as WASTING_SALE_OBJ_PK,'
      ''
      '      s.SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE'
      ''
      '    from'
      '      %SALES_TABLE_OR_TREE s,'
      '      PRODUCTION_ORDER_TYPES pot,'
      '      MATERIAL_LISTS ml,'
      '      PRODUCTS p'
      ''
      '    where'
      
        '      -- za da byde spomenato s_tree. inache kogato e SALES wmes' +
        'to s_tree rewe'
      '      ( (1 = 1) or'
      '        (exists'
      '          ( select'
      '              1'
      '            from'
      '              s_tree'
      '          )'
      '        )'
      '      ) and'
      ''
      
        '      (s.PRODUCTION_ORDER_TYPE_CODE = pot.PRODUCTION_ORDER_TYPE_' +
        'CODE) and'
      ''
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      ''
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '      ( (%GET_SALE_OBJECT_TREE = 1) or'
      ''
      '        ( ( (:PRODUCTION_ORDER_BASE_TYPE_CODE is null) or'
      '            (:PRODUCTION_ORDER_BASE_TYPE_CODE = 0) or'
      
        '            (pot.PROD_ORDER_BASE_TYPE_CODE = :PRODUCTION_ORDER_B' +
        'ASE_TYPE_CODE)'
      '          ) and'
      ''
      '          ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      '            (:PRODUCTION_ORDER_TYPE_CODE = 0) or'
      
        '            (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TY' +
        'PE_CODE)'
      '          ) and'
      ''
      
        '          ( ( (%ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_COD' +
        'E~ ml.ML_OBJECT_CODE] is null) and'
      '              (:PROD_START_PLAN_BEGIN_DATE is null) and'
      '              (:PROD_START_PLAN_END_DATE is null)'
      '            ) or'
      ''
      '            ( ( (:PROD_START_PLAN_BEGIN_DATE is null) or'
      
        '                (%ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_C' +
        'ODE~ ml.ML_OBJECT_CODE] >= :PROD_START_PLAN_BEGIN_DATE)'
      '              ) and'
      '              ( (:PROD_START_PLAN_END_DATE is null) or'
      
        '                (%ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_C' +
        'ODE~ ml.ML_OBJECT_CODE] <= :PROD_START_PLAN_END_DATE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:SALE_BRANCH_CODE is null ) or'
      '            (:SALE_BRANCH_CODE = s.SALE_BRANCH_CODE)'
      '          ) and'
      ''
      '          ( (:SALE_TYPE_CODE is null) or'
      '            (:SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '          ) and'
      ''
      '          ( (:SALE_NO is null) or'
      '            (:SALE_NO = s.SALE_NO)'
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
      
        '          (%ML_STATE[s~ml] between :MIN_ML_STATE_CODE and :MAX_M' +
        'L_STATE_CODE) and'
      ''
      '          ( (:ENTER_SH_STORE_BEGIN_DATE is null) or'
      
        '            (s.ENTER_SH_STORE_PLAN_BEGIN_DATE >= :ENTER_SH_STORE' +
        '_BEGIN_DATE) ) and'
      ''
      '          ( (:ENTER_SH_STORE_END_DATE is null) or'
      
        '            (s.ENTER_SH_STORE_PLAN_BEGIN_DATE <= :ENTER_SH_STORE' +
        '_END_DATE) ) and'
      ''
      '          ( (:IS_WASTE_COMPENSATOR_STATUS = 1) or'
      ''
      '            ( (:IS_WASTE_COMPENSATOR_STATUS = 2) and'
      '              (s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '            ) or'
      ''
      '            ( (:IS_WASTE_COMPENSATOR_STATUS = 3) and'
      '              (s.WASTING_SALE_OBJ_BRANCH_CODE is not null) and'
      ''
      '              ( ( (:WASTING_SALE_BRANCH_CODE is null) and'
      '                  (:WASTING_SALE_NO is null)'
      '                ) or'
      
        '                ( (s.WASTING_SALE_OBJ_BRANCH_CODE, s.WASTING_SAL' +
        'E_OBJ_CODE) ='
      '                  ( select'
      
        '                      ws.SALE_OBJECT_BRANCH_CODE, ws.SALE_OBJECT' +
        '_CODE'
      '                    from'
      '                      SALES ws'
      '                    where'
      
        '                      (ws.SALE_BRANCH_CODE = :WASTING_SALE_BRANC' +
        'H_CODE) and'
      '                      (ws.SALE_NO = :WASTING_SALE_NO)'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:HAS_WASTE_STATUS = 1) or'
      '            ( ( select'
      '                  3 - Sign(Count(*))'
      '                from'
      '                  MATERIAL_LIST_LINES mll2,'
      '                  ML_MODEL_STAGES mlms,'
      '                  MODEL_MOVEMENTS mm'
      '                where'
      
        '                  (ml.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRA' +
        'NCH_CODE) and'
      '                  (ml.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and'
      ''
      
        '                  (mll2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT' +
        '_BRANCH_CODE) and'
      
        '                  (mll2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) ' +
        'and'
      ''
      
        '                  (mlms.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_O' +
        'BJECT_BRANCH_CODE) and'
      
        '                  (mlms.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_C' +
        'ODE) and'
      ''
      '                  (mm.TO_DEPT_CODE is not null) and'
      '                  (mm.STORNO_EMPLOYEE_CODE is null)'
      '              ) = :HAS_WASTE_STATUS'
      '            )'
      '          ) and'
      ''
      '          -- IS_SALE_STATE>> 0-vsichki 1-pp 2-op'
      '          ( (:IS_SALE_STATE = 0) or'
      '            ( (:IS_SALE_STATE = 1) and'
      '              (s.SALE_ORDER_TYPE_CODE = 1) and'
      ''
      '              ( (:OWNER_COMPANY_CODE is null) or'
      
        '                (:OWNER_COMPANY_CODE = s.CLIENT_COMPANY_CODE) ) ' +
        'and'
      ''
      '              ( (:SALE_SHIPMENT_BEGIN_DATE is null) or'
      
        '                (s.SHIPMENT_DATE >= :SALE_SHIPMENT_BEGIN_DATE) )' +
        ' and'
      ''
      '              ( (:SALE_SHIPMENT_END_DATE is null) or'
      '                (s.SHIPMENT_DATE <= :SALE_SHIPMENT_END_DATE) )'
      '            ) or'
      '            ( (:IS_SALE_STATE = 2) and'
      '              (s.SALE_ORDER_TYPE_CODE = 3) and'
      ''
      '              ( (:OWNER_EMPLOYEE_CODE is null) or'
      
        '                (:OWNER_EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE)' +
        ' )'
      '            )'
      '          ) and'
      ''
      '          ( (:MODEL_DEVELOPMENT_TYPE_CODE is null) or'
      
        '            (s.MODEL_DEVELOPMENT_TYPE_CODE = :MODEL_DEVELOPMENT_' +
        'TYPE_CODE)'
      '          ) and'
      ''
      '          ( (:OKIDU_EMPLOYEE_CODE is null) or'
      '            (s.OKIDU_EMPLOYEE_CODE = :OKIDU_EMPLOYEE_CODE)'
      '          ) and'
      ''
      '          ( ( select'
      '                p.PRIORITY_NO'
      '              from'
      '                SALE_GROUPS sg,'
      '                PRIORITIES p'
      '              where'
      
        '                (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP' +
        '_OBJECT_BRANCH_CODE) and'
      
        '                (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT' +
        '_CODE) and'
      '                (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '            ) between'
      '              Coalesce('
      '                ( select'
      '                    Max(p.PRIORITY_NO)'
      '                  from'
      '                    PRIORITIES p'
      '                  where'
      '                    (p.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '                ), 0) and'
      '              Coalesce('
      '                ( select'
      '                    Max(p.PRIORITY_NO)'
      '                  from'
      '                    PRIORITIES p'
      '                  where'
      '                    (p.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '                ), 1000000)'
      '          ) and '
      ''
      '          %IF_IS_UNARCHIVED_MODEL'
      '        )'
      '      )'
      ''
      '    order by'
      '      ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '      PRIORITY_CODE,'
      '      SALE_IDENTIFICATION'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_SALE_OBJECT_TREE'
        ParamType = ptInput
        Value = '0'
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
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = 'Cast(null as Varchar2(250 char))'
      end
      item
        DataType = ftWideString
        Name = 'SALES_TABLE_OR_TREE'
        ParamType = ptInput
        Value = 'SALES'
      end
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJECT_' +
          'CODE]'
        ParamType = ptInput
        Value = 'ContextDate'
      end
      item
        DataType = ftWideString
        Name = 'IF_IS_UNARCHIVED_MODEL'
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
        DataType = ftFloat
        Name = 'GET_SALE_OBJECT_TREE'
        ParamType = ptUnknown
        Value = '0'
      end>
    Left = 288
    Top = 296
    object qryModelsInvestedValuesML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryModelsInvestedValuesML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryModelsInvestedValuesIS_SALE: TAbmesFloatField
      FieldName = 'IS_SALE'
    end
    object qryModelsInvestedValuesML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object qryModelsInvestedValuesSALE_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFICATION'
      Size = 81
    end
    object qryModelsInvestedValuesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryModelsInvestedValuesPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryModelsInvestedValuesWORK_PRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryModelsInvestedValuesOWNER_NAME: TAbmesWideStringField
      FieldName = 'OWNER_NAME'
      Size = 41
    end
    object qryModelsInvestedValuesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryModelsInvestedValuesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryModelsInvestedValuesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object qryModelsInvestedValuesPRODUCT_OTHER_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_OTHER_NAME'
      Size = 250
    end
    object qryModelsInvestedValuesQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryModelsInvestedValuesMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qryModelsInvestedValuesMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryModelsInvestedValuesENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
    end
    object qryModelsInvestedValuesENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
    end
    object qryModelsInvestedValuesINVESTED_VALUE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE'
    end
    object qryModelsInvestedValuesINVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_IS_INCOMPLETE'
    end
    object qryModelsInvestedValuesIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
    end
    object qryModelsInvestedValuesHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
    end
    object qryModelsInvestedValuesCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryModelsInvestedValuesHAS_WASTE_COMPENSATORS: TAbmesFloatField
      FieldName = 'HAS_WASTE_COMPENSATORS'
      ProviderFlags = []
    end
    object qryModelsInvestedValuesSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      Size = 81
    end
    object qryModelsInvestedValuesWASTING_SALE_OBJ_PK: TAbmesWideStringField
      FieldName = 'WASTING_SALE_OBJ_PK'
      Size = 81
    end
    object qryModelsInvestedValuesSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qryModelsInvestedValuesSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
  end
  object shActiveSaleCondition: TJvStrHolder
    Capacity = 4
    Macros = <>
    Left = 448
    Top = 240
    InternalVer = 2
    StrData = (
      ''
      
        '202028732e46494e4953485f454d504c4f5945455f434f4445206973206e756c' +
        '6c2920616e64'
      
        '202028732e414e4e554c5f454d504c4f5945455f434f4445206973206e756c6c' +
        '29')
  end
  object shUnifinishedMfgPastActive: TJvStrHolder
    Capacity = 4
    Macros = <>
    Left = 184
    Top = 8
    InternalVer = 2
    StrData = (
      ''
      
        '2020283a554e46494e49534845445f544f5f44415445203c3d204d6973635574' +
        '696c732e4e766c4d617844617465286d6c2e434c4f53455f4441544529292061' +
        '6e64'
      
        '2020283a554e46494e49534845445f544f5f44415445203c3d204d6973635574' +
        '696c732e4e766c4d617844617465286d6c2e414e4e554c5f4441544529292061' +
        '6e64'
      
        '2020283a554e46494e49534845445f544f5f44415445203c3d204d6973635574' +
        '696c732e4e766c4d617844617465286d6c6c2e414e4e554c5f444154452929')
  end
  object shUnifinishedMfgPresentAndFutureActive: TJvStrHolder
    Capacity = 4
    Macros = <>
    Left = 184
    Top = 56
    InternalVer = 2
    StrData = (
      ''
      '2020286d6c2e49535f4152434849564544203d20302920616e64'
      
        '2020286d6c2e434c4f53455f454d504c4f5945455f434f4445206973206e756c' +
        '6c2920616e64'
      
        '2020286d6c2e414e4e554c5f454d504c4f5945455f434f4445206973206e756c' +
        '6c2920616e64'
      
        '2020286d6c6c2e414e4e554c5f454d504c4f5945455f434f4445206973206e75' +
        '6c6c29')
  end
  object qryProductionOrderBaseTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  pobt.PROD_ORDER_BASE_TYPE_CODE,'
      '  pobt.PROD_ORDER_BASE_TYPE_NO,'
      '  pobt.PROD_ORDER_BASE_TYPE_NAME,'
      '  pobt.PROD_ORDER_BASE_TYPE_ABBREV,'
      '  pobt.PROD_ORDER_BASE_TYPE_NAME_PL,'
      '  pobt.PROD_ORDER_BASE_TYPE_ABBREV_PL'
      'from'
      '  PROD_ORDER_BASE_TYPES pobt'
      'order by'
      '  pobt.PROD_ORDER_BASE_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 752
    Top = 56
    object qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_NAME'
      Size = 100
    end
    object qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_ABBREV'
      Size = 100
    end
    object qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME_PL: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_NAME_PL'
      Required = True
      Size = 100
    end
    object qryProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV_PL: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_ABBREV_PL'
      Required = True
      Size = 100
    end
  end
  object prvProductionOrderBaseTypes: TDataSetProvider
    DataSet = qryProductionOrderBaseTypes
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 8
  end
  object qryUncoveredModels: TAbmesSQLQuery
    BeforeOpen = qryUncoveredModelsBeforeOpen
    AfterClose = qryUncoveredModelsAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LIMITING_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LIMITING_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LIMITING_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
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
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  /*+ INDEX(ml idxML__CLOSE_EMPLOYEE) */'
      '  mll.MLL_OBJECT_BRANCH_CODE,'
      '  mll.MLL_OBJECT_CODE,'
      ''
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE,'
      '  mll.NO_AS_TEXT,'
      '  mll.NO_AS_FORMATED_TEXT,'
      
        '  RPad(mll.NO_AS_FORMATED_TEXT, 100, Decode(mll.FORK_NO, 0, '#39' '#39',' +
        ' '#39'x'#39')) as NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO,'
      ''
      '  mll.DETAIL_CODE,'
      '  pd.CUSTOM_CODE as DETAIL_NO,'
      '  pd.NAME as DETAIL_NAME,'
      '  %HAS_DOC_ITEMS[pd] as DETAIL_HAS_DOC,'
      '  '
      '  pd.TECH_MEASURE_CODE as DETAIL_TECH_MEASURE_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pd.TECH_MEASURE_CODE)'
      '  ) as DETAIL_TECH_MEASURE_ABBREV,'
      ''
      '  mll.TOTAL_DETAIL_TECH_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pd.MEASURE_CODE)'
      '  ) as DETAIL_MEASURE_ABBREV,'
      ''
      
        '  (mll.TOTAL_DETAIL_TECH_QUANTITY / pd.TECH_MEASURE_COEF) as TOT' +
        'AL_DETAIL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pd.ACCOUNT_MEASURE_CODE)'
      '  ) as DETAIL_ACC_MEASURE_ABBREV,'
      ''
      
        '  ((mll.TOTAL_DETAIL_TECH_QUANTITY / pd.TECH_MEASURE_COEF) * pd.' +
        'ACCOUNT_MEASURE_COEF) as TOTAL_DETAIL_ACC_QUANTITY,'
      ''
      '  mll.PRODUCT_CODE as MATERIAL_CODE,'
      '  pm.CUSTOM_CODE as MATERIAL_NO,'
      '  pm.NAME as MATERIAL_NAME,'
      '  %HAS_DOC_ITEMS[pm] as MATERIAL_HAS_DOC,'
      '  pm.TECH_MEASURE_CODE as MATERIAL_TECH_MEASURE_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pm.TECH_MEASURE_CODE)'
      '  ) as MATERIAL_TECH_MEASURE_ABBREV,'
      ''
      
        '  (mll.PRODUCT_TECH_QUANTITY * mll.TOTAL_DETAIL_TECH_QUANTITY) a' +
        's TOTAL_MATERIAL_TECH_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pm.MEASURE_CODE)'
      '  ) as MATERIAL_MEASURE_ABBREV,'
      ''
      
        '  ((mll.PRODUCT_TECH_QUANTITY * mll.TOTAL_DETAIL_TECH_QUANTITY) ' +
        '/ pm.TECH_MEASURE_COEF) as TOTAL_MATERIAL_QUANTITY,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pm.ACCOUNT_MEASURE_CODE)'
      '  ) as MATERIAL_ACC_MEASURE_ABBREV,'
      ''
      
        '  (((mll.PRODUCT_TECH_QUANTITY * mll.TOTAL_DETAIL_TECH_QUANTITY)' +
        ' / pm.TECH_MEASURE_COEF) * pm.ACCOUNT_MEASURE_COEF) as TOTAL_MAT' +
        'ERIAL_ACC_QUANTITY,'
      ''
      '  ('
      '    ('
      '      ( select'
      '          tupsd.UNCOVERED_QUANTITY'
      '        from'
      '          TEMP_UNCOVERED_PSD tupsd'
      '        where'
      
        '          (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT' +
        '_BRANCH_CODE) and'
      '          (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE)'
      '      ) * pm.TECH_MEASURE_COEF'
      '    ) / mll.PRODUCT_TECH_QUANTITY'
      '  ) as UNCOVERED_DETAIL_TECH_QUANTITY,'
      ''
      '  ('
      '    ('
      '      ('
      '        ( select'
      '            tupsd.UNCOVERED_QUANTITY'
      '          from'
      '            TEMP_UNCOVERED_PSD tupsd'
      '          where'
      
        '            (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJE' +
        'CT_BRANCH_CODE) and'
      
        '            (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE' +
        ')'
      '        ) * pm.TECH_MEASURE_COEF'
      '      ) / mll.PRODUCT_TECH_QUANTITY'
      '    ) / pd.TECH_MEASURE_COEF'
      '  ) as UNCOVERED_DETAIL_QUANTITY,'
      ''
      '  ('
      '    ('
      '      ('
      '        ('
      '          ( select'
      '              tupsd.UNCOVERED_QUANTITY'
      '            from'
      '              TEMP_UNCOVERED_PSD tupsd'
      '            where'
      
        '              (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OB' +
        'JECT_BRANCH_CODE) and'
      
        '              (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CO' +
        'DE)'
      '          ) * pm.TECH_MEASURE_COEF'
      '        ) / mll.PRODUCT_TECH_QUANTITY'
      '      ) / pd.TECH_MEASURE_COEF'
      '    ) * pd.ACCOUNT_MEASURE_COEF'
      '  ) as UNCOVERED_DETAIL_ACC_QUANTITY,'
      ''
      '  ( select'
      '      tupsd.UNCOVERED_QUANTITY'
      '    from'
      '      TEMP_UNCOVERED_PSD tupsd'
      '    where'
      
        '      (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE)'
      '  ) as UNCOVERED_MATERIAL_QUANTITY,'
      ''
      '  ('
      '    ( select'
      '        tupsd.UNCOVERED_QUANTITY'
      '      from'
      '        TEMP_UNCOVERED_PSD tupsd'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE)'
      '    ) * pm.TECH_MEASURE_COEF'
      '  ) as UNCOVERED_MTRL_TECH_QUANTITY,'
      ''
      '  ('
      '    ( select'
      '        tupsd.UNCOVERED_QUANTITY'
      '      from'
      '        TEMP_UNCOVERED_PSD tupsd'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE)'
      '    ) * pm.ACCOUNT_MEASURE_COEF'
      '  ) as UNCOVERED_MTRL_ACC_QUANTITY,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = mll.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      ''
      '  mll.PRODUCT_NEED_BEGIN_DATE as MATERIAL_NEED_BEGIN_DATE,'
      '  mll.PRODUCT_NEED_END_DATE as MATERIAL_NEED_END_DATE,'
      ''
      '  ( ( select'
      '        pot.PRODUCTION_ORDER_TYPE_ABBREV'
      '      from'
      '        PRODUCTION_ORDER_TYPES pot'
      '      where'
      
        '        (pot.PRODUCTION_ORDER_TYPE_CODE = s.PRODUCTION_ORDER_TYP' +
        'E_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '    ) ||'
      '    '#39'/'#39' ||'
      '    s.SALE_NO ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        st.SALE_TYPE_ABBREV'
      '      from'
      '        SALE_TYPES st'
      '      where'
      '        (st.SALE_TYPE_CODE = s.SALE_TYPE_CODE)'
      '    )'
      '  ) as PRODUCTION_ORDER_IDENTIFIER,'
      ''
      '  %ML_STATE[s~ml] as ML_STATE_CODE,'
      ''
      
        '  Nvl2(s.WASTING_SALE_OBJ_BRANCH_CODE, 1, 0) as IS_WASTE_COMPENS' +
        'ATOR,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      MATERIAL_LIST_LINES mll2,'
      '      ML_MODEL_STAGES mlms,'
      '      MODEL_MOVEMENTS mm'
      '    where'
      
        '      (ml.ML_OBJECT_BRANCH_CODE = mll2.ML_OBJECT_BRANCH_CODE) an' +
        'd'
      '      (ml.ML_OBJECT_CODE = mll2.ML_OBJECT_CODE) and'
      ''
      
        '      (mll2.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE' +
        ') and'
      '      (mll2.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE) and'
      ''
      
        '      (mlms.MLMS_OBJECT_BRANCH_CODE = mm.FROM_MLMS_OBJECT_BRANCH' +
        '_CODE) and'
      '      (mlms.MLMS_OBJECT_CODE = mm.FROM_MLMS_OBJECT_CODE) and'
      ''
      '      (mm.TO_DEPT_CODE is not null) and'
      '      (mm.STORNO_EMPLOYEE_CODE is null)'
      '  ) as HAS_WASTE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = ml.MAIN_DEPT_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as MAIN_DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '     p.PRIORITY_NO'
      '   from'
      '     SALE_GROUPS sg,'
      '     PRIORITIES p'
      '   where'
      
        '     (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BRA' +
        'NCH_CODE) and'
      '     (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '     (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_NO,'
      ''
      '  ( select'
      '     (p.PRIORITY_NO || '#39'   '#39' || p.PRIORITY_NAME)'
      '   from'
      '     SALE_GROUPS sg,'
      '     PRIORITIES p'
      '   where'
      
        '     (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BRA' +
        'NCH_CODE) and'
      '     (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '     (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_FULL_NAME,'
      ''
      '  ( select'
      '      p.PRIORITY_COLOR'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_COLOR,'
      ''
      '  ( select'
      '      p.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      SALE_GROUPS sg,'
      '      PRIORITIES p'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) and'
      '      (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      wp.WORK_PRIORITY_NO'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_NO,'
      ''
      '  ( select'
      '      (wp.WORK_PRIORITY_NO || '#39'   '#39' || wp.WORK_PRIORITY_NAME)'
      '    from'
      '      WORK_PRIORITIES wp'
      '    where'
      '      (wp.WORK_PRIORITY_CODE = s.WORK_PRIORITY_CODE)'
      '  ) as WORK_PRIORITY_FULL_NAME,'
      ''
      '  pr.PRODUCT_CODE as RESULT_PRODUCT_CODE,'
      '  pr.CUSTOM_CODE as RESULT_PRODUCT_NO,'
      '  pr.NAME as RESULT_PRODUCT_NAME,'
      '  %HAS_DOC_ITEMS[pr] as RESULT_PRODUCT_HAS_DOC,'
      '  pr.MEASURE_CODE as RESULT_PRODUCT_MEASURE_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pr.MEASURE_CODE)'
      '  ) as RESULT_PRODUCT_MEASURE_ABBREV,'
      ''
      
        '  (ml.TECH_QUANTITY / pr.TECH_MEASURE_COEF) as RESULT_PRODUCT_QU' +
        'ANTITY,'
      ''
      '  pr.TECH_MEASURE_CODE as RESULT_PR_TECH_MEASURE_CODE,'
      '  '
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pr.TECH_MEASURE_CODE)'
      '  ) as RESULT_PR_TECH_MEASURE_ABBREV,'
      ''
      '  ml.TECH_QUANTITY as RESULT_PROD_TECH_QUANTITY,'
      ''
      '  pr.ACCOUNT_MEASURE_CODE as RESULT_PROD_ACC_MEASURE_CODE,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = pr.ACCOUNT_MEASURE_CODE)'
      '  ) as RESULT_PROD_ACC_MEASURE_ABBREV,'
      ''
      
        '  ((ml.TECH_QUANTITY / pr.TECH_MEASURE_COEF) * pr.ACCOUNT_MEASUR' +
        'E_COEF) as RESULT_PROD_ACC_QUANTITY,'
      ''
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~pr] as RESULT_PRODUCT_CLIENT_NAME,'
      ''
      
        '  %ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJE' +
        'CT_CODE] as MODEL_START_DATE'
      ''
      'from'
      '  SALES s,'
      '  MATERIAL_LISTS ml,'
      '  MATERIAL_LIST_LINES mll,'
      '  PRODUCTS pr,'
      '  PRODUCTS pd,'
      '  PRODUCTS pm'
      ''
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        ') and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE) and'
      ''
      '  (ml.ML_OBJECT_BRANCH_CODE = mll.ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = mll.ML_OBJECT_CODE) and'
      ''
      '  (s.PRODUCT_CODE = pr.PRODUCT_CODE) and'
      '  (mll.DETAIL_CODE = pd.PRODUCT_CODE) and'
      '  (mll.PRODUCT_CODE = pm.PRODUCT_CODE) and'
      ''
      '  (s.FINISH_EMPLOYEE_CODE is null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      '  '
      '  (ml.CLOSE_EMPLOYEE_CODE is null) and'
      '  (ml.ANNUL_EMPLOYEE_CODE is null) and'
      '  (ml.IS_ARCHIVED = 0) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        TEMP_UNCOVERED_PSD tupsd'
      '      where'
      
        '        (mll.MLL_OBJECT_BRANCH_CODE = tupsd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      '        (mll.MLL_OBJECT_CODE = tupsd.BND_PROCESS_OBJECT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS_2 = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS_2 tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        DEPT_RELATIONS dr'
      '      where'
      '        (dr.ANCESTOR_DEPT_CODE = :DEPT_CODE) and'
      '        (dr.DESCENDANT_DEPT_CODE = ml.MAIN_DEPT_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_WASTE_COMPENSATOR_STATUS = 1) or'
      '    ( (:IS_WASTE_COMPENSATOR_STATUS = 2) and'
      '      (s.WASTING_SALE_OBJ_BRANCH_CODE is null)'
      '    ) or'
      '    ( (:IS_WASTE_COMPENSATOR_STATUS = 3) and'
      '      (s.WASTING_SALE_OBJ_BRANCH_CODE is not null)'
      '    )'
      '  ) and'
      ''
      '  ( (:IS_LIMITING_STATUS = 1) or'
      '     ( (:IS_LIMITING_STATUS = 2) and'
      '       (ml.LIMITING_EMPLOYEE_CODE is not null)'
      '     ) or'
      '     ( (:IS_LIMITING_STATUS = 3) and'
      '       (ml.LIMITING_EMPLOYEE_CODE is null)'
      '     )'
      '  ) and'
      ''
      '  ( (:PRODUCTION_ORDER_TYPE_CODE is null) or'
      '    (s.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TYPE_CODE)'
      '  ) and'
      ''
      '  ( (:SALE_BRANCH_CODE is null) or'
      '    (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      ''
      '  ( (:SALE_NO is null) or'
      '    (s.SALE_NO = :SALE_NO) ) and'
      ''
      '  ( (:SALE_TYPE_CODE is null) or'
      '    (:SALE_TYPE_CODE = s.SALE_TYPE_CODE) ) and'
      ''
      '  ( ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        SALE_GROUPS sg,'
      '        PRIORITIES p'
      '      where'
      
        '        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) a' +
        'nd'
      '        (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '    )'
      '    between'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :BEGIN_PRIORITY_CODE)'
      '        ), 0) and'
      '      Coalesce('
      '        ( select'
      '            Max(p.PRIORITY_NO)'
      '          from'
      '            PRIORITIES p'
      '          where'
      '            (p.PRIORITY_CODE = :END_PRIORITY_CODE)'
      '        ), 1000000)'
      '  )'
      ''
      'order by'
      '  ml.ML_OBJECT_BRANCH_CODE,'
      '  ml.ML_OBJECT_CODE,'
      '  NO_AS_FORMATED_TEXT_EX,'
      '  mll.FORK_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pd]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[pm]'
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
        Name = 'HAS_DOC_ITEMS[pr]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~pr]'
        ParamType = ptInput
        Value = #39'a'#39
      end
      item
        DataType = ftWideString
        Name = 
          'ML_MIN_PRODUCT_NEED_DATE[ml.ML_OBJECT_BRANCH_CODE~ ml.ML_OBJECT_' +
          'CODE]'
        ParamType = ptInput
        Value = 'ContextDate'
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
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MODEL_START_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'MODEL_START_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_START_MIN_RESERVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_START_MAX_RESERVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
        Value = '0'
      end>
    Left = 56
    Top = 296
    object qryUncoveredModelsMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUncoveredModelsMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryUncoveredModelsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object qryUncoveredModelsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object qryUncoveredModelsNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object qryUncoveredModelsNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object qryUncoveredModelsNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object qryUncoveredModelsFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object qryUncoveredModelsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryUncoveredModelsDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object qryUncoveredModelsDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object qryUncoveredModelsDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryUncoveredModelsDETAIL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_TECH_MEASURE_CODE'
    end
    object qryUncoveredModelsDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryUncoveredModelsMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object qryUncoveredModelsMATERIAL_NO: TAbmesFloatField
      FieldName = 'MATERIAL_NO'
    end
    object qryUncoveredModelsMATERIAL_NAME: TAbmesWideStringField
      FieldName = 'MATERIAL_NAME'
      Size = 100
    end
    object qryUncoveredModelsMATERIAL_HAS_DOC: TAbmesFloatField
      FieldName = 'MATERIAL_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryUncoveredModelsMATERIAL_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_TECH_MEASURE_CODE'
    end
    object qryUncoveredModelsMATERIAL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsTOTAL_MATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_MATERIAL_QUANTITY'
    end
    object qryUncoveredModelsSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object qryUncoveredModelsMATERIAL_NEED_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MATERIAL_NEED_BEGIN_DATE'
    end
    object qryUncoveredModelsMATERIAL_NEED_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MATERIAL_NEED_END_DATE'
    end
    object qryUncoveredModelsPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object qryUncoveredModelsML_STATE_CODE: TAbmesFloatField
      FieldName = 'ML_STATE_CODE'
    end
    object qryUncoveredModelsIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
      FieldValueType = fvtBoolean
    end
    object qryUncoveredModelsHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
      FieldValueType = fvtBoolean
    end
    object qryUncoveredModelsMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object qryUncoveredModelsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryUncoveredModelsPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryUncoveredModelsPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryUncoveredModelsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryUncoveredModelsWORK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_NO'
    end
    object qryUncoveredModelsWORK_PRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_FULL_NAME'
      Size = 93
    end
    object qryUncoveredModelsRESULT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_CODE'
    end
    object qryUncoveredModelsRESULT_PRODUCT_NO: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_NO'
    end
    object qryUncoveredModelsRESULT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'RESULT_PRODUCT_NAME'
      Size = 100
    end
    object qryUncoveredModelsRESULT_PRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object qryUncoveredModelsRESULT_PRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_MEASURE_CODE'
    end
    object qryUncoveredModelsRESULT_PRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'RESULT_PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsRESULT_PRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_QUANTITY'
    end
    object qryUncoveredModelsRESULT_PRODUCT_CLIENT_NAME: TAbmesWideStringField
      FieldName = 'RESULT_PRODUCT_CLIENT_NAME'
      Size = 250
    end
    object qryUncoveredModelsMODEL_START_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_START_DATE'
    end
    object qryUncoveredModelsDETAIL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsTOTAL_DETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_QUANTITY'
    end
    object qryUncoveredModelsDETAIL_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsTOTAL_DETAIL_ACC_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_ACC_QUANTITY'
    end
    object qryUncoveredModelsTOTAL_MATERIAL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_MATERIAL_TECH_QUANTITY'
    end
    object qryUncoveredModelsMATERIAL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsTOTAL_MATERIAL_ACC_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_MATERIAL_ACC_QUANTITY'
    end
    object qryUncoveredModelsRESULT_PR_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'RESULT_PR_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsRESULT_PROD_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PROD_TECH_QUANTITY'
    end
    object qryUncoveredModelsRESULT_PROD_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'RESULT_PROD_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qryUncoveredModelsRESULT_PROD_ACC_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PROD_ACC_QUANTITY'
    end
    object qryUncoveredModelsRESULT_PR_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'RESULT_PR_TECH_MEASURE_CODE'
    end
    object qryUncoveredModelsRESULT_PROD_ACC_MEASURE_CODE: TAbmesFloatField
      FieldName = 'RESULT_PROD_ACC_MEASURE_CODE'
    end
    object qryUncoveredModelsUNCOVERED_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_DETAIL_TECH_QUANTITY'
    end
    object qryUncoveredModelsUNCOVERED_DETAIL_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_DETAIL_QUANTITY'
    end
    object qryUncoveredModelsUNCOVERED_DETAIL_ACC_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_DETAIL_ACC_QUANTITY'
    end
    object qryUncoveredModelsUNCOVERED_MATERIAL_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_MATERIAL_QUANTITY'
    end
    object qryUncoveredModelsUNCOVERED_MTRL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_MTRL_TECH_QUANTITY'
    end
    object qryUncoveredModelsUNCOVERED_MTRL_ACC_QUANTITY: TAbmesFloatField
      FieldName = 'UNCOVERED_MTRL_ACC_QUANTITY'
    end
  end
  object prvUncoveredModels: TDataSetProvider
    DataSet = qryUncoveredModels
    UpdateMode = upWhereKeyOnly
    OnGetData = prvUncoveredModelsGetData
    Left = 56
    Top = 248
  end
  object shUnarchivedModelCondition: TJvStrHolder
    Capacity = 4
    Macros = <>
    Left = 448
    Top = 296
    InternalVer = 2
    StrData = (
      ''
      '2020286d6c2e49535f4152434849564544203d20302920616e64'
      
        '2020286d6c2e414e4e554c5f454d504c4f5945455f434f4445206973206e756c' +
        '6c29')
  end
  object shCompensatorsForAWastingSaleCondition: TJvStrHolder
    Capacity = 12
    Macros = <>
    Left = 616
    Top = 240
    InternalVer = 2
    StrData = (
      ''
      
        '2020282028732e57415354494e475f53414c455f4f424a5f4252414e43485f43' +
        '4f44452c20732e57415354494e475f53414c455f4f424a5f434f444529203d'
      '20202020282073656c656374'
      
        '202020202020202077732e53414c455f4f424a4543545f4252414e43485f434f' +
        '44452c2077732e53414c455f4f424a4543545f434f4445'
      '20202020202066726f6d'
      '202020202020202053414c4553207773'
      '2020202020207768657265'
      
        '20202020202020202877732e53414c455f4252414e43485f434f4445203d203a' +
        '57415354494e475f53414c455f4252414e43485f434f44452920616e64'
      
        '20202020202020202877732e53414c455f4e4f203d203a57415354494e475f53' +
        '414c455f4e4f29'
      '2020202029'
      '202029'
      '2020')
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
    Left = 584
    Top = 8
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
    Left = 584
    Top = 104
  end
  object qryPrepareUncoveredPSDByModel: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  StoreUtils.PrepareUncoveredPSDByModel(:START_PERIOD_DATE, :END' +
        '_PERIOD_DATE, :DATE_UNIT_CODE, :ML_OBJECT_BRANCH_CODE, :ML_OBJEC' +
        'T_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 584
    Top = 56
  end
end
