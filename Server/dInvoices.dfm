inherited dmInvoices: TdmInvoices
  Height = 467
  Width = 795
  object qryInvoices: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'INVOICE_START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'INVOICE_START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'INVOICE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'INVOICE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_PROFORM_INVOICE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_PAID'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_PAID'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_VAT_PAID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_VAT_NOT_PAID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_STORNO_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELLER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELLER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUYER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUYER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CASH_PAYMENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_CASH_PAYMENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_BANK_ACCOUNT_PAYMENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_BANK_ACCOUNT_PAYMENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BANK_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BANK_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACCOUNT'
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
        Name = 'IS_APPROVED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_APPROVED'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'select'
      '  i.INVOICE_BRANCH_CODE,'
      '  i.INVOICE_CODE,'
      '  i.INVOICE_NO,'
      '  it.INVOICE_TYPE_NAME,'
      '  i.IS_PROFORM_INVOICE,'
      '  i.IS_PAID,'
      '  i.IS_VAT_PAID,'
      '  Nvl2(i.STORNO_EMPLOYEE_CODE, 1, 0) as IS_STORNO_INVOICE,'
      '  i.INVOICE_DATE,'
      
        '  Coalesce(i.SELLER_NAME, i.SELLER_FIRST_NAME || '#39' '#39' || i.SELLER' +
        '_MIDDLE_NAME || '#39' '#39' || i.SELLER_LAST_NAME) as SELLER_NAME,'
      
        '  Coalesce(i.BUYER_NAME, i.BUYER_FIRST_NAME || '#39' '#39' || i.BUYER_MI' +
        'DDLE_NAME || '#39' '#39' || i.BUYER_LAST_NAME) as BUYER_NAME,'
      ''
      '  Round('
      '    Sum('
      '      ii.SINGLE_PRICE *'
      '      ii.ACCOUNT_QUANTITY'
      
        '    ) * (1 + i.VAT_PERCENT * Decode(i.INVOICE_VAT_TYPE_CODE, 2, ' +
        '1, 0)) * cr.FIXING,'
      '    c.ROUNDER'
      '  ) as TOTAL_PRICE,'
      ''
      '  Round('
      '    Sum('
      '      ii.SINGLE_PRICE *'
      '      ii.ACCOUNT_QUANTITY'
      '    ) * cr.FIXING,'
      '    c.ROUNDER'
      '  ) as TOTAL_PRICE_WITHOUT_VAT,'
      ''
      '  Round('
      '    Sum('
      '      ii.SINGLE_PRICE *'
      '      ii.ACCOUNT_QUANTITY'
      
        '    ) * i.VAT_PERCENT * cr.FIXING * Decode(i.INVOICE_VAT_TYPE_CO' +
        'DE, 2, 1, 0),'
      '    c.ROUNDER'
      '  ) as TOTAL_VAT,'
      ''
      '  Round('
      '    Sum('
      '      ii.MARKET_SINGLE_PRICE *'
      '      ii.ACCOUNT_QUANTITY'
      '    ) * cr.FIXING,'
      '    c.ROUNDER'
      '  ) as TOTAL_MARKET_PRICE_WITHOUT_VAT,'
      ''
      '  Round('
      '    Sum('
      '      ii.SINGLE_PRICE *'
      '      ii.ACCOUNT_QUANTITY *'
      '      ii.DISCOUNT_PERCENT'
      '    ) * cr.FIXING,'
      '    c.ROUNDER'
      '  ) as TOTAL_PRICE_DISCOUNT,'
      ''
      '  i.NOTES,'
      ''
      '  Cast('
      
        '    MiscUtils.InvoiceItemsNames(i.INVOICE_BRANCH_CODE, i.INVOICE' +
        '_CODE) as Varchar2(250 char)'
      '  ) as INVOICE_ITEMS_NAMES,'
      ''
      '  Nvl2(i.APPROVE_EMPLOYEE_CODE, 1, 0) as IS_APPROVED'
      ''
      'from'
      '  INVOICES i,'
      '  INVOICE_ITEMS ii,'
      '  INVOICE_TYPES it,'
      '  CURRENCIES c,'
      '  CURRENCY_RATES cr'
      ''
      'where'
      '  (i.INVOICE_BRANCH_CODE = ii.BRANCH_CODE) and'
      '  (i.INVOICE_CODE = ii.INVOICE_CODE) and'
      ''
      '  (i.INVOICE_TYPE_CODE = it.INVOICE_TYPE_CODE) and'
      ''
      '  (i.CURRENCY_CODE = c.CURRENCY_CODE) and'
      ''
      '  (i.CURRENCY_CODE = cr.CURRENCY_CODE(+)) and'
      '  (i.INVOICE_DATE = cr.RATE_DATE(+)) and'
      ''
      '  ( (:INVOICE_START_DATE is null) or'
      '    (i.INVOICE_DATE >= :INVOICE_START_DATE) ) and'
      ''
      '  ( (:INVOICE_END_DATE is null) or'
      '    (i.INVOICE_DATE <= :INVOICE_END_DATE) ) and'
      ''
      '  ( (:INVOICE_NO is null) or'
      '    (i.INVOICE_NO = :INVOICE_NO) ) and'
      ''
      '  ( (:MIN_INVOICE_NO is null) or'
      '    (i.INVOICE_NO >= :MIN_INVOICE_NO)'
      '  ) and'
      ''
      '  ( (:MAX_INVOICE_NO is null) or'
      '    (i.INVOICE_NO <= :MAX_INVOICE_NO)'
      '  ) and'
      ''
      '  ( (:CURRENCY_CODE is null) or'
      '    (i.CURRENCY_CODE = :CURRENCY_CODE) ) and'
      ''
      
        '  ( ((i.IS_PROFORM_INVOICE <> 0) and (:IS_PROFORM_INVOICE <> 0))' +
        ' or'
      
        '    ((i.IS_PROFORM_INVOICE = 0) and (:IS_NOT_PROFORM_INVOICE <> ' +
        '0)) ) and'
      ''
      '  ( ((i.IS_PAID <> 0) and (:IS_PAID <> 0)) or'
      '    ((i.IS_PAID = 0) and (:IS_NOT_PAID <> 0)) ) and'
      ''
      '  ( ((i.IS_VAT_PAID <> 0) and (:IS_VAT_PAID <> 0)) or'
      '    ((i.IS_VAT_PAID = 0) and (:IS_VAT_NOT_PAID <> 0)) ) and'
      ''
      
        '  ( ((i.STORNO_EMPLOYEE_CODE is not null) and (:IS_STORNO_INVOIC' +
        'E <> 0)) or'
      
        '    ((i.STORNO_EMPLOYEE_CODE is null) and (:IS_NOT_STORNO_INVOIC' +
        'E <> 0)) ) and'
      ''
      '  ( (:INVOICE_TYPE_CODE is null) or'
      '    (i.INVOICE_TYPE_CODE = :INVOICE_TYPE_CODE) ) and'
      ''
      '  ( (:SELLER_COMPANY_CODE is null) or'
      '    (i.SELLER_COMPANY_CODE = :SELLER_COMPANY_CODE) ) and'
      ''
      '  ( (:BUYER_COMPANY_CODE is null) or'
      '    (i.BUYER_COMPANY_CODE = :BUYER_COMPANY_CODE) ) and'
      ''
      '  ( ((:IS_CASH_PAYMENT = 0) and (i.PAYMENT_TYPE_CODE <> 1)) or'
      '    ((:IS_CASH_PAYMENT <> 0) and (i.PAYMENT_TYPE_CODE = 1)) or'
      ''
      
        '    ((:IS_BANK_ACCOUNT_PAYMENT = 0) and (i.PAYMENT_TYPE_CODE <> ' +
        '2)) or'
      
        '    ( ((:IS_BANK_ACCOUNT_PAYMENT <> 0) and (i.PAYMENT_TYPE_CODE ' +
        '= 2)) and'
      ''
      '      ( ( (:BANK_COMPANY_CODE is null) or'
      '          (:BANK_COMPANY_CODE = i.BANK_COMPANY_CODE) ) and'
      '        ( (:ACCOUNT is null) or'
      '          (:ACCOUNT = i.ACCOUNT) )'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:PRODUCT_CODE is null) or'
      '    (exists'
      '      ('
      '        select'
      '          ii2.PRODUCT_CODE'
      '        from'
      '          INVOICE_ITEMS ii2'
      '        where'
      '          (ii2.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '          (ii2.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      '          (ii2.PRODUCT_CODE in'
      '            ('
      '              select'
      '                pr.DESCENDANT_PRODUCT_CODE'
      '              from'
      '                PRODUCT_RELATIONS pr'
      '              where'
      '                (pr.ANCESTOR_PRODUCT_CODE = :PRODUCT_CODE)'
      '            )'
      '          )'
      '      )'
      '    )'
      '  ) and'
      ''
      
        '  ( ((i.APPROVE_EMPLOYEE_CODE is not null) and (:IS_APPROVED = 1' +
        ')) or'
      
        '    ((i.APPROVE_EMPLOYEE_CODE is null) and (:IS_NOT_APPROVED = 1' +
        '))'
      '  )'
      ''
      ''
      'group by'
      '  i.INVOICE_BRANCH_CODE,'
      '  i.INVOICE_CODE,'
      '  i.INVOICE_NO,'
      '  it.INVOICE_TYPE_NAME,'
      '  i.INVOICE_VAT_TYPE_CODE,'
      '  i.IS_PROFORM_INVOICE,'
      '  i.IS_PAID,'
      '  i.IS_VAT_PAID,'
      '  i.STORNO_EMPLOYEE_CODE,'
      '  i.INVOICE_DATE,'
      '  i.SELLER_NAME,'
      '  i.SELLER_FIRST_NAME,'
      '  i.SELLER_MIDDLE_NAME,'
      '  i.SELLER_LAST_NAME,'
      '  i.BUYER_NAME,'
      '  i.BUYER_FIRST_NAME,'
      '  i.BUYER_MIDDLE_NAME,'
      '  i.BUYER_LAST_NAME,'
      '  i.VAT_PERCENT,'
      '  c.ROUNDER,'
      '  cr.FIXING,'
      '  i.NOTES,'
      '  i.APPROVE_EMPLOYEE_CODE'
      ''
      'order by'
      '  i.INVOICE_DATE,'
      '  i.INVOICE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 32
    Top = 64
    object qryInvoicesINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
    end
    object qryInvoicesINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
    end
    object qryInvoicesINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryInvoicesINVOICE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
    object qryInvoicesIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object qryInvoicesIS_STORNO_INVOICE: TAbmesFloatField
      FieldName = 'IS_STORNO_INVOICE'
    end
    object qryInvoicesINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryInvoicesSELLER_NAME: TAbmesWideStringField
      FieldName = 'SELLER_NAME'
      Size = 50
    end
    object qryInvoicesBUYER_NAME: TAbmesWideStringField
      FieldName = 'BUYER_NAME'
      Size = 50
    end
    object qryInvoicesTOTAL_MARKET_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE_WITHOUT_VAT'
    end
    object qryInvoicesTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_WITHOUT_VAT'
    end
    object qryInvoicesTOTAL_VAT: TAbmesFloatField
      FieldName = 'TOTAL_VAT'
    end
    object qryInvoicesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryInvoicesTOTAL_PRICE_DISCOUNT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DISCOUNT'
    end
    object qryInvoicesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryInvoicesIS_PAID: TAbmesFloatField
      FieldName = 'IS_PAID'
    end
    object qryInvoicesINVOICE_ITEMS_NAMES: TAbmesWideStringField
      FieldName = 'INVOICE_ITEMS_NAMES'
      Size = 250
    end
    object qryInvoicesIS_VAT_PAID: TAbmesFloatField
      FieldName = 'IS_VAT_PAID'
    end
    object qryInvoicesIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
    end
  end
  object prvInvoices: TDataSetProvider
    DataSet = qryInvoices
    Left = 32
    Top = 16
  end
  object qryInvoice: TAbmesSQLQuery
    BeforeOpen = qryInvoiceBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CURRENT_DEPT_CODE'
        ParamType = ptInput
      end
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
      '  i.*,'
      '  ( select'
      '      cr.FIXING'
      '    from'
      '      CURRENCY_RATES cr'
      '    where'
      '      (cr.CURRENCY_CODE = i.CURRENCY_CODE) and'
      '      (cr.RATE_DATE = i.INVOICE_DATE)'
      '  ) as BASE_CURRENCY_FIXING,'
      ''
      '  Cast('
      '    Nvl2(i.ACCOUNT_CODE,'
      '      ( %GET_PARTNER_NAME[i.BANK_COMPANY_CODE] ||'
      '        '#39' / '#39' ||'
      
        '        (select Coalesce(c.BIC, To_Char(c.BANK_NO)) from COMPANI' +
        'ES c where (i.BANK_COMPANY_CODE = c.COMPANY_CODE)) ||'
      '        '#39' / '#39' ||'
      '        Nvl2(i.IBAN, MiscUtils.FormatIBAN(i.IBAN), i.ACCOUNT)'
      '      ),'
      '      '#39#39
      '    ) as Varchar2(250 char)'
      '  ) as ACCOUNT_FULL_NAME,'
      ''
      '  Cast('
      '    Nvl2(i.VAT_ACCOUNT_CODE,'
      '      ( %GET_PARTNER_NAME[i.VAT_BANK_COMPANY_CODE] ||'
      '        '#39' / '#39' ||'
      
        '        (select Coalesce(c.BIC, To_Char(c.BANK_NO)) from COMPANI' +
        'ES c where (i.VAT_BANK_COMPANY_CODE = c.COMPANY_CODE)) ||'
      '        '#39' / '#39' ||'
      
        '        Nvl2(i.VAT_IBAN, MiscUtils.FormatIBAN(i.VAT_IBAN), i.VAT' +
        '_ACCOUNT)'
      '      ),'
      '      '#39#39
      '    ) as Varchar2(250 char)'
      '  ) as VAT_ACCOUNT_FULL_NAME,'
      ''
      '  Cast(null as Varchar2(100 char)) as TO_PAY_TEXT,'
      '  Cast(null as Varchar2(100 char)) as TO_PAY_I_TEXT,'
      ''
      '  %HAS_DOC_ITEMS[i] as HAS_DOC_ITEMS,'
      ''
      '  FinanceUtils.InvoiceNoGeneratorCode('
      '    i.INVOICE_DATE,'
      '    :CURRENT_DEPT_CODE,'
      '    i.INVOICE_TYPE_CODE,'
      '    i.IS_PROFORM_INVOICE,'
      '    i.CURRENCY_CODE,'
      '    Nvl2(i.APPROVE_EMPLOYEE_CODE, 1, 0)'
      '  ) as INVOICE_NO_GENERATOR_CODE'
      ''
      'from'
      '  INVOICES i'
      ''
      'where '
      '  (i.INVOICE_BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '  (i.INVOICE_CODE = :INVOICE_CODE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[i.BANK_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[i.VAT_BANK_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[i]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'INVOICES_FOR_EDIT'
    AfterProviderStartTransaction = qryInvoiceAfterProviderStartTransaction
    BeforeProviderEndTransaction = qryInvoiceBeforeProviderEndTransaction
    Left = 128
    Top = 64
    object qryInvoiceINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvoiceINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvoiceIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object qryInvoiceINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object qryInvoiceINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
    end
    object qryInvoiceINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object qryInvoiceSELLER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SELLER_COMPANY_CODE'
    end
    object qryInvoiceSELLER_NAME: TAbmesWideStringField
      FieldName = 'SELLER_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_CITY: TAbmesWideStringField
      FieldName = 'SELLER_CITY'
      Size = 50
    end
    object qryInvoiceSELLER_ADDRESS: TAbmesWideStringField
      FieldName = 'SELLER_ADDRESS'
      Size = 250
    end
    object qryInvoiceSELLER_MOL_NAME: TAbmesWideStringField
      FieldName = 'SELLER_MOL_NAME'
      Size = 100
    end
    object qryInvoiceBUYER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BUYER_COMPANY_CODE'
    end
    object qryInvoiceBUYER_NAME: TAbmesWideStringField
      FieldName = 'BUYER_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_CITY: TAbmesWideStringField
      FieldName = 'BUYER_CITY'
      Size = 50
    end
    object qryInvoiceBUYER_ADDRESS: TAbmesWideStringField
      FieldName = 'BUYER_ADDRESS'
      Size = 250
    end
    object qryInvoiceBUYER_MOL_NAME: TAbmesWideStringField
      FieldName = 'BUYER_MOL_NAME'
      Size = 100
    end
    object qryInvoiceBUYER_TAX_NO: TAbmesFloatField
      FieldName = 'BUYER_TAX_NO'
    end
    object qryInvoiceSELLER_PERSON_NAME: TAbmesWideStringField
      FieldName = 'SELLER_PERSON_NAME'
      Size = 100
    end
    object qryInvoiceBUYER_PERSON_NAME: TAbmesWideStringField
      FieldName = 'BUYER_PERSON_NAME'
      Size = 100
    end
    object qryInvoiceCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryInvoicePAYMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'PAYMENT_TYPE_CODE'
    end
    object qryInvoiceBANK_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BANK_COMPANY_CODE'
    end
    object qryInvoiceACCOUNT: TAbmesFloatField
      FieldName = 'ACCOUNT'
    end
    object qryInvoiceVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
    end
    object qryInvoiceNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qryInvoiceCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qryInvoiceCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qryInvoiceCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qryInvoiceCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qryInvoiceCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qryInvoiceCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qryInvoiceSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object qryInvoiceSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object qryInvoiceSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object qryInvoiceINVOICE_PLACE: TAbmesWideStringField
      FieldName = 'INVOICE_PLACE'
      Size = 50
    end
    object qryInvoiceSELLER_PERSON_NAME_SO: TAbmesWideStringField
      FieldName = 'SELLER_PERSON_NAME_SO'
      Size = 100
    end
    object qryInvoiceBUYER_PERSON_NAME_SO: TAbmesWideStringField
      FieldName = 'BUYER_PERSON_NAME_SO'
      Size = 100
    end
    object qryInvoiceVAT_BANK_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VAT_BANK_COMPANY_CODE'
    end
    object qryInvoiceVAT_ACCOUNT: TAbmesFloatField
      FieldName = 'VAT_ACCOUNT'
    end
    object qryInvoiceIS_PAID: TAbmesFloatField
      FieldName = 'IS_PAID'
    end
    object qryInvoiceIS_VAT_PAID: TAbmesFloatField
      FieldName = 'IS_VAT_PAID'
    end
    object qryInvoiceSELLER_TAX_NO: TAbmesFloatField
      FieldName = 'SELLER_TAX_NO'
    end
    object qryInvoiceSELLER_BULSTAT: TAbmesWideStringField
      FieldName = 'SELLER_BULSTAT'
      Size = 9
    end
    object qryInvoiceBUYER_BULSTAT: TAbmesWideStringField
      FieldName = 'BUYER_BULSTAT'
      Size = 9
    end
    object qryInvoiceSELLER_BULSTAT_EX: TAbmesWideStringField
      FieldName = 'SELLER_BULSTAT_EX'
      Size = 4
    end
    object qryInvoiceBUYER_BULSTAT_EX: TAbmesWideStringField
      FieldName = 'BUYER_BULSTAT_EX'
      Size = 4
    end
    object qryInvoiceSELLER_BULSTAT_NO: TAbmesFloatField
      FieldName = 'SELLER_BULSTAT_NO'
    end
    object qryInvoiceBUYER_BULSTAT_NO: TAbmesFloatField
      FieldName = 'BUYER_BULSTAT_NO'
    end
    object qryInvoiceSELLER_FIRST_NAME: TAbmesWideStringField
      FieldName = 'SELLER_FIRST_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'SELLER_MIDDLE_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_LAST_NAME: TAbmesWideStringField
      FieldName = 'SELLER_LAST_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_EGN: TAbmesWideStringField
      FieldName = 'SELLER_EGN'
      Size = 10
    end
    object qryInvoiceSELLER_IS_PERSON: TAbmesFloatField
      FieldName = 'SELLER_IS_PERSON'
    end
    object qryInvoiceBUYER_FIRST_NAME: TAbmesWideStringField
      FieldName = 'BUYER_FIRST_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'BUYER_MIDDLE_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_LAST_NAME: TAbmesWideStringField
      FieldName = 'BUYER_LAST_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_EGN: TAbmesWideStringField
      FieldName = 'BUYER_EGN'
      Size = 10
    end
    object qryInvoiceBUYER_IS_PERSON: TAbmesFloatField
      FieldName = 'BUYER_IS_PERSON'
    end
    object qryInvoiceACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
    end
    object qryInvoiceIBAN: TAbmesWideStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object qryInvoiceVAT_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'VAT_ACCOUNT_CODE'
    end
    object qryInvoiceVAT_IBAN: TAbmesWideStringField
      FieldName = 'VAT_IBAN'
      Size = 50
    end
    object qryInvoiceACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'ACCOUNT_FULL_NAME'
      ProviderFlags = []
      Size = 186
    end
    object qryInvoiceVAT_ACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'VAT_ACCOUNT_FULL_NAME'
      ProviderFlags = []
      Size = 186
    end
    object qryInvoiceTO_PAY_TEXT: TAbmesWideStringField
      FieldName = 'TO_PAY_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object qryInvoiceEVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'EVENT_DATE'
    end
    object qryInvoiceSELLER_VAT_REGISTERED: TAbmesFloatField
      FieldName = 'SELLER_VAT_REGISTERED'
    end
    object qryInvoiceBUYER_VAT_REGISTERED: TAbmesFloatField
      FieldName = 'BUYER_VAT_REGISTERED'
    end
    object qryInvoiceINVOICE_VAT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_VAT_TYPE_CODE'
    end
    object qryInvoiceINVOICE_RANGE_VERSION_NO: TAbmesFloatField
      FieldName = 'INVOICE_RANGE_VERSION_NO'
    end
    object qryInvoiceINVOICE_RANGE_TYPE_VERSION_NO: TAbmesFloatField
      FieldName = 'INVOICE_RANGE_TYPE_VERSION_NO'
    end
    object qryInvoiceBASE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'BASE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object qryInvoiceBUYER_VAT_NO: TAbmesWideStringField
      FieldName = 'BUYER_VAT_NO'
    end
    object qryInvoiceSELLER_VAT_NO: TAbmesWideStringField
      FieldName = 'SELLER_VAT_NO'
    end
    object qryInvoiceSELLER_OR_BUYER_CODE: TAbmesFloatField
      FieldName = 'SELLER_OR_BUYER_CODE'
    end
    object qryInvoiceAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object qryInvoiceAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object qryInvoiceAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object qryInvoiceSELLER_I_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_I_CITY: TAbmesWideStringField
      FieldName = 'SELLER_I_CITY'
      Size = 50
    end
    object qryInvoiceSELLER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'SELLER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceSELLER_I_FIRST_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_FIRST_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_I_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_MIDDLE_NAME'
      Size = 50
    end
    object qryInvoiceSELLER_I_LAST_NAME: TAbmesWideStringField
      FieldName = 'SELLER_I_LAST_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_I_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_I_CITY: TAbmesWideStringField
      FieldName = 'BUYER_I_CITY'
      Size = 50
    end
    object qryInvoiceBUYER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'BUYER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceBUYER_I_FIRST_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_FIRST_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_I_MIDDLE_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_MIDDLE_NAME'
      Size = 50
    end
    object qryInvoiceBUYER_I_LAST_NAME: TAbmesWideStringField
      FieldName = 'BUYER_I_LAST_NAME'
      Size = 50
    end
    object qryInvoiceVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
    end
    object qryInvoiceRECEIVER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'RECEIVER_COMPANY_CODE'
    end
    object qryInvoiceRECEIVER_NAME: TAbmesWideStringField
      FieldName = 'RECEIVER_NAME'
      Size = 50
    end
    object qryInvoiceRECEIVER_I_NAME: TAbmesWideStringField
      FieldName = 'RECEIVER_I_NAME'
      Size = 50
    end
    object qryInvoiceRECEIVER_ADDRESS: TAbmesWideStringField
      FieldName = 'RECEIVER_ADDRESS'
      Size = 250
    end
    object qryInvoiceRECEIVER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'RECEIVER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceSENDER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SENDER_COMPANY_CODE'
    end
    object qryInvoiceSENDER_NAME: TAbmesWideStringField
      FieldName = 'SENDER_NAME'
      Size = 50
    end
    object qryInvoiceSENDER_I_NAME: TAbmesWideStringField
      FieldName = 'SENDER_I_NAME'
      Size = 50
    end
    object qryInvoiceSENDER_ADDRESS: TAbmesWideStringField
      FieldName = 'SENDER_ADDRESS'
      Size = 250
    end
    object qryInvoiceSENDER_I_ADDRESS: TAbmesWideStringField
      FieldName = 'SENDER_I_ADDRESS'
      Size = 250
    end
    object qryInvoiceTO_PAY_I_TEXT: TAbmesWideStringField
      FieldName = 'TO_PAY_I_TEXT'
      ProviderFlags = []
      Size = 100
    end
    object qryInvoiceINVOICE_I_PLACE: TAbmesWideStringField
      FieldName = 'INVOICE_I_PLACE'
      Size = 50
    end
    object qryInvoiceBUYER_PERSON_I_NAME: TAbmesWideStringField
      FieldName = 'BUYER_PERSON_I_NAME'
      Size = 100
    end
    object qryInvoiceSELLER_PERSON_I_NAME: TAbmesWideStringField
      FieldName = 'SELLER_PERSON_I_NAME'
      Size = 100
    end
    object qryInvoiceDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryInvoiceDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryInvoiceHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qryInvoiceINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      ProviderFlags = []
    end
  end
  object prvInvoice: TDataSetProvider
    DataSet = qryInvoice
    Options = [poPropogateChanges]
    OnUpdateError = prvInvoiceUpdateError
    AfterUpdateRecord = prvInvoiceAfterUpdateRecord
    BeforeUpdateRecord = prvInvoiceBeforeUpdateRecord
    BeforeApplyUpdates = prvInvoiceBeforeApplyUpdates
    AfterApplyUpdates = prvInvoiceAfterApplyUpdates
    Left = 128
    Top = 16
  end
  object qryInvoiceTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  INVOICE_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 224
    Top = 64
    object qryInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
    end
    object qryInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
    object qryInvoiceTypesADD_VAT: TAbmesFloatField
      FieldName = 'ADD_VAT'
    end
    object qryInvoiceTypesADD_VAT_TO_ITEMS: TAbmesFloatField
      FieldName = 'ADD_VAT_TO_ITEMS'
    end
    object qryInvoiceTypesDIARY_NO_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'DIARY_NO_WHEN_ANNULED'
    end
    object qryInvoiceTypesINVOICE_TYPE_I_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_I_NAME'
      Required = True
      Size = 50
    end
  end
  object prvInvoiceTypes: TDataSetProvider
    DataSet = qryInvoiceTypes
    Left = 224
    Top = 16
  end
  object qryInvoiceItems: TAbmesSQLQuery
    DataSource = dsInvoice
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  ii.*,'
      ''
      '  ii.SINGLE_PRICE as SINGLE_PRICE_WITHOUT_VAT,'
      ''
      
        '  (ii.SINGLE_PRICE * (1 + i.VAT_PERCENT)) as SINGLE_PRICE_WITH_V' +
        'AT,'
      ''
      
        '  (ii.ACCOUNT_QUANTITY * ii.SINGLE_PRICE) as TOTAL_PRICE_WITHOUT' +
        '_VAT,'
      ''
      
        '  (ii.ACCOUNT_QUANTITY * ii.SINGLE_PRICE * (1 + i.VAT_PERCENT)) ' +
        'as TOTAL_PRICE_WITH_VAT,'
      ''
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  0 as FALSH_ACCOUNT_MEASURE_CODE,'
      ''
      '  ( select'
      '      po.PROCESS_OBJECT_IDENTIFIER'
      '    from'
      '      PROCESS_OBJECTS po'
      '    where'
      
        '      (po.PROCESS_OBJECT_BRANCH_CODE = ii.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE) and'
      '      (po.PROCESS_OBJECT_CODE = ii.BND_PROCESS_OBJECT_CODE)'
      '  ) as BND_PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  ( select'
      '      s.CLIENT_REQUEST_NO'
      '    from'
      '      SALES s'
      '    where'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ii.BND_PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '      (s.SALE_OBJECT_CODE = ii.BND_PROCESS_OBJECT_CODE)'
      '  ) as CLIENT_REQUEST_NO'
      ''
      'from'
      '  INVOICE_ITEMS ii,'
      '  INVOICES i,'
      '  PRODUCTS p'
      ''
      'where'
      '  (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      '  (ii.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      ''
      '  (ii.BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = :INVOICE_CODE)'
      ''
      'order by'
      '  ii.ITEM_NAME'
      ''
      ''
      ''
      ''
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'INVOICE_ITEMS'
    Left = 128
    Top = 160
    object qryInvoiceItemsBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvoiceItemsINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvoiceItemsINVOICE_ITEM_CODE: TAbmesFloatField
      FieldName = 'INVOICE_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvoiceItemsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qryInvoiceItemsITEM_NAME: TAbmesWideStringField
      FieldName = 'ITEM_NAME'
      Size = 100
    end
    object qryInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qryInvoiceItemsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qryInvoiceItemsIS_VAT_FREE: TAbmesFloatField
      FieldName = 'IS_VAT_FREE'
    end
    object qryInvoiceItemsACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryInvoiceItemsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qryInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
    end
    object qryInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
    end
    object qryInvoiceItemsFALSH_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'FALSH_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qryInvoiceItemsSINGLE_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_WITHOUT_VAT'
      ProviderFlags = []
    end
    object qryInvoiceItemsSINGLE_PRICE_WITH_VAT: TAbmesFloatField
      FieldName = 'SINGLE_PRICE_WITH_VAT'
      ProviderFlags = []
    end
    object qryInvoiceItemsTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_WITHOUT_VAT'
      ProviderFlags = []
    end
    object qryInvoiceItemsTOTAL_PRICE_WITH_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_WITH_VAT'
      ProviderFlags = []
    end
    object qryInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object qryInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object qryInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 100
    end
    object qryInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      ProviderFlags = []
      Size = 50
    end
    object qryInvoiceItemsITEM_I_NAME: TAbmesWideStringField
      FieldName = 'ITEM_I_NAME'
      Size = 100
    end
    object qryInvoiceItemsACCOUNT_MEASURE_I_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_I_ABBREV'
      Size = 5
    end
  end
  object qryGetNewInvoiceCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  SEQ_INVOICES.NextVal as NEW_INVOICE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 136
    object qryGetNewInvoiceCodeNEW_INVOICE_CODE: TAbmesFloatField
      FieldName = 'NEW_INVOICE_CODE'
    end
  end
  object dsInvoice: TDataSource
    DataSet = qryInvoice
    Left = 128
    Top = 112
  end
  object qryTotalInvoicePrice: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELLER_COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Sum(ii.ACCOUNT_QUANTITY * ii.SINGLE_PRICE) as SUM_TOTAL_PRICE'
      'from'
      '  INVOICES i,'
      '  INVOICE_ITEMS ii'
      'where'
      '  (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      '  (i.IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE) and  '
      '  (i.INVOICE_NO = :INVOICE_NO) and'
      '  (i.SELLER_COMPANY_CODE = :SELLER_COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 208
    object qryTotalInvoicePriceSUM_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SUM_TOTAL_PRICE'
    end
  end
  object qryGetMaxInvoiceNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Cast('
      
        '    Decode(Coalesce(i.MAX_INVOICE_NO, co.MIN_RANGE_INVOICE_NO - ' +
        '1), co.MAX_RANGE_INVOICE_NO,'
      '      null,'
      '      Coalesce(i.MAX_INVOICE_NO, co.MIN_RANGE_INVOICE_NO - 1)'
      '    )'
      '  as Integer) as MAX_INVOICE_NO'
      'from'
      '  COMMON_OPTIONS co,'
      '  ( select'
      '      Max(i.INVOICE_NO) as MAX_INVOICE_NO'
      '    from'
      '      COMMON_OPTIONS co2,'
      '      INVOICES i'
      '    where'
      '      (co2.CODE = 1) and'
      '      (i.SELLER_COMPANY_CODE = 0) and'
      
        '      (i.INVOICE_NO between co2.MIN_RANGE_INVOICE_NO and co2.MAX' +
        '_RANGE_INVOICE_NO) and'
      '      (i.IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE) and'
      '      (i.INVOICE_BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      
        '      (i.INVOICE_RANGE_TYPE_VERSION_NO = Decode(:INVOICE_TYPE_CO' +
        'DE,'
      '          1, 1,'
      '          2, 1,'
      '          3, 1,'
      '          8, 3,'
      '          9, 2,'
      '          10, 2'
      '        )'
      '      ) and'
      '      (i.INVOICE_RANGE_VERSION_NO = 2)'
      '  ) i'
      'where'
      '  (co.CODE = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 256
    object qryGetMaxInvoiceNoMAX_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_INVOICE_NO'
    end
  end
  object qryGetLastInvoiceDate: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SELLER_COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  i.INVOICE_DATE'
      'from'
      '  INVOICES i'
      'where'
      '  (i.INVOICE_NO ='
      '    ( select'
      '        Max(i.INVOICE_NO)'
      '      from'
      '        INVOICES i'
      '      where'
      '        (i.IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE) and'
      '        (i.SELLER_COMPANY_CODE = :SELLER_COMPANY_CODE) and'
      '        (i.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 336
    Top = 120
    object qryGetLastInvoiceDateINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
  end
  object qryGetInvoiceNoInterval: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  co.MIN_RANGE_INVOICE_NO,'
      '  co.MAX_RANGE_INVOICE_NO'
      'from'
      '  COMMON_OPTIONS co'
      'where'
      '  (co.CODE = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 384
    Top = 168
    object qryGetInvoiceNoIntervalMIN_RANGE_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_RANGE_INVOICE_NO'
    end
    object qryGetInvoiceNoIntervalMAX_RANGE_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_RANGE_INVOICE_NO'
    end
  end
  object prvInvoiceVatTypes: TDataSetProvider
    DataSet = qryInvoiceVatTypes
    Left = 424
    Top = 16
  end
  object qryInvoiceVatTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  *'
      ''
      'from'
      '  INVOICE_VAT_TYPES')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 64
    object qryInvoiceVatTypesINVOICE_VAT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_VAT_TYPE_CODE'
    end
    object qryInvoiceVatTypesINVOICE_VAT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_VAT_TYPE_NAME'
      Size = 100
    end
  end
  object qryGetMaxInvoiceNoOld: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Cast('
      
        '    Decode(Coalesce(i.MAX_INVOICE_NO, co.MIN_RANGE_INVOICE_NO - ' +
        '1), co.MAX_RANGE_INVOICE_NO,'
      '      null,'
      '      Coalesce(i.MAX_INVOICE_NO, co.MIN_RANGE_INVOICE_NO - 1)'
      '    )'
      '  as Integer) as MAX_INVOICE_NO'
      ''
      'from'
      '  COMMON_OPTIONS co,'
      '  ('
      '    select'
      '      Max(i.INVOICE_NO) as MAX_INVOICE_NO'
      '    from'
      '      COMMON_OPTIONS co2,'
      '      INVOICES i'
      '    where'
      '      (co2.CODE = 1) and'
      '      (i.SELLER_COMPANY_CODE = 0) and'
      
        '      (i.INVOICE_NO between co2.MIN_RANGE_INVOICE_NO and co2.MAX' +
        '_RANGE_INVOICE_NO) and'
      '      (i.IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE) and'
      '      (i.INVOICE_BRANCH_CODE = :INVOICE_BRANCH_CODE)'
      '   ) i'
      ''
      'where'
      '  (co.CODE = 1)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 304
    object qryGetMaxInvoiceNoOldMAX_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_INVOICE_NO'
    end
  end
  object qryUpdateInvoiceSaleShipments: TAbmesSQLQuery
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
      end
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
      'update'
      '  SALE_SHIPMENTS_FOR_EDIT ssfe'
      'set'
      
        '  (ssfe.INVOICE_NO, ssfe.INVOICE_DATE, ssfe.IS_PROFORM_INVOICE) ' +
        '='
      '  ( select'
      '      i.INVOICE_NO,'
      '      i.INVOICE_DATE,'
      '      i.IS_PROFORM_INVOICE'
      '    from'
      '      INVOICES i'
      '    where'
      '      (i.INVOICE_BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '      (i.INVOICE_CODE = :INVOICE_CODE)'
      '  )'
      'where'
      
        '  ( (ssfe.SHIPMENT_OBJECT_BRANCH_CODE, ssfe.SHIPMENT_OBJECT_CODE' +
        ') in'
      '    ( select'
      '        ii.BND_PROCESS_OBJECT_BRANCH_CODE,'
      '        ii.BND_PROCESS_OBJECT_CODE'
      '      from'
      '        INVOICE_ITEMS ii'
      '      where'
      '        (ii.BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '        (ii.INVOICE_CODE = :INVOICE_CODE)'
      '    )'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 376
    Top = 304
  end
  object qrySaleShipmentInvoice: TAbmesSQLQuery
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
      '  ii.BRANCH_CODE as INVOICE_BRANCH_CODE,'
      '  ii.INVOICE_CODE,'
      '  Nvl2(i.APPROVE_EMPLOYEE_CODE, 1, 0) as IS_APPROVED,'
      '  i.INVOICE_NO,'
      '  i.INVOICE_DATE,'
      '  i.IS_PROFORM_INVOICE'
      'from'
      '  INVOICE_ITEMS ii,'
      '  INVOICES i'
      'where'
      '  (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      '  (i.STORNO_EMPLOYEE_CODE is null) and'
      ''
      
        '  (ii.BND_PROCESS_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (ii.BND_PROCESS_OBJECT_CODE = :SHIPMENT_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 544
    Top = 288
    object qrySaleShipmentInvoiceINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      Required = True
    end
    object qrySaleShipmentInvoiceINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      Required = True
    end
    object qrySaleShipmentInvoiceIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
    end
    object qrySaleShipmentInvoiceINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      Required = True
    end
    object qrySaleShipmentInvoiceINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      Required = True
    end
    object qrySaleShipmentInvoiceIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      Required = True
    end
  end
  object prvSaleShipmentInvoice: TDataSetProvider
    DataSet = qrySaleShipmentInvoice
    Left = 544
    Top = 240
  end
  object qryInconsistentSaleShipments: TAbmesSQLQuery
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
      '  po.PROCESS_OBJECT_IDENTIFIER'
      ''
      'from'
      '  INVOICE_ITEMS ii,'
      '  PROCESS_OBJECTS po,'
      '  INVOICES i,'
      '  SALE_SHIPMENTS ss,'
      '  SALES s,'
      '  PRODUCTS p,'
      '  MEASURES m'
      ''
      'where'
      '  (ii.BRANCH_CODE = :INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = :INVOICE_CODE) and'
      ''
      
        '  (ii.BND_PROCESS_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_' +
        'CODE) and'
      '  (ii.BND_PROCESS_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      ''
      '  (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE) and'
      '  (ii.INVOICE_CODE = i.INVOICE_CODE) and'
      ''
      
        '  (ii.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_BRANCH' +
        '_CODE) and'
      '  (ii.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) and'
      ''
      '  (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) and'
      '  (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      ''
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      ''
      '  (p.ACCOUNT_MEASURE_CODE = m.MEASURE_CODE) and'
      ''
      '  ( ( (s.CLIENT_COMPANY_CODE is not null) and'
      '      (i.RECEIVER_COMPANY_CODE is not null) and'
      '      (i.RECEIVER_COMPANY_CODE <> s.CLIENT_COMPANY_CODE)'
      '    ) or'
      ''
      
        '    (Coalesce(ii.PRODUCT_CODE, s.PRODUCT_CODE) <> s.PRODUCT_CODE' +
        ') or'
      ''
      '    ( Nvl2(ii.PRODUCT_CODE, ii.ITEM_NAME, p.NAME) <>'
      '      Coalesce('
      '        ( select'
      '            cp.NAME'
      '          from'
      '            COMPANY_PRODUCTS cp'
      '          where'
      
        '            (cp.COMPANY_CODE = Coalesce(i.RECEIVER_COMPANY_CODE,' +
        ' i.BUYER_COMPANY_CODE)) and'
      '            (cp.PRODUCT_CODE = ii.PRODUCT_CODE)'
      '        ),'
      '        p.NAME'
      '      )'
      '    ) or'
      ''
      '    (ii.ACCOUNT_MEASURE_ABBREV <> m.MEASURE_ABBREV) or'
      ''
      '    ( MiscUtils.FloatCompare('
      '        ii.ACCOUNT_QUANTITY,'
      
        '        (Coalesce(ss.QUANTITY, ss.PLAN_QUANTITY) * p.ACCOUNT_MEA' +
        'SURE_COEF)'
      '      ) <> 0'
      '    ) or'
      ''
      '    ( MiscUtils.FloatCompare('
      '        ii.SINGLE_PRICE,'
      
        '        ( (Coalesce(ss.INVOICE_SINGLE_PRICE, s.SINGLE_PRICE) / p' +
        '.ACCOUNT_MEASURE_COEF) *'
      
        '          %CURRENCY_FIXING[(Coalesce(ss.INVOICE_CURRENCY_CODE, s' +
        '.CURRENCY_CODE)) ~ i.INVOICE_DATE] /'
      '          %CURRENCY_FIXING[i.CURRENCY_CODE ~ i.INVOICE_DATE]'
      '        )'
      '      ) <> 0'
      '    ) or'
      ''
      '    ( MiscUtils.FloatCompare('
      '        ii.MARKET_SINGLE_PRICE,'
      
        '        ( (Coalesce(s.MARKET_SINGLE_PRICE, ss.INVOICE_SINGLE_PRI' +
        'CE, s.SINGLE_PRICE) / p.ACCOUNT_MEASURE_COEF) *'
      
        '          %CURRENCY_FIXING[(Coalesce(ss.INVOICE_CURRENCY_CODE, s' +
        '.CURRENCY_CODE)) ~ i.INVOICE_DATE] /'
      '          %CURRENCY_FIXING[i.CURRENCY_CODE ~ i.INVOICE_DATE]'
      '        )'
      '      ) <> 0'
      '    ) or'
      ''
      '    ( MiscUtils.FloatCompare('
      '        ii.DISCOUNT_PERCENT,'
      '        Coalesce(s.DISCOUNT_PERCENT, 0)'
      '      ) <> 0'
      '    )'
      '  )'
      ''
      'order by'
      '  po.PROCESS_OBJECT_IDENTIFIER'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'CURRENCY_FIXING[(Coalesce(ss.INVOICE_CURRENCY_CODE, s.CURRENCY_C' +
          'ODE)) ~ i.INVOICE_DATE]'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CURRENCY_FIXING[i.CURRENCY_CODE ~ i.INVOICE_DATE]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 376
    Top = 256
    object qryInconsistentSaleShipmentsPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
  end
  object prvInvoiceNoGenerators: TDataSetProvider
    DataSet = qryInvoiceNoGenerators
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 16
  end
  object qryInvoiceNoGenerators: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  ing.INVOICE_NO_GENERATOR_CODE,'
      '  ing.INVOICE_NO_GENERATOR_NO,'
      '  ing.BEGIN_DATE,'
      '  ing.END_DATE,'
      ''
      '  ing.DEPT_CODE,'
      '  d.NAME as DEPT_NAME,'
      
        '  (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER) as D' +
        'EPT_IDENTIFIER,'
      ''
      '  ing.IS_PROFORM_INVOICE,'
      '  ing.IS_APPROVED,'
      '  ing.MIN_INVOICE_NO,'
      '  ing.MAX_INVOICE_NO,'
      '  ing.CURRENT_INVOICE_NO,'
      ''
      '  ( select'
      
        '      ListAgg(it.INVOICE_TYPE_NAME, '#39', '#39') within group (order by' +
        ' it.INVOICE_TYPE_CODE)'
      '    from'
      '      ING_INVOICE_TYPES ingit,'
      '      INVOICE_TYPES it'
      '    where'
      
        '      (ingit.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATO' +
        'R_CODE) and'
      '      (ingit.INVOICE_TYPE_CODE = it.INVOICE_TYPE_CODE)'
      '  ) as INVOICE_TYPE_NAMES,'
      ''
      '  ( select'
      
        '      ListAgg(c.CURRENCY_ABBREV, '#39', '#39') within group (order by c.' +
        'CURRENCY_CODE)'
      '    from'
      '      ING_CURRENCIES ingc,'
      '      CURRENCIES c'
      '    where'
      
        '      (ingc.INVOICE_NO_GENERATOR_CODE = ing.INVOICE_NO_GENERATOR' +
        '_CODE) and'
      '      (ingc.CURRENCY_CODE = c.CURRENCY_CODE)'
      '  ) as CURRENCY_ABBREVS'
      ''
      'from'
      '  INVOICE_NO_GENERATORS ing,'
      '  DEPTS d,'
      '  DEPT_TYPES dt'
      ''
      'where'
      '  (ing.DEPT_CODE = d.DEPT_CODE) and'
      '  (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      ''
      'order by'
      '  ing.INVOICE_NO_GENERATOR_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'INVOICE_NO_GENERATORS_FOR_EDIT'
    Left = 552
    Top = 64
    object qryInvoiceNoGeneratorsINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryInvoiceNoGeneratorsINVOICE_NO_GENERATOR_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_NO'
      Required = True
    end
    object qryInvoiceNoGeneratorsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object qryInvoiceNoGeneratorsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
    object qryInvoiceNoGeneratorsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object qryInvoiceNoGeneratorsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object qryInvoiceNoGeneratorsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object qryInvoiceNoGeneratorsIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object qryInvoiceNoGeneratorsIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
    end
    object qryInvoiceNoGeneratorsMIN_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_INVOICE_NO'
      Required = True
    end
    object qryInvoiceNoGeneratorsMAX_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_INVOICE_NO'
      Required = True
    end
    object qryInvoiceNoGeneratorsCURRENT_INVOICE_NO: TAbmesFloatField
      FieldName = 'CURRENT_INVOICE_NO'
    end
    object qryInvoiceNoGeneratorsINVOICE_TYPE_NAMES: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAMES'
      Size = 4000
    end
    object qryInvoiceNoGeneratorsCURRENCY_ABBREVS: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREVS'
      Size = 4000
    end
  end
  object prvInvoiceNoGenerator: TDataSetProvider
    DataSet = qryInvoiceNoGenerator
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = prvInvoiceNoGeneratorBeforeUpdateRecord
    Left = 680
    Top = 16
  end
  object qryInvoiceNoGenerator: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ing.INVOICE_NO_GENERATOR_CODE,'
      '  ing.INVOICE_NO_GENERATOR_NO,'
      '  ing.BEGIN_DATE,'
      '  ing.END_DATE,'
      '  ing.DEPT_CODE,'
      '  ing.IS_PROFORM_INVOICE,'
      '  ing.IS_APPROVED,'
      '  ing.MIN_INVOICE_NO,'
      '  ing.MAX_INVOICE_NO,'
      '  ing.CURRENT_INVOICE_NO'
      ''
      'from'
      '  INVOICE_NO_GENERATORS ing'
      ''
      'where'
      '  (ing.INVOICE_NO_GENERATOR_CODE = :INVOICE_NO_GENERATOR_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    TableName = 'INVOICE_NO_GENERATORS_FOR_EDIT'
    BeforeProviderEndTransaction = qryInvoiceNoGeneratorBeforeProviderEndTransaction
    Left = 680
    Top = 64
    object qryInvoiceNoGeneratorINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryInvoiceNoGeneratorINVOICE_NO_GENERATOR_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_NO'
    end
    object qryInvoiceNoGeneratorBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object qryInvoiceNoGeneratorEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object qryInvoiceNoGeneratorDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object qryInvoiceNoGeneratorIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object qryInvoiceNoGeneratorIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
    end
    object qryInvoiceNoGeneratorMIN_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_INVOICE_NO'
    end
    object qryInvoiceNoGeneratorMAX_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_INVOICE_NO'
    end
    object qryInvoiceNoGeneratorCURRENT_INVOICE_NO: TAbmesFloatField
      FieldName = 'CURRENT_INVOICE_NO'
    end
  end
  object dsInvoiceNoGenerator: TDataSource
    DataSet = qryInvoiceNoGenerator
    Left = 680
    Top = 112
  end
  object qryINGInvoiceTypes: TAbmesSQLQuery
    DataSource = dsInvoiceNoGenerator
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ingit.INVOICE_NO_GENERATOR_CODE,'
      '  ingit.INVOICE_TYPE_CODE'
      ''
      'from'
      '  ING_INVOICE_TYPES ingit'
      ''
      'where'
      '  (ingit.INVOICE_NO_GENERATOR_CODE = :INVOICE_NO_GENERATOR_CODE)'
      ''
      'order by'
      '  ingit.INVOICE_TYPE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 160
    object qryINGInvoiceTypesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryINGInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryINGNotInvoiceTypes: TAbmesSQLQuery
    DataSource = dsInvoiceNoGenerator
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  it.INVOICE_TYPE_CODE'
      ''
      'from'
      '  INVOICE_TYPES it'
      ''
      'where'
      '  (it.INVOICE_TYPE_CODE in (1, 2, 3, 8)) and'
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      ING_INVOICE_TYPES ingit'
      '    where'
      
        '      (ingit.INVOICE_NO_GENERATOR_CODE = :INVOICE_NO_GENERATOR_C' +
        'ODE) and'
      '      (ingit.INVOICE_TYPE_CODE = it.INVOICE_TYPE_CODE)'
      '  )'
      ''
      'order by'
      '  it.INVOICE_TYPE_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 208
    object qryINGNotInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
      Required = True
    end
  end
  object qryINGCurrencies: TAbmesSQLQuery
    DataSource = dsInvoiceNoGenerator
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  ingc.INVOICE_NO_GENERATOR_CODE,'
      '  ingc.CURRENCY_CODE'
      ''
      'from'
      '  ING_CURRENCIES ingc'
      ''
      'where'
      '  (ingc.INVOICE_NO_GENERATOR_CODE = :INVOICE_NO_GENERATOR_CODE)'
      ''
      'order by'
      '  ingc.CURRENCY_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 256
    object qryINGCurrenciesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryINGCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryINGNotCurrencies: TAbmesSQLQuery
    DataSource = dsInvoiceNoGenerator
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  c.CURRENCY_CODE'
      ''
      'from'
      '  CURRENCIES c'
      ''
      'where'
      '  not exists('
      '    select'
      '      1'
      '    from'
      '      ING_CURRENCIES ingc'
      '    where'
      
        '      (ingc.INVOICE_NO_GENERATOR_CODE = :INVOICE_NO_GENERATOR_CO' +
        'DE) and'
      '      (ingc.CURRENCY_CODE = c.CURRENCY_CODE)'
      '  )'
      ''
      'order by'
      '  c.CURRENCY_CODE'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 304
    object qryINGNotCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
  end
  object qryNewInvoiceNoGeneratorCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      
        '  seq_INVOICE_NO_GENERATORS.NextVal as NEW_INVOICE_NO_GENERATOR_' +
        'CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 352
    object qryNewInvoiceNoGeneratorCodeNEW_INVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'NEW_INVOICE_NO_GENERATOR_CODE'
    end
  end
  object qryCheckInvoiceNoGenerator: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      
        '  FinanceUtils.CheckInvoiceNoGenerator(:INVOICE_NO_GENERATOR_COD' +
        'E);'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 400
  end
  object qryGenerateInvoiceNo: TAbmesSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftDateTime
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_APPROVED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'READ_ONLY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'declare'
      '  InvoiceNoGeneratorCode Number;'
      'begin'
      
        '  FinanceUtils.GenerateInvoiceNo(:INVOICE_DATE, :DEPT_CODE, :INV' +
        'OICE_TYPE_CODE, :IS_PROFORM_INVOICE, :CURRENCY_CODE, :IS_APPROVE' +
        'D, 2, InvoiceNoGeneratorCode);'
      ''
      
        '  if (InvoiceNoGeneratorCode <> :OLD_INVOICE_NO_GENERATOR_CODE) ' +
        'then'
      
        '    FinanceUtils.GenerateInvoiceNo(:INVOICE_DATE, :DEPT_CODE, :I' +
        'NVOICE_TYPE_CODE, :IS_PROFORM_INVOICE, :CURRENCY_CODE, :IS_APPRO' +
        'VED, :READ_ONLY, :INVOICE_NO);'
      '  end if;'
      ''
      '  select'
      '    InvoiceNoGeneratorCode'
      '  into'
      '    :INVOICE_NO_GENERATOR_CODE'
      '  from'
      '    DUAL;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 472
    Top = 400
  end
end
