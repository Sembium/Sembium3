inherited dmCompanies: TdmCompanies
  Height = 737
  Width = 906
  object prvCompanyOffices: TDataSetProvider
    DataSet = qryCompanyOffices
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvCompanyOfficesBeforeUpdateRecord
    Left = 40
    Top = 8
  end
  object qryCompanyOffices: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  co.COMPANY_CODE,'
      '  co.OFFICE_CODE,'
      '  co.OFFICE_NAME,'
      '  co.I_OFFICE_NAME,'
      '  co.COUNTRY_CODE,'
      '  co.STATE,'
      '  co.I_STATE,'
      '  co.REGION,'
      '  co.I_REGION,'
      '  co.ZIP,'
      '  co.CITY,'
      '  co.I_CITY,'
      '  co.ADDRESS,'
      '  co.I_ADDRESS,'
      ''
      '  ( select'
      '      c.COUNTRY_NAME'
      '    from'
      '      COUNTRIES c'
      '    where'
      '      (c.COUNTRY_CODE = co.COUNTRY_CODE)'
      '  ) as COUNTRY_NAME'
      ''
      'from'
      '  COMPANY_OFFICES co'
      ''
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)'
      ''
      'order by'
      '  co.OFFICE_NAME'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANY_OFFICES'
    Left = 40
    Top = 56
    object qryCompanyOfficesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompanyOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
    object qryCompanyOfficesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object qryCompanyOfficesSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object qryCompanyOfficesREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object qryCompanyOfficesZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object qryCompanyOfficesCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCompanyOfficesADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryCompanyOfficesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyOfficesI_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'I_OFFICE_NAME'
      Required = True
      Size = 50
    end
    object qryCompanyOfficesI_STATE: TAbmesWideStringField
      FieldName = 'I_STATE'
      Size = 50
    end
    object qryCompanyOfficesI_REGION: TAbmesWideStringField
      FieldName = 'I_REGION'
      Size = 50
    end
    object qryCompanyOfficesI_CITY: TAbmesWideStringField
      FieldName = 'I_CITY'
      Size = 50
    end
    object qryCompanyOfficesI_ADDRESS: TAbmesWideStringField
      FieldName = 'I_ADDRESS'
      Size = 250
    end
  end
  object qryClientProductSignatures: TAbmesSQLQuery
    BeforeOpen = qryClientProductSignaturesBeforeOpen
    AfterClose = qryClientProductSignaturesAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  /*+ NO_USE_HASH(cp c p) NO_USE_MERGE(cp c p) INDEX(c) INDEX(p)' +
        ' */'
      '  cp.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      '  c.SHORT_NAME as COMPANY_NAME,'
      '  c.DOC_BRANCH_CODE as COMPANY_DOC_BRANCH_CODE,'
      '  c.DOC_CODE as COMPANY_DOC_CODE,'
      '  %HAS_DOC_ITEMS[c] as COMPANY_HAS_DOC,'
      ''
      '  cp.PRODUCT_CODE,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC,'
      ''
      '  cp.NAME'
      ''
      'from'
      '  COMPANY_PRODUCTS cp,'
      '  COMPANIES c,'
      '  PRODUCTS p'
      ''
      'where'
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = cp.PRODUCT_CODE)'
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
      '          tfc.COMPANY_CODE = cp.COMPANY_CODE'
      '      )'
      '    )'
      '  ) and'
      ''
      '  (p.PRODUCT_CODE = cp.PRODUCT_CODE) and'
      '  (c.COMPANY_CODE = cp.COMPANY_CODE)'
      ''
      'order by'
      '  COMPANY_NAME,'
      '  PRODUCT_NAME')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0=0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[p]'
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
    TableName = 'COMPANY_PRODUCTS_FOR_EDIT'
    Left = 168
    Top = 56
    object qryClientProductSignaturesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientProductSignaturesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientProductSignaturesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryClientProductSignaturesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryClientProductSignaturesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryClientProductSignaturesCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      ProviderFlags = []
    end
    object qryClientProductSignaturesCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryClientProductSignaturesCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
      ProviderFlags = []
    end
    object qryClientProductSignaturesCOMPANY_HAS_DOC: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOC'
      ProviderFlags = []
    end
    object qryClientProductSignaturesPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qryClientProductSignaturesPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
      ProviderFlags = []
    end
    object qryClientProductSignaturesPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      ProviderFlags = []
    end
    object qryClientProductSignaturesCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
      ProviderFlags = []
    end
  end
  object prvClientProductSignatures: TDataSetProvider
    DataSet = qryClientProductSignatures
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 8
  end
  object qryCompanies: TAbmesSQLQuery
    BeforeOpen = qryCompaniesBeforeOpen
    MaxBlobSize = -1
    Params = <
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
        Name = 'MIN_EXISTANCE_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EXISTANCE_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_REACH_MONTHS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_REACH_MONTHS'
        ParamType = ptInput
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
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT_EX'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BULSTAT_EX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PERSON_GENDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CRAFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SHORT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_NO'
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
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_INTERNAL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      '  co.COUNTRY_NAME,'
      '  c.TAX_NO,'
      '  c.CITY,'
      '  c.BULSTAT || c.BULSTAT_EX as BULSTAT,'
      '  l.LANGUAGE_NAME,'
      '  c.STATE,'
      '  c.REGION,'
      '  c.ZIP,'
      '  c.ADDRESS,'
      '  c.DOC_BRANCH_CODE,'
      '  c.DOC_CODE,'
      '  ('
      '    select'
      '      d.DOC_EMPTINESS_REQUIREMENT_CODE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = c.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = c.DOC_CODE)'
      '  ) as DOC_EMPTINESS_REQUIREMENT_CODE,'
      '  ('
      '    select'
      '      d.IS_COMPLETE'
      '    from'
      '      DOCS d'
      '    where'
      '      (d.DOC_BRANCH_CODE = c.DOC_BRANCH_CODE) and'
      '      (d.DOC_CODE = c.DOC_CODE)'
      '  ) as DOC_IS_COMPLETE,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = c.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = c.DOC_CODE) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = c.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = c.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.AUTHORIZE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAUTHORIZED_ACTIVE_DI_COUNT,'
      '  ('
      '    select'
      '      Count(*)'
      '    from'
      '      DOC_ITEMS di'
      '    where'
      '      (di.DOC_BRANCH_CODE = c.DOC_BRANCH_CODE) and'
      '      (di.DOC_CODE = c.DOC_CODE) and'
      '      (di.APPROVE_EMPLOYEE_CODE is null) and'
      '      (di.IS_INACTIVE = 0)'
      '  ) as UNAPPROVED_ACTIVE_DI_COUNT,'
      ''
      '  c.COMPANY_CLASS_CODE,'
      '  ( select'
      '      cc.COMPANY_CLASS_ABBREV'
      '    from'
      '      COMPANY_CLASSES cc'
      '    where'
      '      (cc.COMPANY_CLASS_CODE = c.COMPANY_CLASS_CODE)'
      '  ) as COMPANY_CLASS_ABBREV,'
      ''
      '  c.SHORT_NAME,'
      ''
      '  Cast('
      '    Nvl2(p.COMPANY_CODE,'
      '      p.EGN,'
      '      To_char(c.BULSTAT || c.BULSTAT_EX)'
      '    ) as Varchar2(20 char)'
      '  ) as CUSTOM_ID,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      CLIENT_COMPANIES cl'
      '    where'
      '      (c.COMPANY_CODE = cl.CLIENT_COMPANY_CODE)'
      '  ) as IS_CLIENT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      MEDIATOR_COMPANIES medc'
      '    where'
      '      (c.COMPANY_CODE = medc.MEDIATOR_COMPANY_CODE)'
      '  ) as IS_MEDIATOR,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      VENDOR_COMPANIES vc'
      '    where'
      '      (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE)'
      '  ) as IS_VENDOR,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      GOVERNMENT_ORGANIZATIONS go'
      '    where'
      '      (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE)'
      '  ) as IS_GOV_ORGANIZATION,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BANK_COMPANIES bc'
      '    where'
      '      (c.COMPANY_CODE = bc.BANK_COMPANY_CODE)'
      '  ) as IS_BANK,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      WORKERS w'
      '    where'
      '      (c.COMPANY_CODE = w.COMPANY_CODE)'
      '  ) as IS_WORKER,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p,'
      '      CLIENT_COMPANIES cl'
      '    where'
      '      (c.COMPANY_CODE = cl.CLIENT_COMPANY_CODE) and'
      '      (cl.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as CLIENT_PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p,'
      '      MEDIATOR_COMPANIES medc'
      '    where'
      '      (c.COMPANY_CODE = medc.MEDIATOR_COMPANY_CODE) and'
      '      (medc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as MEDIATOR_PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p,'
      '      VENDOR_COMPANIES vc'
      '    where'
      '      (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE) and'
      '      (vc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as VENDOR_PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p,'
      '      GOVERNMENT_ORGANIZATIONS go'
      '    where'
      '      (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE) and'
      '      (go.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as GOV_ORG_PRIORITY_NO,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p,'
      '      BANK_COMPANIES bc'
      '    where'
      '      (c.COMPANY_CODE = bc.BANK_COMPANY_CODE) and'
      '      (bc.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as BANK_PRIORITY_NO,'
      ''
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p,'
      '      WORKERS w'
      '    where'
      '      (c.COMPANY_CODE = w.COMPANY_CODE) and'
      '      (w.PRIORITY_CODE = p.PRIORITY_CODE)'
      '  ) as WORKER_PRIORITY_NO,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
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
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
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
      '  ) as COMPANY_STATUS_NAME,'
      ''
      '  %COMPANY_BASE_ROLE_CODE[c.COMPANY_CODE] as BASE_ROLE_CODE,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Max(csc.STATUS_DATE)))'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as EXISTANCE_MONTHS,'
      ''
      '  Round('
      '    Months_between('
      '      ( select'
      '          Max(csc.STATUS_DATE)'
      '        from'
      '          COMPANY_STATUSES_CHANGES csc'
      '        where'
      '          (csc.COMPANY_CODE = c.COMPANY_CODE)'
      '      ),'
      '      Coalesce('
      '        ( select'
      '            Min(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = c.COMPANY_CODE) and'
      '            (csc2.STATUS_DATE >'
      '              Coalesce('
      '                ( select'
      '                    Max(csc3.STATUS_DATE)'
      '                  from'
      '                    COMPANY_STATUSES_CHANGES csc3'
      '                  where'
      '                    (csc3.COMPANY_CODE = csc2.COMPANY_CODE) and'
      '                    (csc3.COMPANY_STATUS_CODE in (5, 6))'
      '                ),'
      '                CommonConsts.MinDate'
      '              )'
      '            )'
      '        ),'
      '        ( select'
      '            Max(csc.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc'
      '          where'
      '            (csc.COMPANY_CODE = c.COMPANY_CODE)'
      '        )'
      '      )'
      '    )'
      '  ) as CURRENT_STATUS_REACH_MONTHS,'
      ''
      '  ( select'
      '      cc.COMMON_PARTNER_CODE'
      '    from'
      '      CLIENT_COMPANIES cc'
      '    where'
      '      (cc.CLIENT_COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as CLIENT_COMMON_PARTNER_CODE,'
      ''
      '  ( select'
      '      c2.COMPANY_NO'
      '    from'
      '      CLIENT_COMPANIES cc,'
      '      COMPANIES c2'
      '    where'
      '      (cc.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      '      (cc.COMMON_PARTNER_CODE = c2.COMPANY_CODE)'
      '  ) as CLIENT_COMMON_PARTNER_NO,'
      ''
      '  ( select'
      '      c2.SHORT_NAME'
      '    from'
      '      CLIENT_COMPANIES cc,'
      '      COMPANIES c2'
      '    where'
      '      (cc.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      '      (cc.COMMON_PARTNER_CODE = c2.COMPANY_CODE)'
      '  ) as CLIENT_COMMON_PARTNER_NAME,'
      ''
      '  ( select'
      '      vc.COMMON_PARTNER_CODE'
      '    from'
      '      VENDOR_COMPANIES vc'
      '    where'
      '      (vc.VENDOR_COMPANY_CODE = c.COMPANY_CODE)'
      '  ) as VENDOR_COMMON_PARTNER_CODE,'
      ''
      '  ( select'
      '      c2.COMPANY_NO'
      '    from'
      '      VENDOR_COMPANIES vc,'
      '      COMPANIES c2'
      '    where'
      '      (vc.VENDOR_COMPANY_CODE = c.COMPANY_CODE) and'
      '      (vc.COMMON_PARTNER_CODE = c2.COMPANY_CODE)'
      '  ) as VENDOR_COMMON_PARTNER_NO,'
      ''
      '  ( select'
      '      c2.SHORT_NAME'
      '    from'
      '      VENDOR_COMPANIES vc,'
      '      COMPANIES c2'
      '    where'
      '      (vc.VENDOR_COMPANY_CODE = c.COMPANY_CODE) and'
      '      (vc.COMMON_PARTNER_CODE = c2.COMPANY_CODE)'
      '  ) as VENDOR_COMMON_PARTNER_NAME,'
      ''
      '  c.COMPANY_NAME,'
      '  c.VAT_NO,'
      ''
      '  ( select'
      '      ct.COMPANY_TYPE_ABBREV'
      '    from'
      '      COMPANY_TYPES ct'
      '    where'
      '      (ct.COMPANY_TYPE_CODE = c.COMPANY_TYPE_CODE)'
      '  ) as COMPANY_TYPE_ABBREV'
      ''
      'from'
      '  COMPANIES c,'
      '  PERSONS p,'
      '  COUNTRIES co,'
      '  LANGUAGES l'
      ''
      'where'
      '  (c.COMPANY_CODE <> 0) and'
      ''
      '  (c.COMPANY_CODE = p.COMPANY_CODE(+)) and'
      '  (c.LANGUAGE_CODE = l.LANGUAGE_CODE(+)) and'
      '  (c.COUNTRY_CODE = co.COUNTRY_CODE(+))and'
      ''
      '  ( ( select'
      '        csc.COMPANY_STATUS_CODE'
      '      from'
      '        COMPANY_STATUSES_CHANGES csc'
      '      where'
      '        (csc.COMPANY_CODE = c.COMPANY_CODE) and'
      ''
      '        (csc.STATUS_DATE = ('
      '          select'
      '            Max(STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '          )'
      '        )'
      '    ) between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      ''
      '  ( ( select'
      '        Round(Months_between(ContextDate, Max(csc.STATUS_DATE)))'
      '      from'
      '        COMPANY_STATUSES_CHANGES csc'
      '      where'
      '        (csc.COMPANY_CODE = c.COMPANY_CODE)'
      
        '    ) between Coalesce(To_Number(:MIN_EXISTANCE_MONTHS), 0) and ' +
        'Coalesce(To_Number(:MAX_EXISTANCE_MONTHS), 999999999)'
      '  ) and'
      ''
      '  ( Round('
      '      Months_between('
      '        ( select'
      '            Max(csc.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc'
      '          where'
      '            (csc.COMPANY_CODE = c.COMPANY_CODE)'
      '        ),'
      '        Coalesce('
      '          ( select'
      '              Min(csc2.STATUS_DATE)'
      '            from'
      '              COMPANY_STATUSES_CHANGES csc2'
      '            where'
      '              (csc2.COMPANY_CODE = c.COMPANY_CODE) and'
      '              (csc2.STATUS_DATE >'
      '                Coalesce('
      '                  ( select'
      '                      Max(csc3.STATUS_DATE)'
      '                    from'
      '                      COMPANY_STATUSES_CHANGES csc3'
      '                    where'
      
        '                      (csc3.COMPANY_CODE = csc2.COMPANY_CODE) an' +
        'd'
      '                      (csc3.COMPANY_STATUS_CODE in (5, 6))'
      '                  ),'
      '                  CommonConsts.MinDate'
      '                )'
      '              )'
      '          ),'
      '          ( select'
      '              Max(csc.STATUS_DATE)'
      '            from'
      '              COMPANY_STATUSES_CHANGES csc'
      '            where'
      '              (csc.COMPANY_CODE = c.COMPANY_CODE)'
      '          )'
      '        )'
      '      )'
      
        '    ) between Coalesce(To_Number(:MIN_REACH_MONTHS), 0) and Coal' +
        'esce(To_Number(:MAX_REACH_MONTHS), 999999999)'
      '  ) and'
      ''
      '  ( (:COMPANY_CLASS_CODE is null) or'
      '    (:COMPANY_CLASS_CODE = 0) or'
      '    ( (:COMPANY_CLASS_CODE = c.COMPANY_CLASS_CODE) and'
      '      ('
      '        ( (:COMPANY_CLASS_CODE = %cc_FIRM) and'
      ''
      '          ( (:COMPANY_NAME is null) or'
      '            (p.COMPANY_CODE is not null) or'
      '            (Upper(c.COMPANY_NAME) = Upper(:COMPANY_NAME)) ) and'
      ''
      '          ( (:SHORT_NAME is null) or'
      '            (p.COMPANY_CODE is not null) or'
      '            (Upper(c.SHORT_NAME) = Upper(:SHORT_NAME)) ) and'
      ''
      '          ( (:BULSTAT is null) or'
      '            (p.COMPANY_CODE is not null) or'
      '            (c.BULSTAT = :BULSTAT) ) and'
      ''
      '          ( (:BULSTAT_EX is null) or'
      '            (p.COMPANY_CODE is not null) or'
      '            (c.BULSTAT_EX = :BULSTAT_EX) )'
      '        ) or'
      ''
      '        ( (:COMPANY_CLASS_CODE = %cc_PERSON) and'
      ''
      '          ( (:ABBREV is null) or'
      '            (p.ABBREV is null) or'
      '            (Upper(p.ABBREV) = Upper(:ABBREV)) ) and'
      ''
      '          ( (:FIRST_NAME is null) or'
      '            (p.FIRST_NAME is null) or'
      '            (Upper(p.FIRST_NAME) = Upper(:FIRST_NAME)) ) and'
      ''
      '          ( (:MIDDLE_NAME is null) or'
      '            (p.MIDDLE_NAME is null) or'
      '            (Upper(p.MIDDLE_NAME) = Upper(:MIDDLE_NAME)) ) and'
      ''
      '          ( (:LAST_NAME is null) or'
      '            (p.LAST_NAME is null) or'
      '            (Upper(p.LAST_NAME) = Upper(:LAST_NAME)) ) and'
      ''
      '          ( (:EGN is null) or'
      '            (p.EGN is null) or'
      '            (p.EGN like :EGN) ) and'
      ''
      '          ( (:PERSON_GENDER_CODE is null) or'
      '            (:PERSON_GENDER_CODE = 0) or'
      '            ( (:PERSON_GENDER_CODE = 1) and (p.IS_MALE = 1) ) or'
      '            ( (:PERSON_GENDER_CODE = 2) and (p.IS_MALE = 0) )'
      '          ) and'
      ''
      '          ( (:CRAFT_TYPE_CODE is null) or'
      '            ( exists('
      '                select'
      '                  1'
      '                from'
      '                  PERSON_CRAFTS pc,'
      '                  CRAFTS cr'
      '                where'
      '                  (pc.COMPANY_CODE = c.COMPANY_CODE) and'
      '                  (pc.CRAFT_CODE = cr.CRAFT_CODE) and'
      '                  (cr.CRAFT_TYPE_CODE = :CRAFT_TYPE_CODE)'
      '              )'
      '            )'
      '          ) and'
      ''
      '          ( (:CRAFT_CODE is null) or'
      '            ( exists('
      '                select'
      '                  1'
      '                from'
      '                  PERSON_CRAFTS pc'
      '                where'
      '                  (pc.COMPANY_CODE = c.COMPANY_CODE) and'
      '                  (pc.CRAFT_CODE = :CRAFT_CODE)'
      '              )'
      '            )'
      '          )'
      '        ) or'
      ''
      '        ( (:COMPANY_CLASS_CODE = %cc_CUMULATIVE) and'
      ''
      '          ( (:COMPANY_NAME is null) or'
      '            (p.COMPANY_CODE is not null) or'
      '            (Upper(c.COMPANY_NAME) = Upper(:COMPANY_NAME)) ) and'
      ''
      '          ( (:SHORT_NAME is null) or'
      '            (p.COMPANY_CODE is not null) or'
      '            (Upper(c.SHORT_NAME) = Upper(:SHORT_NAME)) )'
      '        ) or'
      ''
      '        ( (:COMPANY_CLASS_CODE = %cc_COMMON) and'
      ''
      '          ( (:COMPANY_NAME is null) or'
      '            (Upper(c.COMPANY_NAME) = Upper(:COMPANY_NAME))'
      '          ) and'
      ''
      '          ( (:SHORT_NAME is null) or'
      '            (Upper(c.SHORT_NAME) = Upper(:SHORT_NAME))'
      '          )'
      '        )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COMPANY_NO is null) or'
      '    (c.COMPANY_NO = :COMPANY_NO) ) and'
      ''
      '  ( (:COUNTRY_CODE is null) or'
      '    (c.COUNTRY_CODE = :COUNTRY_CODE) ) and'
      ''
      '  ( (:ROLE_CODE is null) or'
      ''
      '    (:ROLE_CODE = 0) or'
      ''
      '    ( (:ROLE_CODE = 1) and'
      
        '      exists(select 1 from CLIENT_COMPANIES c2 where (c.COMPANY_' +
        'CODE = c2.CLIENT_COMPANY_CODE)) ) or'
      ''
      '    ( (:ROLE_CODE = 2) and'
      
        '      exists(select 1 from MEDIATOR_COMPANIES c2 where (c.COMPAN' +
        'Y_CODE = c2.MEDIATOR_COMPANY_CODE)) ) or'
      ''
      '    ( (:ROLE_CODE = 3) and'
      
        '      exists(select 1 from VENDOR_COMPANIES c2 where (c.COMPANY_' +
        'CODE = c2.VENDOR_COMPANY_CODE)) ) or'
      ''
      '    ( (:ROLE_CODE = 4) and'
      
        '      exists(select 1 from GOVERNMENT_ORGANIZATIONS c2 where (c.' +
        'COMPANY_CODE = c2.GOVERNMENT_ORGANIZATION_CODE)) ) or'
      ''
      '    ( (:ROLE_CODE = 5) and'
      
        '      exists(select 1 from BANK_COMPANIES c2 where (c.COMPANY_CO' +
        'DE = c2.BANK_COMPANY_CODE)) ) or'
      ''
      '    ( (:ROLE_CODE = 6) and'
      
        '      exists(select 1 from WORKERS c2 where (c.COMPANY_CODE = c2' +
        '.COMPANY_CODE)) and'
      '      ( Decode('
      '          Coalesce(c.IS_EXTERNAL, 0),'
      '          1, :IS_EXTERNAL,'
      '          0, :IS_INTERNAL,'
      '          0'
      '        ) = 1'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:COMMON_PARTNER_CODE is null) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          PAR_RELS pr'
      '        where'
      '          (pr.PARTNER_CODE = c.COMPANY_CODE) and'
      '          (pr.COMMON_PARTNER_CODE = :COMMON_PARTNER_CODE)'
      '      )'
      '    )'
      '  )'
      ''
      'order by'
      '  SHORT_NAME,'
      '  CUSTOM_ID,'
      '  COMPANY_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[c.COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'cc_FIRM'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'cc_PERSON'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'cc_CUMULATIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'cc_COMMON'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANIES_FOR_EDIT'
    Left = 280
    Top = 56
    object qryCompaniesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompaniesCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryCompaniesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Size = 50
    end
    object qryCompaniesTAX_NO: TAbmesFloatField
      FieldName = 'TAX_NO'
    end
    object qryCompaniesCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCompaniesLANGUAGE_NAME: TAbmesWideStringField
      FieldName = 'LANGUAGE_NAME'
      Size = 50
    end
    object qryCompaniesSTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object qryCompaniesREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object qryCompaniesZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object qryCompaniesADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryCompaniesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryCompaniesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryCompaniesDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
    end
    object qryCompaniesDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
    end
    object qryCompaniesACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object qryCompaniesUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
    end
    object qryCompaniesUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object qryCompaniesCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
    end
    object qryCompaniesSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 44
    end
    object qryCompaniesCUSTOM_ID: TAbmesWideStringField
      FieldName = 'CUSTOM_ID'
    end
    object qryCompaniesIS_CLIENT: TAbmesFloatField
      FieldName = 'IS_CLIENT'
    end
    object qryCompaniesIS_MEDIATOR: TAbmesFloatField
      FieldName = 'IS_MEDIATOR'
    end
    object qryCompaniesIS_VENDOR: TAbmesFloatField
      FieldName = 'IS_VENDOR'
    end
    object qryCompaniesIS_GOV_ORGANIZATION: TAbmesFloatField
      FieldName = 'IS_GOV_ORGANIZATION'
    end
    object qryCompaniesIS_BANK: TAbmesFloatField
      FieldName = 'IS_BANK'
    end
    object qryCompaniesIS_WORKER: TAbmesFloatField
      FieldName = 'IS_WORKER'
    end
    object qryCompaniesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryCompaniesBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object qryCompaniesEXISTANCE_MONTHS: TAbmesFloatField
      FieldName = 'EXISTANCE_MONTHS'
    end
    object qryCompaniesCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
    end
    object qryCompaniesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qryCompaniesCOMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object qryCompaniesCLIENT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_NO'
    end
    object qryCompaniesMEDIATOR_PRIORITY_NO: TAbmesFloatField
      FieldName = 'MEDIATOR_PRIORITY_NO'
    end
    object qryCompaniesVENDOR_PRIORITY_NO: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_NO'
    end
    object qryCompaniesGOV_ORG_PRIORITY_NO: TAbmesFloatField
      FieldName = 'GOV_ORG_PRIORITY_NO'
    end
    object qryCompaniesBANK_PRIORITY_NO: TAbmesFloatField
      FieldName = 'BANK_PRIORITY_NO'
    end
    object qryCompaniesWORKER_PRIORITY_NO: TAbmesFloatField
      FieldName = 'WORKER_PRIORITY_NO'
    end
    object qryCompaniesBULSTAT: TAbmesWideStringField
      FieldName = 'BULSTAT'
      Size = 14
    end
    object qryCompaniesCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMMON_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryCompaniesVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMMON_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryCompaniesCLIENT_COMMON_PARTNER_NO: TAbmesFloatField
      FieldName = 'CLIENT_COMMON_PARTNER_NO'
      ProviderFlags = []
    end
    object qryCompaniesCLIENT_COMMON_PARTNER_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMMON_PARTNER_NAME'
      ProviderFlags = []
    end
    object qryCompaniesVENDOR_COMMON_PARTNER_NO: TAbmesFloatField
      FieldName = 'VENDOR_COMMON_PARTNER_NO'
      ProviderFlags = []
    end
    object qryCompaniesVENDOR_COMMON_PARTNER_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_COMMON_PARTNER_NAME'
      ProviderFlags = []
    end
    object qryCompaniesCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompaniesVAT_NO: TAbmesWideStringField
      FieldName = 'VAT_NO'
      ProviderFlags = []
    end
    object qryCompaniesCOMPANY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
  end
  object prvCompanies: TDataSetProvider
    DataSet = qryCompanies
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvCompaniesBeforeUpdateRecord
    Left = 280
    Top = 8
  end
  object qryCompanyTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  COMPANY_TYPE_CODE,'
      '  COMPANY_TYPE_NO,'
      '  COMPANY_TYPE_ABBREV,'
      '  ABBREV_BEFORE,'
      '  COMPANY_TYPE_NAME'
      ''
      'from'
      '  COMPANY_TYPES'
      ''
      'order by'
      '  COMPANY_TYPE_NO'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 232
    Top = 160
    object qryCompanyTypesCOMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'COMPANY_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompanyTypesCOMPANY_TYPE_NO: TAbmesFloatField
      FieldName = 'COMPANY_TYPE_NO'
      Required = True
    end
    object qryCompanyTypesCOMPANY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_ABBREV'
      Required = True
      Size = 100
    end
    object qryCompanyTypesABBREV_BEFORE: TAbmesFloatField
      FieldName = 'ABBREV_BEFORE'
      Required = True
    end
    object qryCompanyTypesCOMPANY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object prvCompanyTypes: TDataSetProvider
    DataSet = qryCompanyTypes
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 112
  end
  object qryGetMaxCompanyOfficeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(OFFICE_CODE) as MAX_OFFICE_CODE'
      ''
      'from'
      '  COMPANY_OFFICES'
      ''
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 104
    object qryGetMaxCompanyOfficeCodeMAX_OFFICE_CODE: TAbmesFloatField
      FieldName = 'MAX_OFFICE_CODE'
    end
  end
  object qryInsertRelatedCompanyRecord: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %COMPANIES_TABLE'
      '  (%COMPANY_CODE,'
      '  PRIORITY_CODE)'
      ''
      'values'
      '  (:COMPANY_CODE,'
      '  :PRIORITY_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANIES_TABLE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANIES'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANY_CODE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 248
  end
  object qryDeleteRelatedCompanyRecord: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete %COMPANIES_TABLE'
      ''
      'where'
      '  %COMPANY_CODE = :COMPANY_CODE')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANIES_TABLE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANIES'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANY_CODE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 344
  end
  object qrySetCompanyPriority: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update %COMPANIES_TABLE'
      ''
      'set'
      '  PRIORITY_CODE = :PRIORITY_CODE'
      ''
      'where'
      '  (:COMPANY_CODE = %COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANIES_TABLE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANIES'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANY_CODE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 152
  end
  object qryCompanyRepresentatives: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  cr.COMPANY_CODE,'
      '  cr.REPRESENTATIVE_CODE,'
      '  cr.OFFICE_COMPANY_CODE,'
      '  cr.OFFICE_CODE,'
      '  cr.FIRST_NAME,'
      '  cr.I_FIRST_NAME,'
      '  cr.MIDDLE_NAME,'
      '  cr.I_MIDDLE_NAME,'
      '  cr.LAST_NAME,'
      '  cr.I_LAST_NAME,'
      '  cr.OCCUPATION,'
      '  cr.EGN,'
      '  cr.MALE,'
      '  cr.LANGUAGE_CODE,'
      '  Trim(cr.FIRST_NAME || '#39' '#39' || cr.LAST_NAME) as NAME,'
      '  Trim(cr.I_FIRST_NAME || '#39' '#39' || cr.I_LAST_NAME) as I_NAME,'
      '  co.OFFICE_NAME'
      ''
      'from'
      '  COMPANY_REPRESENTATIVES cr,'
      '  COMPANY_OFFICES co'
      ''
      'where'
      '  (cr.COMPANY_CODE = co.COMPANY_CODE(+)) and'
      '  (cr.OFFICE_CODE = co.OFFICE_CODE(+)) and'
      ''
      '  (cr.COMPANY_CODE = :COMPANY_CODE)'
      ''
      'order by'
      '  REPRESENTATIVE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 56
    object qryCompanyRepresentativesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompanyRepresentativesREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompanyRepresentativesOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object qryCompanyRepresentativesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object qryCompanyRepresentativesFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object qryCompanyRepresentativesMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object qryCompanyRepresentativesLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object qryCompanyRepresentativesOCCUPATION: TAbmesWideStringField
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object qryCompanyRepresentativesEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object qryCompanyRepresentativesMALE: TAbmesFloatField
      FieldName = 'MALE'
    end
    object qryCompanyRepresentativesLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object qryCompanyRepresentativesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      ProviderFlags = []
      Size = 41
    end
    object qryCompanyRepresentativesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyRepresentativesI_FIRST_NAME: TAbmesWideStringField
      FieldName = 'I_FIRST_NAME'
      Size = 50
    end
    object qryCompanyRepresentativesI_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'I_MIDDLE_NAME'
      Size = 50
    end
    object qryCompanyRepresentativesI_LAST_NAME: TAbmesWideStringField
      FieldName = 'I_LAST_NAME'
      Size = 50
    end
    object qryCompanyRepresentativesI_NAME: TAbmesWideStringField
      FieldName = 'I_NAME'
      Size = 101
    end
  end
  object prvCompanyRepresentatives: TDataSetProvider
    DataSet = qryCompanyRepresentatives
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvCompanyRepresentativesBeforeUpdateRecord
    Left = 496
    Top = 8
  end
  object qryGetMaxRepresentativeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(REPRESENTATIVE_CODE) as MAX_REPRESENTATIVE_CODE'
      ''
      'from'
      '  COMPANY_REPRESENTATIVES'
      ''
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 496
    Top = 104
    object qryGetMaxRepresentativeCodeMAX_REPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'MAX_REPRESENTATIVE_CODE'
    end
  end
  object qryCompanyContacts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  cc.*,'
      '  co.OFFICE_NAME,'
      '  ct.CONTACT_TYPE_NAME'
      ''
      'from'
      '  COMPANY_CONTACTS cc,'
      '  COMPANY_OFFICES co,'
      '  CONTACT_TYPES ct'
      ''
      'where'
      '  (cc.CONTACT_TYPE_CODE = ct.CONTACT_TYPE_CODE) and'
      ''
      '  (cc.COMPANY_CODE = co.COMPANY_CODE(+)) and'
      '  (cc.OFFICE_CODE = co.OFFICE_CODE(+)) and'
      ''
      '  (cc.COMPANY_CODE = :COMPANY_CODE)'
      ''
      'order by'
      '  CONTACT_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 56
    object qryCompanyContactsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompanyContactsCONTACT_CODE: TAbmesFloatField
      FieldName = 'CONTACT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCompanyContactsOFFICE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OFFICE_COMPANY_CODE'
    end
    object qryCompanyContactsOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object qryCompanyContactsREPRESENTATIVE_COMPANY_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_COMPANY_CODE'
    end
    object qryCompanyContactsREPRESENTATIVE_CODE: TAbmesFloatField
      FieldName = 'REPRESENTATIVE_CODE'
    end
    object qryCompanyContactsCONTACT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CONTACT_TYPE_CODE'
    end
    object qryCompanyContactsCONTACT_TEXT: TAbmesWideStringField
      FieldName = 'CONTACT_TEXT'
      Required = True
      Size = 50
    end
    object qryCompanyContactsNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 50
    end
    object qryCompanyContactsOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyContactsCONTACT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'CONTACT_TYPE_NAME'
      ProviderFlags = []
    end
  end
  object prvCompanyContacts: TDataSetProvider
    DataSet = qryCompanyContacts
    Options = [poPropogateChanges]
    BeforeUpdateRecord = prvCompanyContactsBeforeUpdateRecord
    Left = 632
    Top = 8
  end
  object qryCompanyBankAccounts: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  cba.*,'
      '  '
      '  %GET_PARTNER_NAME[cba.BANK_COMPANY_CODE] as BANK_NAME,'
      ''
      '  ( select'
      '      bc.BIC'
      '    from'
      '      COMPANIES bc'
      '    where'
      '      (bc.COMPANY_CODE = cba.BANK_COMPANY_CODE)'
      '  ) as BIC,'
      ''
      '  Cast('
      '    Decode(cba.BANK_ACCOUNT_TYPE_CODE, 3,'
      '      ( %GET_PARTNER_NAME[cba.BANK_COMPANY_CODE] ||'
      '        '#39' / '#39' ||'
      
        '        (select Coalesce(c.BIC, To_Char(c.BANK_NO)) from COMPANI' +
        'ES c where (cba.BANK_COMPANY_CODE = c.COMPANY_CODE)) ||'
      '        '#39' / '#39' ||'
      
        '        Nvl2(cba.IBAN, MiscUtils.FormatIBAN(cba.IBAN), cba.ACCOU' +
        'NT)'
      '      ),'
      '      cba.SHORT_NAME'
      '    ) as Varchar2(250 char)'
      '  ) as ACCOUNT_FULL_NAME,'
      '  curr.CURRENCY_ABBREV,'
      ''
      '  curr.PRODUCT_CODE as CURRENCY_PRODUCT_CODE'
      ''
      'from'
      '  COMPANY_BANK_ACCOUNTS cba,'
      '  CURRENCIES curr'
      ''
      'where'
      '  (cba.CURRENCY_CODE = curr.CURRENCY_CODE(+)) and'
      ''
      '  (cba.COMPANY_CODE = :COMPANY_CODE)'
      ''
      'order by'
      '  cba.SHORT_NAME'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[cba.BANK_COMPANY_CODE]'
        ParamType = ptInput
        Value = 'Cast(null as Varchar2(100 char))'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANY_BANK_ACCOUNTS'
    Left = 496
    Top = 208
    object qryCompanyBankAccountsACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyBankAccountsBANK_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BANK_COMPANY_CODE'
    end
    object qryCompanyBankAccountsACCOUNT: TAbmesFloatField
      FieldName = 'ACCOUNT'
    end
    object qryCompanyBankAccountsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object qryCompanyBankAccountsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryCompanyBankAccountsDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object qryCompanyBankAccountsBANK_NAME: TAbmesWideStringField
      FieldName = 'BANK_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCompanyBankAccountsCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryCompanyBankAccountsACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      ProviderFlags = []
      Size = 250
    end
    object qryCompanyBankAccountsIBAN: TAbmesWideStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object qryCompanyBankAccountsNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object qryCompanyBankAccountsSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Required = True
      Size = 50
    end
    object qryCompanyBankAccountsBIC: TAbmesWideStringField
      FieldName = 'BIC'
      ProviderFlags = []
    end
    object qryCompanyBankAccountsCURRENCY_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qryCompanyBankAccountsBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField
      FieldName = 'BANK_ACCOUNT_TYPE_CODE'
      Required = True
    end
  end
  object prvCompanyBankAccounts: TDataSetProvider
    DataSet = qryCompanyBankAccounts
    Options = [poPropogateChanges]
    BeforeUpdateRecord = prvCompanyBankAccountsBeforeUpdateRecord
    Left = 496
    Top = 160
  end
  object qryGetMaxContactCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(CONTACT_CODE) as MAX_CONTACT_CODE'
      ''
      'from'
      '  COMPANY_CONTACTS'
      ''
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 632
    Top = 104
    object qryGetMaxContactCodeMAX_CONTACT_CODE: TAbmesFloatField
      FieldName = 'MAX_CONTACT_CODE'
    end
  end
  object qryCompany: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      '  c.SHORT_NAME,'
      '  c.I_SHORT_NAME,'
      '  c.COMPANY_NAME,'
      '  c.I_COMPANY_NAME,'
      '  c.COMPANY_TYPE_CODE,'
      '  c.I_COMPANY_TYPE_CODE,'
      '  c.TAX_NO,'
      '  c.VAT_NO,'
      '  c.BULSTAT,'
      '  c.BULSTAT_EX,'
      '  c.VAT_REGISTERED,'
      '  c.COUNTRY_CODE,'
      '  c.STATE,'
      '  c.I_STATE,'
      '  c.REGION,'
      '  c.I_REGION,'
      '  c.ZIP,'
      '  c.CITY,'
      '  c.I_CITY,'
      '  c.ADDRESS,'
      '  c.I_ADDRESS,'
      '  c.LANGUAGE_CODE,'
      '  c.BANK_NO,'
      '  c.BIC,'
      '  c.DOC_BRANCH_CODE,'
      '  c.DOC_CODE,'
      ''
      '  Nvl2(cl.CLIENT_COMPANY_CODE, 1, 0) as IS_CLIENT,'
      '  cl.PRIORITY_CODE as CLIENT_PRIORITY_CODE,'
      '  cl.COMMON_PARTNER_CODE as CLIENT_COMMON_PARTNER_CODE,'
      '  Nvl2(medc.MEDIATOR_COMPANY_CODE, 1, 0) as IS_MEDIATOR,'
      '  medc.PRIORITY_CODE as MEDIATOR_PRIORITY_CODE,'
      '  Nvl2(vc.VENDOR_COMPANY_CODE, 1, 0) as IS_VENDOR,'
      '  vc.PRIORITY_CODE as VENDOR_PRIORITY_CODE,'
      '  vc.COMMON_PARTNER_CODE as VENDOR_COMMON_PARTNER_CODE,'
      
        '  Nvl2(go.GOVERNMENT_ORGANIZATION_CODE, 1, 0) as IS_GOV_ORGANIZA' +
        'TION,'
      '  go.PRIORITY_CODE as GOV_ORGANIZATION_PRIORITY_CODE,'
      '  Nvl2(bc.BANK_COMPANY_CODE, 1, 0) as IS_BANK,'
      '  bc.PRIORITY_CODE as BANK_PRIORITY_CODE,'
      '  Nvl2(w.COMPANY_CODE, 1, 0) as IS_WORKER,'
      '  w.PRIORITY_CODE as WORKER_PRIORITY_CODE,'
      '  c.IS_EXTERNAL,'
      ''
      '  c.COMPANY_CLASS_CODE,'
      '  p.FIRST_NAME,'
      '  p.I_FIRST_NAME,'
      '  p.MIDDLE_NAME,'
      '  p.I_MIDDLE_NAME,'
      '  p.LAST_NAME,'
      '  p.I_LAST_NAME,'
      '  p.ABBREV,'
      '  p.I_ABBREV,'
      '  p.EGN,'
      '  p.EDUCATION_CODE,'
      '  ( select'
      '      edu.EDUCATION_NAME'
      '    from'
      '      EDUCATIONS edu'
      '    where'
      '      (edu.EDUCATION_CODE = p.EDUCATION_CODE)'
      '  ) as EDUCATION_NAME,'
      '  Coalesce(p.IS_MALE, 1) as IS_MALE,'
      '  p.BIRTH_DATE'
      ''
      'from'
      '  COMPANIES c,'
      '  PERSONS p,'
      '  CLIENT_COMPANIES cl,'
      '  MEDIATOR_COMPANIES medc,'
      '  VENDOR_COMPANIES vc,'
      '  GOVERNMENT_ORGANIZATIONS go,'
      '  BANK_COMPANIES bc,'
      '  WORKERS w'
      ''
      'where'
      '  (c.COMPANY_CODE = :COMPANY_CODE) and'
      ''
      '  (c.COMPANY_CODE = p.COMPANY_CODE(+)) and'
      ''
      '  (c.COMPANY_CODE = cl.CLIENT_COMPANY_CODE(+)) and'
      '  (c.COMPANY_CODE = medc.MEDIATOR_COMPANY_CODE(+)) and'
      '  (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE(+)) and'
      '  (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE(+)) and'
      '  (c.COMPANY_CODE = bc.BANK_COMPANY_CODE(+)) and'
      '  (c.COMPANY_CODE = w.COMPANY_CODE(+))'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANIES_FOR_EDIT'
    AfterProviderStartTransaction = qryCompanyAfterProviderStartTransaction
    Left = 360
    Top = 32
    object qryCompanyCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 50
    end
    object qryCompanySHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
    end
    object qryCompanyCOMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'COMPANY_TYPE_CODE'
    end
    object qryCompanyTAX_NO: TAbmesFloatField
      FieldName = 'TAX_NO'
    end
    object qryCompanyVAT_REGISTERED: TAbmesFloatField
      FieldName = 'VAT_REGISTERED'
    end
    object qryCompanyCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object qryCompanySTATE: TAbmesWideStringField
      FieldName = 'STATE'
      Size = 50
    end
    object qryCompanyREGION: TAbmesWideStringField
      FieldName = 'REGION'
      Size = 50
    end
    object qryCompanyZIP: TAbmesWideStringField
      FieldName = 'ZIP'
    end
    object qryCompanyCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCompanyADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryCompanyLANGUAGE_CODE: TAbmesFloatField
      FieldName = 'LANGUAGE_CODE'
    end
    object qryCompanyBANK_NO: TAbmesFloatField
      FieldName = 'BANK_NO'
    end
    object qryCompanyBIC: TAbmesWideStringField
      FieldName = 'BIC'
    end
    object qryCompanyDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryCompanyDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryCompanyEGN: TAbmesWideStringField
      FieldName = 'EGN'
      ProviderFlags = []
      Size = 10
    end
    object qryCompanyFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryCompanyIS_MALE: TAbmesFloatField
      FieldName = 'IS_MALE'
      ProviderFlags = []
    end
    object qryCompanyCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryCompanyCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
    end
    object qryCompanyIS_CLIENT: TAbmesFloatField
      FieldName = 'IS_CLIENT'
      ProviderFlags = []
    end
    object qryCompanyCLIENT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryCompanyIS_MEDIATOR: TAbmesFloatField
      FieldName = 'IS_MEDIATOR'
      ProviderFlags = []
    end
    object qryCompanyMEDIATOR_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryCompanyIS_VENDOR: TAbmesFloatField
      FieldName = 'IS_VENDOR'
      ProviderFlags = []
    end
    object qryCompanyVENDOR_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryCompanyIS_GOV_ORGANIZATION: TAbmesFloatField
      FieldName = 'IS_GOV_ORGANIZATION'
      ProviderFlags = []
    end
    object qryCompanyGOV_ORGANIZATION_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'GOV_ORGANIZATION_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryCompanyIS_BANK: TAbmesFloatField
      FieldName = 'IS_BANK'
      ProviderFlags = []
    end
    object qryCompanyBANK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'BANK_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryCompanyIS_WORKER: TAbmesFloatField
      FieldName = 'IS_WORKER'
      ProviderFlags = []
    end
    object qryCompanyWORKER_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORKER_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qryCompanyEDUCATION_CODE: TAbmesFloatField
      FieldName = 'EDUCATION_CODE'
      ProviderFlags = []
    end
    object qryCompanyEDUCATION_NAME: TAbmesWideStringField
      FieldName = 'EDUCATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
    object qryCompanyBIRTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'BIRTH_DATE'
      ProviderFlags = []
    end
    object qryCompanyBULSTAT: TAbmesWideStringField
      FieldName = 'BULSTAT'
      Size = 9
    end
    object qryCompanyBULSTAT_EX: TAbmesWideStringField
      FieldName = 'BULSTAT_EX'
      Size = 4
    end
    object qryCompanyVAT_NO: TAbmesWideStringField
      FieldName = 'VAT_NO'
    end
    object qryCompanyCLIENT_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMMON_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryCompanyVENDOR_COMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMMON_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryCompanyI_FIRST_NAME: TAbmesWideStringField
      FieldName = 'I_FIRST_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyI_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'I_MIDDLE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyI_LAST_NAME: TAbmesWideStringField
      FieldName = 'I_LAST_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qryCompanyI_ABBREV: TAbmesWideStringField
      FieldName = 'I_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qryCompanyI_SHORT_NAME: TAbmesWideStringField
      FieldName = 'I_SHORT_NAME'
    end
    object qryCompanyI_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'I_COMPANY_NAME'
      Size = 50
    end
    object qryCompanyI_STATE: TAbmesWideStringField
      FieldName = 'I_STATE'
      Size = 50
    end
    object qryCompanyI_REGION: TAbmesWideStringField
      FieldName = 'I_REGION'
      Size = 50
    end
    object qryCompanyI_CITY: TAbmesWideStringField
      FieldName = 'I_CITY'
      Size = 50
    end
    object qryCompanyI_ADDRESS: TAbmesWideStringField
      FieldName = 'I_ADDRESS'
      Size = 250
    end
    object qryCompanyI_COMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'I_COMPANY_TYPE_CODE'
    end
  end
  object prvCompany: TDataSetProvider
    DataSet = qryCompany
    Options = [poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvCompanyAfterUpdateRecord
    BeforeUpdateRecord = prvCompanyBeforeUpdateRecord
    BeforeApplyUpdates = prvCompanyBeforeApplyUpdates
    AfterApplyUpdates = prvCompanyAfterApplyUpdates
    Left = 360
    Top = 8
  end
  object qryInsertPerson: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_MALE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BIRTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PERSONS ('
      '  COMPANY_CODE,'
      '  FIRST_NAME,'
      '  I_FIRST_NAME,'
      '  MIDDLE_NAME,'
      '  I_MIDDLE_NAME,'
      '  LAST_NAME,'
      '  I_LAST_NAME,'
      '  ABBREV,'
      '  I_ABBREV,'
      '  EGN,'
      '  IS_MALE,'
      '  BIRTH_DATE,'
      '  EDUCATION_CODE'
      ') values ('
      '  :COMPANY_CODE,'
      '  :FIRST_NAME,'
      '  :I_FIRST_NAME,'
      '  :MIDDLE_NAME,'
      '  :I_MIDDLE_NAME,'
      '  :LAST_NAME,'
      '  :I_LAST_NAME,'
      '  :ABBREV,'
      '  :I_ABBREV,'
      '  :EGN,'
      '  :IS_MALE,'
      '  :BIRTH_DATE ,'
      '  :EDUCATION_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 336
    Top = 192
  end
  object qryDeletePerson: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  PERSONS'
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 296
  end
  object qryModifyPerson: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_FIRST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_MIDDLE_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_LAST_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'I_ABBREV'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EGN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDUCATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_MALE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BIRTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PERSONS'
      'set'
      '  FIRST_NAME = :FIRST_NAME,'
      '  I_FIRST_NAME = :I_FIRST_NAME,'
      '  MIDDLE_NAME = :MIDDLE_NAME,'
      '  I_MIDDLE_NAME = :I_MIDDLE_NAME,'
      '  LAST_NAME = :LAST_NAME,'
      '  I_LAST_NAME = :I_LAST_NAME,'
      '  ABBREV = :ABBREV,'
      '  I_ABBREV = :I_ABBREV,'
      '  EGN = :EGN,'
      '  EDUCATION_CODE = :EDUCATION_CODE,'
      '  IS_MALE = :IS_MALE,'
      '  BIRTH_DATE = :BIRTH_DATE'
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 456
    Top = 280
  end
  object qryPartners: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRIORITY_COMPANY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_COMPANY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_COMPANY_KIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SECONDARY_COMPANY_KIND_FILTER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPANY_OR_PERSON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPANY_OR_PERSON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_COMPANY_OR_PERSON_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_FIRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_FIRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_PERSON'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_PERSON'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_CUMULATIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_CUMULATIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_COMMON'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_CC_COMMON'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      ''
      '  Decode('
      '    c.COMPANY_CLASS_CODE,'
      '    2,'
      '    ( select'
      
        '        (p.FIRST_NAME || '#39' '#39' || p.MIDDLE_NAME || '#39' '#39' || p.LAST_N' +
        'AME)'
      '      from'
      '        PERSONS p'
      '      where'
      '        (p.COMPANY_CODE = c.COMPANY_CODE)'
      '    ),'
      '    c.SHORT_NAME'
      '  ) as PARTNER_NAME,'
      ''
      '  c.DOC_BRANCH_CODE,'
      '  c.DOC_CODE,'
      '  %HAS_DOC_ITEMS[c] as HAS_DOCUMENTATION,'
      ''
      '  ( select  '
      '      pr.PRIORITY_NO'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE ='
      '        Decode(:PRIORITY_COMPANY_KIND,'
      
        '          1, (select c2.PRIORITY_CODE from CLIENT_COMPANIES c2 w' +
        'here (c.COMPANY_CODE = c2.CLIENT_COMPANY_CODE)),'
      
        '          2, (select c2.PRIORITY_CODE from MEDIATOR_COMPANIES c2' +
        ' where (c.COMPANY_CODE = c2.MEDIATOR_COMPANY_CODE)),'
      
        '          3, (select c2.PRIORITY_CODE from VENDOR_COMPANIES c2 w' +
        'here (c.COMPANY_CODE = c2.VENDOR_COMPANY_CODE)),'
      
        '          4, (select c2.PRIORITY_CODE from GOVERNMENT_ORGANIZATI' +
        'ONS c2 where (c.COMPANY_CODE = c2.GOVERNMENT_ORGANIZATION_CODE))' +
        ','
      
        '          5, (select c2.PRIORITY_CODE from BANK_COMPANIES c2 whe' +
        're (c.COMPANY_CODE = c2.BANK_COMPANY_CODE)),'
      
        '          6, (select c2.PRIORITY_CODE from WORKERS c2 where (c.C' +
        'OMPANY_CODE = c2.COMPANY_CODE))'
      '        )'
      '      )'
      '  ) as PRIORITY_NO,'
      '  '
      '  ( select  '
      '      pr.PRIORITY_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE ='
      '        Decode(:PRIORITY_COMPANY_KIND,'
      
        '          1, (select c2.PRIORITY_CODE from CLIENT_COMPANIES c2 w' +
        'here (c.COMPANY_CODE = c2.CLIENT_COMPANY_CODE)),'
      
        '          2, (select c2.PRIORITY_CODE from MEDIATOR_COMPANIES c2' +
        ' where (c.COMPANY_CODE = c2.MEDIATOR_COMPANY_CODE)),'
      
        '          3, (select c2.PRIORITY_CODE from VENDOR_COMPANIES c2 w' +
        'here (c.COMPANY_CODE = c2.VENDOR_COMPANY_CODE)),'
      
        '          4, (select c2.PRIORITY_CODE from GOVERNMENT_ORGANIZATI' +
        'ONS c2 where (c.COMPANY_CODE = c2.GOVERNMENT_ORGANIZATION_CODE))' +
        ','
      
        '          5, (select c2.PRIORITY_CODE from BANK_COMPANIES c2 whe' +
        're (c.COMPANY_CODE = c2.BANK_COMPANY_CODE)),'
      
        '          6, (select c2.PRIORITY_CODE from WORKERS c2 where (c.C' +
        'OMPANY_CODE = c2.COMPANY_CODE))'
      '        )'
      '      )'
      '  ) as PRIORITY_COLOR,'
      '  '
      '  ( select  '
      '      pr.PRIORITY_BACKGROUND_COLOR'
      '    from'
      '      PRIORITIES pr'
      '    where'
      '      (pr.PRIORITY_CODE ='
      '        Decode(:PRIORITY_COMPANY_KIND,'
      
        '          1, (select c2.PRIORITY_CODE from CLIENT_COMPANIES c2 w' +
        'here (c.COMPANY_CODE = c2.CLIENT_COMPANY_CODE)),'
      
        '          2, (select c2.PRIORITY_CODE from MEDIATOR_COMPANIES c2' +
        ' where (c.COMPANY_CODE = c2.MEDIATOR_COMPANY_CODE)),'
      
        '          3, (select c2.PRIORITY_CODE from VENDOR_COMPANIES c2 w' +
        'here (c.COMPANY_CODE = c2.VENDOR_COMPANY_CODE)),'
      
        '          4, (select c2.PRIORITY_CODE from GOVERNMENT_ORGANIZATI' +
        'ONS c2 where (c.COMPANY_CODE = c2.GOVERNMENT_ORGANIZATION_CODE))' +
        ','
      
        '          5, (select c2.PRIORITY_CODE from BANK_COMPANIES c2 whe' +
        're (c.COMPANY_CODE = c2.BANK_COMPANY_CODE)),'
      
        '          6, (select c2.PRIORITY_CODE from WORKERS c2 where (c.C' +
        'OMPANY_CODE = c2.COMPANY_CODE))'
      '        )'
      '      )'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  ( select'
      '      cou.COUNTRY_ABBREV'
      '    from'
      '      COUNTRIES cou'
      '    where'
      '      (cou.COUNTRY_CODE = c.COUNTRY_CODE)'
      '  ) as COUNTRY_ABBREV,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
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
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
      '  Decode('
      '    c.COMPANY_CLASS_CODE,'
      '    2,'
      '    ( select'
      '        p.EGN'
      '      from'
      '        PERSONS p'
      '      where'
      '        (p.COMPANY_CODE = c.COMPANY_CODE)'
      '    ),'
      '    c.BULSTAT'
      '  ) as PARTNER_ID'
      ''
      'from'
      '  COMPANIES c'
      ''
      'where'
      '  -- uCompanyKinds.TCompanyKinds zero-based ordinality'
      
        '  ( ( (:COMPANY_KIND_FILTER is null) and (:SECONDARY_COMPANY_KIN' +
        'D_FILTER is null) ) or'
      ''
      
        '    ( (:COMPANY_KIND_FILTER = 0) and (:SECONDARY_COMPANY_KIND_FI' +
        'LTER = 0) ) or'
      ''
      
        '    ( ( (:COMPANY_KIND_FILTER = 1) or (:SECONDARY_COMPANY_KIND_F' +
        'ILTER = 1) ) and'
      
        '      exists(select 1 from CLIENT_COMPANIES c2 where (c.COMPANY_' +
        'CODE = c2.CLIENT_COMPANY_CODE)) ) or'
      ''
      
        '    ( ( (:COMPANY_KIND_FILTER = 2) or (:SECONDARY_COMPANY_KIND_F' +
        'ILTER = 2) ) and'
      
        '      exists(select 1 from MEDIATOR_COMPANIES c2 where (c.COMPAN' +
        'Y_CODE = c2.MEDIATOR_COMPANY_CODE)) ) or'
      ''
      
        '    ( ( (:COMPANY_KIND_FILTER = 3) or (:SECONDARY_COMPANY_KIND_F' +
        'ILTER = 3) ) and'
      
        '      exists(select 1 from VENDOR_COMPANIES c2 where (c.COMPANY_' +
        'CODE = c2.VENDOR_COMPANY_CODE)) ) or'
      ''
      
        '    ( ( (:COMPANY_KIND_FILTER = 4) or (:SECONDARY_COMPANY_KIND_F' +
        'ILTER = 4) ) and'
      
        '      exists(select 1 from GOVERNMENT_ORGANIZATIONS c2 where (c.' +
        'COMPANY_CODE = c2.GOVERNMENT_ORGANIZATION_CODE)) ) or'
      ''
      
        '    ( ( (:COMPANY_KIND_FILTER = 5) or (:SECONDARY_COMPANY_KIND_F' +
        'ILTER = 5) ) and'
      
        '      exists(select 1 from BANK_COMPANIES c2 where (c.COMPANY_CO' +
        'DE = c2.BANK_COMPANY_CODE)) ) or'
      ''
      
        '    ( ( (:COMPANY_KIND_FILTER = 6) or (:SECONDARY_COMPANY_KIND_F' +
        'ILTER = 6) ) and'
      
        '      exists(select 1 from WORKERS c2 where (c.COMPANY_CODE = c2' +
        '.COMPANY_CODE)) )'
      '  ) and'
      ''
      '  -- (null, 1) - vsichki; 2 - firmi; 3 - hora'
      '  ( (:IS_COMPANY_OR_PERSON_CODE = 1) or'
      '    ( (:IS_COMPANY_OR_PERSON_CODE = 2) and'
      '      (c.COMPANY_CLASS_CODE <> 2)'
      '    ) or'
      '    ( (:IS_COMPANY_OR_PERSON_CODE = 3) and'
      '      (c.COMPANY_CLASS_CODE = 2)'
      '    )'
      '  ) and'
      ''
      '  ( ( (:SHOW_CC_FIRM is not null) and'
      '      (:SHOW_CC_FIRM = 1) and'
      '      (c.COMPANY_CLASS_CODE = %cc_FIRM)'
      '    ) or'
      '    ( (:SHOW_CC_PERSON is not null) and'
      '      (:SHOW_CC_PERSON = 1) and'
      '      (c.COMPANY_CLASS_CODE = %cc_PERSON)'
      '    ) or'
      '    ( (:SHOW_CC_CUMULATIVE is not null) and'
      '      (:SHOW_CC_CUMULATIVE = 1) and'
      '      (c.COMPANY_CLASS_CODE = %cc_CUMULATIVE)'
      '    ) or'
      '    ( (:SHOW_CC_COMMON is not null) and'
      '      (:SHOW_CC_COMMON = 1) and'
      '      (c.COMPANY_CLASS_CODE = %cc_COMMON)'
      '    )'
      '  )'
      ''
      
        '-- bez order by - ima DefaultOrder v servera za da ne misli v or' +
        'akala')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'cc_FIRM'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'cc_PERSON'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'cc_CUMULATIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'cc_COMMON'
        ParamType = ptInput
        Value = '1'
      end>
    DefaultOrder.Fields = 'PARTNER_NAME'
    MacroParams = <>
    CustomParams = <>
    Left = 248
    Top = 264
    object qryPartnersCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPartnersCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryPartnersPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
      Size = 62
    end
    object qryPartnersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryPartnersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryPartnersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qryPartnersPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qryPartnersPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qryPartnersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qryPartnersCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Size = 5
    end
    object qryPartnersCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryPartnersPARTNER_ID: TAbmesWideStringField
      FieldName = 'PARTNER_ID'
      Size = 10
    end
  end
  object prvPartners: TDataSetProvider
    DataSet = qryPartners
    Left = 248
    Top = 216
  end
  object qryInsertFirm: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into FIRMS ('
      '  COMPANY_CODE'
      ') values ('
      '  :COMPANY_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 400
    Top = 200
  end
  object qryDeleteFirm: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  FIRMS'
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 304
    Top = 336
  end
  object qryNewCompanyCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_COMPANIES.NextVal as COMPANY_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 360
    Top = 144
    object qryNewCompanyCodeCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
  end
  object qryPartnerInfo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.COMPANY_CODE,'
      '  c.COMPANY_NO,'
      '  Cast('
      '    Nvl2(p.COMPANY_CODE,'
      '      p.EGN,'
      '      To_char(c.BULSTAT || c.BULSTAT_EX)'
      '    ) as Varchar2(20 char)'
      '  ) as CUSTOM_ID,'
      ''
      '  Nvl2('
      '    ct.COMPANY_TYPE_CODE,'
      '    Decode(ct.ABBREV_BEFORE, 1,'
      '      (ct.COMPANY_TYPE_ABBREV || '#39' "'#39' || c.COMPANY_NAME ||'#39'"'#39'),'
      '      ('#39'"'#39' || c.COMPANY_NAME ||'#39'" '#39' || ct.COMPANY_TYPE_ABBREV)'
      '    ),'
      '    c.COMPANY_NAME'
      '  ) as PARTNER_NAME,'
      ''
      '  Nvl2('
      '    ct.COMPANY_TYPE_CODE,'
      '    Decode(ct.ABBREV_BEFORE, 1,'
      
        '      (ct.COMPANY_TYPE_ABBREV || '#39' "'#39' || c.I_COMPANY_NAME ||'#39'"'#39')' +
        ','
      '      ('#39'"'#39' || c.I_COMPANY_NAME ||'#39'" '#39' || ct.COMPANY_TYPE_ABBREV)'
      '    ),'
      '    c.I_COMPANY_NAME'
      '  ) as I_PARTNER_NAME,'
      ''
      '  c.SHORT_NAME as COMPANY_SHORT_NAME,'
      '  c.I_SHORT_NAME as I_COMPANY_SHORT_NAME,'
      ''
      ''
      '  c.CITY,'
      '  c.I_CITY,'
      '  c.ADDRESS,'
      '  c.I_ADDRESS,'
      '  c.TAX_NO,'
      '  c.VAT_NO,'
      '  c.BULSTAT,'
      '  c.BULSTAT_EX,'
      '  Nvl2(p.COMPANY_CODE, 1, 0) as IS_PERSON,'
      '  p.FIRST_NAME,'
      '  p.I_FIRST_NAME,'
      '  p.MIDDLE_NAME,'
      '  p.I_MIDDLE_NAME,'
      '  p.LAST_NAME,'
      '  p.I_LAST_NAME,'
      '  p.EGN,'
      ''
      '  c.COUNTRY_CODE,'
      ''
      '  c.VAT_REGISTERED,'
      ''
      '  ( select'
      '      con.COUNTRY_ABBREV'
      '    from'
      '      COUNTRIES con'
      '    where'
      '      (con.COUNTRY_CODE = c.COUNTRY_CODE)'
      '  ) as COUNTRY_ABBREV,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      CLIENT_COMPANIES cl'
      '    where'
      '      (c.COMPANY_CODE = cl.CLIENT_COMPANY_CODE)'
      '  ) as IS_CLIENT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      MEDIATOR_COMPANIES medc'
      '    where'
      '      (c.COMPANY_CODE = medc.MEDIATOR_COMPANY_CODE)'
      '  ) as IS_MEDIATOR,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      VENDOR_COMPANIES vc'
      '    where'
      '      (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE)'
      '  ) as IS_VENDOR,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      GOVERNMENT_ORGANIZATIONS go'
      '    where'
      '      (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE)'
      '  ) as IS_GOVERNMENT_ORGANIZATION,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      BANK_COMPANIES bc'
      '    where'
      '      (c.COMPANY_CODE = bc.BANK_COMPANY_CODE)'
      '  ) as IS_BANK,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      WORKERS w'
      '    where'
      '      (c.COMPANY_CODE = w.COMPANY_CODE)'
      '  ) as IS_WORKER,'
      ''
      '  ( select'
      '      cl.PRIORITY_CODE'
      '    from'
      '      CLIENT_COMPANIES cl'
      '    where'
      '      (c.COMPANY_CODE = cl.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_PRIORITY_CODE,'
      ''
      '  ( select'
      '      medc.PRIORITY_CODE'
      '    from'
      '      MEDIATOR_COMPANIES medc'
      '    where'
      '      (c.COMPANY_CODE = medc.MEDIATOR_COMPANY_CODE)'
      '  ) as MEDIATOR_PRIORITY_CODE,'
      ''
      '  ( select'
      '      vc.PRIORITY_CODE'
      '    from'
      '      VENDOR_COMPANIES vc'
      '    where'
      '      (c.COMPANY_CODE = vc.VENDOR_COMPANY_CODE)'
      '  ) as VENDOR_PRIORITY_CODE,'
      ''
      '  ( select'
      '      go.PRIORITY_CODE'
      '    from'
      '      GOVERNMENT_ORGANIZATIONS go'
      '    where'
      '      (c.COMPANY_CODE = go.GOVERNMENT_ORGANIZATION_CODE)'
      '  ) as GOV_ORG_PRIORITY_CODE,'
      ''
      '  ( select'
      '      bc.PRIORITY_CODE'
      '    from'
      '      BANK_COMPANIES bc'
      '    where'
      '      (c.COMPANY_CODE = bc.BANK_COMPANY_CODE)'
      '  ) as BANK_PRIORITY_CODE,'
      ''
      '  ( select'
      '      w.PRIORITY_CODE'
      '    from'
      '      WORKERS w'
      '    where'
      '      (c.COMPANY_CODE = w.COMPANY_CODE)'
      '  ) as WORKER_PRIORITY_CODE'
      ''
      'from'
      '  COMPANIES c,'
      '  PERSONS p,'
      '  COMPANY_TYPES ct'
      '  '
      'where'
      '  (c.COMPANY_TYPE_CODE = ct.COMPANY_TYPE_CODE(+)) and'
      '  (c.COMPANY_CODE = p.COMPANY_CODE(+)) and'
      ''
      '  (c.COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 184
    Top = 240
    object qryPartnerInfoCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object qryPartnerInfoCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
    end
    object qryPartnerInfoCUSTOM_ID: TAbmesWideStringField
      FieldName = 'CUSTOM_ID'
    end
    object qryPartnerInfoPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
      Size = 58
    end
    object qryPartnerInfoCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryPartnerInfoADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryPartnerInfoTAX_NO: TAbmesFloatField
      FieldName = 'TAX_NO'
    end
    object qryPartnerInfoEGN: TAbmesWideStringField
      FieldName = 'EGN'
      Size = 10
    end
    object qryPartnerInfoCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
    end
    object qryPartnerInfoCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Size = 5
    end
    object qryPartnerInfoIS_CLIENT: TAbmesFloatField
      FieldName = 'IS_CLIENT'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoIS_MEDIATOR: TAbmesFloatField
      FieldName = 'IS_MEDIATOR'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoIS_VENDOR: TAbmesFloatField
      FieldName = 'IS_VENDOR'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoIS_GOVERNMENT_ORGANIZATION: TAbmesFloatField
      FieldName = 'IS_GOVERNMENT_ORGANIZATION'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoIS_BANK: TAbmesFloatField
      FieldName = 'IS_BANK'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoIS_WORKER: TAbmesFloatField
      FieldName = 'IS_WORKER'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoCLIENT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_CODE'
    end
    object qryPartnerInfoMEDIATOR_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_PRIORITY_CODE'
    end
    object qryPartnerInfoVENDOR_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_PRIORITY_CODE'
    end
    object qryPartnerInfoGOV_ORG_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'GOV_ORG_PRIORITY_CODE'
    end
    object qryPartnerInfoBANK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'BANK_PRIORITY_CODE'
    end
    object qryPartnerInfoWORKER_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORKER_PRIORITY_CODE'
    end
    object qryPartnerInfoCOMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_SHORT_NAME'
    end
    object qryPartnerInfoBULSTAT: TAbmesWideStringField
      FieldName = 'BULSTAT'
      Size = 9
    end
    object qryPartnerInfoBULSTAT_EX: TAbmesWideStringField
      FieldName = 'BULSTAT_EX'
      Size = 4
    end
    object qryPartnerInfoIS_PERSON: TAbmesFloatField
      FieldName = 'IS_PERSON'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoFIRST_NAME: TAbmesWideStringField
      FieldName = 'FIRST_NAME'
      Size = 50
    end
    object qryPartnerInfoMIDDLE_NAME: TAbmesWideStringField
      FieldName = 'MIDDLE_NAME'
      Size = 50
    end
    object qryPartnerInfoLAST_NAME: TAbmesWideStringField
      FieldName = 'LAST_NAME'
      Size = 50
    end
    object qryPartnerInfoVAT_REGISTERED: TAbmesFloatField
      FieldName = 'VAT_REGISTERED'
      FieldValueType = fvtBoolean
    end
    object qryPartnerInfoVAT_NO: TAbmesWideStringField
      FieldName = 'VAT_NO'
    end
    object qryPartnerInfoI_PARTNER_NAME: TAbmesWideStringField
      FieldName = 'I_PARTNER_NAME'
      Size = 104
    end
    object qryPartnerInfoI_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'I_COMPANY_SHORT_NAME'
    end
    object qryPartnerInfoI_CITY: TAbmesWideStringField
      FieldName = 'I_CITY'
      Size = 50
    end
    object qryPartnerInfoI_ADDRESS: TAbmesWideStringField
      FieldName = 'I_ADDRESS'
      Size = 250
    end
    object qryPartnerInfoI_FIRST_NAME: TAbmesWideStringField
      FieldName = 'I_FIRST_NAME'
      Size = 50
    end
    object qryPartnerInfoI_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'I_MIDDLE_NAME'
      Size = 50
    end
    object qryPartnerInfoI_LAST_NAME: TAbmesWideStringField
      FieldName = 'I_LAST_NAME'
      Size = 50
    end
  end
  object qryCompanyStatusesChanges: TAbmesSQLQuery
    DataSource = dsCompanyStatus
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  csc.COMPANY_CODE,'
      '  csc.COMPANY_STATUS_CODE,'
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (cs.COMPANY_STATUS_CODE = csc.COMPANY_STATUS_CODE)'
      '  ) as COMPANY_STATUS_NAME,'
      '  csc.STATUS_DATE,'
      '  ( select'
      '      Coalesce(Min(csc2.STATUS_DATE), ContextDate)'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc2'
      '    where'
      '      (csc2.COMPANY_CODE = csc.COMPANY_CODE) and'
      '      (csc2.STATUS_DATE > csc.STATUS_DATE)'
      '  ) as NEXT_STATUS_DATE'
      '  '
      'from'
      '  COMPANY_STATUSES_CHANGES csc'
      ''
      'where'
      '  (csc.COMPANY_CODE = :COMPANY_CODE)'
      '  '
      'order by'
      '  csc.STATUS_DATE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANY_STATUSES_CHANGES'
    Left = 224
    Top = 480
    object qryCompanyStatusesChangesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyStatusesChangesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyStatusesChangesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCompanyStatusesChangesSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyStatusesChangesNEXT_STATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'NEXT_STATUS_DATE'
      ProviderFlags = []
    end
  end
  object qryCompanyStatuses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  cs.COMPANY_STATUS_CODE,'
      '  cs.COMPANY_STATUS_NAME'
      'from'
      '  COMPANY_STATUSES cs')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 480
    object qryCompanyStatusesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryCompanyStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
  end
  object prvCompanyStatuses: TDataSetProvider
    DataSet = qryCompanyStatuses
    Options = [poReadOnly]
    Left = 48
    Top = 432
  end
  object prvCompanyStatus: TDataSetProvider
    DataSet = qryCompanyStatus
    BeforeUpdateRecord = prvCompanyStatusBeforeUpdateRecord
    BeforeApplyUpdates = prvCompanyStatusBeforeApplyUpdates
    AfterApplyUpdates = prvCompanyStatusAfterApplyUpdates
    Left = 224
    Top = 328
  end
  object qryCompanyStatus: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  csc.COMPANY_CODE,'
      '  %GET_PARTNER_NAME[csc.COMPANY_CODE] as COMPANY_NAME,'
      '  csc.COMPANY_STATUS_CODE,'
      '  cs.COMPANY_STATUS_NAME,'
      '  csc.STATUS_DATE,'
      '  ( select'
      '      p.PRIORITY_NO'
      '    from'
      '      PRIORITIES p'
      '    where'
      
        '      (p.PRIORITY_CODE = %COMPANY_BASE_ROLE_PRIORITY_CODE[:COMPA' +
        'NY_CODE])'
      '  ) as PRIORITY_NO,'
      '  %COMPANY_BASE_ROLE_CODE[:COMPANY_CODE] as BASE_ROLE_CODE,'
      ''
      '  ( select'
      '      Round(Months_between(ContextDate, Max(STATUS_DATE)))'
      '    from'
      '      COMPANY_STATUSES_CHANGES'
      '    where'
      '      (COMPANY_CODE = csc.COMPANY_CODE)'
      '  ) as EXISTANCE_MONTHS,'
      ''
      '  Round('
      '    Months_between('
      '      csc.STATUS_DATE,'
      '      Coalesce('
      '        ( select'
      '            Min(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = csc.COMPANY_CODE) and'
      '            (csc2.STATUS_DATE >'
      '              Coalesce('
      '                ( select'
      '                    Max(csc3.STATUS_DATE)'
      '                  from'
      '                    COMPANY_STATUSES_CHANGES csc3'
      '                  where'
      '                    (csc3.COMPANY_CODE = csc2.COMPANY_CODE) and'
      '                    (csc3.COMPANY_STATUS_CODE in (5, 6))'
      '                ),'
      '                CommonConsts.MinDate'
      '              )'
      '            )'
      '        ),'
      '        csc.STATUS_DATE'
      '      )'
      '    )'
      '  ) as CURRENT_STATUS_REACH_MONTHS'
      ''
      'from'
      '  COMPANY_STATUSES_CHANGES csc,'
      '  COMPANY_STATUSES cs'
      ''
      'where'
      '  (csc.COMPANY_STATUS_CODE = cs.COMPANY_STATUS_CODE) and'
      ''
      '  (csc.COMPANY_CODE = :COMPANY_CODE) and'
      '  (csc.STATUS_DATE ='
      '    ( select'
      '        Max(STATUS_DATE)'
      '      from'
      '        COMPANY_STATUSES_CHANGES'
      '      where'
      '        (COMPANY_CODE = csc.COMPANY_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[csc.COMPANY_CODE]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_PRIORITY_CODE[:COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[:COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANY_STATUSES_CHANGES'
    BeforeProviderEndTransaction = qryCompanyStatusBeforeProviderEndTransaction
    Left = 224
    Top = 376
    object qryCompanyStatusCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyStatusSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyStatusBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
      ProviderFlags = []
    end
    object qryCompanyStatusCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCompanyStatusCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qryCompanyStatusEXISTANCE_MONTHS: TAbmesFloatField
      FieldName = 'EXISTANCE_MONTHS'
      ProviderFlags = []
    end
    object qryCompanyStatusCURRENT_STATUS_REACH_MONTHS: TAbmesFloatField
      FieldName = 'CURRENT_STATUS_REACH_MONTHS'
      ProviderFlags = []
    end
    object qryCompanyStatusCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCompanyStatusPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
  end
  object qryDeleteCumulativePartner: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  CUMULATIVE_PARTNERS'
      'where'
      '  (COMPANY_CODE = :COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 392
    Top = 312
  end
  object qryInsertCumulativePartner: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into CUMULATIVE_PARTNERS ('
      '  COMPANY_CODE'
      ') values ('
      '  :COMPANY_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 232
  end
  object qryInsertInitialCompanyStatus: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into COMPANY_STATUSES_CHANGES ('
      '  COMPANY_CODE,'
      '  COMPANY_STATUS_CODE,'
      '  STATUS_DATE'
      ') values ('
      '  :COMPANY_CODE,'
      '  1,'
      '  ContextDate'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 528
  end
  object dsCompany: TDataSource
    DataSet = qryCompany
    Left = 360
    Top = 72
  end
  object qryPersonCrafts: TAbmesSQLQuery
    DataSource = dsCompany
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  pc.COMPANY_CODE,'
      '  pc.CRAFT_CODE,'
      '  ( select'
      '      c.CRAFT_TYPE_CODE'
      '    from'
      '      CRAFTS c'
      '    where'
      '      (c.CRAFT_CODE = pc.CRAFT_CODE)'
      '  ) as CRAFT_TYPE_CODE,'
      '  pc.PRIORITY_CODE'
      'from'
      '  PERSON_CRAFTS pc'
      'where'
      '  (pc.COMPANY_CODE = :COMPANY_CODE)'
      'order by'
      '  pc.PRIORITY_CODE,'
      '  pc.CRAFT_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PERSON_CRAFTS'
    Left = 392
    Top = 96
    object qryPersonCraftsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPersonCraftsCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPersonCraftsCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryPersonCraftsPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
  end
  object dsCompanyStatus: TDataSource
    DataSet = qryCompanyStatus
    Left = 224
    Top = 432
  end
  object prvParRel: TDataSetProvider
    DataSet = qryParRel
    UpdateMode = upWhereKeyOnly
    OnUpdateError = prvParRelUpdateError
    BeforeUpdateRecord = prvParRelBeforeUpdateRecord
    BeforeApplyUpdates = prvParRelBeforeApplyUpdates
    AfterApplyUpdates = prvParRelAfterApplyUpdates
    Left = 800
    Top = 8
  end
  object qryParRelPeriods: TAbmesSQLQuery
    DataSource = dsParRel
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
        Name = 'BORDER_REL_TYPE_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  prp.PARTNER_CODE,'
      '  prp.BORDER_REL_TYPE_CODE,'
      '  prp.PAR_REL_PERIOD_CODE,'
      '  prp.BEGIN_DATE,'
      '  prp.END_DATE,'
      '  prp.DOC_BRANCH_CODE,'
      '  prp.DOC_CODE,'
      '  %HAS_DOC_ITEMS[prp] as HAS_DOC_ITEMS,'
      '  prp.CURRENCY_CODE,'
      '  prp.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = prp.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      '  prp.PARTNER_OFFICE_CODE,'
      '  prp.TRANSPORT_DURATION_DAYS,'
      '  prp.MEDIATOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.MEDIATOR_COMPANY_CODE)'
      '  ) as MEDIATOR_COMPANY_SHORT_NAME,'
      '  prp.SHIPMENT_TYPE_CODE,'
      '  prp.IS_PARTNER_TRANSPORT,'
      '  prp.CUSTOMHOUSE_CODE,'
      '  prp.FIN_PARTNER_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.FIN_PARTNER_CODE)'
      '  ) as FIN_PARTNER_SHORT_NAME,'
      ''
      '  prp.CREATE_EMPLOYEE_CODE,'
      '  prp.CREATE_DATE,'
      '  prp.CREATE_TIME,'
      '  prp.CHANGE_EMPLOYEE_CODE,'
      '  prp.CHANGE_DATE,'
      '  prp.CHANGE_TIME,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.PARTNER_CODE = prp.PARTNER_CODE) and'
      '      (sfm.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE) and'
      '      (sfm.PAR_REL_PERIOD_CODE = prp.PAR_REL_PERIOD_CODE) and'
      '      (sfm.AUTHORIZE_EMPLOYEE_CODE is not null)'
      '  ) as AUTHORIZED_SPEC_FIN_MODEL_CNT,'
      ''
      '  case'
      '    when (prp.END_DATE < ContextDate) then 1'
      '    else 0'
      '  end as IS_PAST,'
      ''
      '  case'
      
        '    when (ContextDate between prp.BEGIN_DATE and prp.END_DATE) the' +
        'n 1'
      '    else 0'
      '  end as IS_PRESENT,'
      ''
      '  case'
      '    when (ContextDate < prp.BEGIN_DATE) then 1'
      '    else 0'
      '  end as IS_FUTURE,'
      ''
      '  ( select'
      '      c.COMPANY_CLASS_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.PARTNER_CODE)'
      '  ) as COMPANY_CLASS_CODE,'
      ''
      '  prp.OVERRIDE_CURRENCY,'
      '  prp.OVERRIDE_STORE,'
      '  prp.OVERRIDE_TRANSPORT_DUR_DAYS,'
      '  prp.OVERRIDE_MEDIATOR_COMPANY,'
      '  prp.OVERRIDE_SHIPMENT_TYPE,'
      '  prp.OVERRIDE_IS_PARTNER_TRANSPORT,'
      '  prp.OVERRIDE_CUSTOMHOUSE,'
      '  prp.OVERRIDE_FIN_PARTNER,'
      ''
      '  x.INHRT_CURRENCY_CODE,'
      '  x.INHRT_STORE_CODE,'
      '  x.INHRT_STORE_IDENTIFIER,'
      '  x.INHRT_TRANSPORT_DURATION_DAYS,'
      '  x.INHRT_MEDIATOR_COMPANY_CODE,'
      '  x.INHRT_MED_COMPANY_SHORT_NAME,'
      '  x.INHRT_SHIPMENT_TYPE_CODE,'
      '  x.INHRT_IS_PARTNER_TRANSPORT,'
      '  x.INHRT_CUSTOMHOUSE_CODE,'
      '  x.INHRT_FIN_PARTNER_CODE,'
      '  x.INHRT_FIN_PARTNER_SHORT_NAME'
      ''
      'from'
      '  PAR_REL_PERIODS prp,'
      '  ( select'
      '      Max(cprp.CURRENCY_CODE) as INHRT_CURRENCY_CODE,'
      '      Max(cprp.STORE_CODE) as INHRT_STORE_CODE,'
      '      Max('
      '        ( select'
      
        '            (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LE' +
        'TTER)'
      '          from'
      '            DEPTS d,'
      '            DEPT_TYPES dt'
      '          where'
      '            (d.DEPT_CODE = cprp.STORE_CODE) and'
      '            (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '        )'
      '      ) as INHRT_STORE_IDENTIFIER,'
      
        '      Max(cprp.TRANSPORT_DURATION_DAYS) as INHRT_TRANSPORT_DURAT' +
        'ION_DAYS,'
      
        '      Max(cprp.MEDIATOR_COMPANY_CODE) as INHRT_MEDIATOR_COMPANY_' +
        'CODE,'
      '      Max('
      '        ( select'
      '            c.SHORT_NAME'
      '          from'
      '            COMPANIES c'
      '          where'
      '            (c.COMPANY_CODE = cprp.MEDIATOR_COMPANY_CODE)'
      '        )'
      '      ) as INHRT_MED_COMPANY_SHORT_NAME,'
      '      Max(cprp.SHIPMENT_TYPE_CODE) as INHRT_SHIPMENT_TYPE_CODE,'
      
        '      Max(cprp.IS_PARTNER_TRANSPORT) as INHRT_IS_PARTNER_TRANSPO' +
        'RT,'
      '      Max(cprp.CUSTOMHOUSE_CODE) as INHRT_CUSTOMHOUSE_CODE,'
      '      Max(cprp.FIN_PARTNER_CODE) as INHRT_FIN_PARTNER_CODE,'
      '      Max('
      '        ( select'
      '            c.SHORT_NAME'
      '          from'
      '            COMPANIES c'
      '          where'
      '            (c.COMPANY_CODE = cprp.FIN_PARTNER_CODE)'
      '        )'
      '      ) as INHRT_FIN_PARTNER_SHORT_NAME'
      '    from'
      '      PAR_REL_PERIODS cprp'
      '    where'
      '      (cprp.PARTNER_CODE ='
      '        ( select'
      '            pr.COMMON_PARTNER_CODE'
      '          from'
      '            PAR_RELS pr'
      '          where'
      '            (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '            (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      '        )'
      '      ) and'
      '      (cprp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      '  ) x'
      ''
      'where'
      '  (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)')
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
    TableName = 'PAR_REL_PERIODS_FOR_EDIT'
    Left = 800
    Top = 152
    object qryParRelPeriodsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelPeriodsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelPeriodsPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryParRelPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryParRelPeriodsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryParRelPeriodsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryParRelPeriodsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryParRelPeriodsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryParRelPeriodsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryParRelPeriodsSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryParRelPeriodsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object qryParRelPeriodsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object qryParRelPeriodsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryParRelPeriodsMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MEDIATOR_COMPANY_SHORT_NAME'
      ProviderFlags = []
    end
    object qryParRelPeriodsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryParRelPeriodsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object qryParRelPeriodsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryParRelPeriodsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryParRelPeriodsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryParRelPeriodsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryParRelPeriodsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryParRelPeriodsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryParRelPeriodsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryParRelPeriodsAUTHORIZED_SPEC_FIN_MODEL_CNT: TAbmesFloatField
      FieldName = 'AUTHORIZED_SPEC_FIN_MODEL_CNT'
      ProviderFlags = []
    end
    object qryParRelPeriodsIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      ProviderFlags = []
    end
    object qryParRelPeriodsIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
    end
    object qryParRelPeriodsIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
    end
    object qryParRelPeriodsCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsOVERRIDE_CURRENCY: TAbmesFloatField
      FieldName = 'OVERRIDE_CURRENCY'
      Required = True
    end
    object qryParRelPeriodsOVERRIDE_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_STORE'
      Required = True
    end
    object qryParRelPeriodsOVERRIDE_TRANSPORT_DUR_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_TRANSPORT_DUR_DAYS'
      Required = True
    end
    object qryParRelPeriodsOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField
      FieldName = 'OVERRIDE_MEDIATOR_COMPANY'
      Required = True
    end
    object qryParRelPeriodsOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField
      FieldName = 'OVERRIDE_SHIPMENT_TYPE'
      Required = True
    end
    object qryParRelPeriodsOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PARTNER_TRANSPORT'
      Required = True
    end
    object qryParRelPeriodsOVERRIDE_CUSTOMHOUSE: TAbmesFloatField
      FieldName = 'OVERRIDE_CUSTOMHOUSE'
      Required = True
    end
    object qryParRelPeriodsINHRT_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_STORE_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qryParRelPeriodsINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_TRANSPORT_DURATION_DAYS'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'INHRT_MEDIATOR_COMPANY_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_MED_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_MED_COMPANY_SHORT_NAME'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INHRT_SHIPMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'INHRT_IS_PARTNER_TRANSPORT'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'INHRT_CUSTOMHOUSE_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsFIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FIN_PARTNER_CODE'
    end
    object qryParRelPeriodsFIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'FIN_PARTNER_SHORT_NAME'
      ProviderFlags = []
    end
    object qryParRelPeriodsOVERRIDE_FIN_PARTNER: TAbmesFloatField
      FieldName = 'OVERRIDE_FIN_PARTNER'
      Required = True
    end
    object qryParRelPeriodsINHRT_FIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'INHRT_FIN_PARTNER_CODE'
      ProviderFlags = []
    end
    object qryParRelPeriodsINHRT_FIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_FIN_PARTNER_SHORT_NAME'
      ProviderFlags = []
    end
  end
  object qryNewParRelPeriodCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_PAR_REL_PERIODS.NextVal as NEW_PAR_REL_PRIOD_CODE'
      ''
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 368
    object qryNewParRelPeriodCodeNEW_PAR_REL_PRIOD_CODE: TAbmesFloatField
      FieldName = 'NEW_PAR_REL_PRIOD_CODE'
    end
  end
  object qryParRel: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  pr.PARTNER_CODE,'
      '  pr.BORDER_REL_TYPE_CODE,'
      '  pr.PRIORITY_CODE,'
      ''
      '  ( select'
      '      Max(sfm.SPEC_FIN_MODEL_CODE)'
      '    from'
      '      SPEC_FIN_MODELS sfm'
      '    where'
      '      (sfm.PARTNER_CODE = pr.PARTNER_CODE) and'
      '      (sfm.BORDER_REL_TYPE_CODE = pr.BORDER_REL_TYPE_CODE)'
      '  ) as MAX_SPEC_FIN_MODEL_CODE,'
      ''
      '  ( select'
      '      c.COMPANY_CLASS_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = pr.PARTNER_CODE)'
      '  ) as COMPANY_CLASS_CODE'
      ''
      'from'
      '  PAR_RELS pr'
      '  '
      'where'
      '  (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '  (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qryParRelAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryParRelBeforeProviderEndTransaction
    Left = 800
    Top = 56
    object qryParRelPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryParRelPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object qryParRelMAX_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'MAX_SPEC_FIN_MODEL_CODE'
    end
    object qryParRelCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
      ProviderFlags = []
    end
  end
  object dsParRel: TDataSource
    DataSet = qryParRel
    Left = 800
    Top = 104
  end
  object qryNewAccountCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_COMPANY_BANK_ACCOUNTS.NextVal as NEW_ACCOUNT_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 528
    Top = 296
    object qryNewAccountCodeNEW_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'NEW_ACCOUNT_CODE'
    end
  end
  object qryParRelExists: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as PAR_REL_EXISTS'
      ''
      'from'
      '  PAR_RELS pr'
      ''
      'where'
      '  (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '  (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 320
    object qryParRelExistsPAR_REL_EXISTS: TAbmesFloatField
      FieldName = 'PAR_REL_EXISTS'
      FieldValueType = fvtBoolean
    end
  end
  object qryGetNewCompanyTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_COMPANY_TYPES.NextVal as NEW_COMPANY_TYPE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 464
    object qryGetNewCompanyTypeCodeNEW_COMPANY_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_COMPANY_TYPE_CODE'
    end
  end
  object dsParRelPeriods: TDataSource
    DataSet = qryParRelPeriods
    Left = 800
    Top = 200
  end
  object qrySpecFinModels: TAbmesSQLQuery
    DataSource = dsParRelPeriods
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
        Name = 'PAR_REL_PERIOD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sfm.SPEC_FIN_MODEL_CODE, '
      '  sfm.PARTNER_CODE, '
      '  sfm.BORDER_REL_TYPE_CODE, '
      '  sfm.PAR_REL_PERIOD_CODE,'
      '  sfm.FINANCIAL_PRODUCT_CODE,'
      '  p.NAME as FINANCIAL_PRODUCT_NAME,'
      '  p.CUSTOM_CODE as FINANCIAL_PRODUCT_NO,'
      '  sfm.SPEC_FIN_MODEL_NAME,'
      '  sfm.IS_EST_MODEL,'
      '  sfm.AUTHORIZE_EMPLOYEE_CODE,'
      '  sfm.AUTHORIZE_DATE,'
      '  sfm.AUTHORIZE_TIME,'
      '  sfm.CREATE_EMPLOYEE_CODE,'
      '  sfm.CREATE_DATE,'
      '  sfm.CREATE_TIME,'
      '  sfm.CHANGE_EMPLOYEE_CODE,'
      '  sfm.CHANGE_DATE,'
      '  sfm.CHANGE_TIME,'
      '  sfm.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '  sfm.EXEC_DEPT_CODE,'
      ''
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = sfm.EXEC_DEPT_CODE)'
      '  ) as EXEC_DEPT_IDENTIFIER,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SPEC_FIN_MODEL_LINES sfml'
      '    where'
      '      (sfml.SPEC_FIN_MODEL_CODE = sfm.SPEC_FIN_MODEL_CODE) and'
      '      (sfml.FIN_MODEL_LINE_TYPE_CODE = FinanceUtils.fmltPrimary)'
      '  ) as PRIMARY_FIN_MODEL_LINE_COUNT,'
      ''
      '  ( select'
      '      Sum(sfml.LINE_QUANTITY_PERCENT)'
      '    from'
      '      SPEC_FIN_MODEL_LINES sfml'
      '    where'
      '      (sfml.SPEC_FIN_MODEL_CODE = sfm.SPEC_FIN_MODEL_CODE) and'
      
        '      (sfml.FIN_MODEL_LINE_TYPE_CODE = FinanceUtils.fmltSecondar' +
        'y)'
      '  ) as SECONDARY_LINE_QTY_PERCENT'
      ''
      'from'
      '  SPEC_FIN_MODELS sfm,'
      '  PRODUCTS p'
      ''
      'where'
      '  (sfm.FINANCIAL_PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (sfm.PARTNER_CODE = :PARTNER_CODE) and'
      '  (sfm.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (sfm.PAR_REL_PERIOD_CODE = :PAR_REL_PERIOD_CODE)'
      ''
      'order by'
      '  FINANCIAL_PRODUCT_NAME,'
      '  SPEC_FIN_MODEL_NAME')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_FIN_MODELS_FOR_EDIT'
    Left = 800
    Top = 248
    object qrySpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecFinModelsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qrySpecFinModelsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object qrySpecFinModelsPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
    end
    object qrySpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FINANCIAL_PRODUCT_CODE'
    end
    object qrySpecFinModelsFINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'FINANCIAL_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySpecFinModelsFINANCIAL_PRODUCT_NO: TAbmesFloatField
      FieldName = 'FINANCIAL_PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object qrySpecFinModelsIS_EST_MODEL: TAbmesFloatField
      FieldName = 'IS_EST_MODEL'
    end
    object qrySpecFinModelsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object qrySpecFinModelsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object qrySpecFinModelsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object qrySpecFinModelsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qrySpecFinModelsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qrySpecFinModelsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qrySpecFinModelsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySpecFinModelsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySpecFinModelsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySpecFinModelsPRIMARY_FIN_MODEL_LINE_COUNT: TAbmesFloatField
      FieldName = 'PRIMARY_FIN_MODEL_LINE_COUNT'
      ProviderFlags = []
    end
    object qrySpecFinModelsSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'SECONDARY_LINE_QTY_PERCENT'
      ProviderFlags = []
    end
    object qrySpecFinModelsFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
    object qrySpecFinModelsEXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'EXEC_DEPT_CODE'
    end
    object qrySpecFinModelsEXEC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
  end
  object dsSpecFinModels: TDataSource
    DataSet = qrySpecFinModels
    Left = 800
    Top = 296
  end
  object qrySpecFinModelLines: TAbmesSQLQuery
    DataSource = dsSpecFinModels
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_FIN_MODEL_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  sfml.SPEC_FIN_MODEL_LINE_CODE, '
      '  sfml.SPEC_FIN_MODEL_CODE, '
      '  sfml.PARTNER_CODE, '
      '  sfml.FIN_MODEL_LINE_TYPE_CODE,'
      '  sfml.FIN_MODEL_LINE_NO,'
      '  sfml.LINE_QUANTITY_PERCENT,'
      ''
      '  sfml.MOVEMENT_OFFSET_DAYS,'
      '  Abs(sfml.MOVEMENT_OFFSET_DAYS) as ABS_MOVEMENT_OFFSET_DAYS,'
      '  Sign(sfml.MOVEMENT_OFFSET_DAYS) as MOVEMENT_OFFSET_DAYS_SIGN,'
      ''
      '  sfml.MOVEMENT_DURATION_DAYS,'
      ''
      '  sfml.FIN_STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+)) and'
      '      (d.DEPT_CODE = sfml.FIN_STORE_CODE)'
      '  ) as FIN_STORE_IDENTIFIER,'
      ''
      '  sfml.PARTNER_ACCOUNT_CODE,'
      '  sfml.FIN_MODEL_LINE_REASON_CODE,'
      ''
      
        '  Decode(sfml.FIN_MODEL_LINE_TYPE_CODE, FinanceUtils.fmltPrimary' +
        ', 1, 0) as IS_PRIMARY_FIN_MODEL_LINE_TYPE,'
      
        '  Decode(sfml.FIN_MODEL_LINE_TYPE_CODE, FinanceUtils.fmltPrimary' +
        ', sfml.LINE_QUANTITY_PERCENT) as PRIMARY_LINE_QTY_PERCENT,'
      
        '  Decode(sfml.FIN_MODEL_LINE_TYPE_CODE, FinanceUtils.fmltSeconda' +
        'ry, sfml.LINE_QUANTITY_PERCENT) as SECONDARY_LINE_QTY_PERCENT'
      ''
      'from'
      '  SPEC_FIN_MODEL_LINES sfml'
      '  '
      'where'
      '  (sfml.SPEC_FIN_MODEL_CODE = :SPEC_FIN_MODEL_CODE)'
      '  '
      'order by'
      '  FIN_MODEL_LINE_TYPE_CODE,'
      '  FIN_MODEL_LINE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SPEC_FIN_MODEL_LINES'
    Left = 800
    Top = 344
    object qrySpecFinModelLinesSPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_LINE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySpecFinModelLinesSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object qrySpecFinModelLinesPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
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
    object qrySpecFinModelLinesABS_MOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'ABS_MOVEMENT_OFFSET_DAYS'
      ProviderFlags = []
    end
    object qrySpecFinModelLinesMOVEMENT_OFFSET_DAYS_SIGN: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS_SIGN'
      ProviderFlags = []
    end
    object qrySpecFinModelLinesMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object qrySpecFinModelLinesFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
    end
    object qrySpecFinModelLinesFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySpecFinModelLinesPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object qrySpecFinModelLinesFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
    end
    object qrySpecFinModelLinesIS_PRIMARY_FIN_MODEL_LINE_TYPE: TAbmesFloatField
      FieldName = 'IS_PRIMARY_FIN_MODEL_LINE_TYPE'
      ProviderFlags = []
    end
    object qrySpecFinModelLinesPRIMARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'PRIMARY_LINE_QTY_PERCENT'
      ProviderFlags = []
    end
    object qrySpecFinModelLinesSECONDARY_LINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'SECONDARY_LINE_QTY_PERCENT'
      ProviderFlags = []
    end
  end
  object qryNewSpecFinModelCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_SPEC_FIN_MODELS.NextVal as NEW_SPEC_FIN_MODEL_CODE'
      ''
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 416
    object qryNewSpecFinModelCodeNEW_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'NEW_SPEC_FIN_MODEL_CODE'
    end
  end
  object qryNewSpecFinModelLineCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_SPEC_FIN_MODEL_LINES.NextVal as NEW_SPEC_FIN_MODEL_LINE_CO' +
        'DE'
      ''
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 664
    Top = 464
    object qryNewSpecFinModelLineCodeNEW_SPEC_FIN_MODEL_LINE_CODE: TAbmesFloatField
      FieldName = 'NEW_SPEC_FIN_MODEL_LINE_CODE'
    end
  end
  object qryFixSpecFinModelLineNos: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update'
      '  SPEC_FIN_MODEL_LINES sfml'
      'set'
      '  sfml.FIN_MODEL_LINE_NO = -sfml.FIN_MODEL_LINE_NO'
      'where'
      '  (sfml.FIN_MODEL_LINE_NO < 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 800
    Top = 448
  end
  object qryClearEstModels: TAbmesSQLQuery
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
        Name = 'PAR_REL_PERIOD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  SPEC_FIN_MODELS_FOR_EDIT sfm'
      'set'
      '  sfm.IS_EST_MODEL = 0'
      'where'
      '  (sfm.PARTNER_CODE = :PARTNER_CODE) and'
      '  (sfm.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (sfm.PAR_REL_PERIOD_CODE = :PAR_REL_PERIOD_CODE) and'
      '  (sfm.FINANCIAL_PRODUCT_CODE = :FINANCIAL_PRODUCT_CODE) ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 800
    Top = 400
  end
  object mshLocalMacroLibrary: TJvMultiStringHolder
    MultipleStrings = <
      item
        Name = 'cc_FIRM'
        Strings.Strings = (
          '1')
      end
      item
        Name = 'cc_PERSON'
        Strings.Strings = (
          '2')
      end
      item
        Name = 'cc_CUMULATIVE'
        Strings.Strings = (
          '3')
      end
      item
        Name = 'cc_COMMON'
        Strings.Strings = (
          '4')
      end>
    Left = 504
    Top = 464
  end
  object qryCompanyClasses: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  cc.COMPANY_CLASS_CODE,'
      '  cc.COMPANY_CLASS_ABBREV,'
      '  cc.COMPANY_CLASS_NAME'
      'from'
      '  COMPANY_CLASSES cc'
      'order by'
      '  cc.COMPANY_CLASS_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 656
    Top = 224
    object qryCompanyClassesCOMPANY_CLASS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CLASS_CODE'
      Required = True
    end
    object qryCompanyClassesCOMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_ABBREV'
      Required = True
      Size = 100
    end
    object qryCompanyClassesCOMPANY_CLASS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_NAME'
      Required = True
      Size = 100
    end
  end
  object prvCompanyClasses: TDataSetProvider
    DataSet = qryCompanyClasses
    Options = [poReadOnly, poUseQuoteChar]
    Left = 656
    Top = 176
  end
  object qryInsertRelatedCompanyWithCommonPartnerRecord: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into %COMPANIES_TABLE'
      '('
      '  %COMPANY_CODE,'
      '  PRIORITY_CODE,'
      '  COMMON_PARTNER_CODE'
      ')'
      'values'
      '('
      '  :COMPANY_CODE,'
      '  :PRIORITY_CODE,'
      '  :COMMON_PARTNER_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANIES_TABLE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANIES'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANY_CODE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 296
  end
  object qrySetCompanyCommonPartner: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMMON_PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  %COMPANIES_TABLE'
      'set'
      '  COMMON_PARTNER_CODE = :COMMON_PARTNER_CODE'
      'where'
      '  (:COMPANY_CODE = %COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANIES_TABLE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANIES'
      end
      item
        DataType = ftWideString
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = 'CLIENT_COMPANY_CODE'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 64
    Top = 200
  end
  object qryCompanyConcretePartners: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
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
      '      )'
      '  ) as COMPANY_STATUS_CODE,'
      ''
      '  ( select'
      '      cs.COMPANY_STATUS_NAME'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc,'
      '      COMPANY_STATUSES cs'
      '    where'
      '      (csc.COMPANY_CODE = c.COMPANY_CODE) and'
      '      (csc.COMPANY_STATUS_CODE = cs.COMPANY_STATUS_CODE) and'
      ''
      '      (csc.STATUS_DATE ='
      '        ( select'
      '            Max(csc2.STATUS_DATE)'
      '          from'
      '            COMPANY_STATUSES_CHANGES csc2'
      '          where'
      '            (csc2.COMPANY_CODE = csc.COMPANY_CODE)'
      '        )'
      '      )'
      '  ) as COMPANY_STATUS_NAME,'
      ''
      '  %COMPANY_BASE_ROLE_CODE[c.COMPANY_CODE] as BASE_ROLE_CODE,'
      ''
      '  c.COMPANY_NO,'
      ''
      '  ( select'
      '      cc.COMPANY_CLASS_ABBREV'
      '    from'
      '      COMPANY_CLASSES cc'
      '    where'
      '      (cc.COMPANY_CLASS_CODE = c.COMPANY_CLASS_CODE)'
      '  ) as COMPANY_CLASS_ABBREV,'
      ''
      '  Nvl2('
      '    p.COMPANY_CODE,'
      
        '    (p.FIRST_NAME || '#39' '#39' || SubStr(p.MIDDLE_NAME, 1, 1) || '#39'. '#39' ' +
        ' || p.LAST_NAME),'
      '    c.SHORT_NAME'
      '  ) as SHORT_NAME,'
      ''
      '  Cast('
      '    Nvl2(p.COMPANY_CODE,'
      '      p.EGN,'
      '      To_char(c.BULSTAT || c.BULSTAT_EX)'
      '    ) as Varchar2(20 char)'
      '  ) as CUSTOM_ID,'
      ''
      '  ( select'
      '      co.COUNTRY_NAME'
      '    from'
      '      COUNTRIES co'
      '    where'
      '      (co.COUNTRY_CODE = c.COUNTRY_CODE)'
      '  ) as COUNTRY_NAME,'
      ''
      '  c.CITY'
      ''
      'from'
      '  COMPANIES c,'
      '  PERSONS p'
      ''
      'where'
      '  (c.COMPANY_CODE = p.COMPANY_CODE(+)) and'
      ''
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        PAR_RELS pr'
      '      where'
      '        (pr.PARTNER_CODE = c.COMPANY_CODE) and'
      '        (pr.COMMON_PARTNER_CODE = :COMPANY_CODE)'
      '    )'
      '  )'
      ''
      'order by'
      '  SHORT_NAME,'
      '  CUSTOM_ID,'
      '  c.COMPANY_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 'COMPANY_BASE_ROLE_CODE[c.COMPANY_CODE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'COMPANY_BANK_ACCOUNTS'
    Left = 496
    Top = 408
    object qryCompanyConcretePartnersCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qryCompanyConcretePartnersCOMPANY_NO: TAbmesFloatField
      FieldName = 'COMPANY_NO'
      Required = True
    end
    object qryCompanyConcretePartnersCOMPANY_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'COMPANY_CLASS_ABBREV'
      Size = 100
    end
    object qryCompanyConcretePartnersSHORT_NAME: TAbmesWideStringField
      FieldName = 'SHORT_NAME'
      Size = 44
    end
    object qryCompanyConcretePartnersCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Size = 50
    end
    object qryCompanyConcretePartnersCITY: TAbmesWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCompanyConcretePartnersCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qryCompanyConcretePartnersBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
  end
  object prvCompanyConcretePartners: TDataSetProvider
    DataSet = qryCompanyConcretePartners
    Options = [poReadOnly, poUseQuoteChar]
    BeforeUpdateRecord = prvCompanyBankAccountsBeforeUpdateRecord
    Left = 496
    Top = 360
  end
  object prvCommonParRelPeriod: TDataSetProvider
    DataSet = qryCommonParRelPeriod
    Options = [poReadOnly, poUseQuoteChar]
    Left = 800
    Top = 512
  end
  object qryCommonParRelPeriod: TAbmesSQLQuery
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prp.CURRENCY_CODE,'
      '  prp.STORE_CODE,'
      '  ( select'
      '      (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = prp.STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as STORE_IDENTIFIER,'
      '  prp.TRANSPORT_DURATION_DAYS,'
      '  prp.MEDIATOR_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.MEDIATOR_COMPANY_CODE)'
      '  ) as MEDIATOR_COMPANY_SHORT_NAME,'
      '  prp.SHIPMENT_TYPE_CODE,'
      '  prp.IS_PARTNER_TRANSPORT,'
      '  prp.CUSTOMHOUSE_CODE,'
      '  prp.FIN_PARTNER_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = prp.FIN_PARTNER_CODE)'
      '  ) as FIN_PARTNER_SHORT_NAME'
      ''
      'from'
      '  PAR_REL_PERIODS prp'
      ''
      'where'
      '  (prp.PARTNER_CODE ='
      '    ( select'
      '        pr.COMMON_PARTNER_CODE'
      '      from'
      '        PAR_RELS pr'
      '      where'
      '        (pr.PARTNER_CODE = :PARTNER_CODE) and'
      '        (pr.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE)'
      '    )'
      '  ) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (:THE_DATE between prp.BEGIN_DATE and prp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 800
    Top = 560
    object qryCommonParRelPeriodCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryCommonParRelPeriodSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryCommonParRelPeriodSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object qryCommonParRelPeriodTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object qryCommonParRelPeriodMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryCommonParRelPeriodMEDIATOR_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MEDIATOR_COMPANY_SHORT_NAME'
    end
    object qryCommonParRelPeriodSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryCommonParRelPeriodIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object qryCommonParRelPeriodCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryCommonParRelPeriodFIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FIN_PARTNER_CODE'
    end
    object qryCommonParRelPeriodFIN_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'FIN_PARTNER_SHORT_NAME'
    end
  end
  object prvBankAccountTypes: TDataSetProvider
    DataSet = qryBankAccountTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 448
    Top = 512
  end
  object qryBankAccountTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  bat.BANK_ACCOUNT_TYPE_CODE,'
      '  bat.BANK_ACCOUNT_TYPE_NAME'
      ''
      'from'
      '  BANK_ACCOUNT_TYPES bat'
      ''
      'order by'
      '  bat.BANK_ACCOUNT_TYPE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 448
    Top = 560
    object qryBankAccountTypesBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField
      FieldName = 'BANK_ACCOUNT_TYPE_CODE'
      Required = True
    end
    object qryBankAccountTypesBANK_ACCOUNT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BANK_ACCOUNT_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
  object qryPRPerPriceModifiers: TAbmesSQLQuery
    DataSource = dsParRelPeriods
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
        Name = 'PAR_REL_PERIOD_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prppm.PRPER_PRICE_MODIFIER_CODE,'
      '  prppm.PARTNER_CODE,'
      '  prppm.BORDER_REL_TYPE_CODE,'
      '  prppm.PAR_REL_PERIOD_CODE,'
      '  prppm.PRPER_PRICE_MODIFIER_NO,'
      '  prppm.PRPER_PRICE_MODIFIER_NAME,'
      '  prppm.PRODUCT_SET_CODE,'
      '  prppm.ACQUIRE_PRICE_MODIFIER,'
      '  prppm.LEASE_PRICE_MODIFIER'
      'from'
      '  PRPER_PRICE_MODIFIERS prppm'
      'where'
      '  (prppm.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prppm.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (prppm.PAR_REL_PERIOD_CODE = :PAR_REL_PERIOD_CODE)'
      'order by'
      '  prppm.PRPER_PRICE_MODIFIER_NO'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'PRPER_PRICE_MODIFIERS_FOR_EDIT'
    Left = 728
    Top = 272
    object qryPRPerPriceModifiersPRPER_PRICE_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'PRPER_PRICE_MODIFIER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPRPerPriceModifiersPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      Required = True
    end
    object qryPRPerPriceModifiersBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      Required = True
    end
    object qryPRPerPriceModifiersPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
      Required = True
    end
    object qryPRPerPriceModifiersPRPER_PRICE_MODIFIER_NO: TAbmesFloatField
      FieldName = 'PRPER_PRICE_MODIFIER_NO'
      Required = True
    end
    object qryPRPerPriceModifiersPRPER_PRICE_MODIFIER_NAME: TAbmesWideStringField
      FieldName = 'PRPER_PRICE_MODIFIER_NAME'
      Required = True
      Size = 100
    end
    object qryPRPerPriceModifiersPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object qryPRPerPriceModifiersACQUIRE_PRICE_MODIFIER: TAbmesFloatField
      FieldName = 'ACQUIRE_PRICE_MODIFIER'
      Required = True
    end
    object qryPRPerPriceModifiersLEASE_PRICE_MODIFIER: TAbmesFloatField
      FieldName = 'LEASE_PRICE_MODIFIER'
      Required = True
    end
  end
  object qryGetNewPRPerPriceModifierCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_PRPER_PRICE_MODIFIERS.NextVal as NEW_PRPER_PRICE_MODIFIER_' +
        'CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 680
    object qryGetNewPRPerPriceModifierCodeNEW_PRPER_PRICE_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'NEW_PRPER_PRICE_MODIFIER_CODE'
    end
  end
  object qryFixPRPerPriceModifierNos: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'update'
      '  PRPER_PRICE_MODIFIERS_FOR_EDIT prppmfe'
      'set'
      
        '  prppmfe.PRPER_PRICE_MODIFIER_NO = -prppmfe.PRPER_PRICE_MODIFIE' +
        'R_NO'
      'where'
      '  (prppmfe.PRPER_PRICE_MODIFIER_NO < 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 80
    Top = 624
  end
  object qryPRPerPriceModifierProductSets: TAbmesSQLQuery
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
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ps.PRODUCT_SET_CODE,'
      '  ps.PRODUCT_SET_NO,'
      '  ps.PRODUCT_SET_NAME'
      'from'
      '  PRODUCT_SETS ps'
      'where'
      '  ( (:BEGIN_DATE is null) or'
      '    (:BEGIN_DATE <= ps.END_DATE)'
      '  ) and'
      ''
      '  ( (:END_DATE is null) or'
      '    (:END_DATE >= ps.BEGIN_DATE)'
      '  )'
      'order by'
      '  ps.PRODUCT_SET_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 264
    Top = 680
    object qryPRPerPriceModifierProductSetsPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object qryPRPerPriceModifierProductSetsPRODUCT_SET_NO: TAbmesFloatField
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object qryPRPerPriceModifierProductSetsPRODUCT_SET_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
    end
  end
  object prvPRPerPriceModifierProductSets: TDataSetProvider
    DataSet = qryPRPerPriceModifierProductSets
    Options = [poReadOnly, poUseQuoteChar]
    Left = 264
    Top = 632
  end
  object prvFMMovementOffsetTypes: TDataSetProvider
    DataSet = qryFMMovementOffsetTypes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 640
    Top = 576
  end
  object qryFMMovementOffsetTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  fmmot.FM_MOVEMENT_OFFSET_TYPE_CODE,'
      '  fmmot.FM_MOVEMENT_OFFSET_TYPE_NAME'
      ''
      'from'
      '  FM_MOVEMENT_OFFSET_TYPES fmmot'
      ''
      'order by'
      '  fmmot.FM_MOVEMENT_OFFSET_TYPE_CODE')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 624
    object qryFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
      Required = True
    end
    object qryFMMovementOffsetTypesFM_MOVEMENT_OFFSET_TYPE_NAME: TAbmesWideStringField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_NAME'
      Size = 100
    end
  end
  object qrySetSkipPRPerCheckPartnerCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  StateUtils.SetSkipPRPerCheckPartnerCode(:PARTNER_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 800
    Top = 632
  end
  object qryCheckPerRelPeriods: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'begin'
      
        '  PartnerUtils.CheckParRelPeriods(:PARTNER_CODE, :BORDER_REL_TYP' +
        'E_CODE);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 800
    Top = 680
  end
  object qryParRelPeriod: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  prp.FIN_PARTNER_CODE'
      'from'
      '  PAR_REL_PERIODS prp'
      'where'
      '  (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (:BEGIN_DATE between prp.BEGIN_DATE and prp.END_DATE) and'
      '  (:END_DATE between prp.BEGIN_DATE and prp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 640
    object qryParRelPeriodFIN_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FIN_PARTNER_CODE'
    end
  end
  object qryParRelPartnerOfficeAddress: TAbmesSQLQuery
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
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  co.ADDRESS,'
      '  co.I_ADDRESS'
      'from'
      '  COMPANY_OFFICES co'
      'where'
      '  (co.COMPANY_CODE = :PARTNER_CODE) and'
      '  (co.OFFICE_CODE ='
      '    ( select'
      '        prp.PARTNER_OFFICE_CODE'
      '      from'
      '        PAR_REL_PERIODS prp'
      '      where'
      '        (prp.PARTNER_CODE = :PARTNER_CODE) and'
      '        (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '        (:TO_DATE between prp.BEGIN_DATE and prp.END_DATE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 664
    object qryParRelPartnerOfficeAddressADDRESS: TAbmesWideStringField
      FieldName = 'ADDRESS'
      Size = 250
    end
    object qryParRelPartnerOfficeAddressI_ADDRESS: TAbmesWideStringField
      FieldName = 'I_ADDRESS'
      Size = 250
    end
  end
  object qryFixCompanyStatusChanges: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  COMPANY_STATUSES_CHANGES csc'
      'set'
      '  csc.STATUS_DATE = Add_Months(csc.STATUS_DATE, -2000 * 12)'
      'where'
      '  (csc.COMPANY_CODE = :COMPANY_CODE) and'
      '  (csc.STATUS_DATE >= To_Date('#39'01.01.3000'#39', '#39'dd.mm.yyyy'#39'))')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 225
    Top = 576
  end
end
