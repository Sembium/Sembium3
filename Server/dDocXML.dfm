inherited dmDocXML: TdmDocXML
  Height = 841
  Width = 1175
  object qryDeptData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.NAME as DEPT_NAME,'
      '  d.IS_GROUP as DEPT_IS_GROUP,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      '  d.BEGIN_DATE,'
      '  d.END_DATE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      BRANCHES b'
      '    where'
      '      (b.BRANCH_CODE = d.DEPT_CODE)'
      '  ) as DEPT_IS_BRANCH,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      STORES s'
      '    where'
      '      (s.STORE_CODE = d.DEPT_CODE)'
      '  ) as DEPT_IS_STORE,'
      ''
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      FIN_STORES fs'
      '    where'
      '      (fs.STORE_CODE = d.DEPT_CODE)'
      '  ) as DEPT_IS_FIN_STORE,'
      ''
      '  d.IS_EXTERNAL,'
      '  d.IS_RECURRENT,'
      '  d.PRODUCT_CODE'
      ''
      'from'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '  '
      '  (d.DEPT_CODE = :DEPT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 200
    object qryDeptDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object qryDeptDataDEPT_IS_GROUP: TAbmesFloatField
      FieldName = 'DEPT_IS_GROUP'
    end
    object qryDeptDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryDeptDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object qryDeptDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
    object qryDeptDataDEPT_IS_BRANCH: TAbmesFloatField
      FieldName = 'DEPT_IS_BRANCH'
      FieldValueType = fvtBoolean
    end
    object qryDeptDataDEPT_IS_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_STORE'
      FieldValueType = fvtBoolean
    end
    object qryDeptDataDEPT_IS_FIN_STORE: TAbmesFloatField
      FieldName = 'DEPT_IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object qryDeptDataIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryDeptDataIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryDeptDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object qryDeptCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.DEPT_CODE'
      'from'
      '  DEPTS d'
      'where'
      '  (d.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (d.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 8
    object qryDeptCodeDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object qryMeasureData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MEASURE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  m.MEASURE_ABBREV,'
      '  m.MEASURE_NAME'
      'from'
      '  MEASURES m'
      'where'
      '  (m.MEASURE_CODE = :MEASURE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 8
    object qryMeasureDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qryMeasureDataMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Size = 50
    end
  end
  object qryProductData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  p.NAME as PRODUCT_NAME,'
      '  p.IS_GROUP as PRODUCT_IS_GROUP,'
      '  p.CUSTOM_CODE as PRODUCT_IDENTIFIER,'
      '  Nvl2('
      '    :PARTNER_CODE,'
      '    ( select'
      '        cp.NAME'
      '      from'
      '        COMPANY_PRODUCTS cp'
      '      where'
      '        (cp.COMPANY_CODE = :PARTNER_CODE) and'
      '        (cp.PRODUCT_CODE = :PRODUCT_CODE)'
      '    ),'
      '    p.PARTNER_PRODUCT_NAMES'
      '  ) as PRODUCT_PARTNER_PRODUCT_NAMES,'
      '  p.MEASURE_CODE as WORK_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  p.TECH_MEASURE_CODE,'
      '  p.TECH_MEASURE_COEF,'
      '  p.TRANSPORT_MEASURE_CODE,'
      '  p.TRANSPORT_MEASURE_COEF,'
      '  p.IS_VAT_FREE,'
      '  p.NOTES,'
      '  p.IS_INACTIVE,'
      '  p.SELF_EXISTENT_STATUS_CODE,'
      '  p.IS_PRODUCTION_PRODUCT,'
      '  p.TRANSIENT_STATUS_CODE,'
      '  p.WORKDAYS_TO_EXIST,'
      '  p.IS_USED_BY_SALES,'
      '  p.IS_USED_BY_SALE_PRODUCTION,'
      '  p.IS_USED_BY_ENV_PRODUCTION,'
      '  p.IS_PROVIDED_BY_DELIVERIES,'
      '  p.IS_PROVIDED_BY_SALE_PRODUCTION,'
      '  p.IS_PROVIDED_BY_ENV_PRODUCTION,'
      '  p.USED_BY_SALES_PR_CODE,'
      '  p.USED_BY_SALE_PROD_PR_CODE,'
      '  p.USED_BY_ENV_PROD_PR_CODE,'
      '  p.PROV_BY_DELIVERIES_PR_CODE,'
      '  p.PROV_BY_SALE_PROD_PR_CODE,'
      '  p.PROV_BY_ENV_PROD_PR_CODE,'
      '  p.PRODUCT_ORIGIN_CODE,'
      '  p.BOI_ORDER_TYPE_CODE'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 56
    object qryProductDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryProductDataPRODUCT_IS_GROUP: TAbmesFloatField
      FieldName = 'PRODUCT_IS_GROUP'
    end
    object qryProductDataPRODUCT_IDENTIFIER: TAbmesFloatField
      FieldName = 'PRODUCT_IDENTIFIER'
    end
    object qryProductDataPRODUCT_PARTNER_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_PARTNER_PRODUCT_NAMES'
      Size = 250
    end
    object qryProductDataWORK_MEASURE_CODE: TAbmesFloatField
      FieldName = 'WORK_MEASURE_CODE'
    end
    object qryProductDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qryProductDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object qryProductDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object qryProductDataTECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TECH_MEASURE_COEF'
    end
    object qryProductDataTRANSPORT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_CODE'
    end
    object qryProductDataTRANSPORT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TRANSPORT_MEASURE_COEF'
    end
    object qryProductDataIS_VAT_FREE: TAbmesFloatField
      FieldName = 'IS_VAT_FREE'
    end
    object qryProductDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryProductDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
    object qryProductDataSELF_EXISTENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
    end
    object qryProductDataIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
    object qryProductDataTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
    end
    object qryProductDataWORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'WORKDAYS_TO_EXIST'
    end
    object qryProductDataIS_USED_BY_SALES: TAbmesFloatField
      FieldName = 'IS_USED_BY_SALES'
    end
    object qryProductDataIS_USED_BY_SALE_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_USED_BY_SALE_PRODUCTION'
    end
    object qryProductDataIS_USED_BY_ENV_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_USED_BY_ENV_PRODUCTION'
    end
    object qryProductDataIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_DELIVERIES'
    end
    object qryProductDataIS_PROVIDED_BY_SALE_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_SALE_PRODUCTION'
    end
    object qryProductDataIS_PROVIDED_BY_ENV_PRODUCTION: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_ENV_PRODUCTION'
    end
    object qryProductDataUSED_BY_SALES_PR_CODE: TAbmesFloatField
      FieldName = 'USED_BY_SALES_PR_CODE'
    end
    object qryProductDataUSED_BY_SALE_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'USED_BY_SALE_PROD_PR_CODE'
    end
    object qryProductDataUSED_BY_ENV_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'USED_BY_ENV_PROD_PR_CODE'
    end
    object qryProductDataPROV_BY_DELIVERIES_PR_CODE: TAbmesFloatField
      FieldName = 'PROV_BY_DELIVERIES_PR_CODE'
    end
    object qryProductDataPROV_BY_SALE_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'PROV_BY_SALE_PROD_PR_CODE'
    end
    object qryProductDataPROV_BY_ENV_PROD_PR_CODE: TAbmesFloatField
      FieldName = 'PROV_BY_ENV_PROD_PR_CODE'
    end
    object qryProductDataPRODUCT_ORIGIN_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ORIGIN_CODE'
    end
    object qryProductDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
  end
  object qryProductCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  PRODUCT_CODE'
      'from'
      '  PRODUCTS p'
      'where'
      '  (p.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (p.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 56
    object qryProductCodePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object qryProfessionCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_CODE'
      'from'
      '  PROFESSIONS p'
      'where'
      '  (p.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (p.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 104
    object qryProfessionCodePROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
  end
  object qryProfessionData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROFESSION_NAME,'
      ''
      '  Coalesce('
      '    ( select'
      '        pper.HOUR_PRICE'
      '      from'
      '        PROFESSION_PERIODS pper'
      '      where'
      '        (pper.PROFESSION_CODE = p.PROFESSION_CODE) and'
      '        (ContextDate between pper.BEGIN_DATE and pper.END_DATE)'
      '    ),'
      '    0'
      '  ) as HOUR_PRICE'
      ''
      'from'
      '  PROFESSIONS p'
      ''
      'where'
      '  (p.PROFESSION_CODE = :PROFESSION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 104
    object qryProfessionDataPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object qryProfessionDataHOUR_PRICE: TAbmesFloatField
      FieldName = 'HOUR_PRICE'
    end
  end
  object qryEducationData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EDUCATION_NAME,'
      '  e.EDUCATION_SHORT_NAME'
      'from'
      '  EDUCATIONS e'
      'where'
      '  (e.EDUCATION_CODE = :EDUCATION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 8
    object qryEducationDataEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      Size = 50
    end
    object qryEducationDataEDUCATION_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_SHORT_NAME'
    end
  end
  object qryEmployeeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.EMPLOYEE_CODE'
      'from'
      '  EMPLOYEES e'
      'where'
      '  (e.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (e.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 152
    object qryEmployeeCodeEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  object qryEmployeeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  e.COMPANY_CODE as PARTNER_CODE,'
      
        '  Cast(MiscUtils.EmployeeProfessions(:EMPLOYEE_CODE) as Varchar2' +
        '(250 char)) as EMPLOYEE_PROFESSIONS,'
      ''
      '  NullIf('
      '    ( select'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '        (det.DISC_EVENT_TYPE_CODE = ede.DISC_EVENT_TYPE_CODE) an' +
        'd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (det.DISC_EVENT_TYPE_SIGN = -1) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ContextDate between detp.BEGIN_DATE and detp.END_DATE)'
      '    ),'
      '    0'
      '  ) as NEGATIVE_DISCIPLINE_RATING,'
      ''
      '  NullIf('
      '    ( select'
      '        Sum(det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '      from'
      '        EMPLOYEE_DISCIPLINE_EVENTS ede,'
      '        DISC_EVENT_TYPES det,'
      '        DISC_EVENT_TYPE_PERIODS detp'
      '      where'
      '        (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      
        '        (det.DISC_EVENT_TYPE_CODE = ede.DISC_EVENT_TYPE_CODE) an' +
        'd'
      '        (ede.STORNO_EMPLOYEE_CODE is null) and'
      '        (det.DISC_EVENT_TYPE_SIGN = 1) and'
      '        (ede.DISCIPLINE_EVENT_STATE_CODE = 1) and'
      
        '        (det.DISC_EVENT_TYPE_CODE = detp.DISC_EVENT_TYPE_CODE) a' +
        'nd'
      '        (ContextDate between detp.BEGIN_DATE and detp.END_DATE)'
      '    ),'
      '    0'
      '  ) as POSITIVE_DISCIPLINE_RATING'
      ''
      'from'
      '  EMPLOYEES e'
      ''
      'where'
      '  (e.EMPLOYEE_CODE = :EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 152
    object qryEmployeeDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qryEmployeeDataEMPLOYEE_PROFESSIONS: TAbmesWideStringField
      FieldName = 'EMPLOYEE_PROFESSIONS'
      Size = 250
    end
    object qryEmployeeDataNEGATIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'NEGATIVE_DISCIPLINE_RATING'
    end
    object qryEmployeeDataPOSITIVE_DISCIPLINE_RATING: TAbmesFloatField
      FieldName = 'POSITIVE_DISCIPLINE_RATING'
    end
  end
  object qrySpecOperationCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SMVS_OPERATION_CODE'
      'from'
      '  SMVS_OPERATIONS smvso'
      'where'
      '  (smvso.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (smvso.DOC_CODE = :DOC_CODE) and'
      '  (smvso.SMVS_OPERATION_VARIANT_NO = :SMVS_OPERATION_VARIANT_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 592
    object qrySpecOperationCodeSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecOperationCodeSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecOperationCodeSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qrySpecOperationCodeSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qrySpecOperationCodeSMVS_OPERATION_CODE: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_CODE'
    end
  end
  object qrySpecOperationData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SMVS_OPERATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvso.SMVS_OPERATION_NO,'
      '  smvso.SMVS_OPERATION_VARIANT_NO,'
      '  smvso.OPERATION_TYPE_CODE,'
      '  smvso.DEPT_CODE,'
      '  smvso.PROFESSION_CODE,'
      '  smvso.EFFORT_COEF,'
      '  smvso.HOUR_TECH_QUANTITY,'
      '  smvso.SETUP_PROFESSION_CODE,'
      '  smvso.SETUP_EFFORT_COEF,'
      '  smvso.SETUP_HOUR_TECH_QUANTITY,'
      '  smvso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  smvso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  smvso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  smvso.NOTES,'
      '  smvso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  smvso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  smvso.TREATMENT_WORKDAYS,'
      '  smvso.HAS_SPECIAL_CONTROL,'
      '  smvso.SPEC_PRODUCT_CODE,'
      '  smvso.SPEC_LINE_CODE,'
      '  smvso.SPEC_MODEL_VARIANT_NO,'
      '  smvso.SPEC_LINE_STAGE_CODE,'
      '  smvso.SETUP_COUNT'
      'from'
      '  SMVS_OPERATIONS smvso'
      'where'
      '  (smvso.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvso.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvso.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvso.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE) and'
      '  (smvso.SMVS_OPERATION_CODE = :SMVS_OPERATION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 616
    object qrySpecOperationDataSMVS_OPERATION_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_NO'
    end
    object qrySpecOperationDataSMVS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'SMVS_OPERATION_VARIANT_NO'
      Required = True
    end
    object qrySpecOperationDataOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qrySpecOperationDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qrySpecOperationDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qrySpecOperationDataEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object qrySpecOperationDataHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qrySpecOperationDataSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qrySpecOperationDataSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qrySpecOperationDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qrySpecOperationDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qrySpecOperationDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qrySpecOperationDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qrySpecOperationDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecOperationDataSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qrySpecOperationDataTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qrySpecOperationDataTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qrySpecOperationDataTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qrySpecOperationDataHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qrySpecOperationDataSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecOperationDataSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qrySpecOperationDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecOperationDataSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
    object qrySpecOperationDataSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
  end
  object qryRealOperationCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMSO_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMSO_OBJECT_CODE'
      'from'
      '  MLMS_OPERATIONS mlmso'
      'where'
      '  (mlmso.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (mlmso.DOC_CODE = :DOC_CODE) and'
      '  (mlmso.MLMS_OPERATION_VARIANT_NO = :MLMS_OPERATION_VARIANT_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 592
    object qryRealOperationCodeMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryRealOperationCodeMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
  end
  object qryRealOperationData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMSO_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlmso.MLMS_OPERATION_NO,'
      '  mlmso.MLMS_OPERATION_VARIANT_NO,'
      '  mlmso.OPERATION_TYPE_CODE,'
      '  mlmso.DEPT_CODE,'
      '  mlmso.PROFESSION_CODE,'
      '  mlmso.EFFORT_COEF,'
      '  mlmso.HOUR_TECH_QUANTITY,'
      '  mlmso.SETUP_PROFESSION_CODE,'
      '  mlmso.SETUP_EFFORT_COEF,'
      '  mlmso.SETUP_HOUR_TECH_QUANTITY,'
      '  mlmso.PROGRAM_TOOL_PRODUCT_CODE,'
      '  mlmso.SPECIFIC_TOOL_PRODUCT_CODE,'
      '  mlmso.TYPICAL_TOOL_PRODUCT_CODE,'
      '  mlmso.NOTES,'
      '  mlmso.SPECIFIC_TOOL_DETAIL_TECH_QTY,'
      '  mlmso.TYPICAL_TOOL_DETAIL_TECH_QTY,'
      '  mlmso.TREATMENT_BEGIN_WORKDAY_NO,'
      '  mlmso.TREATMENT_WORKDAYS,'
      '  mlmso.HAS_SPECIAL_CONTROL,'
      '  mlmso.MLMS_OBJECT_BRANCH_CODE,'
      '  mlmso.MLMS_OBJECT_CODE,'
      '  mlmso.SETUP_COUNT'
      'from'
      '  MLMS_OPERATIONS mlmso'
      'where'
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = :MLMSO_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (mlmso.MLMSO_OBJECT_CODE = :MLMSO_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 616
    object qryRealOperationDataMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object qryRealOperationDataMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
      Required = True
    end
    object qryRealOperationDataOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object qryRealOperationDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryRealOperationDataPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object qryRealOperationDataEFFORT_COEF: TAbmesFloatField
      FieldName = 'EFFORT_COEF'
    end
    object qryRealOperationDataHOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'HOUR_TECH_QUANTITY'
    end
    object qryRealOperationDataSETUP_PROFESSION_CODE: TAbmesFloatField
      FieldName = 'SETUP_PROFESSION_CODE'
    end
    object qryRealOperationDataSETUP_EFFORT_COEF: TAbmesFloatField
      FieldName = 'SETUP_EFFORT_COEF'
    end
    object qryRealOperationDataSETUP_HOUR_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SETUP_HOUR_TECH_QUANTITY'
    end
    object qryRealOperationDataPROGRAM_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PROGRAM_TOOL_PRODUCT_CODE'
    end
    object qryRealOperationDataSPECIFIC_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_PRODUCT_CODE'
    end
    object qryRealOperationDataTYPICAL_TOOL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_PRODUCT_CODE'
    end
    object qryRealOperationDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryRealOperationDataSPECIFIC_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'SPECIFIC_TOOL_DETAIL_TECH_QTY'
    end
    object qryRealOperationDataTYPICAL_TOOL_DETAIL_TECH_QTY: TAbmesFloatField
      FieldName = 'TYPICAL_TOOL_DETAIL_TECH_QTY'
    end
    object qryRealOperationDataTREATMENT_BEGIN_WORKDAY_NO: TAbmesFloatField
      FieldName = 'TREATMENT_BEGIN_WORKDAY_NO'
    end
    object qryRealOperationDataTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryRealOperationDataHAS_SPECIAL_CONTROL: TAbmesFloatField
      FieldName = 'HAS_SPECIAL_CONTROL'
    end
    object qryRealOperationDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object qryRealOperationDataMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object qryRealOperationDataSETUP_COUNT: TAbmesFloatField
      FieldName = 'SETUP_COUNT'
    end
  end
  object qryTeamCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.TEAM_CODE'
      'from'
      '  TEAMS t'
      'where'
      '  (t.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (t.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 200
    object qryTeamCodeTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
  end
  object qryTeamData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  t.TEAM_NAME,'
      '  t.TEAM_NO,'
      '  t.IS_ACTIVE,'
      '  t.DEPT_CODE'
      'from'
      '  TEAMS t'
      'where'
      '  (t.TEAM_CODE = :TEAM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 248
    object qryTeamDataTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object qryTeamDataTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
    end
    object qryTeamDataIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object qryTeamDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
  end
  object qryCompanyTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ct.COMPANY_TYPE_NAME,'
      '  ct.COMPANY_TYPE_ABBREV'
      'from'
      '  COMPANY_TYPES ct'
      'where'
      '  (ct.COMPANY_TYPE_CODE = :COMPANY_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 56
    object qryCompanyTypeDataCOMPANY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_NAME'
      Size = 100
    end
    object qryCompanyTypeDataCOMPANY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryCountryData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COUNTRY_NAME,'
      '  c.COUNTRY_ABBREV'
      'from'
      '  COUNTRIES c'
      'where'
      '  (c.COUNTRY_CODE = :COUNTRY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 104
    object qryCountryDataCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Size = 50
    end
    object qryCountryDataCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Size = 5
    end
  end
  object qryLanguageData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'LANGUAGE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  l.LANGUAGE_NAME'
      'from'
      '  LANGUAGES l'
      'where'
      '  (l.LANGUAGE_CODE = :LANGUAGE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 152
    object qryLanguageDataLANGUAGE_NAME: TAbmesWideStringField
      FieldName = 'LANGUAGE_NAME'
      Size = 50
    end
  end
  object qryPartnerClassData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  cc.COMPANY_CLASS_NAME as PARTNER_CLASS_NAME,'
      '  cc.COMPANY_CLASS_ABBREV as PARTNER_CLASS_ABBREV'
      'from'
      '  COMPANY_CLASSES cc'
      'where'
      '  (cc.COMPANY_CLASS_CODE = :PARTNER_CLASS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 200
    object qryPartnerClassDataPARTNER_CLASS_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_CLASS_NAME'
      Size = 100
    end
    object qryPartnerClassDataPARTNER_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'PARTNER_CLASS_ABBREV'
      Size = 100
    end
  end
  object qryPartnerData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COMPANY_NO as PARTNER_NO,'
      '  c.COMPANY_CLASS_CODE as PARTNER_CLASS_CODE,'
      '  Decode('
      '    c.COMPANY_CLASS_CODE,'
      
        '    1, ( Decode(ct.ABBREV_BEFORE, 1, ct.COMPANY_TYPE_ABBREV || '#39 +
        ' '#39') ||'
      '          '#39'"'#39' || c.COMPANY_NAME || '#39'"'#39' ||'
      
        '         Decode(ct.ABBREV_BEFORE, 0, '#39' '#39' || ct.COMPANY_TYPE_ABBR' +
        'EV)'
      '       ),'
      '    2, ( p.FIRST_NAME ||'
      '         Nvl2(p.MIDDLE_NAME,'
      '           '#39' '#39' || p.MIDDLE_NAME || '#39' '#39','
      '           '#39' '#39') ||'
      '         p.LAST_NAME'
      '       ),'
      '    3, c.COMPANY_NAME'
      '  ) as PARTNER_FULL_NAME,'
      '  Decode('
      '    c.COMPANY_CLASS_CODE,'
      '    1, c.SHORT_NAME,'
      '    2, ( p.FIRST_NAME ||'
      '         Nvl2(p.MIDDLE_NAME,'
      '           '#39' '#39' || Substr(p.MIDDLE_NAME, 1, 1) || '#39'. '#39','
      '           '#39' '#39') ||'
      '         p.LAST_NAME'
      '       ),'
      '    3, c.SHORT_NAME'
      '  ) as PARTNER_SHORT_NAME,'
      '  c.COUNTRY_CODE,'
      '  c.STATE,'
      '  c.REGION,'
      '  c.CITY,'
      '  c.ZIP,'
      '  c.ADDRESS,'
      '  c.LANGUAGE_CODE,'
      '  c.COMPANY_NAME,'
      '  c.COMPANY_TYPE_CODE,'
      '  c.TAX_NO as COMPANY_TAX_NO,'
      '  c.BULSTAT || c.BULSTAT_EX as COMPANY_BULSTAT,'
      '  c.VAT_REGISTERED as COMPANY_IS_VAT_REGISTERED,'
      '  p.FIRST_NAME as PERSON_FIRST_NAME,'
      '  p.MIDDLE_NAME as PERSON_MIDDLE_NAME,'
      '  p.LAST_NAME as PERSON_LAST_NAME,'
      '  p.ABBREV as PERSON_ABBREV,'
      '  p.EGN as PERSON_EGN,'
      '  p.BIRTH_DATE as PERSON_BIRTH_DATE,'
      '  p.EDUCATION_CODE as PERSON_EDUCATION_CODE'
      'from'
      '  COMPANIES c,'
      '  PERSONS p,'
      '  COMPANY_TYPES ct'
      'where'
      '  (c.COMPANY_CODE = :PARTNER_CODE) and'
      '  (c.COMPANY_TYPE_CODE = ct.COMPANY_TYPE_CODE(+)) and'
      '  (c.COMPANY_CODE = p.COMPANY_CODE(+))')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 224
    object qryPartnerDataPARTNER_NO: TAbmesFloatField
      FieldName = 'PARTNER_NO'
    end
    object qryPartnerDataPARTNER_CLASS_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CLASS_CODE'
    end
    object qryPartnerDataPARTNER_FULL_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_FULL_NAME'
      Size = 159
    end
    object qryPartnerDataPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
      Size = 44
    end
    object qryPartnerDataCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object qryPartnerDataSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object qryPartnerDataREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object qryPartnerDataCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryPartnerDataZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object qryPartnerDataADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryPartnerDataLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object qryPartnerDataCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 50
    end
    object qryPartnerDataCOMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'COMPANY_TYPE_CODE'
    end
    object qryPartnerDataCOMPANY_TAX_NO: TAbmesFloatField
      FieldName = 'COMPANY_TAX_NO'
    end
    object qryPartnerDataCOMPANY_BULSTAT: TAbmesWideStringField
      FieldName = 'COMPANY_BULSTAT'
      Size = 13
    end
    object qryPartnerDataCOMPANY_IS_VAT_REGISTERED: TAbmesFloatField
      FieldName = 'COMPANY_IS_VAT_REGISTERED'
    end
    object qryPartnerDataPERSON_FIRST_NAME: TAbmesWideStringField
      FieldName = 'PERSON_FIRST_NAME'
      Size = 50
    end
    object qryPartnerDataPERSON_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'PERSON_MIDDLE_NAME'
      Size = 50
    end
    object qryPartnerDataPERSON_LAST_NAME: TAbmesWideStringField
      FieldName = 'PERSON_LAST_NAME'
      Size = 50
    end
    object qryPartnerDataPERSON_ABBREV: TAbmesWideStringField
      FieldName = 'PERSON_ABBREV'
      Size = 5
    end
    object qryPartnerDataPERSON_EGN: TAbmesWideStringField
      FieldName = 'PERSON_EGN'
      Size = 10
    end
    object qryPartnerDataPERSON_BIRTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'PERSON_BIRTH_DATE'
    end
    object qryPartnerDataPERSON_EDUCATION_CODE: TAbmesFloatField
      FieldName = 'PERSON_EDUCATION_CODE'
    end
  end
  object qryPartnerCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Coalesce(Max(c.COMPANY_CODE), -1) as PARTNER_CODE'
      'from'
      '  COMPANIES c'
      'where'
      '  (c.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (c.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 248
    object qryPartnerCodePARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
  end
  object qryShiftData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SHIFT_NAME,'
      '  s.SHIFT_ABBREV'
      'from'
      '  SHIFTS s'
      'where'
      '  (s.SHIFT_CODE = :SHIFT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 248
    object qryShiftDataSHIFT_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_NAME'
      Size = 50
    end
    object qryShiftDataSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
  end
  object qryOccupationPhaseData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_PHASE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  op.OCCUPATION_PHASE_NAME'
      'from'
      '  OCCUPATION_PHASES op'
      'where'
      '  (op.OCCUPATION_PHASE_CODE = :OCCUPATION_PHASE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 296
    object qryOccupationPhaseDataOCCUPATION_PHASE_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE_NAME'
      Size = 50
    end
  end
  object qryCraftTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ct.CRAFT_TYPE_CODE,'
      '  ct.CRAFT_TYPE_NAME'
      'from'
      '  CRAFT_TYPES ct'
      'where'
      '  (ct.CRAFT_TYPE_CODE = :CRAFT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 344
    object qryCraftTypeDataCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
    object qryCraftTypeDataCRAFT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_TYPE_NAME'
      Size = 50
    end
  end
  object qryCraftData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.CRAFT_CODE,'
      '  c.CRAFT_NAME,'
      '  c.CRAFT_TYPE_CODE'
      'from'
      '  CRAFTS c'
      'where'
      '  (c.CRAFT_CODE = :CRAFT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 440
    object qryCraftDataCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
    end
    object qryCraftDataCRAFT_NAME: TAbmesWideStringField
      FieldName = 'CRAFT_NAME'
      Size = 50
    end
    object qryCraftDataCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
    end
  end
  object qryOccupationData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE,'
      '  o.OCCUPATION_NAME,'
      '  o.DEPT_CODE,'
      '  o.OCCUPATION_BEGIN_DATE,'
      '  o.OCCUPATION_END_DATE,'
      '  o.OCCUPATION_LEVEL,'
      '  ( select'
      '      os.SHIFT_CODE'
      '    from'
      '      OCCUPATION_SHIFTS os'
      '    where'
      '      (os.OCCUPATION_CODE = o.OCCUPATION_CODE) and'
      '      (ContextDate between os.BEGIN_DATE and os.END_DATE)'
      '  ) as SHIFT_CODE,'
      '  o.NOTES,'
      '  o.IS_MAIN,'
      '  o.OCCUPATION_PHASE_CODE,'
      '  o.PRODUCT_CODE,'
      '  o.CRAFT_CODE,'
      ''
      '  os.BASE_SALARY,'
      '  os.DATE_UNIT_CODE,'
      '  os.MIN_SALARY_RATIO_COEF,'
      '  os.MAX_SALARY_RATIO_COEF,'
      ''
      
        '  Cast(MiscUtils.OccupationProfessions(:OCCUPATION_CODE) as Varc' +
        'har2(250 char)) as OCCUPATION_PROFESSIONS,'
      
        '  Cast(MiscUtils.OccupationWorkDepts(:OCCUPATION_CODE) as Varcha' +
        'r2(250 char)) as OCCUPATION_WORK_DEPTS'
      ''
      'from'
      '  OCCUPATIONS o,'
      '  OCCUPATION_SALARIES os'
      'where'
      '  (o.OCCUPATION_CODE = os.OCCUPATION_CODE(+)) and'
      '  (ContextDate between os.BEGIN_DATE(+) and os.END_DATE(+)) and'
      '  (o.OCCUPATION_CODE = :OCCUPATION_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 296
    object qryOccupationDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationDataOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object qryOccupationDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryOccupationDataOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_BEGIN_DATE'
    end
    object qryOccupationDataOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
    end
    object qryOccupationDataOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object qryOccupationDataSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object qryOccupationDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryOccupationDataIS_MAIN: TAbmesFloatField
      FieldName = 'IS_MAIN'
    end
    object qryOccupationDataOCCUPATION_PHASE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_PHASE_CODE'
    end
    object qryOccupationDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryOccupationDataCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
    end
    object qryOccupationDataBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
    end
    object qryOccupationDataDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object qryOccupationDataMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
    end
    object qryOccupationDataMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
    end
    object qryOccupationDataOCCUPATION_PROFESSIONS: TAbmesWideStringField
      FieldName = 'OCCUPATION_PROFESSIONS'
      Size = 250
    end
    object qryOccupationDataOCCUPATION_WORK_DEPTS: TAbmesWideStringField
      FieldName = 'OCCUPATION_WORK_DEPTS'
      Size = 250
    end
  end
  object qryOccupationCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  o.OCCUPATION_CODE'
      'from'
      '  OCCUPATIONS o'
      'where'
      '  (o.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (o.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 296
    object qryOccupationCodeOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
  end
  object qrySpecLineData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sl.NO_AS_TEXT,'
      '  sl.DETAIL_CODE,'
      '  sl.DETAIL_TECH_QUANTITY,'
      '  sl.TOTAL_DETAIL_TECH_QUANTITY,'
      '  sl.NOTES,'
      '  sl.PRODUCT_CODE,'
      '  sl.PRODUCT_TECH_QUANTITY,'
      '  sl.IS_FOR_SINGLE_USE,'
      '  sl.CONSTRUCTION_NOTES,'
      '  sl.IS_COMPLETE,'
      '  sl.SPEC_PRODUCT_CODE'
      'from'
      '  SPEC_LINES sl'
      'where'
      '  (sl.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (sl.SPEC_LINE_CODE = :SPEC_LINE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 520
    object qrySpecLineDataNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Required = True
      Size = 100
    end
    object qrySpecLineDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qrySpecLineDataDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qrySpecLineDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qrySpecLineDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySpecLineDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySpecLineDataPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qrySpecLineDataIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
    end
    object qrySpecLineDataCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object qrySpecLineDataIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qrySpecLineDataSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
      Required = True
    end
  end
  object qrySpecStageData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_MODEL_VARIANT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_LINE_STAGE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_LINE_STAGE_NO,'
      '  smvs.DEPT_CODE,'
      '  smvs.TREATMENT_WORKDAYS,'
      '  smvs.OUTGOING_WORKDAYS,'
      '  smvs.IS_AUTO_MOVEMENT,'
      '  smvs.EXTERNAL_WORK_PRICE,'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_LINE_CODE'
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs'
      'where'
      '  (smvs.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE) and'
      '  (smvs.SPEC_LINE_CODE = :SPEC_LINE_CODE) and'
      '  (smvs.SPEC_MODEL_VARIANT_NO = :SPEC_MODEL_VARIANT_NO) and'
      '  (smvs.SPEC_LINE_STAGE_CODE = :SPEC_LINE_STAGE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 568
    object qrySpecStageDataSPEC_LINE_STAGE_NO: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_NO'
    end
    object qrySpecStageDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qrySpecStageDataTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qrySpecStageDataOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qrySpecStageDataIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qrySpecStageDataEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object qrySpecStageDataSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecStageDataSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
  end
  object qrySpecStageCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  smvs.SPEC_PRODUCT_CODE,'
      '  smvs.SPEC_LINE_CODE,'
      '  smvs.SPEC_MODEL_VARIANT_NO,'
      '  smvs.SPEC_LINE_STAGE_CODE'
      'from'
      '  SPEC_MODEL_VARIANT_STAGES smvs'
      'where'
      '  (smvs.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (smvs.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 544
    object qrySpecStageCodeSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object qrySpecStageCodeSPEC_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_CODE'
    end
    object qrySpecStageCodeSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object qrySpecStageCodeSPEC_LINE_STAGE_CODE: TAbmesFloatField
      FieldName = 'SPEC_LINE_STAGE_CODE'
    end
  end
  object qryOperationTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OPERATION_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ot.OPERATION_TYPE_NAME,'
      '  ot.OPERATION_TYPE_ABBREV'
      'from'
      '  OPERATION_TYPES ot'
      'where'
      '  (ot.OPERATION_TYPE_CODE = :OPERATION_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 488
    object qryOperationTypeDataOPERATION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OPERATION_TYPE_NAME'
      Size = 100
    end
    object qryOperationTypeDataOPERATION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'OPERATION_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryMaterialListLineData: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  mll.NO_AS_TEXT,'
      '  mll.FORK_NO,'
      '  mll.DETAIL_CODE,'
      '  mll.DETAIL_TECH_QUANTITY,'
      '  mll.NOTES,'
      '  mll.LINE_DETAIL_TECH_QUANTITY,'
      '  mll.PRODUCT_CODE,'
      '  mll.PRODUCT_TECH_QUANTITY,'
      '  mll.IS_FOR_SINGLE_USE,'
      '  mll.CONSTRUCTION_NOTES,'
      '  mll.IS_COMPLETE,'
      '  mll.ML_OBJECT_BRANCH_CODE,'
      '  mll.ML_OBJECT_CODE'
      'from'
      '  MATERIAL_LIST_LINES mll'
      'where'
      '  (mll.MLL_OBJECT_BRANCH_CODE = :MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = :MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 520
    object qryMaterialListLineDataNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Required = True
      Size = 100
    end
    object qryMaterialListLineDataFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
      Required = True
    end
    object qryMaterialListLineDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object qryMaterialListLineDataDETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryMaterialListLineDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object qryMaterialListLineDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryMaterialListLineDataPRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_TECH_QUANTITY'
    end
    object qryMaterialListLineDataIS_FOR_SINGLE_USE: TAbmesFloatField
      FieldName = 'IS_FOR_SINGLE_USE'
    end
    object qryMaterialListLineDataCONSTRUCTION_NOTES: TAbmesWideStringField
      FieldName = 'CONSTRUCTION_NOTES'
      Size = 250
    end
    object qryMaterialListLineDataIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
    end
    object qryMaterialListLineDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qryMaterialListLineDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      Required = True
    end
  end
  object qryRealStageData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlms.ML_MODEL_STAGE_NO,'
      '  mlms.DEPT_CODE,'
      '  mlms.TREATMENT_WORKDAYS,'
      '  mlms.OUTGOING_WORKDAYS,'
      '  mlms.IS_AUTO_MOVEMENT,'
      '  mlms.EXTERNAL_WORK_PRICE,'
      '  mlms.MLL_OBJECT_BRANCH_CODE,'
      '  mlms.MLL_OBJECT_CODE'
      'from'
      '  ML_MODEL_STAGES mlms'
      'where'
      '  (mlms.MLMS_OBJECT_BRANCH_CODE = :MLMS_OBJECT_BRANCH_CODE) and'
      '  (mlms.MLMS_OBJECT_CODE = :MLMS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 568
    object qryRealStageDataML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object qryRealStageDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryRealStageDataTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object qryRealStageDataOUTGOING_WORKDAYS: TAbmesFloatField
      FieldName = 'OUTGOING_WORKDAYS'
    end
    object qryRealStageDataIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
    end
    object qryRealStageDataEXTERNAL_WORK_PRICE: TAbmesFloatField
      FieldName = 'EXTERNAL_WORK_PRICE'
    end
    object qryRealStageDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object qryRealStageDataMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
  end
  object qryRealStageCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  mlms.MLMS_OBJECT_BRANCH_CODE,'
      '  mlms.MLMS_OBJECT_CODE'
      'from'
      '  ML_MODEL_STAGES mlms'
      'where'
      '  (mlms.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (mlms.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 544
    object qryRealStageCodeMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object qryRealStageCodeMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
  end
  object qryDocItemData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  di.DOC_ITEM_NO,'
      ''
      '  ( select'
      '      dit.DOC_ITEM_TYPE_NAME'
      '    from'
      '      DOC_ITEM_TYPES dit'
      '    where'
      '      (dit.DOC_ITEM_TYPE_CODE = di.DOC_ITEM_TYPE_CODE)'
      '  ) as DOC_ITEM_TYPE_NAME,'
      ''
      '  di.DOC_ITEM_NAME,'
      '  di.DEVELOP_EMPLOYEE_CODE,'
      '  di.DEVELOP_DATE,'
      '  di.DEVELOP_TIME,'
      '  di.AUTHORIZE_EMPLOYEE_CODE,'
      '  di.AUTHORIZE_DATE,'
      '  di.AUTHORIZE_TIME,'
      '  di.APPROVE_EMPLOYEE_CODE,'
      '  di.APPROVE_DATE,'
      '  di.APPROVE_TIME,'
      '  di.NOTES,'
      '  di.IS_INACTIVE'
      'from'
      '  DOC_ITEMS di'
      'where'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE) and'
      '  (di.DOC_ITEM_CODE = :DOC_ITEM_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 536
    object qryDocItemDataDOC_ITEM_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_NO'
    end
    object qryDocItemDataDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object qryDocItemDataDOC_ITEM_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object qryDocItemDataDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object qryDocItemDataDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object qryDocItemDataDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object qryDocItemDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryDocItemDataAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object qryDocItemDataAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object qryDocItemDataAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object qryDocItemDataAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object qryDocItemDataAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object qryDocItemDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryDocItemDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object qryBaseGroupCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bg.BASE_GROUP_CODE'
      'from'
      '  BASE_GROUPS bg'
      'where'
      '  (bg.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (bg.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 344
    object qryBaseGroupCodeBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
    end
  end
  object qryBaseGroupData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BASE_GROUP_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bg.BASE_GROUP_NO,'
      '  bg.BASE_GROUP_NAME,'
      '  bg.GROUP_DEPT_CODE'
      'from'
      '  BASE_GROUPS bg'
      'where'
      '  (bg.BASE_GROUP_CODE = :BASE_GROUP_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 344
    object qryBaseGroupDataBASE_GROUP_NO: TAbmesFloatField
      FieldName = 'BASE_GROUP_NO'
    end
    object qryBaseGroupDataBASE_GROUP_NAME: TAbmesWideStringField
      FieldName = 'BASE_GROUP_NAME'
      Size = 100
    end
    object qryBaseGroupDataGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
  end
  object qryBudgetOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bo.BUDGET_ORDER_BRANCH_CODE,'
      '  bo.BUDGET_ORDER_CODE'
      'from'
      '  BUDGET_ORDERS bo'
      'where'
      '  (bo.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (bo.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 56
    object qryBudgetOrderCodeBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBudgetOrderCodeBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
  end
  object qryBudgetOrderItemCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  boi.BUDGET_ORDER_BRANCH_CODE,'
      '  boi.BUDGET_ORDER_CODE,'
      '  boi.BUDGET_ORDER_ITEM_CODE'
      'from'
      '  BUDGET_ORDER_ITEMS boi'
      'where'
      '  (boi.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (boi.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 120
    object qryBudgetOrderItemCodeBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBudgetOrderItemCodeBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBudgetOrderItemCodeBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
  end
  object qryProductStoreCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ps.PRODUCT_STORE_CODE'
      'from'
      '  PRODUCT_STORES ps'
      'where'
      '  (ps.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (ps.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 168
    object qryProductStoreCodePRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_STORE_CODE'
    end
  end
  object qryProductStoreData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_STORE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ps.PRODUCT_CODE,'
      '  ps.STORE_CODE,'
      '  ps.MIN_QUANTITY,'
      '  ps.BEGIN_DATE,'
      '  ps.END_DATE'
      'from'
      '  PRODUCT_STORES ps'
      'where'
      '  (ps.PRODUCT_STORE_CODE = :PRODUCT_STORE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 24
    object qryProductStoreDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryProductStoreDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryProductStoreDataMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
    end
    object qryProductStoreDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryProductStoreDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  object qryDeficitCoverDecisionCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dcd.DCD_OBJECT_BRANCH_CODE,'
      '  dcd.DCD_OBJECT_CODE'
      'from'
      '  DEFICIT_COVER_DECISIONS dcd'
      'where'
      '  (dcd.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (dcd.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 216
    object qryDeficitCoverDecisionCodeDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryDeficitCoverDecisionCodeDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
  end
  object qryEngineeringOrderTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eot.ENGINEERING_ORDER_TYPE_NAME,'
      '  eot.ENGINEERING_ORDER_TYPE_ABBREV'
      'from'
      '  ENGINEERING_ORDER_TYPES eot'
      'where'
      
        '  (eot.ENGINEERING_ORDER_TYPE_CODE = :ENGINEERING_ORDER_TYPE_COD' +
        'E)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 584
    object qryEngineeringOrderTypeDataENGINEERING_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_NAME'
      Size = 50
    end
    object qryEngineeringOrderTypeDataENGINEERING_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_TYPE_ABBREV'
      Size = 5
    end
  end
  object qryPriorityData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PRIORITY_NO,'
      '  p.PRIORITY_NAME,'
      '  p.PRIORITY_COLOR,'
      '  p.PRIORITY_BACKGROUND_COLOR'
      'from'
      '  PRIORITIES p'
      'where'
      '  (p.PRIORITY_CODE = :PRIORITY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 24
    object qryPriorityDataPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryPriorityDataPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object qryPriorityDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryPriorityDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object qryProductionOrderBaseTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pobt.PROD_ORDER_BASE_TYPE_NAME,'
      '  pobt.PROD_ORDER_BASE_TYPE_ABBREV'
      'from'
      '  PROD_ORDER_BASE_TYPES pobt'
      'where'
      '  (pobt.PROD_ORDER_BASE_TYPE_CODE = :PROD_ORDER_BASE_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 72
    object qryProductionOrderBaseTypeDataPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_NAME'
      Size = 100
    end
    object qryProductionOrderBaseTypeDataPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryProductionOrderTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  pot.PRODUCTION_ORDER_TYPE_NAME,'
      '  pot.PRODUCTION_ORDER_TYPE_ABBREV,'
      '  pot.PROD_ORDER_BASE_TYPE_CODE'
      'from'
      '  PRODUCTION_ORDER_TYPES pot'
      'where'
      '  (pot.PRODUCTION_ORDER_TYPE_CODE = :PRODUCTION_ORDER_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 368
    Top = 392
    object qryProductionOrderTypeDataPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_NAME'
      Size = 100
    end
    object qryProductionOrderTypeDataPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryProductionOrderTypeDataPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
  end
  object qryEngineeringOrderCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eo.ENGINEERING_ORDER_CODE'
      'from'
      '  ENGINEERING_ORDERS eo'
      'where'
      '  (eo.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (eo.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 264
    object qryEngineeringOrderCodeENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
  end
  object qryEngineeringOrderData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ENGINEERING_ORDER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eo.ENGINEERING_ORDER_NO,'
      '  eo.ENGINEERING_ORDER_TYPE_CODE,'
      '  eo.ENGINEERING_ORDER_BRANCH_CODE,'
      '  eo.PRIORITY_CODE,'
      '  eo.ORDER_DEPT_CODE,'
      '  eo.PRODUCT_CODE,'
      '  eo.THOROUGHLY_ENG_PRODUCT_CODE,'
      
        '  %INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1)~(-eo.' +
        'ENGINEERING_PLAN_WORKDAYS)] as ENGINEERING_PLAN_BEGIN_DATE,'
      '  eo.ENGINEERING_PLAN_END_DATE,'
      '  eo.ENGINEERING_DEPT_CODE,'
      '  eo.ENGINEERING_EMPLOYEE_CODE,'
      '  eo.ACTIVATE_EMPLOYEE_CODE,'
      '  eo.ACTIVATE_DATE,'
      '  eo.ACTIVATE_TIME,'
      '  eo.CLOSE_EMPLOYEE_CODE,'
      '  eo.CLOSE_DATE,'
      '  eo.CLOSE_TIME,'
      '  eo.ANNUL_EMPLOYEE_CODE,'
      '  eo.ANNUL_DATE,'
      '  eo.ANNUL_TIME,'
      '  eo.CREATE_EMPLOYEE_CODE,'
      '  eo.CREATE_DATE,'
      '  eo.CREATE_TIME,'
      '  eo.CHANGE_EMPLOYEE_CODE,'
      '  eo.CHANGE_DATE,'
      '  eo.CHANGE_TIME,'
      '  eo.CHANGE_COUNT'
      'from'
      '  ENGINEERING_ORDERS eo'
      'where'
      '  (eo.ENGINEERING_ORDER_CODE = :ENGINEERING_ORDER_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 
          'INC_DATE_BY_WORKDAYS[(eo.ENGINEERING_PLAN_END_DATE + 1)~(-eo.ENG' +
          'INEERING_PLAN_WORKDAYS)]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 72
    object qryEngineeringOrderDataENGINEERING_ORDER_NO: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_NO'
    end
    object qryEngineeringOrderDataENGINEERING_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_TYPE_CODE'
    end
    object qryEngineeringOrderDataENGINEERING_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_BRANCH_CODE'
    end
    object qryEngineeringOrderDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryEngineeringOrderDataORDER_DEPT_CODE: TAbmesFloatField
      FieldName = 'ORDER_DEPT_CODE'
    end
    object qryEngineeringOrderDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryEngineeringOrderDataTHOROUGHLY_ENG_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'THOROUGHLY_ENG_PRODUCT_CODE'
    end
    object qryEngineeringOrderDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
    end
    object qryEngineeringOrderDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object qryEngineeringOrderDataENGINEERING_DEPT_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_DEPT_CODE'
    end
    object qryEngineeringOrderDataENGINEERING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderDataACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ACTIVATE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderDataACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_DATE'
    end
    object qryEngineeringOrderDataACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'ACTIVATE_TIME'
    end
    object qryEngineeringOrderDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryEngineeringOrderDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryEngineeringOrderDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryEngineeringOrderDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryEngineeringOrderDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEngineeringOrderDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEngineeringOrderDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryEngineeringOrderDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryEngineeringOrderDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryEngineeringOrderDataCHANGE_COUNT: TAbmesFloatField
      FieldName = 'CHANGE_COUNT'
    end
  end
  object qryCurrencyData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.CURRENCY_ABBREV,'
      '  c.CURRENCY_NAME'
      'from'
      '  CURRENCIES c'
      'where'
      '  (c.CURRENCY_CODE = :CURRENCY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 120
    object qryCurrencyDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qryCurrencyDataCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 50
    end
  end
  object qryProcessData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PROCESS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  p.PROCESS_ABBREV,'
      '  p.PROCESS_NAME'
      'from'
      '  PROCESSES p'
      'where'
      '  (p.PROCESS_CODE = :PROCESS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 168
    object qryProcessDataPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 10
    end
    object qryProcessDataPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
  end
  object qryStoreDealTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sdt.STORE_DEAL_TYPE_ABBREV,'
      '  sdt.IN_OUT'
      'from'
      '  STORE_DEAL_TYPES sdt'
      'where'
      '  (sdt.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 216
    object qryStoreDealTypeDataSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qryStoreDealTypeDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
  end
  object qryStoreDealCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sd.STORE_DEAL_OBJECT_BRANCH_CODE,'
      '  sd.STORE_DEAL_OBJECT_CODE'
      'from'
      '  STORE_DEALS sd'
      'where'
      '  (sd.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (sd.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 312
    object qryStoreDealCodeSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object qryStoreDealCodeSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
  end
  object qryStoreDealData: TAbmesSQLQuery
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
      '  sd.STORE_CODE,'
      '  sd.STORE_DEAL_TYPE_CODE,'
      '  sd.STORE_DEAL_DATE,'
      '  sd.STORE_DEAL_NO,'
      '  sd.PRODUCT_CODE,'
      '  sd.WANTED_QUANTITY,'
      '  sd.QUANTITY,'
      '  sd.ACCOUNT_QUANTITY,'
      '  sd.CURRENCY_CODE,'
      '  sd.TOTAL_PRICE,'
      '  sd.STORE_EMPLOYEE_CODE,'
      '  sd.OTHER_EMPLOYEE_CODE,'
      '  sd.REQUEST_EMPLOYEE_CODE,'
      '  sd.DEPT_CODE,'
      '  sd.BND_PROCESS_CODE,'
      '  sd.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  sd.BND_PROCESS_OBJECT_CODE,'
      '  po.PROCESS_OBJECT_IDENTIFIER,'
      '  sd.CREATE_EMPLOYEE_CODE,'
      '  sd.CREATE_DATE,'
      '  sd.CREATE_TIME,'
      '  sd.STORNO_EMPLOYEE_CODE,'
      '  sd.STORNO_DATE,'
      '  sd.STORNO_TIME'
      'from'
      '  STORE_DEALS sd,'
      '  PROCESS_OBJECTS po'
      'where'
      
        '  (sd.STORE_DEAL_OBJECT_BRANCH_CODE = :STORE_DEAL_OBJECT_BRANCH_' +
        'CODE) and'
      '  (sd.STORE_DEAL_OBJECT_CODE = :STORE_DEAL_OBJECT_CODE) and'
      '  '
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (po.PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 128
    object qryStoreDealDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryStoreDealDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object qryStoreDealDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object qryStoreDealDataSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object qryStoreDealDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryStoreDealDataWANTED_QUANTITY: TAbmesFloatField
      FieldName = 'WANTED_QUANTITY'
    end
    object qryStoreDealDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryStoreDealDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryStoreDealDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryStoreDealDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryStoreDealDataSTORE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORE_EMPLOYEE_CODE'
    end
    object qryStoreDealDataOTHER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_CODE'
    end
    object qryStoreDealDataREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object qryStoreDealDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryStoreDealDataBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object qryStoreDealDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryStoreDealDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryStoreDealDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object qryStoreDealDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryStoreDealDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryStoreDealDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryStoreDealDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryStoreDealDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryStoreDealDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
  end
  object qryOperationMovementTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OPERATION_MOVEMENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  omt.OPERATION_MOVEMENT_TYPE_ABBREV,'
      '  omt.OPERATION_MOVEMENT_TYPE_NAME'
      'from'
      '  OPERATION_MOVEMENT_TYPES omt'
      'where'
      
        '  (omt.OPERATION_MOVEMENT_TYPE_CODE = :OPERATION_MOVEMENT_TYPE_C' +
        'ODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 264
    object qryOperationMovementTypeDataOPERATION_MOVEMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_ABBREV'
      Size = 100
    end
    object qryOperationMovementTypeDataOPERATION_MOVEMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OPERATION_MOVEMENT_TYPE_NAME'
      Size = 100
    end
  end
  object qryOperationMovementCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  om.OM_BRANCH_CODE,'
      '  om.OM_CODE'
      'from'
      '  OPERATION_MOVEMENTS om'
      'where'
      '  (om.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (om.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 816
    Top = 360
    object qryOperationMovementCodeOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object qryOperationMovementCodeOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
    end
  end
  object qryOperationMovementData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  om.OM_BRANCH_CODE,'
      '  om.OM_NO,'
      '  om.OPERATION_MOVEMENT_TYPE_CODE,'
      '  om.OM_DATE,'
      '  om.OM_TIME,'
      '  om.FROM_EMPLOYEE_CODE,'
      '  om.FROM_TEAM_CODE,'
      '  om.TO_EMPLOYEE_CODE,'
      '  om.TO_TEAM_CODE,'
      '  om.TO_DEPT_CODE,'
      '  om.WASTE_DOC_NO,'
      '  om.WASTE_DOC_DATE,'
      '  om.WORK_DETAIL_TECH_QUANTITY,'
      '  om.TOTAL_DETAIL_TECH_QUANTITY,'
      '  om.QA_DETAIL_TECH_QUANTITY,'
      '  om.QA_EMPLOYEE_CODE,'
      '  om.CREATE_EMPLOYEE_CODE,'
      '  om.CREATE_DATE,'
      '  om.CREATE_TIME,'
      '  om.STORNO_EMPLOYEE_CODE,'
      '  om.STORNO_DATE,'
      '  om.STORNO_TIME,'
      '  om.BND_OM_BRANCH_CODE,'
      '  om.BND_OM_CODE,'
      '  om.FROM_MLMSO_OBJECT_BRANCH_CODE,'
      '  om.FROM_MLMSO_OBJECT_CODE,'
      '  om.TO_MLMSO_OBJECT_BRANCH_CODE,'
      '  om.TO_MLMSO_OBJECT_CODE,'
      '  om.REPLACED_OM_BRANCH_CODE,'
      '  om.REPLACED_OM_CODE,'
      
        '  ModelUtils.GetOperationMovementTotalPrice(om.OM_BRANCH_CODE, o' +
        'm.OM_CODE) as TOTAL_PRICE,'
      
        '  (om.WORK_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as ' +
        'WORK_PRODUCT_TECH_QUANTITY,'
      
        '  (om.TOTAL_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as' +
        ' TOTAL_PRODUCT_TECH_QUANTITY,'
      
        '  (om.QA_DETAIL_TECH_QUANTITY * mll.PRODUCT_TECH_QUANTITY) as QA' +
        '_PRODUCT_TECH_QUANTITY'
      'from'
      '  OPERATION_MOVEMENTS om,'
      '  MLMS_OPERATIONS mlmso,'
      '  ML_MODEL_STAGES mlms,'
      '  MATERIAL_LIST_LINES mll'
      'where'
      '  (om.OM_BRANCH_CODE = :OM_BRANCH_CODE) and'
      '  (om.OM_CODE = :OM_CODE) and'
      ''
      
        '  (mlmso.MLMSO_OBJECT_BRANCH_CODE = om.FROM_MLMSO_OBJECT_BRANCH_' +
        'CODE) and'
      '  (mlmso.MLMSO_OBJECT_CODE = om.FROM_MLMSO_OBJECT_CODE) and'
      ''
      
        '  (mlms.MLMS_OBJECT_BRANCH_CODE = mlmso.MLMS_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (mlms.MLMS_OBJECT_CODE = mlmso.MLMS_OBJECT_CODE) and'
      '  '
      '  (mll.MLL_OBJECT_BRANCH_CODE = mlms.MLL_OBJECT_BRANCH_CODE) and'
      '  (mll.MLL_OBJECT_CODE = mlms.MLL_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 176
    object qryOperationMovementDataOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object qryOperationMovementDataOM_NO: TAbmesFloatField
      FieldName = 'OM_NO'
    end
    object qryOperationMovementDataOPERATION_MOVEMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_MOVEMENT_TYPE_CODE'
    end
    object qryOperationMovementDataOM_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_DATE'
    end
    object qryOperationMovementDataOM_TIME: TAbmesSQLTimeStampField
      FieldName = 'OM_TIME'
    end
    object qryOperationMovementDataFROM_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FROM_EMPLOYEE_CODE'
    end
    object qryOperationMovementDataFROM_TEAM_CODE: TAbmesFloatField
      FieldName = 'FROM_TEAM_CODE'
    end
    object qryOperationMovementDataTO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'TO_EMPLOYEE_CODE'
    end
    object qryOperationMovementDataTO_TEAM_CODE: TAbmesFloatField
      FieldName = 'TO_TEAM_CODE'
    end
    object qryOperationMovementDataTO_DEPT_CODE: TAbmesFloatField
      FieldName = 'TO_DEPT_CODE'
    end
    object qryOperationMovementDataWASTE_DOC_NO: TAbmesWideStringField
      FieldName = 'WASTE_DOC_NO'
    end
    object qryOperationMovementDataWASTE_DOC_DATE: TAbmesSQLTimeStampField
      FieldName = 'WASTE_DOC_DATE'
    end
    object qryOperationMovementDataWORK_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementDataTOTAL_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementDataQA_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_DETAIL_TECH_QUANTITY'
    end
    object qryOperationMovementDataQA_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'QA_EMPLOYEE_CODE'
    end
    object qryOperationMovementDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryOperationMovementDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryOperationMovementDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryOperationMovementDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryOperationMovementDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryOperationMovementDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryOperationMovementDataBND_OM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_OM_BRANCH_CODE'
    end
    object qryOperationMovementDataBND_OM_CODE: TAbmesFloatField
      FieldName = 'BND_OM_CODE'
    end
    object qryOperationMovementDataFROM_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementDataFROM_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'FROM_MLMSO_OBJECT_CODE'
    end
    object qryOperationMovementDataTO_MLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'TO_MLMSO_OBJECT_BRANCH_CODE'
    end
    object qryOperationMovementDataTO_MLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'TO_MLMSO_OBJECT_CODE'
    end
    object qryOperationMovementDataREPLACED_OM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REPLACED_OM_BRANCH_CODE'
    end
    object qryOperationMovementDataREPLACED_OM_CODE: TAbmesFloatField
      FieldName = 'REPLACED_OM_CODE'
    end
    object qryOperationMovementDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryOperationMovementDataWORK_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
    end
    object qryOperationMovementDataQA_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'QA_PRODUCT_TECH_QUANTITY'
    end
  end
  object qryProductOriginData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_ORIGIN_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  po.PRODUCT_ORIGIN_NAME,'
      '  po.PRODUCT_ORIGIN_ABBREV'
      'from'
      '  PRODUCT_ORIGINS po'
      'where'
      '  (po.PRODUCT_ORIGIN_CODE = :PRODUCT_ORIGIN_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 312
    object qryProductOriginDataPRODUCT_ORIGIN_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_NAME'
      Size = 50
    end
    object qryProductOriginDataPRODUCT_ORIGIN_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ORIGIN_ABBREV'
      Size = 5
    end
  end
  object qryTransientStatusData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'TRANSIENT_STATUS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ts.TRANSIENT_STATUS_NAME'
      'from'
      '  TRANSIENT_STATUSES ts'
      'where'
      '  (ts.TRANSIENT_STATUS_CODE = :TRANSIENT_STATUS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 360
    object qryTransientStatusDataTRANSIENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'TRANSIENT_STATUS_NAME'
      Required = True
      Size = 100
    end
  end
  object qrySelfExistentStatusData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ses.SELF_EXISTENT_STATUS_NAME'
      'from'
      '  SELF_EXISTENT_STATUSES ses'
      'where'
      '  (ses.SELF_EXISTENT_STATUS_CODE = :SELF_EXISTENT_STATUS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 408
    object qrySelfExistentStatusDataSELF_EXISTENT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'SELF_EXISTENT_STATUS_NAME'
      Size = 100
    end
  end
  object qryCountWorkdays: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select '
      '  %COUNT_WORKDAYS[:BEGIN_DATE~:END_DATE] as WORKDAY_COUNT'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[:BEGIN_DATE~:END_DATE]'
        ParamType = ptInput
        Value = ':BEGIN_DATE :END_DATE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 808
    Top = 496
    object qryCountWorkdaysWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
    end
  end
  object qryProcessObjectData: TAbmesSQLQuery
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
      'select'
      '  po.PROCESS_OBJECT_IDENTIFIER'
      'from'
      '  PROCESS_OBJECTS po'
      'where'
      
        '  (po.PROCESS_OBJECT_BRANCH_CODE = :PROCESS_OBJECT_BRANCH_CODE) ' +
        'and'
      '  (po.PROCESS_OBJECT_CODE = :PROCESS_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 456
    object qryProcessObjectDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
  end
  object qryDocItemActiveFields: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'DOC_ITEM_TYPE_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOC_ITEM_TYPE_IDENTIFIER'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  Cast(f.FIELD_IDENTIFIER_PATH as Varchar2(250 char)) as FIELD_I' +
        'DENTIFIER_PATH,'
      '  f.FIELD_IDENTIFIER,'
      
        '  Cast(f.FIELD_NAME_PATH as Varchar2(250 char)) as FIELD_NAME_PA' +
        'TH,'
      '  f.FIELD_NAME,'
      '  f.IS_VISIBLE,'
      '  ( select'
      '      diaf.FIELD_INTEGER_IDENTIFIER'
      '    from'
      '      DI_ACTIVE_FIELDS diaf'
      '    where'
      '      (diaf.FIELD_FULL_IDENTIFIER = f.FIELD_IDENTIFIER_PATH)'
      '  ) as FIELD_INTEGER_IDENTIFIER,'
      '  ( select'
      '      Sign(Count(*))'
      '    from'
      '      DI_ACTIVE_DATA_TYPE_FIELDS diadtf'
      '    where'
      '      (diadtf.DI_ACTIVE_DATA_TYPE_CODE = f.FIELD_TYPE_CODE)'
      '  ) as HAS_CHILD_FIELDS,'
      '  f.FIELD_LEVEL'
      ''
      'from'
      '  ( select'
      
        '      (:DOC_ITEM_TYPE_IDENTIFIER || Sys_Connect_By_Path(diadtf.F' +
        'IELD_IDENTIFIER, '#39'.'#39')) as FIELD_IDENTIFIER_PATH,'
      '      diadtf.FIELD_IDENTIFIER,'
      
        '      SubStr(Replace(Sys_Connect_By_Path(diadtf.FIELD_NAME, '#39#164#39')' +
        ', '#39#164#39', '#39' - '#39'), Length('#39' - '#39')) as FIELD_NAME_PATH,'
      '      diadtf.FIELD_NAME,'
      '      diadtf.IS_VISIBLE,'
      
        '      Sys_Connect_By_Path(LPad(To_Char(diadtf.ROW_NO), 5, '#39'0'#39') |' +
        '| '#39':'#39' || LPad(To_Char(diadtf.FIELD_NO), 5, '#39'0'#39'), '#39'.'#39') as TYPE_FI' +
        'ELD_NO_PATH,'
      '      diadtf.FIELD_TYPE_CODE,'
      '      level as FIELD_LEVEL'
      '    from'
      '      ( select'
      '          diadtf1.*,'
      '          rownum as ROW_NO'
      '        from'
      '          ( select'
      
        '              t.AS_DI_ACTIVE_DATA_TYPE_CODE as DI_ACTIVE_DATA_TY' +
        'PE_CODE,'
      '              Max(t.LEVEL_NO) as LEVEL_NO,'
      
        '              Min(f.FIELD_NO)                       keep (dense_' +
        'rank last order by t.LEVEL_NO) as FIELD_NO,'
      '              f.FIELD_IDENTIFIER,'
      
        '              Min(f.FIELD_TYPE_CODE)                keep (dense_' +
        'rank first order by t.LEVEL_NO) as FIELD_TYPE_CODE,'
      
        '              Min(f.FIELD_NAME)                     keep (dense_' +
        'rank first order by t.LEVEL_NO) as FIELD_NAME,'
      
        '              Min(f.IS_VISIBLE)                     keep (dense_' +
        'rank first order by t.LEVEL_NO) as IS_VISIBLE'
      '            from'
      '              ( select'
      
        '                  CONNECT_BY_ROOT diadt2.DI_ACTIVE_DATA_TYPE_COD' +
        'E as AS_DI_ACTIVE_DATA_TYPE_CODE,'
      '                  diadt2.DI_ACTIVE_DATA_TYPE_CODE,'
      '                  level as LEVEL_NO'
      '                from'
      '                  DI_ACTIVE_DATA_TYPES diadt2'
      '                connect by'
      
        '                  (diadt2.DI_ACTIVE_DATA_TYPE_CODE = prior diadt' +
        '2.ANCESTOR_TYPE_CODE)'
      '              ) t,'
      '              DI_ACTIVE_DATA_TYPE_FIELDS f'
      '            where'
      
        '              (f.DI_ACTIVE_DATA_TYPE_CODE = t.DI_ACTIVE_DATA_TYP' +
        'E_CODE)'
      '            group by'
      '              t.AS_DI_ACTIVE_DATA_TYPE_CODE,'
      '              f.FIELD_IDENTIFIER'
      '            order by'
      '              DI_ACTIVE_DATA_TYPE_CODE,'
      '              LEVEL_NO desc,'
      '              FIELD_NO'
      '          ) diadtf1'
      '      ) diadtf'
      '    start with'
      '      (diadtf.DI_ACTIVE_DATA_TYPE_CODE ='
      '        ( select'
      '            diadt.DI_ACTIVE_DATA_TYPE_CODE'
      '          from'
      '            DI_ACTIVE_DATA_TYPES diadt'
      '          where'
      
        '            (diadt.DI_ACTIVE_DATA_TYPE_IDENTIFIER = '#39'T'#39' || :DOC_' +
        'ITEM_TYPE_IDENTIFIER)'
      '        )'
      '      )'
      '    connect by'
      
        '      (diadtf.DI_ACTIVE_DATA_TYPE_CODE = prior diadtf.FIELD_TYPE' +
        '_CODE)'
      '  ) f'
      ''
      'order by'
      '  f.TYPE_FIELD_NO_PATH')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 568
    Top = 600
    object qryDocItemActiveFieldsFIELD_IDENTIFIER_PATH: TAbmesWideStringField
      FieldName = 'FIELD_IDENTIFIER_PATH'
      Size = 250
    end
    object qryDocItemActiveFieldsFIELD_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIELD_IDENTIFIER'
      Size = 50
    end
    object qryDocItemActiveFieldsFIELD_NAME_PATH: TAbmesWideStringField
      FieldName = 'FIELD_NAME_PATH'
      Size = 250
    end
    object qryDocItemActiveFieldsFIELD_NAME: TAbmesWideStringField
      FieldName = 'FIELD_NAME'
      Size = 100
    end
    object qryDocItemActiveFieldsIS_VISIBLE: TAbmesFloatField
      FieldName = 'IS_VISIBLE'
    end
    object qryDocItemActiveFieldsFIELD_INTEGER_IDENTIFIER: TAbmesFloatField
      FieldName = 'FIELD_INTEGER_IDENTIFIER'
    end
    object qryDocItemActiveFieldsHAS_CHILD_FIELDS: TAbmesFloatField
      FieldName = 'HAS_CHILD_FIELDS'
      FieldValueType = fvtBoolean
    end
    object qryDocItemActiveFieldsFIELD_LEVEL: TAbmesFloatField
      FieldName = 'FIELD_LEVEL'
    end
  end
  object qryEmpAvailModifierTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eamt.EMP_AVAIL_MODIFIER_TYPE_NAME,'
      '  eamt.EMP_AVAIL_MODIFIER_TYPE_ABBREV'
      'from'
      '  EMP_AVAIL_MODIFIER_TYPES eamt'
      'where'
      
        '  (eamt.EMP_AVAIL_MODIFIER_TYPE_CODE = :EMP_AVAIL_MODIFIER_TYPE_' +
        'CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 504
    object qryEmpAvailModifierTypeDataEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_NAME'
      Size = 100
    end
    object qryEmpAvailModifierTypeDataEMP_AVAIL_MODIFIER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryEmpDayAbsenceReasonData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  edar.EMP_DAY_ABSENCE_REASON_NAME,'
      '  edar.EMP_DAY_ABSENCE_REASON_ABBREV'
      'from'
      '  EMP_DAY_ABSENCE_REASONS edar'
      'where'
      
        '  (edar.EMP_DAY_ABSENCE_REASON_CODE = :EMP_DAY_ABSENCE_REASON_CO' +
        'DE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 40
    object qryEmpDayAbsenceReasonDataEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object qryEmpDayAbsenceReasonDataEMP_DAY_ABSENCE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_ABBREV'
      Size = 100
    end
  end
  object qryEmpDayAbsenceDocTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_REASON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  edadt.EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      'from'
      '  EMP_DAY_ABSENCE_DOC_TYPES edadt'
      'where'
      
        '  (edadt.EMP_DAY_ABSENCE_REASON_CODE = :EMP_DAY_ABSENCE_REASON_C' +
        'ODE) and'
      
        '  (edadt.EMP_DAY_ABSENCE_DOC_TYPE_CODE = :EMP_DAY_ABSENCE_DOC_TY' +
        'PE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 88
    object qryEmpDayAbsenceDocTypeDataEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      Size = 50
    end
  end
  object qryEmpHourAvailModifierReasonData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ehamr.EMP_HOUR_AVAIL_MOD_REASON_NAME'
      'from'
      '  EMP_HOUR_AVAIL_MOD_REASONS ehamr'
      'where'
      
        '  (ehamr.EMP_HOUR_AVAIL_MOD_REASON_CODE = :EMP_HOUR_AVAIL_MOD_RE' +
        'ASON_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 136
    object qryEmpHourAvailModifierReasonDataEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
      Size = 50
    end
  end
  object qryEmpAvailModifierData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMP_AVAIL_MODIFIER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eam.EMPLOYEE_CODE,'
      '  eam.AUTHORIZE_EMPLOYEE_CODE,'
      '  eam.EMP_AVAIL_MODIFIER_TYPE_CODE,'
      '  eam.BEGIN_DATE,'
      '  eam.END_DATE,'
      '  eam.EMP_DAY_ABSENCE_REASON_CODE,'
      '  eam.EMP_DAY_ABSENCE_DOC_TYPE_CODE,'
      '  eam.EMP_DAY_ABSENCE_DOC_NO,'
      '  eam.EMP_DAY_ABSENCE_DOC_DATE,'
      '  eam.EMP_DAY_ABSENCE_DOC_ISSUER,'
      '  eam.EMP_HOUR_AVAIL_MOD_REASON_CODE,'
      '  eam.BEGIN_TIME,'
      '  eam.END_TIME,'
      '  eam.DURATION_HOURS,'
      '  eam.IS_PERSONAL_WORKDAYS_ONLY,'
      '  eam.NOTES,'
      '  eam.CREATE_EMPLOYEE_CODE,'
      '  eam.CREATE_DATE,'
      '  eam.CREATE_TIME,'
      '  eam.STORNO_EMPLOYEE_CODE,'
      '  eam.STORNO_DATE,'
      '  eam.STORNO_TIME'
      'from'
      '  EMP_AVAIL_MODIFIERS eam'
      'where'
      '  (eam.EMP_AVAIL_MODIFIER_CODE = :EMP_AVAIL_MODIFIER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 272
    object qryEmpAvailModifierDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmpAvailModifierDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryEmpAvailModifierDataEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
    end
    object qryEmpAvailModifierDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryEmpAvailModifierDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryEmpAvailModifierDataEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
    end
    object qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_NO'
      Size = 50
    end
    object qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField
      FieldName = 'EMP_DAY_ABSENCE_DOC_DATE'
    end
    object qryEmpAvailModifierDataEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_ISSUER'
      Size = 100
    end
    object qryEmpAvailModifierDataEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
    end
    object qryEmpAvailModifierDataBEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_TIME'
    end
    object qryEmpAvailModifierDataEND_TIME: TAbmesSQLTimeStampField
      FieldName = 'END_TIME'
    end
    object qryEmpAvailModifierDataDURATION_HOURS: TAbmesFloatField
      FieldName = 'DURATION_HOURS'
    end
    object qryEmpAvailModifierDataIS_PERSONAL_WORKDAYS_ONLY: TAbmesFloatField
      FieldName = 'IS_PERSONAL_WORKDAYS_ONLY'
    end
    object qryEmpAvailModifierDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryEmpAvailModifierDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEmpAvailModifierDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEmpAvailModifierDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEmpAvailModifierDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryEmpAvailModifierDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryEmpAvailModifierDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
  end
  object qryEmpAvailModifierCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eam.EMP_AVAIL_MODIFIER_CODE'
      'from'
      '  EMP_AVAIL_MODIFIERS eam'
      'where'
      '  (eam.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (eam.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 392
    object qryEmpAvailModifierCodeEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_CODE'
    end
  end
  object qryBOIOrderTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  boiot.BOI_ORDER_TYPE_NAME,'
      '  boiot.BOI_ORDER_TYPE_ABBREV'
      'from'
      '  BOI_ORDER_TYPES boiot'
      'where'
      '  (boiot.BOI_ORDER_TYPE_CODE = :BOI_ORDER_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 184
    object qryBOIOrderTypeDataBOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_NAME'
    end
    object qryBOIOrderTypeDataBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 10
    end
  end
  object qryBudgetOrderClassData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  boc.BUDGET_ORDER_CLASS_NAME'
      'from'
      '  BUDGET_ORDER_CLASSES boc'
      'where'
      '  (boc.BUDGET_ORDER_CLASS_CODE = :BUDGET_ORDER_CLASS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 280
    object qryBudgetOrderClassDataBUDGET_ORDER_CLASS_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_CLASS_NAME'
      Size = 100
    end
  end
  object qryBudgetOrderRegularityTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bort.BO_REGULARITY_TYPE_NAME,'
      '  bort.BO_REGULARITY_TYPE_ABBREV'
      'from'
      '  BO_REGULARITY_TYPES bort'
      'where'
      '  (bort.BO_REGULARITY_TYPE_CODE = :BO_REGULARITY_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 328
    object qryBudgetOrderRegularityTypeDataBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 50
    end
    object qryBudgetOrderRegularityTypeDataBO_REGULARITY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_ABBREV'
      Size = 5
    end
  end
  object qryBudgetOrderData: TAbmesSQLQuery
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
      '  bo.BO_REGULARITY_TYPE_CODE,'
      '  bo.BUDGET_ORDER_CLASS_CODE,'
      '  bo.GENERATOR_DEPT_CODE,'
      '  bo.DEVELOPER_DEPT_CODE,'
      '  bo.DESCRIPTION,'
      '  bo.BEGIN_DATE,'
      '  bo.END_DATE,'
      '  bo.TOTAL_PRICE,'
      '  bo.CREATE_EMPLOYEE_CODE,'
      '  bo.CREATE_DATE,'
      '  bo.CREATE_TIME,'
      '  bo.CHANGE_EMPLOYEE_CODE,'
      '  bo.CHANGE_DATE,'
      '  bo.CHANGE_TIME,'
      '  bo.ANNUL_EMPLOYEE_CODE,'
      '  bo.ANNUL_DATE,'
      '  bo.ANNUL_TIME,'
      '  bo.CLOSE_EMPLOYEE_CODE,'
      '  bo.CLOSE_DATE,'
      '  bo.CLOSE_TIME'
      'from'
      '  BUDGET_ORDERS bo'
      'where'
      '  (bo.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (bo.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 320
    object qryBudgetOrderDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBudgetOrderDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBudgetOrderDataBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object qryBudgetOrderDataBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object qryBudgetOrderDataGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object qryBudgetOrderDataDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object qryBudgetOrderDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object qryBudgetOrderDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBudgetOrderDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBudgetOrderDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryBudgetOrderDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBudgetOrderDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBudgetOrderDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBudgetOrderDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBudgetOrderDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBudgetOrderDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBudgetOrderDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBudgetOrderDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBudgetOrderDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
  end
  object qryDateUnitData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'THE_DATE_UNIT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  tdu.THE_DATE_UNIT_NAME,'
      '  tdu.THE_DATE_UNIT_ABBREV'
      'from'
      '  THE_DATE_UNITS tdu'
      'where'
      '  (tdu.THE_DATE_UNIT_CODE = :THE_DATE_UNIT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 376
    object qryDateUnitDataTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryDateUnitDataTHE_DATE_UNIT_ABBREV: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_ABBREV'
      Size = 50
    end
  end
  object qryBOIDistributionTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  boidt.BOI_DISTRIBUTION_TYPE_NAME,'
      '  boidt.BOI_DISTRIBUTION_TYPE_ABBREV'
      'from'
      '  BOI_DISTRIBUTION_TYPES boidt'
      'where'
      
        '  (boidt.BOI_DISTRIBUTION_TYPE_CODE = :BOI_DISTRIBUTION_TYPE_COD' +
        'E)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 424
    object qryBOIDistributionTypeDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
    object qryBOIDistributionTypeDataBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
  end
  object qryBudgetOrderItemData: TAbmesSQLQuery
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
      '  boi.BUDGET_PRODUCT_CODE,'
      '  boi.DEPT_CODE,'
      '  boi.BOI_DISTRIBUTION_TYPE_CODE,'
      '  boi.BEGIN_DATE,'
      '  boi.END_DATE,'
      '  case'
      '    when'
      '      ( %COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE] <'
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
      '      )'
      '  end as DISTRIBUTED_SINGLE_PRICE,'
      '  boi.DISTRIBUTION_DATE_UNIT_CODE,'
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
      '  boi.IS_CONFIRMED,'
      '  boi.IS_FOR_RECONSIDERATION,'
      '  boi.IS_CANCELED,'
      '  boi.DECISION_ENTER_EMPLOYEE_CODE,'
      '  boi.DECISION_ENTER_DATE,'
      '  boi.DECISION_APPROVE_EMPLOYEE_CODE,'
      '  boi.DECISION_APPROVE_DATE,'
      '  boi.CREATE_EMPLOYEE_CODE,'
      '  boi.CREATE_DATE,'
      '  boi.CREATE_TIME,'
      '  boi.CHANGE_EMPLOYEE_CODE,'
      '  boi.CHANGE_DATE,'
      '  boi.CHANGE_TIME,'
      '  boi.ANNUL_EMPLOYEE_CODE,'
      '  boi.ANNUL_DATE,'
      '  boi.ANNUL_TIME,'
      '  boi.CLOSE_EMPLOYEE_CODE,'
      '  boi.CLOSE_DATE,'
      '  boi.CLOSE_TIME'
      'from'
      '  BUDGET_ORDER_ITEMS boi'
      'where'
      '  (boi.BUDGET_ORDER_BRANCH_CODE = :BUDGET_ORDER_BRANCH_CODE) and'
      '  (boi.BUDGET_ORDER_CODE = :BUDGET_ORDER_CODE) and'
      '  (boi.BUDGET_ORDER_ITEM_CODE = :BUDGET_ORDER_ITEM_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COUNT_WORKDAYS[boi.BEGIN_DATE~boi.END_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 368
    object qryBudgetOrderItemDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object qryBudgetOrderItemDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object qryBudgetOrderItemDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object qryBudgetOrderItemDataBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object qryBudgetOrderItemDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryBudgetOrderItemDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object qryBudgetOrderItemDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryBudgetOrderItemDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryBudgetOrderItemDataDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DISTRIBUTED_SINGLE_PRICE'
    end
    object qryBudgetOrderItemDataDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DISTRIBUTION_DATE_UNIT_CODE'
    end
    object qryBudgetOrderItemDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryBudgetOrderItemDataBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
    end
    object qryBudgetOrderItemDataIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
    end
    object qryBudgetOrderItemDataIS_FOR_RECONSIDERATION: TAbmesFloatField
      FieldName = 'IS_FOR_RECONSIDERATION'
    end
    object qryBudgetOrderItemDataIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
    end
    object qryBudgetOrderItemDataDECISION_ENTER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_ENTER_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemDataDECISION_ENTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_ENTER_DATE'
    end
    object qryBudgetOrderItemDataDECISION_APPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_APPROVE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemDataDECISION_APPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_APPROVE_DATE'
    end
    object qryBudgetOrderItemDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryBudgetOrderItemDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryBudgetOrderItemDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryBudgetOrderItemDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryBudgetOrderItemDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryBudgetOrderItemDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryBudgetOrderItemDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryBudgetOrderItemDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryBudgetOrderItemDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
  end
  object qryDisciplineEventTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISC_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  det.NAME,'
      '  ( select'
      '      (det.DISC_EVENT_TYPE_SIGN * detp.RATING)'
      '    from'
      '      DISC_EVENT_TYPE_PERIODS detp'
      '    where'
      '      (detp.DISC_EVENT_TYPE_CODE = det.DISC_EVENT_TYPE_CODE) and'
      '      (:TO_DATE between detp.BEGIN_DATE and detp.END_DATE)'
      '  ) as RATING'
      'from'
      '  DISC_EVENT_TYPES det'
      'where'
      '  (det.DISC_EVENT_TYPE_CODE = :DISC_EVENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 472
    object qryDisciplineEventTypeDataNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object qryDisciplineEventTypeDataRATING: TAbmesFloatField
      FieldName = 'RATING'
    end
  end
  object qryEmployeeDisciplineEventData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DISCIPLINE_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ede.EMPLOYEE_CODE,'
      '  ede.DISCIPLINE_EVENT_DATE,'
      '  ede.DISC_EVENT_TYPE_CODE,'
      '  ede.AUTHORIZE_EMPLOYEE_CODE,'
      '  ede.DISCIPLINE_EVENT_COMMENT,'
      '  ede.CREATE_EMPLOYEE_CODE,'
      '  ede.CREATE_DATE,'
      '  ede.CREATE_TIME,'
      '  ede.STORNO_EMPLOYEE_CODE,'
      '  ede.STORNO_DATE,'
      '  ede.STORNO_TIME'
      'from'
      '  EMPLOYEE_DISCIPLINE_EVENTS ede'
      'where'
      '  (ede.EMPLOYEE_CODE = :EMPLOYEE_CODE) and'
      '  (ede.DISCIPLINE_EVENT_CODE = :DISCIPLINE_EVENT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 392
    object qryEmployeeDisciplineEventDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DISCIPLINE_EVENT_DATE'
    end
    object qryEmployeeDisciplineEventDataDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object qryEmployeeDisciplineEventDataAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventDataDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object qryEmployeeDisciplineEventDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryEmployeeDisciplineEventDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryEmployeeDisciplineEventDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryEmployeeDisciplineEventDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
  end
  object qryEmployeeDisciplineEventCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ede.EMPLOYEE_CODE,'
      '  ede.DISCIPLINE_EVENT_CODE'
      'from'
      '  EMPLOYEE_DISCIPLINE_EVENTS ede'
      'where'
      '  (ede.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (ede.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 808
    Top = 408
    object qryEmployeeDisciplineEventCodeEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryEmployeeDisciplineEventCodeDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
    end
  end
  object qryProductMaterial: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sl.PRODUCT_CODE as MATERIAL_CODE,'
      '  sl.PRODUCT_TECH_QUANTITY as MATERIAL_TECH_QUANTITY'
      'from'
      '  SPEC_LINES sl'
      'where'
      '  (sl.SPEC_PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (sl.PARENT_SPEC_LINE_CODE is null) and'
      '  (sl.PRODUCT_CODE is not null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 592
    Top = 520
    object qryProductMaterialMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object qryProductMaterialMATERIAL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MATERIAL_TECH_QUANTITY'
    end
  end
  object qryOccupationEmployeeRegimeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OE_REGIME_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  oer.OE_REGIME_NAME'
      'from'
      '  OCCUPATION_EMPLOYEE_REGIMES oer'
      'where'
      '  (oer.OE_REGIME_CODE = :OE_REGIME_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 552
    object qryOccupationEmployeeRegimeDataOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
  end
  object qryOccupationEmployeeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  oe.OCCUPATION_CODE,'
      '  oe.EMPLOYEE_CODE,'
      '  oe.ASSIGNMENT_BEGIN_DATE,'
      '  oe.ASSIGNMENT_END_DATE,'
      '  oe.OE_REGIME_CODE,'
      '  oe.SALARY,'
      '  oe.SALARY_DATE_UNIT_CODE,'
      
        '  MiscUtils.OccupationEmployeeProfessions(oe.OCCUPATION_EMPLOYEE' +
        '_CODE) as OCCUPATION_EMP_PROFESSIONS'
      'from'
      '  OCCUPATION_EMPLOYEES oe'
      'where'
      '  (oe.OCCUPATION_EMPLOYEE_CODE = :OCCUPATION_EMPLOYEE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 416
    object qryOccupationEmployeeDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object qryOccupationEmployeeDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object qryOccupationEmployeeDataASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_BEGIN_DATE'
    end
    object qryOccupationEmployeeDataASSIGNMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ASSIGNMENT_END_DATE'
    end
    object qryOccupationEmployeeDataOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object qryOccupationEmployeeDataSALARY: TAbmesFloatField
      FieldName = 'SALARY'
    end
    object qryOccupationEmployeeDataSALARY_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALARY_DATE_UNIT_CODE'
    end
    object qryOccupationEmployeeDataOCCUPATION_EMP_PROFESSIONS: TAbmesWideStringField
      FieldName = 'OCCUPATION_EMP_PROFESSIONS'
      Size = 4000
    end
  end
  object qryOccupationEmployeeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  oe.OCCUPATION_EMPLOYEE_CODE'
      'from'
      '  OCCUPATION_EMPLOYEES oe'
      'where'
      '  (oe.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (oe.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 448
    object qryOccupationEmployeeCodeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
  end
  object qryInvoiceCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  i.INVOICE_BRANCH_CODE,'
      '  i.INVOICE_CODE'
      'from'
      '  INVOICES i'
      'where'
      '  (i.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (i.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 496
    object qryInvoiceCodeINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      Required = True
    end
    object qryInvoiceCodeINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      Required = True
    end
  end
  object qryInvoiceData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.*,'
      '  (x.TOTAL_PRICE * x.CURRENCY_RATE) as BC_TOTAL_PRICE,'
      '  (x.TOTAL_PRICE * x.VAT_PERCENT) as TOTAL_PRICE_VAT,'
      
        '  (x.TOTAL_PRICE * x.VAT_PERCENT * x.CURRENCY_RATE) as BC_TOTAL_' +
        'PRICE_VAT,'
      '  (x.TOTAL_PRICE * (1 + x.VAT_PERCENT)) as PAYMENT_PRICE'
      ''
      'from'
      '  ( select'
      '      i.INVOICE_BRANCH_CODE,'
      '      i.INVOICE_CODE,'
      '      i.IS_PROFORM_INVOICE,'
      '      i.INVOICE_NO,'
      '      i.INVOICE_TYPE_CODE,'
      ''
      '      ( select'
      '          it.INVOICE_TYPE_NAME'
      '        from'
      '          INVOICE_TYPES it'
      '        where'
      '          (it.INVOICE_TYPE_CODE = i.INVOICE_TYPE_CODE)'
      '      ) as INVOICE_TYPE_NAME,'
      ''
      '      ( select'
      '          it.INVOICE_TYPE_I_NAME'
      '        from'
      '          INVOICE_TYPES it'
      '        where'
      '          (it.INVOICE_TYPE_CODE = i.INVOICE_TYPE_CODE)'
      '      ) as INVOICE_TYPE_I_NAME,'
      ''
      '      i.INVOICE_DATE,'
      '      i.EVENT_DATE,'
      '      i.INVOICE_PLACE,'
      '      i.INVOICE_I_PLACE,'
      ''
      '      i.SELLER_COMPANY_CODE,'
      '      i.SELLER_NAME,'
      '      i.SELLER_CITY,'
      '      i.SELLER_ADDRESS,'
      '      i.SELLER_BULSTAT,'
      '      i.SELLER_VAT_NO,'
      '      i.SELLER_IS_PERSON,'
      '      i.SELLER_EGN,'
      '      i.SELLER_PERSON_NAME,'
      ''
      '      i.SELLER_I_NAME,'
      '      i.SELLER_I_CITY,'
      '      i.SELLER_I_ADDRESS,'
      '      i.SELLER_PERSON_I_NAME,'
      ''
      '      i.SENDER_COMPANY_CODE,'
      '      i.SENDER_NAME,'
      '      i.SENDER_ADDRESS,'
      '      i.SENDER_I_NAME,'
      '      i.SENDER_I_ADDRESS,'
      ''
      '      i.BUYER_COMPANY_CODE,'
      '      i.BUYER_NAME,'
      '      i.BUYER_CITY,'
      '      i.BUYER_ADDRESS,'
      '      i.BUYER_BULSTAT,'
      '      i.BUYER_VAT_NO,'
      '      i.BUYER_IS_PERSON,'
      '      i.BUYER_EGN,'
      '      i.BUYER_PERSON_NAME,'
      ''
      '      i.BUYER_I_NAME,'
      '      i.BUYER_I_CITY,'
      '      i.BUYER_I_ADDRESS,'
      '      i.BUYER_PERSON_I_NAME,'
      ''
      '      i.RECEIVER_COMPANY_CODE,'
      '      i.RECEIVER_NAME,'
      '      i.RECEIVER_ADDRESS,'
      '      i.RECEIVER_I_NAME,'
      '      i.RECEIVER_I_ADDRESS,'
      ''
      '      i.CURRENCY_CODE,'
      '      i.VAT_PERCENT,'
      ''
      '      ( select'
      '          Sum(ii.SINGLE_PRICE * ii.ACCOUNT_QUANTITY)'
      '        from'
      '          INVOICE_ITEMS ii'
      '        where'
      '          (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '          (ii.INVOICE_CODE = i.INVOICE_CODE)'
      '      ) as TOTAL_PRICE,'
      ''
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = i.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = i.INVOICE_DATE)'
      '      ) as CURRENCY_RATE,'
      ''
      '      Decode(i.PAYMENT_TYPE_CODE, 1, 1, 0) as IS_CASH_PAYMENT,'
      '      i.IBAN,'
      '      i.VAT_REASON_CODE,'
      '      i.NOTES,'
      ''
      '      i.APPROVE_EMPLOYEE_CODE,'
      '      i.APPROVE_DATE,'
      '      i.APPROVE_TIME,'
      '      i.CREATE_EMPLOYEE_CODE,'
      '      i.CREATE_DATE,'
      '      i.CREATE_TIME,'
      '      i.CHANGE_EMPLOYEE_CODE,'
      '      i.CHANGE_DATE,'
      '      i.CHANGE_TIME,'
      '      i.STORNO_EMPLOYEE_CODE,'
      '      i.STORNO_DATE,'
      '      i.STORNO_TIME'
      ''
      '    from'
      '      INVOICES i'
      ''
      '    where'
      '      (i.INVOICE_BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '      (i.INVOICE_CODE = :INVOICE_CODE)'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 144
    object qryInvoiceDataINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      Required = True
    end
    object qryInvoiceDataINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      Required = True
    end
    object qryInvoiceDataIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInvoiceDataINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      Required = True
    end
    object qryInvoiceDataINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
      Required = True
    end
    object qryInvoiceDataINVOICE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
    object qryInvoiceDataINVOICE_TYPE_I_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_I_NAME'
      Size = 100
    end
    object qryInvoiceDataINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      Required = True
    end
    object qryInvoiceDataEVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'EVENT_DATE'
      Required = True
    end
    object qryInvoiceDataINVOICE_PLACE: TAbmesWideStringField
      FieldName = 'INVOICE_PLACE'
      Required = True
      Size = 50
    end
    object qryInvoiceDataINVOICE_I_PLACE: TAbmesWideStringField
      FieldName = 'INVOICE_I_PLACE'
      Size = 50
    end
    object qryInvoiceDataSELLER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SELLER_COMPANY_CODE'
      Required = True
    end
    object qryInvoiceDataSELLER_NAME: TAbmesWideStringField
      FieldName = 'SELLER_NAME'
      Size = 50
    end
    object qryInvoiceDataSELLER_CITY: TAbmesWideStringField
      FieldName = 'SELLER_CITY'
      Size = 50
    end
    object qryInvoiceDataSELLER_ADDRESS: TAbmesWideStringField
      FieldName = 'SELLER_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataSELLER_BULSTAT: TAbmesWideStringField
      FieldName = 'SELLER_BULSTAT'
      Size = 13
    end
    object qryInvoiceDataSELLER_VAT_NO: TAbmesWideStringField
      FieldName = 'SELLER_VAT_NO'
    end
    object qryInvoiceDataSELLER_IS_PERSON: TAbmesFloatField
      FieldName = 'SELLER_IS_PERSON'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInvoiceDataSELLER_EGN: TAbmesWideStringField
      FieldName = 'SELLER_EGN'
      Size = 10
    end
    object qryInvoiceDataSELLER_PERSON_NAME: TAbmesWideStringField
      FieldName = 'SELLER_PERSON_NAME'
      Size = 100
    end
    object qryInvoiceDataSELLER_I_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_NAME'
      Size = 50
    end
    object qryInvoiceDataSELLER_I_CITY: TAbmesWideStringField
      FieldName = 'SELLER_I_CITY'
      Size = 50
    end
    object qryInvoiceDataSELLER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'SELLER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataSELLER_PERSON_I_NAME: TAbmesWideStringField
      FieldName = 'SELLER_PERSON_I_NAME'
      Size = 100
    end
    object qryInvoiceDataSENDER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SENDER_COMPANY_CODE'
    end
    object qryInvoiceDataSENDER_NAME: TAbmesWideStringField
      FieldName = 'SENDER_NAME'
      Size = 50
    end
    object qryInvoiceDataSENDER_ADDRESS: TAbmesWideStringField
      FieldName = 'SENDER_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataSENDER_I_NAME: TAbmesWideStringField
      FieldName = 'SENDER_I_NAME'
      Size = 50
    end
    object qryInvoiceDataSENDER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'SENDER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataBUYER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BUYER_COMPANY_CODE'
    end
    object qryInvoiceDataBUYER_NAME: TAbmesWideStringField
      FieldName = 'BUYER_NAME'
      Size = 50
    end
    object qryInvoiceDataBUYER_CITY: TAbmesWideStringField
      FieldName = 'BUYER_CITY'
      Size = 50
    end
    object qryInvoiceDataBUYER_ADDRESS: TAbmesWideStringField
      FieldName = 'BUYER_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataBUYER_BULSTAT: TAbmesWideStringField
      FieldName = 'BUYER_BULSTAT'
      Size = 13
    end
    object qryInvoiceDataBUYER_VAT_NO: TAbmesWideStringField
      FieldName = 'BUYER_VAT_NO'
    end
    object qryInvoiceDataBUYER_IS_PERSON: TAbmesFloatField
      FieldName = 'BUYER_IS_PERSON'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qryInvoiceDataBUYER_EGN: TAbmesWideStringField
      FieldName = 'BUYER_EGN'
      Size = 10
    end
    object qryInvoiceDataBUYER_PERSON_NAME: TAbmesWideStringField
      FieldName = 'BUYER_PERSON_NAME'
      Size = 100
    end
    object qryInvoiceDataBUYER_I_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_NAME'
      Size = 50
    end
    object qryInvoiceDataBUYER_I_CITY: TAbmesWideStringField
      FieldName = 'BUYER_I_CITY'
      Size = 50
    end
    object qryInvoiceDataBUYER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'BUYER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataBUYER_PERSON_I_NAME: TAbmesWideStringField
      FieldName = 'BUYER_PERSON_I_NAME'
      Size = 100
    end
    object qryInvoiceDataRECEIVER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'RECEIVER_COMPANY_CODE'
    end
    object qryInvoiceDataRECEIVER_NAME: TAbmesWideStringField
      FieldName = 'RECEIVER_NAME'
      Size = 50
    end
    object qryInvoiceDataRECEIVER_ADDRESS: TAbmesWideStringField
      FieldName = 'RECEIVER_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataRECEIVER_I_NAME: TAbmesWideStringField
      FieldName = 'RECEIVER_I_NAME'
      Size = 50
    end
    object qryInvoiceDataRECEIVER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'RECEIVER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object qryInvoiceDataVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
      Required = True
    end
    object qryInvoiceDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryInvoiceDataCURRENCY_RATE: TAbmesFloatField
      FieldName = 'CURRENCY_RATE'
    end
    object qryInvoiceDataIS_CASH_PAYMENT: TAbmesFloatField
      FieldName = 'IS_CASH_PAYMENT'
      FieldValueType = fvtBoolean
    end
    object qryInvoiceDataIBAN: TAbmesWideStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object qryInvoiceDataVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
    end
    object qryInvoiceDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryInvoiceDataAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object qryInvoiceDataAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object qryInvoiceDataAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object qryInvoiceDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object qryInvoiceDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qryInvoiceDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object qryInvoiceDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      Required = True
    end
    object qryInvoiceDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object qryInvoiceDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
    object qryInvoiceDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryInvoiceDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryInvoiceDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryInvoiceDataBC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BC_TOTAL_PRICE'
    end
    object qryInvoiceDataTOTAL_PRICE_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_VAT'
    end
    object qryInvoiceDataBC_TOTAL_PRICE_VAT: TAbmesFloatField
      FieldName = 'BC_TOTAL_PRICE_VAT'
    end
    object qryInvoiceDataPAYMENT_PRICE: TAbmesFloatField
      FieldName = 'PAYMENT_PRICE'
    end
  end
  object qryVatReasonData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'VAT_REASON_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  vr.VAT_REASON_CODE,'
      '  vr.VAT_REASON_NO,'
      '  vr.VAT_REASON_NAME,'
      '  vr.VAT_REASON_ABBREV,'
      '  vr.VAT_REASON_I_NAME,'
      '  vr.VAT_REASON_I_ABBREV'
      ''
      'from'
      '  VAT_REASONS vr'
      ''
      'where'
      '  (vr.VAT_REASON_CODE = :VAT_REASON_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 96
    object qryVatReasonDataVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
      Required = True
    end
    object qryVatReasonDataVAT_REASON_NO: TAbmesFloatField
      FieldName = 'VAT_REASON_NO'
      Required = True
    end
    object qryVatReasonDataVAT_REASON_NAME: TAbmesWideStringField
      FieldName = 'VAT_REASON_NAME'
      Required = True
      Size = 50
    end
    object qryVatReasonDataVAT_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'VAT_REASON_ABBREV'
      Required = True
      Size = 5
    end
    object qryVatReasonDataVAT_REASON_I_NAME: TAbmesWideStringField
      FieldName = 'VAT_REASON_I_NAME'
      Required = True
      Size = 50
    end
    object qryVatReasonDataVAT_REASON_I_ABBREV: TAbmesWideStringField
      FieldName = 'VAT_REASON_I_ABBREV'
      Required = True
      Size = 5
    end
  end
  object qryInvoiceItemsData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ii.BRANCH_CODE,'
      '  ii.INVOICE_ITEM_CODE,'
      '  ii.PRODUCT_CODE,'
      '  ii.ITEM_NAME,'
      '  ii.ITEM_I_NAME,'
      '  ii.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  ii.BND_PROCESS_OBJECT_CODE,'
      '  ii.ACCOUNT_QUANTITY,'
      '  ii.ACCOUNT_MEASURE_ABBREV,'
      '  ii.ACCOUNT_MEASURE_I_ABBREV,'
      '  ii.MARKET_SINGLE_PRICE,'
      '  ii.DISCOUNT_PERCENT,'
      '  ii.SINGLE_PRICE,'
      '  (ii.ACCOUNT_QUANTITY * ii.SINGLE_PRICE) as TOTAL_PRICE'
      ''
      'from'
      '  INVOICE_ITEMS ii'
      ''
      'where'
      '  (ii.BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = :INVOICE_CODE)'
      ''
      'order by'
      '  ii.INVOICE_ITEM_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 272
    Top = 192
    object qryInvoiceItemsDataBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      Required = True
    end
    object qryInvoiceItemsDataINVOICE_ITEM_CODE: TAbmesFloatField
      FieldName = 'INVOICE_ITEM_CODE'
      Required = True
    end
    object qryInvoiceItemsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryInvoiceItemsDataITEM_NAME: TAbmesWideStringField
      FieldName = 'ITEM_NAME'
      Required = True
      Size = 100
    end
    object qryInvoiceItemsDataITEM_I_NAME: TAbmesWideStringField
      FieldName = 'ITEM_I_NAME'
      Size = 100
    end
    object qryInvoiceItemsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryInvoiceItemsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryInvoiceItemsDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      Required = True
    end
    object qryInvoiceItemsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object qryInvoiceItemsDataACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_I_ABBREV'
      Size = 5
    end
    object qryInvoiceItemsDataMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
      Required = True
    end
    object qryInvoiceItemsDataDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
      Required = True
    end
    object qryInvoiceItemsDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      Required = True
    end
    object qryInvoiceItemsDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
  end
  object qryDocData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( select'
      '      der.DOC_EMPTINESS_REQUIREMENT_NAME'
      '    from'
      '      DOC_EMPTINESS_REQUIREMENTS der'
      '    where'
      
        '      (der.DOC_EMPTINESS_REQUIREMENT_CODE = d.DOC_EMPTINESS_REQU' +
        'IREMENT_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_NAME,'
      '  d.IS_COMPLETE'
      ''
      'from'
      '  DOCS d'
      ''
      'where'
      '  (d.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (d.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 504
    object qryDocDataDOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_NAME'
      Size = 100
    end
    object qryDocDataIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
      Required = True
      FieldValueType = fvtBoolean
    end
  end
  object qryDocItemsData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  di.DOC_BRANCH_CODE,'
      '  di.DOC_CODE,'
      '  di.DOC_ITEM_CODE'
      ''
      'from'
      '  DOC_ITEMS di'
      ''
      'where'
      '  (di.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (di.DOC_CODE = :DOC_CODE)'
      ''
      'order by'
      '  di.DOC_ITEM_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 280
    Top = 552
    object qryDocItemsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      Required = True
    end
    object qryDocItemsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      Required = True
    end
    object qryDocItemsDataDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      Required = True
    end
  end
  object qrySaleShipmentCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ss.SHIPMENT_OBJECT_CODE'
      'from'
      '  SALE_SHIPMENTS ss'
      'where'
      '  (ss.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (ss.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 8
    object qrySaleShipmentCodeSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qrySaleShipmentCodeSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
      Required = True
    end
  end
  object qrySaleShipmentData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ss.SALE_SHIPMENT_NO,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRANCH' +
        '_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE)'
      '  ) as SALE_SHIPMENT_IDENTIFIER,'
      ''
      '  ss.SHIPMENT_PLAN_DATE,'
      '  ss.PLAN_QUANTITY,'
      '  ( select'
      '      ss.PLAN_QUANTITY * p.ACCOUNT_MEASURE_COEF'
      '    from'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      ''
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as PLAN_ACCOUNT_QUANTITY,'
      ''
      '  ss.SHIPMENT_DATE,'
      '  ss.QUANTITY,'
      '  ( select'
      '      ss.QUANTITY * p.ACCOUNT_MEASURE_COEF'
      '    from'
      '      SALES s,'
      '      PRODUCTS p'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE) and'
      ''
      '      (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '  ) as ACCOUNT_QUANTITY,'
      '  ss.RECEIVE_DATE,'
      ''
      '  ss.INVOICE_NO,'
      '  ss.IS_PROFORM_INVOICE,'
      '  ss.INVOICE_DATE,'
      '  ss.INVOICE_CURRENCY_CODE,'
      '  ss.INVOICE_SINGLE_PRICE,'
      ''
      '  (Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) *'
      '   ss.INVOICE_SINGLE_PRICE *'
      '   Decode('
      '     ( select'
      '         s.SALE_DEAL_TYPE_CODE'
      '       from'
      '         SALES s'
      '       where'
      
        '         (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '         (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE)'
      '     ),'
      '     CommonConsts.sdtLease,'
      
        '     Coalesce(ss.LEASE_DATE_UNIT_QTY, ss.LEASE_PLAN_DATE_UNIT_QT' +
        'Y),'
      '     1'
      '   )'
      '  ) as INVOICE_TOTAL_PRICE'
      ''
      'from'
      '  SALE_SHIPMENTS ss'
      ''
      'where'
      
        '  (ss.SHIPMENT_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_CODE' +
        ') and'
      '  (ss.SHIPMENT_OBJECT_CODE = :SHIPMENT_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 56
    object qrySaleShipmentDataSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
      Required = True
    end
    object qrySaleShipmentDataSALE_SHIPMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_SHIPMENT_IDENTIFIER'
      Size = 100
    end
    object qrySaleShipmentDataSHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_PLAN_DATE'
      Required = True
    end
    object qrySaleShipmentDataPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
      Required = True
    end
    object qrySaleShipmentDataPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
    end
    object qrySaleShipmentDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qrySaleShipmentDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySaleShipmentDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qrySaleShipmentDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySaleShipmentDataINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qrySaleShipmentDataIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object qrySaleShipmentDataINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qrySaleShipmentDataINVOICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CURRENCY_CODE'
    end
    object qrySaleShipmentDataINVOICE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_SINGLE_PRICE'
    end
    object qrySaleShipmentDataINVOICE_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'INVOICE_TOTAL_PRICE'
    end
  end
  object qrySaleCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE'
      'from'
      '  SALES s'
      'where'
      '  (s.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (s.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 112
    object qrySaleCodeSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qrySaleCodeSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
  end
  object qrySaleData: TAbmesSQLQuery
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
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.REQUEST_LINE_NO,'
      '  s.ASPECT_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE,'
      '  s.CLIENT_REQUEST_NO,'
      '  s.PRODUCT_CODE,'
      
        '  ProductUtils.ProductCompanyProductNames(s.PRODUCT_CODE, s.CLIE' +
        'NT_COMPANY_CODE) as COMPANY_PRODUCT_NAME,'
      ''
      '  s.REQUEST_SEND_DATE,'
      '  s.REQUEST_REGISTER_DATE,'
      ''
      '  s.OFFER_SEND_PLAN_DATE,'
      '  s.OFFER_SEND_DATE,'
      '  s.OFFER_ANSWER_PLAN_DATE,'
      '  s.OFFER_ANSWER_DATE,'
      '  s.DECISION_PLAN_DATE,'
      '  s.DECISION_DATE,'
      ''
      '  s.QUANTITY,'
      '  (s.QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANTITY,'
      '  s.DISCOUNT_PERCENT,'
      '  s.MARKET_SINGLE_PRICE,'
      '  s.SINGLE_PRICE,'
      '  s.CURRENCY_CODE,'
      ''
      '  s.MANAGER_EMPLOYEE_CODE,'
      '  s.DECISION_TYPE_CODE,'
      '  s.DECISION_EMPLOYEE_CODE,'
      ''
      '  s.NOTES,'
      ''
      '  -- aspekt perespektiva'
      '  s.PROGNOSIS_BEGIN_DATE,'
      '  s.PROGNOSIS_END_DATE,'
      ''
      '  s.OUR_OFFER_QUANTITY,'
      
        '  (s.OUR_OFFER_QUANTITY * p.ACCOUNT_MEASURE_COEF) as OUR_OFFER_A' +
        'CCOUNT_QUANTITY,'
      '  s.OUR_OFFER_SINGLE_PRICE,'
      '  s.OUR_OFFER_CURRENCY_CODE,'
      ''
      '  s.CL_OFFER_QUANTITY,'
      
        '  (s.CL_OFFER_QUANTITY * p.ACCOUNT_MEASURE_COEF) as CL_OFFER_ACC' +
        'OUNT_QUANTITY,'
      '  s.CL_OFFER_SINGLE_PRICE,'
      '  s.CL_OFFER_CURRENCY_CODE,'
      ''
      '  -- aspekt realizacia'
      '  s.RECEIVE_DATE,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      '  s.SHIPMENT_DATE,'
      ''
      '  -- opp'
      '  s.SALE_DEAL_TYPE_CODE,'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  s.SALE_TYPE_CODE,'
      '  ( select'
      '      sg.PRIORITY_CODE'
      '    from'
      '      SALE_GROUPS sg'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '  ) as SALE_PRIORITY_CODE,'
      ''
      '  -- poluchavane'
      '  s.SHIPMENT_STORE_CODE,'
      '  s.SHIPMENT_DAYS,'
      ''
      '  ( select'
      '      co.OFFICE_NAME'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = s.RECEIVE_PLACE_OFFICE_CODE)'
      '  ) as RECEIVE_PLACE_OFFICE_NAME,'
      ''
      '  ( select'
      '      co.COUNTRY_CODE'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = s.RECEIVE_PLACE_OFFICE_CODE)'
      '  ) as RECEIVE_PLACE_COUNTRY_CODE,'
      ''
      '  s.CUSTOMHOUSE_CODE,'
      '  s.SHIPMENT_TYPE_CODE,'
      '  s.IS_VENDOR_TRANSPORT,'
      ''
      '  s.ANNUL_EMPLOYEE_CODE,'
      '  s.ANNUL_DATE,'
      '  s.ANNUL_TIME,'
      '  s.FINISH_EMPLOYEE_CODE,'
      '  s.FINISH_DATE,'
      '  s.FINISH_TIME,'
      '  s.CREATE_EMPLOYEE_CODE,'
      '  s.CREATE_DATE,'
      '  s.CREATE_TIME,'
      '  s.CHANGE_EMPLOYEE_CODE,'
      '  s.CHANGE_DATE,'
      '  s.CHANGE_TIME'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p'
      ''
      'where'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      ''
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 160
    object qrySaleDataSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object qrySaleDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object qrySaleDataREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qrySaleDataASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qrySaleDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
      Required = True
    end
    object qrySaleDataCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qrySaleDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySaleDataCOMPANY_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAME'
      Size = 4000
    end
    object qrySaleDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qrySaleDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qrySaleDataOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_PLAN_DATE'
    end
    object qrySaleDataOFFER_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_DATE'
    end
    object qrySaleDataOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_PLAN_DATE'
    end
    object qrySaleDataOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_DATE'
    end
    object qrySaleDataDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_PLAN_DATE'
    end
    object qrySaleDataDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
    end
    object qrySaleDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySaleDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qrySaleDataDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
    end
    object qrySaleDataMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
    end
    object qrySaleDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qrySaleDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qrySaleDataMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object qrySaleDataDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object qrySaleDataDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qrySaleDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySaleDataPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object qrySaleDataPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object qrySaleDataOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
    end
    object qrySaleDataOUR_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_ACCOUNT_QUANTITY'
    end
    object qrySaleDataOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
    end
    object qrySaleDataOUR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_CURRENCY_CODE'
    end
    object qrySaleDataCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
    end
    object qrySaleDataCL_OFFER_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_ACCOUNT_QUANTITY'
    end
    object qrySaleDataCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
    end
    object qrySaleDataCL_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CL_OFFER_CURRENCY_CODE'
    end
    object qrySaleDataRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySaleDataCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object qrySaleDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qrySaleDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleDataSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qrySaleDataSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qrySaleDataSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object qrySaleDataSALE_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_CODE'
    end
    object qrySaleDataSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
    end
    object qrySaleDataSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object qrySaleDataRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object qrySaleDataRECEIVE_PLACE_COUNTRY_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_COUNTRY_CODE'
    end
    object qrySaleDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qrySaleDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qrySaleDataIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object qrySaleDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qrySaleDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qrySaleDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qrySaleDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qrySaleDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qrySaleDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qrySaleDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qrySaleDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qrySaleDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object qrySaleDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySaleDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object qrySaleDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
  end
  object qrySaleOrderTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sot.SALE_ORDER_TYPE_ABBREV,'
      '  sot.SALE_ORDER_TYPE_NAME'
      ''
      'from'
      '  SALE_ORDER_TYPES sot'
      ''
      'where'
      '  (sot.SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 304
    object qrySaleOrderTypeDataSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Required = True
      Size = 100
    end
    object qrySaleOrderTypeDataSALE_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object qryBorderDealTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_DEAL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  bdt.BORDER_DEAL_TYPE_ABBREV,'
      '  bdt.BORDER_DEAL_TYPE_NAME'
      ''
      'from'
      '  BORDER_DEAL_TYPES bdt'
      ''
      'where'
      '  (bdt.BORDER_DEAL_TYPE_CODE = :BORDER_DEAL_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 352
    object qryBorderDealTypeDataBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Required = True
      Size = 100
    end
    object qryBorderDealTypeDataBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object qrySaleTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  st.SALE_TYPE_ABBREV,'
      '  st.SALE_TYPE_NAME'
      ''
      'from'
      '  SALE_TYPES st'
      ''
      'where'
      '  (st.SALE_TYPE_CODE = :SALE_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 400
    object qrySaleTypeDataSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object qrySaleTypeDataSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object qryShipmentTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  st.SHIPMENT_TYPE_ABBREV,'
      '  st.SHIPMENT_TYPE_NAME,'
      '  st.NOTES'
      ''
      'from'
      '  SHIPMENT_TYPES st'
      ''
      'where'
      '  (st.SHIPMENT_TYPE_CODE = :SHIPMENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 448
    object qryShipmentTypeDataSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object qryShipmentTypeDataSHIPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object qryShipmentTypeDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object qryDecisionTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DECISION_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dt.DECISION_TYPE_ABBREV,'
      '  dt.DECISION_TYPE_NAME'
      ''
      'from'
      '  DECISION_TYPES dt'
      ''
      'where'
      '  (dt.DECISION_TYPE_CODE = :DECISION_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 496
    object qryDecisionTypeDataDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object qryDecisionTypeDataDECISION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object qryAspectTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  at.ASPECT_TYPE_ABBREV,'
      '  at.ASPECT_TYPE_NAME'
      ''
      'from'
      '  ASPECT_TYPES at'
      ''
      'where'
      '  (at.ASPECT_TYPE_CODE = :ASPECT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 544
    object qryAspectTypeDataASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Required = True
      Size = 100
    end
    object qryAspectTypeDataASPECT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object qrySaleRequestGroupCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO'
      ''
      'from'
      '  SALE_REQUEST_GROUPS srg'
      ''
      'where'
      '  (srg.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (srg.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1088
    Top = 8
    object qrySaleRequestGroupCodeREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      Required = True
    end
    object qrySaleRequestGroupCodeREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      Required = True
    end
  end
  object qrySaleRequestGroupData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || srg.REQUEST_NO || '#39'/'#39' || st.STREAM' +
        '_TYPE_ABBREV'
      '    from'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (st.STREAM_TYPE_CODE = srg.STREAM_TYPE_CODE)'
      '  ) as SRG_ID,'
      ''
      '  srg.SALE_ORDER_TYPE_CODE,'
      '  srg.SALE_DEAL_TYPE_CODE,'
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO,'
      '  srg.STREAM_TYPE_CODE,'
      '  srg.IS_ACTIVATED_BY_CLIENT,'
      '  srg.CLIENT_REQUEST_GROUP_NO,'
      '  srg.REQUEST_SEND_DATE,'
      '  srg.REQUEST_REGISTER_DATE,'
      '  ( select'
      '      Min(s.CLIENT_COMPANY_CODE)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ANNUL_EMPLOYEE_CODE is null)'
      '  ) as CLIENT_COMPANY_CODE,'
      '  srg.MEDIATOR_COMPANY_CODE,'
      '  srg.SRG_EMPLOYEE_CODE,'
      ''
      '  srg.CREATE_EMPLOYEE_CODE,'
      '  srg.CREATE_DATE,'
      '  srg.CREATE_TIME,'
      '  srg.CHANGE_EMPLOYEE_CODE,'
      '  srg.CHANGE_DATE,'
      '  srg.CHANGE_TIME,'
      '  srg.ANNUL_EMPLOYEE_CODE,'
      '  srg.ANNUL_DATE,'
      '  srg.ANNUL_TIME,'
      '  srg.FINISH_EMPLOYEE_CODE,'
      '  srg.FINISH_DATE,'
      '  srg.FINISH_TIME'
      ''
      'from'
      '  SALE_REQUEST_GROUPS srg'
      ''
      'where'
      '  (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = :REQUEST_NO)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1088
    Top = 56
    object qrySaleRequestGroupDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      Required = True
    end
    object qrySaleRequestGroupDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleRequestGroupDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      Required = True
    end
    object qrySaleRequestGroupDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      Required = True
    end
    object qrySaleRequestGroupDataSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
      Required = True
    end
    object qrySaleRequestGroupDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      Required = True
      FieldValueType = fvtBoolean
    end
    object qrySaleRequestGroupDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object qrySaleRequestGroupDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qrySaleRequestGroupDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qrySaleRequestGroupDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleRequestGroupDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qrySaleRequestGroupDataSRG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'SRG_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object qrySaleRequestGroupDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qrySaleRequestGroupDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object qrySaleRequestGroupDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      Required = True
    end
    object qrySaleRequestGroupDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object qrySaleRequestGroupDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
    object qrySaleRequestGroupDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qrySaleRequestGroupDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qrySaleRequestGroupDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qrySaleRequestGroupDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qrySaleRequestGroupDataSRG_ID: TAbmesWideStringField
      FieldName = 'SRG_ID'
      Size = 182
    end
  end
  object qryStreamTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  st.STREAM_TYPE_ABBREV,'
      '  st.STREAM_TYPE_NAME'
      ''
      'from'
      '  STREAM_TYPES st'
      ''
      'where'
      '  (st.STREAM_TYPE_CODE = :STREAM_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 592
    object qryStreamTypeDataSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Required = True
      Size = 100
    end
    object qryStreamTypeDataSTREAM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object qrySaleShipmentsData: TAbmesSQLQuery
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
      '  ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '  ss.SHIPMENT_OBJECT_CODE'
      ''
      'from'
      '  SALE_SHIPMENTS ss'
      ''
      'where'
      '  (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 208
    object qrySaleShipmentsDataSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qrySaleShipmentsDataSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
      Required = True
    end
  end
  object qrySRGSalesData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE'
      ''
      'from'
      '  SALES s'
      ''
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 1088
    Top = 104
    object qrySRGSalesDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qrySRGSalesDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
  end
  object qryRealModelData: TAbmesSQLQuery
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
      '  ('
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
      '    ) ||'
      '    '#39'/'#39' ||'
      '    ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        SALE_GROUPS sg,'
      '        PRIORITIES p'
      '      where'
      
        '        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE) a' +
        'nd'
      ''
      '        (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '    )'
      '  ) as IDENTIFIER'
      ''
      'from'
      '  MATERIAL_LISTS ml,'
      '  SALES s'
      ''
      'where'
      '  (ml.ML_OBJECT_BRANCH_CODE = :ML_OBJECT_BRANCH_CODE) and'
      '  (ml.ML_OBJECT_CODE = :ML_OBJECT_CODE) and'
      ''
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ml.BND_PROCESS_OBJECT_BRANCH_CODE' +
        ') and'
      '  (s.SALE_OBJECT_CODE = ml.BND_PROCESS_OBJECT_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 472
    object qryRealModelDataIDENTIFIER: TAbmesWideStringField
      FieldName = 'IDENTIFIER'
      Size = 100
    end
  end
  object qrySpecModelData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( select'
      '      p.CUSTOM_CODE'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = sp.SPEC_PRODUCT_CODE)'
      '  ) as IDENTIFIER'
      'from'
      '  SPECS sp'
      'where'
      '  (sp.SPEC_PRODUCT_CODE = :SPEC_PRODUCT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 192
    Top = 473
    object qrySpecModelDataIDENTIFIER: TAbmesFloatField
      FieldName = 'IDENTIFIER'
    end
  end
  object qryExceptEventTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  %EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE] as EE_TYPE_FULL_N' +
        'O,'
      '  eet.EXCEPT_EVENT_TYPE_NAME,'
      '  eet.EXCEPT_EVENT_TYPE_SHORT_NAME'
      'from'
      '  EXCEPT_EVENT_TYPES eet'
      'where'
      '  (eet.EXCEPT_EVENT_TYPE_CODE = :EXCEPT_EVENT_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'EE_TYPE_FULL_NO[eet.EXCEPT_EVENT_TYPE_CODE]'
        ParamType = ptInput
        Value = #39'a'#39
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 672
    object qryExceptEventTypeDataEE_TYPE_FULL_NO: TAbmesWideStringField
      FieldName = 'EE_TYPE_FULL_NO'
      Size = 100
    end
    object qryExceptEventTypeDataEXCEPT_EVENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventTypeDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      Required = True
      Size = 100
    end
  end
  object qryExceptEventGenTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_NO,'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_NAME,'
      '  eegt.EXCEPT_EVENT_GEN_TYPE_ABBREV'
      'from'
      '  EXCEPT_EVENT_GEN_TYPES eegt'
      'where'
      
        '  (eegt.EXCEPT_EVENT_GEN_TYPE_CODE = :EXCEPT_EVENT_GEN_TYPE_CODE' +
        ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 728
    object qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_NO'
      Required = True
    end
    object qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventGenTypeDataEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object qryExceptEventLevelData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  eel.EXCEPT_EVENT_LEVEL_NO,'
      '  eel.EXCEPT_EVENT_LEVEL_NAME,'
      '  eel.EXCEPT_EVENT_LEVEL_ABBREV'
      'from'
      '  EXCEPT_EVENT_LEVELS eel'
      'where'
      '  (eel.EXCEPT_EVENT_LEVEL_CODE = :EXCEPT_EVENT_LEVEL_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 784
    object qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_NO'
      Required = True
    end
    object qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_NAME'
      Required = True
      Size = 100
    end
    object qryExceptEventLevelDataEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
      Required = True
      Size = 100
    end
  end
  object qryExceptEventData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ee.EXCEPT_EVENT_NO,'
      '  ee.EXCEPT_EVENT_TYPE_CODE,'
      '  ee.EXCEPT_EVENT_LEVEL_CODE,'
      '  ee.EXCEPT_EVENT_GEN_TYPE_CODE,'
      '  ee.PRODUCT_CODE,'
      '  ee.PRODUCT_QUANTITY,'
      '  ee.DEPT_CODE,'
      '  ee.DESCRIPTION,'
      '  ee.DETECT_DEPT_CODE,'
      '  ee.DETECT_EMPLOYEE_CODE,'
      '  ee.DETECT_DATE,'
      '  ee.DETECT_TIME,'
      '  ee.CTRL_DEPT_CODE,'
      '  ee.CTRL_ACCEPT_EMPLOYEE_CODE,'
      '  ee.CTRL_ACCEPT_DATE,'
      '  ee.CTRL_ACCEPT_TIME,'
      '  ee.CTRL_MAIN_EMPLOYEE_CODE,'
      '  ee.CTRL_ACTIVATE_EMPLOYEE_CODE,'
      '  ee.CTRL_ACTIVATE_DATE,'
      '  ee.CTRL_ACTIVATE_TIME,'
      '  ee.DMG_RESOLVE_PLAN_BEGIN_DATE,'
      '  ee.DMG_RESOLVE_PLAN_END_DATE,'
      '  ee.DMG_RESOLVE_EMPLOYEE_CODE,'
      '  ee.DMG_RESOLVE_DATE,'
      '  ee.DMG_RESOLVE_TIME,'
      '  ee.RESOLVE_PLAN_BEGIN_DATE,'
      '  ee.RESOLVE_PLAN_END_DATE,'
      '  ee.RESOLVE_EMPLOYEE_CODE,'
      '  ee.RESOLVE_DATE,'
      '  ee.RESOLVE_TIME,'
      '  ee.CREATE_EMPLOYEE_CODE,'
      '  ee.CREATE_DATE,'
      '  ee.CREATE_TIME,'
      '  ee.CHANGE_EMPLOYEE_CODE,'
      '  ee.CHANGE_DATE,'
      '  ee.CHANGE_TIME,'
      '  ee.CLOSE_EMPLOYEE_CODE,'
      '  ee.CLOSE_DATE,'
      '  ee.CLOSE_TIME,'
      '  ee.ANNUL_EMPLOYEE_CODE,'
      '  ee.ANNUL_DATE,'
      '  ee.ANNUL_TIME,'
      '  ee.OTP_BIND_EMPLOYEE_CODE,'
      '  ee.OTP_BIND_DATE,'
      '  ee.OTP_BIND_TIME'
      'from'
      '  EXCEPT_EVENTS ee'
      'where'
      '  (ee.EXCEPT_EVENT_CODE = :EXCEPT_EVENT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 208
    Top = 784
    object qryExceptEventDataEXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_NO'
      Required = True
    end
    object qryExceptEventDataEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
      Required = True
    end
    object qryExceptEventDataEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
      Required = True
    end
    object qryExceptEventDataEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_CODE'
      Required = True
    end
    object qryExceptEventDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryExceptEventDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object qryExceptEventDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryExceptEventDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 250
    end
    object qryExceptEventDataDETECT_DEPT_CODE: TAbmesFloatField
      FieldName = 'DETECT_DEPT_CODE'
      Required = True
    end
    object qryExceptEventDataDETECT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DETECT_EMPLOYEE_CODE'
      Required = True
    end
    object qryExceptEventDataDETECT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DETECT_DATE'
      Required = True
    end
    object qryExceptEventDataDETECT_TIME: TAbmesSQLTimeStampField
      FieldName = 'DETECT_TIME'
      Required = True
    end
    object qryExceptEventDataCTRL_DEPT_CODE: TAbmesFloatField
      FieldName = 'CTRL_DEPT_CODE'
    end
    object qryExceptEventDataCTRL_ACCEPT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_ACCEPT_EMPLOYEE_CODE'
    end
    object qryExceptEventDataCTRL_ACCEPT_DATE: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACCEPT_DATE'
    end
    object qryExceptEventDataCTRL_ACCEPT_TIME: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACCEPT_TIME'
    end
    object qryExceptEventDataCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_MAIN_EMPLOYEE_CODE'
    end
    object qryExceptEventDataCTRL_ACTIVATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CTRL_ACTIVATE_EMPLOYEE_CODE'
    end
    object qryExceptEventDataCTRL_ACTIVATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACTIVATE_DATE'
    end
    object qryExceptEventDataCTRL_ACTIVATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CTRL_ACTIVATE_TIME'
    end
    object qryExceptEventDataDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
    end
    object qryExceptEventDataDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_PLAN_END_DATE'
    end
    object qryExceptEventDataDMG_RESOLVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_EMPLOYEE_CODE'
    end
    object qryExceptEventDataDMG_RESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_DATE'
    end
    object qryExceptEventDataDMG_RESOLVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_TIME'
    end
    object qryExceptEventDataRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_PLAN_BEGIN_DATE'
    end
    object qryExceptEventDataRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_PLAN_END_DATE'
    end
    object qryExceptEventDataRESOLVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'RESOLVE_EMPLOYEE_CODE'
    end
    object qryExceptEventDataRESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_DATE'
    end
    object qryExceptEventDataRESOLVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_TIME'
    end
    object qryExceptEventDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object qryExceptEventDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qryExceptEventDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object qryExceptEventDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      Required = True
    end
    object qryExceptEventDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object qryExceptEventDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
    object qryExceptEventDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object qryExceptEventDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object qryExceptEventDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object qryExceptEventDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryExceptEventDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryExceptEventDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qryExceptEventDataOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTP_BIND_EMPLOYEE_CODE'
    end
    object qryExceptEventDataOTP_BIND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_DATE'
    end
    object qryExceptEventDataOTP_BIND_TIME: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_TIME'
    end
  end
  object qryExceptEventCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ee.EXCEPT_EVENT_CODE'
      'from'
      '  EXCEPT_EVENTS ee'
      'where'
      '  (ee.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (ee.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 720
    Top = 640
    object qryExceptEventCodeEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
      Required = True
    end
  end
  object qryDeliveryProjectCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DOC_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dp.DCD_OBJECT_BRANCH_CODE,'
      '  dp.DCD_OBJECT_CODE,'
      '  dp.DELIVERY_PROJECT_CODE'
      'from'
      '  DELIVERY_PROJECTS dp'
      'where'
      '  (dp.DOC_BRANCH_CODE = :DOC_BRANCH_CODE) and'
      '  (dp.DOC_CODE = :DOC_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 832
    Top = 640
    object qryDeliveryProjectCodeDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      Required = True
    end
    object qryDeliveryProjectCodeDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      Required = True
    end
    object qryDeliveryProjectCodeDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      Required = True
    end
  end
  object qryDeliveryProjectData: TAbmesSQLQuery
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
      '  ( select'
      
        '     (d.CUSTOM_CODE || '#39'/'#39' || dcd.DCD_CODE || '#39'/'#39' || dp.DELIVERY' +
        '_PROJECT_CODE || '#39'/'#39' || st.STREAM_TYPE_ABBREV)'
      '    from'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (dcd.DCD_BRANCH_CODE = d.DEPT_CODE) and'
      '      (dcd.STREAM_TYPE_CODE = st.STREAM_TYPE_CODE)'
      '  ) as DELIVERY_PROJECT_ID,'
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
      '  dcd.DCD_BRANCH_CODE,'
      '  dcd.DCD_CODE,'
      '  dp.DELIVERY_PROJECT_CODE,'
      ''
      '  dcd.STREAM_TYPE_CODE,'
      '  dc.DELIVERY_TYPE_CODE,'
      ''
      '  dp.VENDOR_COMPANY_CODE,'
      '  dp.CREATE_EMPLOYEE_CODE,'
      '  dp.CREATE_DATE,'
      '  dp.CREATE_TIME,'
      '  dp.CHANGE_EMPLOYEE_CODE,'
      '  dp.CHANGE_DATE,'
      '  dp.CHANGE_TIME,'
      '  dp.FINISH_EMPLOYEE_CODE,'
      '  dp.FINISH_DATE,'
      '  dp.FINISH_TIME,'
      '  dp.ANNUL_EMPLOYEE_CODE,'
      '  dp.ANNUL_DATE,'
      '  dp.ANNUL_TIME,'
      '  dp.WORK_QUANTITY,'
      
        '  (dp.TOTAL_PRICE / (dp.WORK_QUANTITY * %DELIVERY_LEASE_DATE_UNI' +
        'T_QTY[dcd~dp])) as SINGLE_PRICE,'
      '  dp.ACCOUNT_QUANTITY,'
      
        '  (dp.TOTAL_PRICE / (dp.ACCOUNT_QUANTITY * %DELIVERY_LEASE_DATE_' +
        'UNIT_QTY[dcd~dp])) as ACCOUNT_SINGLE_PRICE,'
      '  dp.TOTAL_PRICE,'
      '  dp.CURRENCY_CODE,'
      '  dp.DELIVERY_DATE,'
      '  dp.MEDIATOR_COMPANY_CODE,'
      '  dp.START_DATE,'
      '  dp.REGISTER_DATE,'
      '  dp.PLAN_POSITION_DATE,'
      '  dp.REAL_POSITION_DATE,'
      '  dp.PLAN_VENDOR_POSITION_DATE,'
      '  dp.REAL_VENDOR_POSITION_DATE,'
      '  dp.DECISION_EMPLOYEE_CODE,'
      '  dp.DIALOG_EMPLOYEE_CODE,'
      '  dp.SHIPMENT_DAYS,'
      '  dp.PSD_STORE_CODE,'
      '  dp.PRODUCT_CODE,'
      '  dp.DEFICIT_COVER_DATE'
      ''
      'from'
      '  DELIVERY_PROJECTS dp,'
      '  DEFICIT_COVER_DECISIONS dcd,'
      '  DELIVERY_CONTRACTS dc'
      ''
      '  where'
      '  (dp.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and'
      ''
      '  (dp.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE(+)) and'
      '  (dp.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE(+)) and'
      '  (dp.DELIVERY_PROJECT_CODE = dc.DELIVERY_PROJECT_CODE(+)) and'
      ''
      '  (dp.DCD_OBJECT_BRANCH_CODE = :DCD_OBJECT_BRANCH_CODE) and'
      '  (dp.DCD_OBJECT_CODE = :DCD_OBJECT_CODE) and'
      '  (dp.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'DELIVERY_LEASE_DATE_UNIT_QTY[dcd~dp]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 320
    Top = 784
    object qryDeliveryProjectDataVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
      Required = True
    end
    object qryDeliveryProjectDataDELIVERY_PROJECT_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_PROJECT_ID'
      Size = 223
    end
    object qryDeliveryProjectDataDELIVERY_ID: TAbmesWideStringField
      FieldName = 'DELIVERY_ID'
      Size = 128
    end
    object qryDeliveryProjectDataDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      Required = True
    end
    object qryDeliveryProjectDataDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      Required = True
    end
    object qryDeliveryProjectDataDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      Required = True
    end
    object qryDeliveryProjectDataSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
      Required = True
    end
    object qryDeliveryProjectDataDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object qryDeliveryProjectDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      Required = True
    end
    object qryDeliveryProjectDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      Required = True
    end
    object qryDeliveryProjectDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      Required = True
    end
    object qryDeliveryProjectDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      Required = True
    end
    object qryDeliveryProjectDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      Required = True
    end
    object qryDeliveryProjectDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      Required = True
    end
    object qryDeliveryProjectDataWORK_QUANTITY: TAbmesFloatField
      FieldName = 'WORK_QUANTITY'
    end
    object qryDeliveryProjectDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryDeliveryProjectDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryDeliveryProjectDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qryDeliveryProjectDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryDeliveryProjectDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryDeliveryProjectDataDELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'DELIVERY_DATE'
    end
    object qryDeliveryProjectDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryDeliveryProjectDataSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
      Required = True
    end
    object qryDeliveryProjectDataREGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REGISTER_DATE'
      Required = True
    end
    object qryDeliveryProjectDataPLAN_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_POSITION_DATE'
    end
    object qryDeliveryProjectDataREAL_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_POSITION_DATE'
    end
    object qryDeliveryProjectDataPLAN_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_VENDOR_POSITION_DATE'
    end
    object qryDeliveryProjectDataREAL_VENDOR_POSITION_DATE: TAbmesSQLTimeStampField
      FieldName = 'REAL_VENDOR_POSITION_DATE'
    end
    object qryDeliveryProjectDataDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qryDeliveryProjectDataDIALOG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DIALOG_EMPLOYEE_CODE'
      Required = True
    end
    object qryDeliveryProjectDataSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object qryDeliveryProjectDataPSD_STORE_CODE: TAbmesFloatField
      FieldName = 'PSD_STORE_CODE'
      Required = True
    end
    object qryDeliveryProjectDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object qryDeliveryProjectDataDEFICIT_COVER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEFICIT_COVER_DATE'
      Required = True
    end
    object qryDeliveryProjectDataFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qryDeliveryProjectDataFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qryDeliveryProjectDataFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qryDeliveryProjectDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qryDeliveryProjectDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qryDeliveryProjectDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'DELIVERY_LEASE_DATE_UNIT_QTY'
        Strings.Strings = (
          '-- sashtoto macro go ima i v dmDeliveries'
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
          ')'
          '')
      end>
    Left = 1088
    Top = 776
  end
  object qryDeliveryTypeData: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'DELIVERY_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dt.DELIVERY_TYPE_ABBREV,'
      '  dt.DESCRIPTION'
      'from'
      '  DELIVERY_TYPES dt'
      'where'
      '  (dt.DELIVERY_TYPE_CODE = :DELIVERY_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 960
    Top = 640
    object qryDeliveryTypeDataDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object qryDeliveryTypeDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 50
    end
  end
end
