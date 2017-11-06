inherited dmSaleOrders: TdmSaleOrders
  Height = 368
  Width = 784
  object prvSaleOrder: TDataSetProvider
    DataSet = qrySaleOrder
    Options = [poIncFieldProps, poPropogateChanges]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvSaleOrderAfterUpdateRecord
    BeforeUpdateRecord = prvSaleOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvSaleOrderBeforeApplyUpdates
    AfterApplyUpdates = prvSaleOrderAfterApplyUpdates
    Left = 24
    Top = 16
  end
  object qrySaleOrder: TAbmesSQLQuery
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
      '  s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  s.SALE_GROUP_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.SALE_DEAL_TYPE_CODE,'
      '  ( select'
      '      bdt.BORDER_REL_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = s.SALE_DEAL_TYPE_CODE)'
      '  ) as BORDER_REL_TYPE_CODE,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      '  s.CLIENT_COMPANY_CODE,'
      
        '  %GET_PARTNER_NAME[s.CLIENT_COMPANY_CODE] as CLIENT_COMPANY_NAM' +
        'E,'
      '  ( select'
      '      cc.PRIORITY_CODE'
      '    from'
      '      CLIENT_COMPANIES cc'
      '    where'
      '      (cc.CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_PRIORITY_CODE,'
      '  s.CLIENT_REQUEST_NO,'
      '  s.REQUEST_SEND_DATE,'
      '  s.REQUEST_REGISTER_DATE,'
      '  s.OFFER_SEND_PLAN_DATE,'
      '  s.OFFER_SEND_DATE,'
      '  s.OFFER_ANSWER_PLAN_DATE,'
      '  s.OFFER_ANSWER_DATE,'
      '  s.DECISION_PLAN_DATE,'
      '  s.DECISION_DATE,'
      '  s.DECISION_TYPE_CODE,'
      '  s.DECISION_EMPLOYEE_CODE,'
      '  s.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      '             Decode(Sign(Count(*)), 0, 1, 3)'
      '           from'
      '             CONCRETE_PRODUCTS cp,'
      '             DEFINITE_PRODUCTS dp'
      '           where'
      '             (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.COMMON_PRODUCT_CODE is not null)'
      '         )'
      '  ) as COMMON_STATUS_CODE,'
      ''
      '  p.MEASURE_CODE as PRODUCT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      ''
      '  s.QUANTITY,'
      '  (s.QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANTITY,'
      '  s.OUR_OFFER_QUANTITY,'
      
        '  (s.OUR_OFFER_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_OUR' +
        '_OFFER_QUANTITY,'
      '  s.CL_OFFER_QUANTITY,'
      
        '  (s.CL_OFFER_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_CL_O' +
        'FFER_QUANTITY,'
      '  s.MANUFACTURE_QUANTITY,'
      ''
      '  ( select'
      '      sg.PRIORITY_CODE'
      '    from'
      '      SALE_GROUPS sg'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJECT_BR' +
        'ANCH_CODE) and'
      '      (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)'
      '  ) as SALE_PRIORITY_CODE,'
      '  s.MODEL_DEVELOPMENT_TYPE_CODE,'
      '  s.MANUFACTURE_DECISION_EXPECTED,'
      '  s.SINGLE_WEIGHT,'
      '  s.MIN_BASE_PRICE,'
      
        '  (s.MIN_BASE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF, 0)) as ACCO' +
        'UNT_MIN_BASE_PRICE,'
      '  s.CURRENCY_CODE,'
      '  s.CL_OFFER_CURRENCY_CODE,'
      '  s.OUR_OFFER_CURRENCY_CODE,'
      '  s.SINGLE_PRICE,'
      
        '  (s.SINGLE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF, 0)) as ACCOUN' +
        'T_SINGLE_PRICE,'
      '  s.OUR_OFFER_SINGLE_PRICE,'
      
        '  (s.OUR_OFFER_SINGLE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF, 0))' +
        ' as ACCOUNT_OUR_OFFER_SINGLE_PRICE,'
      '  s.CL_OFFER_SINGLE_PRICE,'
      
        '  (s.CL_OFFER_SINGLE_PRICE / NullIf(p.ACCOUNT_MEASURE_COEF, 0)) ' +
        'as ACCOUNT_CL_OFFER_SINGLE_PRICE, '
      '  s.RECEIVE_DATE,'
      '  s.RETURN_DATE,'
      '  s.IMPORT_DATE,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      '  s.CL_OFFER_RETURN_DATE,'
      '  s.OUR_OFFER_RECEIVE_DATE,'
      '  s.RECEIVE_PLACE_OFFICE_CODE,'
      '  s.IS_VENDOR_TRANSPORT,'
      '  s.SHIPMENT_TYPE_CODE,'
      '  s.CUSTOMHOUSE_CODE,'
      '  s.NOTES,'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  s.SALE_TYPE_CODE,'
      '  s.OKIDU_EMPLOYEE_CODE,'
      '  s.SOS_OKIDU,'
      '  s.SHIPMENT_DATE,'
      '  s.SHIPMENT_STORE_CODE,'
      '  s.ENTER_SH_STORE_PLAN_BEGIN_DATE,'
      '  s.ENTER_SH_STORE_PLAN_END_DATE,'
      '  s.IS_ML_ENTRUSTED,'
      '  s.IS_ML_NOT_NEEDED,'
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
      '  s.CHANGE_TIME,'
      '  s.MANAGER_EMPLOYEE_CODE,'
      '  cp.NAME as CLIENT_PRODUCT_SIGNATURE,'
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as HAS_DOC_ITEMS,'
      '  s.TRANSIENT_STATUS_CODE,'
      '  ( select'
      '      con.COUNTRY_ABBREV'
      '    from'
      '      COMPANIES com,'
      '      COUNTRIES con'
      '    where'
      '      (com.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (com.COUNTRY_CODE = con.COUNTRY_CODE)'
      '  ) as CLIENT_COUNTRY_ABBREV,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ASPECT_TYPE_CODE = 1)'
      '  ) as PROGNOSIS_SALE_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ASPECT_TYPE_CODE = 2)'
      '  ) as REALIZATION_SALE_COUNT,'
      ''
      '  s.ASPECT_TYPE_CODE,'
      ''
      '  s.PROGNOSIS_BEGIN_DATE,'
      '  s.PROGNOSIS_END_DATE,'
      ''
      '  s.OUR_OFFER_LEASE_DATE_UNIT_QTY,'
      '  s.OUR_OFFER_LEASE_DATE_UNIT_CODE,'
      '  s.CL_OFFER_LEASE_DATE_UNIT_QTY,'
      '  s.CL_OFFER_LEASE_DATE_UNIT_CODE,'
      '  s.LEASE_DATE_UNIT_QTY,'
      '  s.LEASE_DATE_UNIT_CODE,'
      ''
      '  s.SHIPMENT_DAYS,'
      ''
      '  s.DELIVERY_OBJECT_BRANCH_CODE,'
      '  s.DELIVERY_OBJECT_CODE,'
      ''
      '  ( select'
      '      dc.DCD_OBJECT_BRANCH_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = s.DELIVERY_OBJECT_BRANCH' +
        '_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = s.DELIVERY_OBJECT_CODE)'
      '   ) as DCD_OBJECT_BRANCH_CODE,'
      ''
      '  ( select'
      '      dc.DCD_OBJECT_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = s.DELIVERY_OBJECT_BRANCH' +
        '_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = s.DELIVERY_OBJECT_CODE)'
      '   ) as DCD_OBJECT_CODE,'
      ''
      '  ( select'
      '      dcd.DCD_BRANCH_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DEFICIT_COVER_DECISIONS dcd'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = s.DELIVERY_OBJECT_BRANCH' +
        '_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = s.DELIVERY_OBJECT_CODE) and'
      
        '      (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE)'
      '  ) as DCD_BRANCH_CODE,'
      ''
      '  ( select'
      '      dcd.DCD_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc,'
      '      DEFICIT_COVER_DECISIONS dcd'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = s.DELIVERY_OBJECT_BRANCH' +
        '_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = s.DELIVERY_OBJECT_CODE) and'
      
        '      (dcd.DCD_OBJECT_BRANCH_CODE = dc.DCD_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (dcd.DCD_OBJECT_CODE = dc.DCD_OBJECT_CODE)'
      '  ) as DCD_CODE,'
      ''
      '  ( select'
      '      dc.DELIVERY_PROJECT_CODE'
      '    from'
      '      DELIVERY_CONTRACTS dc'
      '    where'
      
        '      (dc.DELIVERY_OBJECT_BRANCH_CODE = s.DELIVERY_OBJECT_BRANCH' +
        '_CODE) and'
      '      (dc.DELIVERY_OBJECT_CODE = s.DELIVERY_OBJECT_CODE)'
      '  ) as DELIVERY_PROJECT_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALE_SHIPMENTS ss'
      '    where'
      
        '      (ss.SALE_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '      (ss.SALE_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as SS_COUNT,'
      ''
      '  srg.DOC_BRANCH_CODE as SRG_DOC_BRANCH_CODE,'
      '  srg.DOC_CODE as SRG_DOC_CODE,'
      '  %HAS_DOC_ITEMS[srg] as SRG_HAS_DOC_ITEMS,'
      ''
      '  ( select'
      '      fo.FIN_ORDER_CODE'
      '    from'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as FIN_ORDER_CODE,'
      '  To_Number(null) as FO_BRANCH_CODE,'
      '  To_Number(null) as FO_EXEC_DEPT_CODE,'
      '  To_Number(null) as FO_PRIORITY_CODE,'
      '  To_Number(null) as FO_WORK_FINANCIAL_PRODUCT_CODE,'
      '  To_Number(null) as FO_PARTNER_CODE,'
      '  ( select'
      '      %FIN_ORDER_STATUS[fo] as FO_STATUS_CODE'
      '    from'
      '      FIN_ORDERS fo'
      '    where'
      
        '      (fo.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANCH_' +
        'CODE) and'
      '      (fo.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '  ) as FO_STATUS_CODE,'
      '  To_Number(null) as SPEC_FIN_MODEL_CODE,'
      ''
      '  ( ( select'
      '        Sign(Count(*))'
      '      from'
      '        FIN_ORDERS fo,'
      '        REAL_FIN_MODEL_LINES rfml'
      '      where'
      
        '        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (fo.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      '        (rfml.ANNUL_EMPLOYEE_CODE is null)'
      '    ) *'
      '    ( select'
      '        /*+ORDERED*/'
      '        1 - Sign(Count(*))'
      '      from'
      '        FIN_ORDERS fo,'
      '        REAL_FIN_MODEL_LINES rfml,'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      
        '        (fo.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRANC' +
        'H_CODE) and'
      '        (fo.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE) and'
      '        (rfml.FIN_ORDER_CODE = fo.FIN_ORDER_CODE) and'
      
        '        (rfml.RFML_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_B' +
        'RANCH_CODE) and'
      
        '        (rfml.RFML_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) an' +
        'd'
      '        (rfml.ANNUL_EMPLOYEE_CODE is null) and'
      '        (psd.REMAINING_QUANTITY > 0)'
      '    ) *'
      '    Nvl2('
      '      ( select'
      '          fo.CLOSE_EMPLOYEE_CODE'
      '        from'
      '          FIN_ORDERS fo'
      '        where'
      
        '          (fo.BND_PROCESS_OBJECT_BRANCH_CODE = s.SALE_OBJECT_BRA' +
        'NCH_CODE) and'
      '          (fo.BND_PROCESS_OBJECT_CODE = s.SALE_OBJECT_CODE)'
      '      ),'
      '      0,'
      '      1'
      '    )'
      '  ) as FO_IS_COMPLETED,'
      ''
      '  To_Number(null) as FO_CLOSE_REQUESTED,'
      ''
      '  s.WORK_PRIORITY_CODE,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s2'
      '    where'
      '      (s2.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s2.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s2.ANNUL_EMPLOYEE_CODE is null) and'
      '      (s2.FINISH_EMPLOYEE_CODE is null)'
      '  ) as UNFINISHED_SRG_SALE_COUNT,'
      ''
      '  ssh.DOC_BRANCH_CODE as SSH_DOC_BRANCH_CODE,'
      '  ssh.DOC_CODE as SSH_DOC_CODE'
      ''
      'from'
      '  SALES s,'
      '  SALE_SHIPMENTS ssh,'
      '  SALE_REQUEST_GROUPS srg,'
      '  PRODUCTS p,'
      '  COMPANY_PRODUCTS cp'
      'where'
      
        '  (ssh.SALE_OBJECT_BRANCH_CODE(+) = s.SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (ssh.SALE_OBJECT_CODE(+) = s.SALE_OBJECT_CODE) and'
      '  (ssh.SALE_SHIPMENT_NO(+) = 1) and'
      ''
      '  (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = s.REQUEST_NO) and'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      '  (s.CLIENT_COMPANY_CODE = cp.COMPANY_CODE(+)) and'
      '  (s.PRODUCT_CODE = cp.PRODUCT_CODE(+)) and'
      '  (s.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      ''
      ' '
      ' '
      ' '
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'GET_PARTNER_NAME[s.CLIENT_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39' '#39
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[srg]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALES_FOR_EDIT'
    AfterProviderStartTransaction = qrySaleOrderAfterProviderStartTransaction
    Left = 24
    Top = 64
    object qrySaleOrderSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 30
    end
    object qrySaleOrderREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qrySaleOrderOFFER_SEND_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_PLAN_DATE'
    end
    object qrySaleOrderREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qrySaleOrderOFFER_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_SEND_DATE'
    end
    object qrySaleOrderOFFER_ANSWER_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_PLAN_DATE'
    end
    object qrySaleOrderOFFER_ANSWER_DATE: TAbmesSQLTimeStampField
      FieldName = 'OFFER_ANSWER_DATE'
    end
    object qrySaleOrderDECISION_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_PLAN_DATE'
    end
    object qrySaleOrderDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
    end
    object qrySaleOrderDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleOrderPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
    object qrySaleOrderPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
    object qrySaleOrderQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySaleOrderOUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'OUR_OFFER_QUANTITY'
    end
    object qrySaleOrderCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
    end
    object qrySaleOrderMANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'MANUFACTURE_QUANTITY'
    end
    object qrySaleOrderMANUFACTURE_DECISION_EXPECTED: TAbmesFloatField
      FieldName = 'MANUFACTURE_DECISION_EXPECTED'
      FieldValueType = fvtBoolean
    end
    object qrySaleOrderSINGLE_WEIGHT: TAbmesFloatField
      FieldName = 'SINGLE_WEIGHT'
    end
    object qrySaleOrderCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qrySaleOrderOUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'OUR_OFFER_SINGLE_PRICE'
    end
    object qrySaleOrderCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
    end
    object qrySaleOrderRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySaleOrderCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object qrySaleOrderOUR_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'OUR_OFFER_RECEIVE_DATE'
    end
    object qrySaleOrderRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object qrySaleOrderSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object qrySaleOrderSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderSOS_OKIDU: TAbmesFloatField
      FieldName = 'SOS_OKIDU'
      FieldValueType = fvtBoolean
    end
    object qrySaleOrderSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qrySaleOrderSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
    end
    object qrySaleOrderENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
    end
    object qrySaleOrderIS_ML_ENTRUSTED: TAbmesFloatField
      FieldName = 'IS_ML_ENTRUSTED'
      FieldValueType = fvtBoolean
    end
    object qrySaleOrderIS_ML_NOT_NEEDED: TAbmesFloatField
      FieldName = 'IS_ML_NOT_NEEDED'
      FieldValueType = fvtBoolean
    end
    object qrySaleOrderANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qrySaleOrderANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qrySaleOrderFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qrySaleOrderFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qrySaleOrderCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qrySaleOrderCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qrySaleOrderCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object qrySaleOrderCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySaleOrderCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySaleOrderMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object qrySaleOrderCLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_SIGNATURE'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleOrderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleOrderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleOrderTRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'TRANSIENT_STATUS_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderCLIENT_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'CLIENT_COUNTRY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object qrySaleOrderCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object qrySaleOrderMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
    end
    object qrySaleOrderSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleOrderACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_OUR_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_OUR_OFFER_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_CL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_CL_OFFER_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleOrderPROGNOSIS_SALE_COUNT: TAbmesFloatField
      FieldName = 'PROGNOSIS_SALE_COUNT'
      ProviderFlags = []
    end
    object qrySaleOrderREALIZATION_SALE_COUNT: TAbmesFloatField
      FieldName = 'REALIZATION_SALE_COUNT'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object qrySaleOrderPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object qrySaleOrderCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qrySaleOrderCL_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CL_OFFER_CURRENCY_CODE'
    end
    object qrySaleOrderOUR_OFFER_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_CURRENCY_CODE'
    end
    object qrySaleOrderOUR_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object qrySaleOrderOUR_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'OUR_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object qrySaleOrderCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object qrySaleOrderCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object qrySaleOrderLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qrySaleOrderLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qrySaleOrderRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qrySaleOrderCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RETURN_DATE'
    end
    object qrySaleOrderIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object qrySaleOrderSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object qrySaleOrderSS_COUNT: TAbmesFloatField
      FieldName = 'SS_COUNT'
      ProviderFlags = []
    end
    object qrySaleOrderHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qrySaleOrderSRG_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SRG_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderSRG_DOC_CODE: TAbmesFloatField
      FieldName = 'SRG_DOC_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderSRG_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'SRG_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qrySaleOrderSALE_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderCLIENT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qrySaleOrderDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object qrySaleOrderDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qrySaleOrderDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qrySaleOrderDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_OUR_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_OUR_OFFER_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleOrderACCOUNT_CL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_CL_OFFER_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleOrderBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderFO_IS_COMPLETED: TAbmesFloatField
      FieldName = 'FO_IS_COMPLETED'
      ProviderFlags = []
    end
    object qrySaleOrderFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
    end
    object qrySaleOrderWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object qrySaleOrderUNFINISHED_SRG_SALE_COUNT: TAbmesFloatField
      FieldName = 'UNFINISHED_SRG_SALE_COUNT'
      ProviderFlags = []
    end
    object qrySaleOrderMIN_BASE_PRICE: TAbmesFloatField
      FieldName = 'MIN_BASE_PRICE'
    end
    object qrySaleOrderACCOUNT_MIN_BASE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_MIN_BASE_PRICE'
      ProviderFlags = []
    end
    object qrySaleOrderSSH_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleOrderSSH_DOC_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_CODE'
      ProviderFlags = []
    end
  end
  object qryGetNewRequestNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Coalesce(Max(srg.REQUEST_NO) + 1, 1) as NEW_REQUEST_NO'
      'from'
      '  SALE_REQUEST_GROUPS srg'
      'where'
      '  (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 120
    object qryGetNewRequestNoNEW_REQUEST_NO: TAbmesFloatField
      FieldName = 'NEW_REQUEST_NO'
    end
  end
  object qryGetMaxSaleNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '    Max(SALE_NO) as MAX_SALE_NO'
      'from'
      '  SALES'
      'where'
      '  (SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 216
    object qryGetMaxSaleNoMAX_SALE_NO: TAbmesFloatField
      FieldName = 'MAX_SALE_NO'
      FieldValueType = fvtInteger
    end
  end
  object qryGroupSalesMaster: TAbmesSQLQuery
    BeforeOpen = qryGroupSalesMasterBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_REGISTER_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CL_OFFER_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REAL_RECEIVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_RECEIVE_DATE_RESERVE_DAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RECEIVE_DATE_RESERVE_DAYS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_END_PRIORITY_CODE'
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
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
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
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end>
    SQL.Strings = (
      'select'
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO,'
      
        '  (srgd.CUSTOM_CODE || '#39'/'#39' || srg.REQUEST_NO) as SALE_ORDER_IDEN' +
        'TIFICATION,'
      '  srg.SALE_ORDER_TYPE_CODE,'
      '  sot.SALE_ORDER_TYPE_ABBREV,'
      '  st.SALE_TYPE_ABBREV,'
      '  Min(s.CLIENT_COMPANY_CODE) as CLIENT_COMPANY_CODE,'
      '  c.SHORT_NAME as CLIENT_COMPANY_NAME,'
      '  Min(s.REQUEST_SEND_DATE) as REQUEST_SEND_DATE,'
      '  Min(s.REQUEST_REGISTER_DATE) as REQUEST_REGISTER_DATE,'
      '  Min(s.CL_OFFER_RECEIVE_DATE) as CL_OFFER_RECEIVE_DATE,'
      '  Min(s.RECEIVE_DATE) as RECEIVE_DATE,'
      '  Min(s.SHIPMENT_DATE) as SHIPMENT_DATE,'
      ''
      '  Nvl2(srg.ANNUL_EMPLOYEE_CODE,'
      '    11,'
      '    Nvl2(srg.FINISH_EMPLOYEE_CODE,'
      '      10,'
      '      case'
      '        -- niama neanulirani i neprikliucheni'
      
        '        when (Count(Nvl2(s.FINISH_EMPLOYEE_CODE, null, Nvl2(s.AN' +
        'NUL_EMPLOYEE_CODE, null, 1))) = 0) then'
      '          1'
      '        -- vsichki sa prikliucheni, srg - ne'
      '        when ( srg.FINISH_EMPLOYEE_CODE is null ) and'
      
        '             ( Count(Nvl2(s.ANNUL_EMPLOYEE_CODE, null, 1)) = Cou' +
        'nt(Nvl2(s.ANNUL_EMPLOYEE_CODE, null, s.FINISH_EMPLOYEE_CODE)) ) ' +
        'then'
      
        '          Min(Nvl2(s.FINISH_EMPLOYEE_CODE, null, Nvl2(s.ANNUL_EM' +
        'PLOYEE_CODE, null, s.STATUS_CODE)))'
      '        else'
      '          Min(s.STATUS_CODE)'
      '      end'
      '    )'
      '  ) as STATUS_CODE,'
      ''
      '  ( select'
      '      (d.CUSTOM_CODE || '#39'/'#39' || sg.SALE_GROUP_CODE)'
      '    from'
      '      SALE_GROUPS sg,'
      '      DEPTS d'
      '    where'
      
        '      (sg.SALE_GROUP_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT_' +
        'BRANCH_CODE) and'
      
        '      (sg.SALE_GROUP_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE) a' +
        'nd'
      '      (d.DEPT_CODE = sg.SALE_GROUP_BRANCH_CODE)'
      '  ) as SALE_GROUP_IDENTIFICATION,'
      ''
      '  Decode(Min(s.IS_ANNULED), 1,'
      '    Sum(s.CL_OFFER_TOTAL_PRICE),'
      '    Sum(Decode(s.IS_ANNULED, 1, null, s.CL_OFFER_TOTAL_PRICE))'
      '  ) as CL_OFFER_TOTAL_PRICE,'
      ''
      '  Decode(Min(s.IS_ANNULED), 1,'
      '    Sum(s.TOTAL_PRICE),'
      '    Sum(Decode(s.IS_ANNULED, 1, null, s.TOTAL_PRICE))'
      '  ) as TOTAL_PRICE,'
      ''
      '  Decode(Min(s.IS_ANNULED), 1,'
      '    Sum(s.REAL_TOTAL_PRICE),'
      '    Sum(Decode(s.IS_ANNULED, 1, null, s.REAL_TOTAL_PRICE))'
      '  ) as REAL_TOTAL_PRICE,'
      ''
      '  ( Coalesce('
      '      Decode(Min(s.IS_ANNULED), 1,'
      '        Sum(s.REAL_TOTAL_PRICE),'
      '        Sum(Decode(s.IS_ANNULED, 1, null, s.REAL_TOTAL_PRICE))'
      '      ),'
      '      0'
      '    ) -'
      '    Coalesce('
      '      Decode(Min(s.IS_ANNULED), 1,'
      '        Sum(s.TOTAL_PRICE),'
      '        Sum(Decode(s.IS_ANNULED, 1, null, s.TOTAL_PRICE))'
      '      ),'
      '      0'
      '    )'
      '  ) as TOTAL_PRICE_DIFF,'
      '  '
      '  Min(s.IS_DONE) as IS_DONE,'
      '  Min(s.IS_ANNULED) as IS_ANNULED,'
      '  (1 - Min(s.IS_ANNULED)) as ANNUL_COEF,'
      '  srg.DOC_BRANCH_CODE,'
      '  srg.DOC_CODE,'
      '  %HAS_DOC_ITEMS[srg] as HAS_DOC_ITEMS,'
      ''
      '  Max(s.INVOICE_STATE_CODE) as INVOICE_STATE_CODE,'
      '  Max(s.CLIENT_PRIORITY_NO) as CLIENT_PRIORITY_NO,'
      '  Max(s.CLIENT_PRIORITY_COLOR) as CLIENT_PRIORITY_COLOR,'
      
        '  Max(s.CLIENT_PRIORITY_BCKG_COLOR) as CLIENT_PRIORITY_BCKG_COLO' +
        'R,'
      '  Max(s.RECEIVE_DATE_RESERVE_DAYS) as RECEIVE_DATE_RESERVE_DAYS,'
      ''
      '  c.DOC_BRANCH_CODE as CLIENT_DOC_BRANCH_CODE,'
      '  c.DOC_CODE as CLIENT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[c] as CLIENT_HAS_DOC_ITEMS,'
      '  '
      '  Max(s.CL_OFFER_RETURN_DATE) as CL_OFFER_RETURN_DATE,'
      '  Max(s.RETURN_DATE) as RETURN_DATE,'
      '  Max(s.IMPORT_DATE) as IMPORT_DATE,'
      ''
      '  srg.CLIENT_REQUEST_GROUP_NO,'
      ''
      '  ( select'
      '      sr.STORE_REQUEST_BRANCH_CODE'
      '    from'
      '      STORE_REQUESTS sr'
      '    where'
      
        '      (sr.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sr.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE)'
      '  ) as STORE_REQUEST_BRANCH_CODE,'
      ''
      '  ( select'
      '      sr.STORE_REQUEST_CODE'
      '    from'
      '      STORE_REQUESTS sr'
      '    where'
      
        '      (sr.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE) and'
      '      (sr.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE)'
      '  ) as STORE_REQUEST_CODE,'
      ''
      '  ( select'
      '      1 - Sign(Count(*))'
      '    from'
      '      STORE_REQUESTS sr,'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sr.BND_PROCESS_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT' +
        '_BRANCH_CODE) and'
      
        '      (sr.BND_PROCESS_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE) ' +
        'and'
      ''
      
        '      (sr.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sr.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      '      (not exists'
      '        ( select'
      '            1'
      '          from'
      '            STORE_DEALS sd'
      '          where'
      
        '            (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BR' +
        'ANCH_CODE) and'
      '            (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '            (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM' +
        '_CODE)'
      '        )'
      '      )'
      '  ) as IS_STORE_REQUEST_OTCH,'
      ''
      '  co.OFFICE_NAME as RECEIVE_PLACE_OFFICE_NAME'
      ''
      'from'
      '  SALE_REQUEST_GROUPS srg,'
      '  DEPTS srgd,'
      '  SALE_ORDER_TYPES sot,'
      '  SALE_TYPES st,'
      '  COMPANIES c,'
      '  COMPANY_OFFICES co,'
      '  ('
      '    select'
      '      s.REQUEST_BRANCH_CODE,'
      '      s.REQUEST_NO'
      '    from'
      '      SALES s'
      '    where'
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
      '      )'
      '    group by'
      '      s.REQUEST_BRANCH_CODE,'
      '      s.REQUEST_NO'
      '  ) sp,'
      '  ('
      '    select'
      '      s.REQUEST_BRANCH_CODE,'
      '      s.REQUEST_NO,'
      '      s.SALE_TYPE_CODE,'
      '      s.PRODUCT_CODE,'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.RECEIVE_PLACE_OFFICE_CODE,'
      '      s.REQUEST_SEND_DATE,'
      '      s.REQUEST_REGISTER_DATE,'
      '      s.CL_OFFER_RECEIVE_DATE,'
      '      s.RECEIVE_DATE,'
      '      Min(ss.SHIPMENT_DATE) as SHIPMENT_DATE,'
      ''
      '      s.CL_OFFER_RETURN_DATE,'
      '      s.RETURN_DATE,'
      '      Max(ss.IMPORT_DATE) as IMPORT_DATE,'
      ''
      '      s.FINISH_EMPLOYEE_CODE,'
      '      s.ANNUL_EMPLOYEE_CODE,'
      '      Nvl2(s.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      
        '      Nvl2(s.ANNUL_EMPLOYEE_CODE, 0, Nvl2(s.FINISH_EMPLOYEE_CODE' +
        ', 1, 0)) as IS_DONE,'
      ''
      '      Sum('
      '        ( s.CL_OFFER_QUANTITY *'
      '          s.SINGLE_PRICE *'
      '          Decode(s.SALE_DEAL_TYPE_CODE,'
      '                 1, 1,'
      '                 2, s.CL_OFFER_LEASE_DATE_UNIT_QTY'
      '          ) *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(s.CL_OFFER_RECEIVE_DATE, Con' +
        'textDate))'
      '          )'
      '        )'
      '      ) as CL_OFFER_TOTAL_PRICE,'
      ''
      '      Sum('
      '        ( s.QUANTITY *'
      '          s.SINGLE_PRICE *'
      '          Decode(s.SALE_DEAL_TYPE_CODE,'
      '                 1, 1,'
      '                 2, s.LEASE_DATE_UNIT_QTY'
      '          ) *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(s.RECEIVE_DATE, ContextDate)' +
        ')'
      '          )'
      '        )'
      '      ) as TOTAL_PRICE,'
      ''
      '      Sum('
      '        ( Decode(s.SALE_DEAL_TYPE_CODE,'
      '                 1, ss.QUANTITY,'
      '                 2, ss.LEASE_DATE_UNIT_QTY * s.QUANTITY'
      '          ) *'
      '          s.SINGLE_PRICE *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(ss.SHIPMENT_DATE, ContextDat' +
        'e))'
      '          )'
      '        )'
      '      ) as REAL_TOTAL_PRICE,'
      ''
      '      Max('
      '        ( select'
      '            Max('
      '              case'
      '                when (i.APPROVE_EMPLOYEE_CODE is not null) then'
      '                  6'
      '                when (i.IS_PROFORM_INVOICE = 0) then'
      '                  5'
      '                when (i.INVOICE_CODE is not null) then'
      '                  4'
      
        '                when (ssh.INVOICE_NO is not null) and (ssh.IS_PR' +
        'OFORM_INVOICE = 0) then'
      '                  3'
      
        '                when (ssh.INVOICE_NO is not null) and (ssh.IS_PR' +
        'OFORM_INVOICE = 1) then'
      '                  2'
      '              else'
      '                1'
      '              end'
      '            )'
      '          from'
      '            SALE_SHIPMENTS ssh,'
      '            INVOICE_ITEMS ii,'
      '            INVOICES i'
      '          where'
      
        '            (ssh.SHIPMENT_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '            (ssh.SHIPMENT_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE)' +
        ' and'
      
        '            (ssh.SHIPMENT_OBJECT_BRANCH_CODE = ii.BND_PROCESS_OB' +
        'JECT_BRANCH_CODE(+)) and'
      
        '            (ssh.SHIPMENT_OBJECT_CODE = ii.BND_PROCESS_OBJECT_CO' +
        'DE(+)) and'
      '            (ii.BRANCH_CODE = i.INVOICE_BRANCH_CODE(+)) and'
      '            (ii.INVOICE_CODE = i.INVOICE_CODE(+)) and'
      '            (i.STORNO_EMPLOYEE_CODE(+) is null)'
      '        )'
      '      ) as INVOICE_STATE_CODE,'
      ''
      '      ( select'
      '          p.PRIORITY_NO'
      '        from'
      '          CLIENT_COMPANIES cc,'
      '          PRIORITIES p'
      '        where'
      '          (cc.CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (p.PRIORITY_CODE = cc.PRIORITY_CODE)'
      '      ) as CLIENT_PRIORITY_NO,'
      ''
      '      ( select'
      '          p.PRIORITY_COLOR'
      '        from'
      '          CLIENT_COMPANIES cc,'
      '          PRIORITIES p'
      '        where'
      '          (cc.CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (p.PRIORITY_CODE = cc.PRIORITY_CODE)'
      '      ) as CLIENT_PRIORITY_COLOR,'
      ''
      '      ( select'
      '          p.PRIORITY_BACKGROUND_COLOR'
      '        from'
      '          CLIENT_COMPANIES cc,'
      '          PRIORITIES p'
      '        where'
      '          (cc.CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (p.PRIORITY_CODE = cc.PRIORITY_CODE)'
      '      ) as CLIENT_PRIORITY_BCKG_COLOR,'
      ''
      
        '      Max(s.RECEIVE_DATE - Coalesce(ss.SHIPMENT_DATE, ContextDat' +
        'e)) as RECEIVE_DATE_RESERVE_DAYS,'
      ''
      '      Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '        11,'
      '        Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '          10,'
      '          Nvl2(s.SALE_BRANCH_CODE,'
      '            9,'
      '            1'
      '          )'
      '        )'
      '      ) as STATUS_CODE'
      ''
      '    from'
      '      SALES s,'
      '      SALE_SHIPMENTS ss,'
      '      SECONDARY_CURRENCY_RATES scr,'
      '      TODAY_SECONDARY_CURRENCY_RATES tscr'
      '    where'
      '      (s.SALE_ORDER_TYPE_CODE in (6, 7)) and'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE(+)' +
        ') and'
      '      (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE(+)) and'
      '      (ss.INVOICE_CURRENCY_CODE = scr.CURRENCY_CODE(+)) and'
      '      (ss.INVOICE_DATE = scr.RATE_DATE(+)) and'
      '      (s.CURRENCY_CODE = tscr.CURRENCY_CODE(+))'
      '    group by'
      '      s.REQUEST_BRANCH_CODE,'
      '      s.REQUEST_NO,'
      '      s.ANNUL_EMPLOYEE_CODE,'
      '      s.FINISH_EMPLOYEE_CODE,'
      '      s.SALE_TYPE_CODE,'
      '      s.PRODUCT_CODE,'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.RECEIVE_PLACE_OFFICE_CODE,'
      '      s.REQUEST_SEND_DATE,'
      '      s.REQUEST_REGISTER_DATE,'
      '      s.CL_OFFER_RECEIVE_DATE,'
      '      s.RECEIVE_DATE,'
      '      s.SALE_DEAL_TYPE_CODE,'
      '      s.CLIENT_COMPANY_CODE,'
      '      s.CL_OFFER_QUANTITY,'
      '      s.CL_OFFER_SINGLE_PRICE,'
      '      s.CL_OFFER_CURRENCY_CODE,'
      '      s.QUANTITY,'
      '      s.SINGLE_PRICE,'
      '      s.CURRENCY_CODE,'
      '      s.CL_OFFER_LEASE_DATE_UNIT_QTY,'
      '      s.LEASE_DATE_UNIT_QTY,'
      '      s.CL_OFFER_RETURN_DATE,'
      '      s.RETURN_DATE,'
      '      s.SALE_BRANCH_CODE,'
      '      s.MANAGER_EMPLOYEE_CODE'
      '    having'
      '      (s.SALE_DEAL_TYPE_CODE = :SALE_DEAL_TYPE_CODE) and'
      ''
      '      ( (:SRG_EMPLOYEE_CODE is null) or'
      '        (s.MANAGER_EMPLOYEE_CODE = :SRG_EMPLOYEE_CODE) ) and'
      ''
      '      ( (:REQUEST_REGISTER_BEGIN_DATE is null) or'
      
        '        (:REQUEST_REGISTER_BEGIN_DATE <= s.REQUEST_REGISTER_DATE' +
        ')'
      '      ) and'
      '      ( (:REQUEST_REGISTER_END_DATE is null) or'
      '        (s.REQUEST_REGISTER_DATE <= :REQUEST_REGISTER_END_DATE)'
      '      ) and'
      '      ( (:CL_OFFER_RECEIVE_BEGIN_DATE is null) or'
      
        '        (:CL_OFFER_RECEIVE_BEGIN_DATE <= s.CL_OFFER_RECEIVE_DATE' +
        ')'
      '      ) and'
      '      ( (:CL_OFFER_RECEIVE_END_DATE is null) or'
      '        (s.CL_OFFER_RECEIVE_DATE <= :CL_OFFER_RECEIVE_END_DATE)'
      '      ) and'
      '      ( (:RECEIVE_BEGIN_DATE is null) or'
      '        (:RECEIVE_BEGIN_DATE <= s.RECEIVE_DATE)'
      '      ) and'
      '      ( (:RECEIVE_END_DATE is null) or'
      '        (s.RECEIVE_DATE <= :RECEIVE_END_DATE)'
      '      ) and'
      '      ( (:REAL_RECEIVE_BEGIN_DATE is null) or'
      '        (:REAL_RECEIVE_BEGIN_DATE <= Min(ss.SHIPMENT_DATE))'
      '      ) and'
      '      ( (:REAL_RECEIVE_END_DATE is null) or'
      '        (Min(ss.SHIPMENT_DATE) <= :REAL_RECEIVE_END_DATE)'
      '      ) and'
      
        '      ( (s.RECEIVE_DATE - Coalesce(Min(ss.SHIPMENT_DATE), ContextD' +
        'ate))'
      
        '        between Coalesce(To_Number(:MIN_RECEIVE_DATE_RESERVE_DAY' +
        'S), -100000000) and Coalesce(To_Number(:MAX_RECEIVE_DATE_RESERVE' +
        '_DAYS), 100000000)'
      '      ) and'
      '      ( ( select'
      '            p.PRIORITY_NO'
      '          from'
      '            CLIENT_COMPANIES cc,'
      '            PRIORITIES p'
      '          where'
      '            (cc.CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '            (p.PRIORITY_CODE = cc.PRIORITY_CODE)'
      '        ) between'
      '          Coalesce('
      '            ( select'
      '                Max(p.PRIORITY_NO)'
      '              from'
      '                PRIORITIES p'
      '              where'
      '                (p.PRIORITY_CODE = :CLIENT_BEGIN_PRIORITY_CODE)'
      '            ), 0) and'
      '          Coalesce('
      '            ( select'
      '                Max(p.PRIORITY_NO)'
      '              from'
      '                PRIORITIES p'
      '              where'
      '                (p.PRIORITY_CODE = :CLIENT_END_PRIORITY_CODE)'
      '            ), 1000000)'
      '      )'
      '  ) s'
      ''
      'where'
      '  (srg.REQUEST_BRANCH_CODE = srgd.DEPT_CODE) and'
      '  (srg.SALE_ORDER_TYPE_CODE = sot.SALE_ORDER_TYPE_CODE) and'
      '  (srg.REQUEST_BRANCH_CODE = sp.REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = sp.REQUEST_NO) and'
      '  (s.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      '  (s.SALE_TYPE_CODE = st.SALE_TYPE_CODE(+)) and'
      '  (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = s.REQUEST_NO) and'
      ''
      '  (s.CLIENT_COMPANY_CODE = co.COMPANY_CODE(+)) and'
      '  (s.RECEIVE_PLACE_OFFICE_CODE = co.OFFICE_CODE(+)) and'
      ''
      '  (srg.SALE_ORDER_TYPE_CODE in (6, 7)) and'
      '  ( (:REQUEST_BRANCH_CODE is null) or'
      '    (:REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) ) and'
      '  ( (:REQUEST_NO is null) or'
      '    (:REQUEST_NO = srg.REQUEST_NO) ) and'
      '  ( (:CLIENT_COMPANY_CODE is null) or'
      '    (:CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE) ) and'
      '  ( (:SALE_GROUP_OBJECT_BRANCH_CODE is null) or'
      
        '    (:SALE_GROUP_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJECT_BRAN' +
        'CH_CODE) ) and'
      '  ( (:SALE_GROUP_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        SALE_GROUPS sg'
      '      where'
      
        '        (sg.SALE_GROUP_OBJECT_BRANCH_CODE = srg.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '        (sg.SALE_GROUP_OBJECT_CODE = srg.SALE_GROUP_OBJECT_CODE)' +
        ' and'
      '        (:SALE_GROUP_CODE = sg.SALE_GROUP_CODE)'
      '    )'
      '  ) and'
      '  ( (:MEDIATOR_COMPANY_CODE is null) or'
      '    (srg.MEDIATOR_COMPANY_CODE = :MEDIATOR_COMPANY_CODE)'
      '  )'
      ''
      'group by'
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO,'
      '  srgd.CUSTOM_CODE,'
      '  srg.SALE_ORDER_TYPE_CODE,'
      '  sot.SALE_ORDER_TYPE_ABBREV,'
      '  srg.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  srg.SALE_GROUP_OBJECT_CODE,'
      '  st.SALE_TYPE_ABBREV,'
      '  c.SHORT_NAME,'
      '  srg.DOC_BRANCH_CODE,'
      '  srg.DOC_CODE,'
      '  c.DOC_BRANCH_CODE,'
      '  c.DOC_CODE,'
      '  srg.FINISH_EMPLOYEE_CODE,'
      '  srg.ANNUL_EMPLOYEE_CODE,'
      '  srg.CLIENT_REQUEST_GROUP_NO,'
      '  co.OFFICE_NAME'
      '  '
      'having'
      '  ('
      '    Nvl2(srg.ANNUL_EMPLOYEE_CODE,'
      '      11,'
      '      Nvl2(srg.FINISH_EMPLOYEE_CODE,'
      '        10,'
      '        case'
      
        '          when (Count(Nvl2(s.FINISH_EMPLOYEE_CODE, null, Nvl2(s.' +
        'ANNUL_EMPLOYEE_CODE, null, 1))) = 0) then'
      '            1'
      '          when ( srg.FINISH_EMPLOYEE_CODE is null ) and'
      
        '               ( Count(Nvl2(s.ANNUL_EMPLOYEE_CODE, null, 1)) = C' +
        'ount(Nvl2(s.ANNUL_EMPLOYEE_CODE, null, s.FINISH_EMPLOYEE_CODE)) ' +
        ') then'
      
        '            Min(Nvl2(s.FINISH_EMPLOYEE_CODE, null, Nvl2(s.ANNUL_' +
        'EMPLOYEE_CODE, null, s.STATUS_CODE)))'
      '          else'
      '            Min(s.STATUS_CODE)'
      '        end'
      '      )'
      '    )'
      '    between'
      '    :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  )'
      ''
      'order by'
      '  srgd.CUSTOM_CODE,'
      '  srg.REQUEST_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[srg]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
        Size = 4000
      end>
    TableName = 'SALE_REQUEST_GROUPS_FOR_EDIT'
    Left = 480
    Top = 64
    object qryGroupSalesMasterREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qryGroupSalesMasterREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qryGroupSalesMasterSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object qryGroupSalesMasterSALE_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object qryGroupSalesMasterCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
      FieldValueType = fvtInteger
    end
    object qryGroupSalesMasterCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object qryGroupSalesMasterREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qryGroupSalesMasterREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qryGroupSalesMasterCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object qryGroupSalesMasterRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qryGroupSalesMasterSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qryGroupSalesMasterIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object qryGroupSalesMasterIS_DONE: TAbmesFloatField
      FieldName = 'IS_DONE'
    end
    object qryGroupSalesMasterANNUL_COEF: TAbmesFloatField
      FieldName = 'ANNUL_COEF'
    end
    object qryGroupSalesMasterSALE_ORDER_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_ORDER_IDENTIFICATION'
      Size = 81
    end
    object qryGroupSalesMasterSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryGroupSalesMasterSALE_GROUP_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_GROUP_IDENTIFICATION'
      Size = 81
    end
    object qryGroupSalesMasterDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryGroupSalesMasterDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryGroupSalesMasterCL_OFFER_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_TOTAL_PRICE'
    end
    object qryGroupSalesMasterTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryGroupSalesMasterREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
    end
    object qryGroupSalesMasterTOTAL_PRICE_DIFF: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DIFF'
    end
    object qryGroupSalesMasterCLIENT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_NO'
    end
    object qryGroupSalesMasterCLIENT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_COLOR'
    end
    object qryGroupSalesMasterCLIENT_PRIORITY_BCKG_COLOR: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_BCKG_COLOR'
    end
    object qryGroupSalesMasterRECEIVE_DATE_RESERVE_DAYS: TAbmesFloatField
      FieldName = 'RECEIVE_DATE_RESERVE_DAYS'
    end
    object qryGroupSalesMasterHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryGroupSalesMasterCLIENT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_BRANCH_CODE'
    end
    object qryGroupSalesMasterCLIENT_DOC_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_CODE'
    end
    object qryGroupSalesMasterCLIENT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'CLIENT_HAS_DOC_ITEMS'
    end
    object qryGroupSalesMasterCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RETURN_DATE'
    end
    object qryGroupSalesMasterRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qryGroupSalesMasterIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object qryGroupSalesMasterSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qryGroupSalesMasterCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object qryGroupSalesMasterSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object qryGroupSalesMasterSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
    end
    object qryGroupSalesMasterIS_STORE_REQUEST_OTCH: TAbmesFloatField
      FieldName = 'IS_STORE_REQUEST_OTCH'
    end
    object qryGroupSalesMasterINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
    end
    object qryGroupSalesMasterRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
  end
  object qryGroupSalesDetail: TAbmesSQLQuery
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
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      
        '  Nvl2(s.SALE_BRANCH_CODE, (d.CUSTOM_CODE || '#39'/'#39' || SALE_NO), '#39#39 +
        ') as SALE_IDENTIFICATION,'
      '  st.SALE_TYPE_ABBREV,'
      '  s.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  s.CLIENT_REQUEST_NO,'
      '  cp.NAME as COMPANY_PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.MEASURE_CODE)'
      '  ) as PRODUCT_MEASURE_ABBREV,'
      ''
      '  ( select'
      '      m.MEASURE_ABBREV'
      '    from'
      '      MEASURES m'
      '    where'
      '      (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '  ) as PRODUCT_ACCOUNT_MEASURE_ABBREV,'
      ''
      '  s.CL_OFFER_QUANTITY,'
      '  s.QUANTITY,'
      '  Decode(s.SALE_DEAL_TYPE_CODE,'
      '         1, Sum(ss.QUANTITY),'
      '         2, Nvl2(Sum(ss.LEASE_DATE_UNIT_QTY), s.QUANTITY, null)'
      '  ) as SHIPPED_QUANTITY,'
      ''
      '  Sum('
      '    ( select'
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
      '        )'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as QUANTITY_TAKEN_FROM_STORE,'
      ''
      '  Decode(s.SALE_DEAL_TYPE_CODE,'
      '         1, Coalesce(Sum(ss.QUANTITY), 0) - s.QUANTITY'
      '  ) as QUANTITY_DIFF,'
      ''
      
        '  (s.CL_OFFER_QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACC_CL_OFFER' +
        '_QUANTITY,'
      '  (s.QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACC_QUANTITY,'
      ''
      '  ( Decode(s.SALE_DEAL_TYPE_CODE,'
      '           1, Sum(ss.QUANTITY),'
      
        '           2, Nvl2(Sum(ss.LEASE_DATE_UNIT_QTY), s.QUANTITY, null' +
        ')'
      '    ) *'
      '    p.ACCOUNT_MEASURE_COEF'
      '  ) as ACC_SHIPPED_QUANTITY,'
      ''
      '  Sum('
      '    ( select'
      '        Sum('
      '          sd.ACCOUNT_QUANTITY -'
      '          ( select'
      
        '              Coalesce(Sum(sd2.ACCOUNT_QUANTITY), 0) as RETURNED' +
        '_QUANTITY'
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
      '        )'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as ACC_QUANTITY_TAKEN_FROM_STORE,'
      ''
      '  Decode(s.SALE_DEAL_TYPE_CODE,'
      
        '         1, (Coalesce(Sum(ss.QUANTITY), 0) - s.QUANTITY) * p.ACC' +
        'OUNT_MEASURE_COEF'
      '  ) as ACC_QUANTITY_DIFF,'
      ''
      '  ( s.CL_OFFER_QUANTITY *'
      '    s.SINGLE_PRICE *'
      '    Decode(s.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, s.CL_OFFER_LEASE_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '        (cr.RATE_DATE = Least(s.CL_OFFER_RECEIVE_DATE, ContextDa' +
        'te))'
      '    )'
      '  ) as CL_OFFER_TOTAL_PRICE,'
      ''
      '  ( s.QUANTITY *'
      '    s.SINGLE_PRICE *'
      '    Decode(s.SALE_DEAL_TYPE_CODE,'
      '           1, 1,'
      '           2, s.LEASE_DATE_UNIT_QTY'
      '    ) *'
      '    ( select'
      '        cr.FIXING'
      '      from'
      '        CURRENCY_RATES cr'
      '      where'
      '        (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '        (cr.RATE_DATE = Least(s.RECEIVE_DATE, ContextDate))'
      '    )'
      '  ) as TOTAL_PRICE,'
      ''
      '  Sum('
      '    ( Decode(s.SALE_DEAL_TYPE_CODE,'
      '             1, ss.QUANTITY,'
      '             2, ss.LEASE_DATE_UNIT_QTY * s.QUANTITY'
      '      ) *'
      '      s.SINGLE_PRICE *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = Least(ss.SHIPMENT_DATE, ContextDate))'
      '      )'
      '    )'
      '  ) as REAL_TOTAL_PRICE,'
      ''
      '  Sum('
      '    ( select'
      '        Sum('
      '          s.SINGLE_PRICE *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(sd.STORE_DEAL_DATE, ContextDat' +
        'e))'
      '          ) *'
      '          ( sd.QUANTITY -'
      '            ( select'
      
        '                Coalesce(Sum(sd2.QUANTITY), 0) as RETURNED_QUANT' +
        'ITY'
      '              from'
      '                STORE_DEALS sd2'
      '              where'
      
        '                (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_D' +
        'EAL_OBJECT_BRANCH_CODE) and'
      
        '                (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJ' +
        'ECT_CODE) and'
      '                (sd2.BND_PROCESS_CODE = 50) and'
      '                (sd2.IN_OUT = 1) and'
      '                (sd2.STORNO_EMPLOYEE_CODE is null)'
      '            )'
      '          )'
      '        )'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ss.SHIPMENT_OBJECT_' +
        'BRANCH_CODE) and'
      
        '        (sd.BND_PROCESS_OBJECT_CODE = ss.SHIPMENT_OBJECT_CODE) a' +
        'nd'
      '        (sd.IN_OUT = -1) and'
      '        (sd.STORNO_EMPLOYEE_CODE is null)'
      '    )'
      '  ) as TAKEN_FROM_STORE_PRICE,'
      ''
      '  ( Coalesce('
      '      Sum('
      '        ( Decode(s.SALE_DEAL_TYPE_CODE,'
      '                 1, ss.QUANTITY,'
      '                 2, ss.LEASE_DATE_UNIT_QTY * s.QUANTITY'
      '          ) *'
      '          s.SINGLE_PRICE *'
      '          ( select'
      '              cr.FIXING'
      '            from'
      '              CURRENCY_RATES cr'
      '            where'
      '              (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      
        '              (cr.RATE_DATE = Least(ss.SHIPMENT_DATE, ContextDat' +
        'e))'
      '          )'
      '        )'
      '      ),'
      '      0'
      '    ) -'
      '    Coalesce('
      '      ( s.QUANTITY *'
      '        s.SINGLE_PRICE *'
      '        Decode(s.SALE_DEAL_TYPE_CODE,'
      '               1, 1,'
      '               2, s.LEASE_DATE_UNIT_QTY'
      '        ) *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      '            (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '            (cr.RATE_DATE = s.RECEIVE_DATE)'
      '        )'
      '      ),'
      '      0'
      '    )'
      '  ) as TOTAL_PRICE_DIFF,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      ''
      '  s.DOC_BRANCH_CODE as DOC_BRANCH_CODE,'
      '  s.DOC_CODE as DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as HAS_DOC_ITEMS,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      ''
      '  s.CL_OFFER_LEASE_DATE_UNIT_QTY,'
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = s.CL_OFFER_LEASE_DATE_UNIT_CODE)'
      '  ) as CL_OFFER_LEASE_DATE_UNIT_NAME,'
      
        '  (s.CL_OFFER_QUANTITY * s.CL_OFFER_LEASE_DATE_UNIT_QTY) as CL_O' +
        'FFER_LEASE_RESOURCE_QTY,'
      
        '  (s.CL_OFFER_QUANTITY * s.CL_OFFER_LEASE_DATE_UNIT_QTY * p.ACCO' +
        'UNT_MEASURE_COEF) as CL_OFFER_LEASE_RESOURCE_A_QTY,'
      ''
      '  s.LEASE_DATE_UNIT_QTY,'
      '  ( select'
      '      tdu.THE_DATE_UNIT_NAME'
      '    from'
      '      THE_DATE_UNITS tdu'
      '    where'
      '      (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '  ) as LEASE_DATE_UNIT_NAME,'
      '  (s.QUANTITY * s.LEASE_DATE_UNIT_QTY) as LEASE_RESOURCE_QTY,'
      
        '  (s.QUANTITY * s.LEASE_DATE_UNIT_QTY * p.ACCOUNT_MEASURE_COEF) ' +
        'as LEASE_RESOURCE_ACC_QTY,'
      ''
      '  Sum(ss.LEASE_DATE_UNIT_QTY) as REAL_LEASE_DATE_UNIT_QTY,'
      '  Nvl2('
      '    Sum(ss.LEASE_DATE_UNIT_QTY),'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '    ),'
      '    null'
      '  ) as REAL_LEASE_DATE_UNIT_NAME,'
      
        '  (s.QUANTITY * Sum(ss.LEASE_DATE_UNIT_QTY)) as REAL_LEASE_RESOU' +
        'RCE_QTY,'
      
        '  (s.QUANTITY * Sum(ss.LEASE_DATE_UNIT_QTY) * p.ACCOUNT_MEASURE_' +
        'COEF) as REAL_LEASE_RESOURCE_ACC_QTY,'
      ''
      
        '  (s.QUANTITY * (Coalesce(Sum(ss.LEASE_DATE_UNIT_QTY), 0) - s.LE' +
        'ASE_DATE_UNIT_QTY)) as LEASE_RESOURCE_QTY_DIFF,'
      
        '  (s.QUANTITY * (Coalesce(Sum(ss.LEASE_DATE_UNIT_QTY), 0) - s.LE' +
        'ASE_DATE_UNIT_QTY) * p.ACCOUNT_MEASURE_COEF) as LEASE_RESOURCE_A' +
        'CC_QTY_DIFF'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p,'
      '  COMPANY_PRODUCTS cp,'
      '  SALE_TYPES st,'
      '  DEPTS d,'
      '  SALE_SHIPMENTS ss,'
      '  SECONDARY_CURRENCY_RATES scr1,'
      '  TODAY_SECONDARY_CURRENCY_RATES scr2'
      ''
      'where'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '  (s.CLIENT_COMPANY_CODE = cp.COMPANY_CODE(+)) and'
      '  (s.PRODUCT_CODE = cp.PRODUCT_CODE(+)) and'
      '  (s.SALE_TYPE_CODE = st.SALE_TYPE_CODE(+)) and'
      '  (s.SALE_BRANCH_CODE = d.DEPT_CODE(+)) and'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ss.SALE_OBJECT_BRANCH_CODE(+)) an' +
        'd'
      '  (s.SALE_OBJECT_CODE = ss.SALE_OBJECT_CODE(+)) and'
      '  (ss.INVOICE_CURRENCY_CODE = scr1.CURRENCY_CODE(+)) and'
      '  (ss.INVOICE_DATE = scr1.RATE_DATE(+)) and'
      '  (s.CURRENCY_CODE = scr2.CURRENCY_CODE(+)) and'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO)'
      ''
      'group by'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      '  s.SALE_BRANCH_CODE,'
      '  d.CUSTOM_CODE,'
      '  SALE_NO,'
      '  st.SALE_TYPE_ABBREV,'
      '  s.PRODUCT_CODE,'
      '  p.NAME,'
      '  s.CLIENT_REQUEST_NO,'
      '  cp.NAME,'
      '  p.CUSTOM_CODE,'
      '  s.CL_OFFER_QUANTITY,'
      '  s.QUANTITY,'
      '  s.ANNUL_EMPLOYEE_CODE,'
      '  p.MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF,'
      '  s.SINGLE_PRICE,'
      '  s.CURRENCY_CODE,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      '  s.RECEIVE_DATE,'
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  p.DOC_BRANCH_CODE,'
      '  p.DOC_CODE,'
      '  s.SALE_DEAL_TYPE_CODE,'
      '  s.CL_OFFER_LEASE_DATE_UNIT_QTY,'
      '  s.LEASE_DATE_UNIT_QTY,'
      '  s.CL_OFFER_LEASE_DATE_UNIT_CODE,'
      '  s.LEASE_DATE_UNIT_CODE'
      '  '
      'order by'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s]'
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
    Left = 480
    Top = 168
    object qryGroupSalesDetailREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qryGroupSalesDetailREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qryGroupSalesDetailREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FieldValueType = fvtInteger
    end
    object qryGroupSalesDetailSALE_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFICATION'
      Size = 81
    end
    object qryGroupSalesDetailSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object qryGroupSalesDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      FieldValueType = fvtInteger
    end
    object qryGroupSalesDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      FieldValueType = fvtInteger
    end
    object qryGroupSalesDetailPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object qryGroupSalesDetailCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
    end
    object qryGroupSalesDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qryGroupSalesDetailIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object qryGroupSalesDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qryGroupSalesDetailCOMPANY_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAME'
      Size = 50
    end
    object qryGroupSalesDetailCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qryGroupSalesDetailPRODUCT_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qryGroupSalesDetailSHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'SHIPPED_QUANTITY'
    end
    object qryGroupSalesDetailQUANTITY_DIFF: TAbmesFloatField
      FieldName = 'QUANTITY_DIFF'
    end
    object qryGroupSalesDetailACC_CL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_CL_OFFER_QUANTITY'
    end
    object qryGroupSalesDetailACC_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_QUANTITY'
    end
    object qryGroupSalesDetailACC_SHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_SHIPPED_QUANTITY'
    end
    object qryGroupSalesDetailACC_QUANTITY_DIFF: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_DIFF'
    end
    object qryGroupSalesDetailCL_OFFER_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_TOTAL_PRICE'
    end
    object qryGroupSalesDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qryGroupSalesDetailREAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_TOTAL_PRICE'
    end
    object qryGroupSalesDetailTOTAL_PRICE_DIFF: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DIFF'
    end
    object qryGroupSalesDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qryGroupSalesDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qryGroupSalesDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object qryGroupSalesDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qryGroupSalesDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qryGroupSalesDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
    end
    object qryGroupSalesDetailCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object qryGroupSalesDetailCL_OFFER_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryGroupSalesDetailCL_OFFER_LEASE_RESOURCE_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_RESOURCE_QTY'
    end
    object qryGroupSalesDetailCL_OFFER_LEASE_RESOURCE_A_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_RESOURCE_A_QTY'
    end
    object qryGroupSalesDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qryGroupSalesDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryGroupSalesDetailLEASE_RESOURCE_QTY: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_QTY'
    end
    object qryGroupSalesDetailLEASE_RESOURCE_ACC_QTY: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_ACC_QTY'
    end
    object qryGroupSalesDetailREAL_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_DATE_UNIT_QTY'
    end
    object qryGroupSalesDetailREAL_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'REAL_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qryGroupSalesDetailREAL_LEASE_RESOURCE_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_RESOURCE_QTY'
    end
    object qryGroupSalesDetailREAL_LEASE_RESOURCE_ACC_QTY: TAbmesFloatField
      FieldName = 'REAL_LEASE_RESOURCE_ACC_QTY'
    end
    object qryGroupSalesDetailLEASE_RESOURCE_QTY_DIFF: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_QTY_DIFF'
    end
    object qryGroupSalesDetailLEASE_RESOURCE_ACC_QTY_DIFF: TAbmesFloatField
      FieldName = 'LEASE_RESOURCE_ACC_QTY_DIFF'
    end
    object qryGroupSalesDetailQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField
      FieldName = 'QUANTITY_TAKEN_FROM_STORE'
    end
    object qryGroupSalesDetailACC_QUANTITY_TAKEN_FROM_STORE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_TAKEN_FROM_STORE'
    end
    object qryGroupSalesDetailTAKEN_FROM_STORE_PRICE: TAbmesFloatField
      FieldName = 'TAKEN_FROM_STORE_PRICE'
    end
  end
  object prvGroupSalesMaster: TDataSetProvider
    DataSet = qryGroupSalesMaster
    UpdateMode = upWhereKeyOnly
    Left = 480
    Top = 16
  end
  object prvGroupSalesDetail: TDataSetProvider
    DataSet = qryGroupSalesDetail
    Left = 480
    Top = 120
  end
  object qryExistsModelForSale: TAbmesSQLQuery
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
      '  Count(ml.ML_OBJECT_BRANCH_CODE) as EXISTS_MATERIAL_LIST'
      'from'
      '  MATERIAL_LISTS ml'
      'where'
      
        '  (ml.BND_PROCESS_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE)' +
        ' and'
      '  (ml.BND_PROCESS_OBJECT_CODE = :SALE_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 296
    object qryExistsModelForSaleEXISTS_MATERIAL_LIST: TAbmesFloatField
      FieldName = 'EXISTS_MATERIAL_LIST'
      FieldValueType = fvtBoolean
    end
  end
  object qryUpdateProductInPlannedStoreDeals: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
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
      'begin'
      '  update'
      '    PLANNED_STORE_DEALS_FOR_EDIT psd'
      '  set'
      '    PRODUCT_CODE = :PRODUCT_CODE'
      '  where'
      
        '    (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CO' +
        'DE) and'
      '    (psd.BND_PROCESS_OBJECT_CODE = :SALE_OBJECT_CODE);'
      ''
      ''
      '  for Shipment in'
      '    ('
      '      select'
      '        ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '        ss.SHIPMENT_OBJECT_CODE'
      '      from'
      '        SALE_SHIPMENTS ss'
      '      where'
      
        '        (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '        (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '      order by'
      '        ss.SALE_SHIPMENT_NO'
      '    )'
      '  loop'
      ''
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psd'
      '    set'
      '      PRODUCT_CODE = :PRODUCT_CODE'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = Shipment.SHIPMENT_OB' +
        'JECT_BRANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = Shipment.SHIPMENT_OBJECT_CO' +
        'DE);'
      ''
      '  end loop;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 488
    Top = 248
  end
  object qrySaleRequestGroup: TAbmesSQLQuery
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
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO,'
      '  srg.SALE_ORDER_TYPE_CODE,'
      '  srg.SALE_DEAL_TYPE_CODE,'
      '  srg.STREAM_TYPE_CODE,'
      '  ( select'
      '      st.STREAM_TYPE_ABBREV'
      '    from'
      '      STREAM_TYPES st'
      '    where'
      '      (st.STREAM_TYPE_CODE = srg.STREAM_TYPE_CODE)'
      '  ) as STREAM_TYPE_ABBREV,'
      '  srg.IS_ACTIVATED_BY_CLIENT,'
      '  srg.REQUEST_SEND_DATE,'
      '  srg.REQUEST_REGISTER_DATE,'
      '  srg.CLIENT_COMPANY_CODE,'
      '  srg.MEDIATOR_COMPANY_CODE,'
      '  srg.SRG_EMPLOYEE_CODE,'
      '  srg.CLIENT_REQUEST_GROUP_NO,'
      '  srg.CREATE_EMPLOYEE_CODE,'
      '  srg.CREATE_DATE,'
      '  srg.CREATE_TIME,'
      '  srg.CHANGE_EMPLOYEE_CODE,'
      '  srg.CHANGE_DATE,'
      '  srg.CHANGE_TIME,'
      '  srg.FINISH_EMPLOYEE_CODE,'
      '  srg.FINISH_DATE,'
      '  srg.FINISH_TIME,'
      '  srg.ANNUL_EMPLOYEE_CODE,'
      '  srg.ANNUL_DATE,'
      '  srg.ANNUL_TIME,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ASPECT_TYPE_CODE = 1)'
      '  ) as PROGNOSIS_SALE_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ASPECT_TYPE_CODE = 2)'
      '  ) as REALIZATION_SALE_COUNT,'
      ''
      '  srg.DOC_BRANCH_CODE,'
      '  srg.DOC_CODE,'
      '  %HAS_DOC_ITEMS[srg] as HAS_DOC_ITEMS,'
      ''
      '  case'
      '    when'
      '      (srg.ANNUL_EMPLOYEE_CODE is not null) then 11'
      ''
      '    when'
      '      (srg.FINISH_EMPLOYEE_CODE is not null) then 10'
      '      '
      '    when'
      '      ('
      '        ( select'
      '            Count(*)'
      '          from'
      '            SALES s'
      '          where'
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO) and'
      '            (s.ANNUL_EMPLOYEE_CODE is null) '
      '        ) = 0'
      '      ) then 1'
      ''
      '    else'
      '      Decode('
      '        ( select'
      '            Min('
      '              Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '                11,'
      '                Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '                  10,'
      '                  Nvl2(s.SALE_BRANCH_CODE,'
      '                    9,'
      '                    Nvl2(s.DECISION_DATE,'
      '                      8,'
      '                      Nvl2(s.OFFER_ANSWER_DATE,'
      
        '                        Decode(Sign(Coalesce(s.DECISION_PLAN_DAT' +
        'E, ContextDate) - ContextDate), -1,'
      '                          7,'
      '                          6'
      '                        ),'
      '                        Nvl2(s.OFFER_SEND_DATE,'
      
        '                          Decode(Sign(Coalesce(s.OFFER_ANSWER_PL' +
        'AN_DATE, ContextDate) - ContextDate), -1,'
      '                            5,'
      '                            4'
      '                          ),'
      '                          Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                            Decode(Sign(s.OFFER_SEND_PLAN_DATE -' +
        ' ContextDate), -1,'
      '                              3,'
      '                              2'
      '                            ),'
      '                            1'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          from'
      '            SALES s'
      '          where'
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO)'
      '        ), 10, 8,'
      '        ( select'
      '            Min('
      '              Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '                11,'
      '                Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '                  10,'
      '                  Nvl2(s.SALE_BRANCH_CODE,'
      '                    9,'
      '                    Nvl2(s.DECISION_DATE,'
      '                      8,'
      '                      Nvl2(s.OFFER_ANSWER_DATE,'
      
        '                        Decode(Sign(Coalesce(s.DECISION_PLAN_DAT' +
        'E, ContextDate) - ContextDate), -1,'
      '                          7,'
      '                          6'
      '                        ),'
      '                        Nvl2(s.OFFER_SEND_DATE,'
      
        '                          Decode(Sign(Coalesce(s.OFFER_ANSWER_PL' +
        'AN_DATE, ContextDate) - ContextDate), -1,'
      '                            5,'
      '                            4'
      '                          ),'
      '                          Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                            Decode(Sign(s.OFFER_SEND_PLAN_DATE -' +
        ' ContextDate), -1,'
      '                              3,'
      '                              2'
      '                            ),'
      '                            1'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          from'
      '            SALES s'
      '          where'
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO)'
      '        )'
      '      )'
      '  end as STATUS_CODE,'
      '  '
      '  srg.PRODUCT_CLASS_CODE,'
      '  srg.NOTES'
      ''
      'from'
      '  SALE_REQUEST_GROUPS srg'
      'where'
      '  (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = :REQUEST_NO)'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[srg]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALE_REQUEST_GROUPS_FOR_EDIT'
    AfterProviderStartTransaction = qrySaleRequestGroupAfterProviderStartTransaction
    Left = 688
    Top = 64
    object qrySaleRequestGroupREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleRequestGroupREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleRequestGroupSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qrySaleRequestGroupSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleRequestGroupREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qrySaleRequestGroupREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qrySaleRequestGroupCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleRequestGroupMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qrySaleRequestGroupSRG_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'SRG_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qrySaleRequestGroupCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qrySaleRequestGroupFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qrySaleRequestGroupFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qrySaleRequestGroupANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qrySaleRequestGroupANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qrySaleRequestGroupPROGNOSIS_SALE_COUNT: TAbmesFloatField
      FieldName = 'PROGNOSIS_SALE_COUNT'
      ProviderFlags = []
    end
    object qrySaleRequestGroupREALIZATION_SALE_COUNT: TAbmesFloatField
      FieldName = 'REALIZATION_SALE_COUNT'
      ProviderFlags = []
    end
    object qrySaleRequestGroupCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySaleRequestGroupCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySaleRequestGroupDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySaleRequestGroupDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySaleRequestGroupSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object qrySaleRequestGroupCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object qrySaleRequestGroupSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object qrySaleRequestGroupSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object qrySaleRequestGroupIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
    end
    object qrySaleRequestGroupPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qrySaleRequestGroupNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 2000
    end
  end
  object prvSaleRequestGroup: TDataSetProvider
    DataSet = qrySaleRequestGroup
    Options = [poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prvSaleRequestGroupBeforeUpdateRecord
    BeforeApplyUpdates = prvSaleRequestGroupBeforeApplyUpdates
    AfterApplyUpdates = prvSaleRequestGroupAfterApplyUpdates
    Left = 688
    Top = 16
  end
  object prvSaleRequestGroups: TDataSetProvider
    DataSet = qrySaleRequestGroups
    Left = 680
    Top = 176
  end
  object qrySaleRequestGroups: TAbmesSQLQuery
    BeforeOpen = qrySaleRequestGroupsBeforeOpen
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
        Name = 'IS_ACTIVATED_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CLIENT'
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
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
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
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
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
      end>
    SQL.Strings = (
      'select'
      '  srg.REQUEST_BRANCH_CODE,'
      '  ( select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE)'
      '  ) as REQUEST_BRANCH_ID,'
      '  srg.REQUEST_NO,'
      ''
      '  srg.SALE_DEAL_TYPE_CODE,'
      '  ( select'
      '      bdt.BORDER_REL_TYPE_CODE'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = srg.SALE_DEAL_TYPE_CODE)'
      '  ) as BORDER_REL_TYPE_CODE,'
      ''
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = srg.SALE_DEAL_TYPE_CODE)'
      '  ) as SALE_DEAL_TYPE_ABBREV,'
      ''
      '  case'
      '    when'
      '      (srg.ANNUL_EMPLOYEE_CODE is not null) then 11'
      ''
      '    when'
      '      (srg.FINISH_EMPLOYEE_CODE is not null) then 10'
      '      '
      '    when'
      '      ('
      '        ( select'
      '            Count(*)'
      '          from'
      '            SALES s'
      '          where'
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO) and'
      '            (s.ANNUL_EMPLOYEE_CODE is null) '
      '        ) = 0'
      '      ) then 1'
      ''
      '    else'
      '      Decode('
      '        ( select'
      '            Min('
      '              Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '                11,'
      '                Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '                  10,'
      '                  Nvl2(s.SALE_BRANCH_CODE,'
      '                    9,'
      '                    Nvl2(s.DECISION_DATE,'
      '                      8,'
      '                      Nvl2(s.OFFER_ANSWER_DATE,'
      
        '                        Decode(Sign(Coalesce(s.DECISION_PLAN_DAT' +
        'E, ContextDate) - ContextDate), -1,'
      '                          7,'
      '                          6'
      '                        ),'
      '                        Nvl2(s.OFFER_SEND_DATE,'
      
        '                          Decode(Sign(Coalesce(s.OFFER_ANSWER_PL' +
        'AN_DATE, ContextDate) - ContextDate), -1,'
      '                            5,'
      '                            4'
      '                          ),'
      '                          Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                            Decode(Sign(s.OFFER_SEND_PLAN_DATE -' +
        ' ContextDate), -1,'
      '                              3,'
      '                              2'
      '                            ),'
      '                            1'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          from'
      '            SALES s'
      '          where'
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO)'
      '        ), 10, 8,'
      '        ( select'
      '            Min('
      '              Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '                11,'
      '                Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '                  10,'
      '                  Nvl2(s.SALE_BRANCH_CODE,'
      '                    9,'
      '                    Nvl2(s.DECISION_DATE,'
      '                      8,'
      '                      Nvl2(s.OFFER_ANSWER_DATE,'
      
        '                        Decode(Sign(Coalesce(s.DECISION_PLAN_DAT' +
        'E, ContextDate) - ContextDate), -1,'
      '                          7,'
      '                          6'
      '                        ),'
      '                        Nvl2(s.OFFER_SEND_DATE,'
      
        '                          Decode(Sign(Coalesce(s.OFFER_ANSWER_PL' +
        'AN_DATE, ContextDate) - ContextDate), -1,'
      '                            5,'
      '                            4'
      '                          ),'
      '                          Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                            Decode(Sign(s.OFFER_SEND_PLAN_DATE -' +
        ' ContextDate), -1,'
      '                              3,'
      '                              2'
      '                            ),'
      '                            1'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            )'
      '          from'
      '            SALES s'
      '          where'
      
        '            (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) an' +
        'd'
      '            (s.REQUEST_NO = srg.REQUEST_NO)'
      '        )'
      '      )'
      '  end as SRG_STATUS_CODE,'
      ''
      '  srg.STREAM_TYPE_CODE,'
      ''
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
      '  srg.IS_ACTIVATED_BY_CLIENT,'
      ''
      '  ( select'
      
        '      (e.ABBREV || '#39'          '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST' +
        '_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = srg.SRG_EMPLOYEE_CODE)'
      '  ) as SRG_EMPLOYEE_FULL_NAME,'
      ''
      
        '  %COMPANY_BASE_ROLE_CODE[srg.CLIENT_COMPANY_CODE] as BASE_ROLE_' +
        'CODE,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
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
      '      (csc.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
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
      '  srg.CLIENT_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) '
      '  ) as CLIENT_COMPANY_NAME,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        c.PRIORITY_CODE'
      '      from'
      '        VENDOR_COMPANIES c'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '    ),'
      '    ( select'
      '        c.PRIORITY_CODE'
      '      from'
      '        CLIENT_COMPANIES c'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '    )'
      '  ) as CLIENT_PRIORITY_CODE,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        VENDOR_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    ),'
      '    ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        CLIENT_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    )'
      '  ) as PRIORITY_NO,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        p.PRIORITY_COLOR'
      '      from'
      '        VENDOR_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    ),'
      '    ( select'
      '        p.PRIORITY_COLOR'
      '      from'
      '        CLIENT_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    )'
      '  ) as PRIORITY_COLOR,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        p.PRIORITY_BACKGROUND_COLOR'
      '      from'
      '        VENDOR_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    ),'
      '    ( select'
      '        p.PRIORITY_BACKGROUND_COLOR'
      '      from'
      '        CLIENT_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    )'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  Nvl2(srg.MEDIATOR_COMPANY_CODE, 1, 0) as HAS_MEDIATOR,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ASPECT_TYPE_CODE = 1)'
      '  ) as PROGNOSIS_SALE_COUNT,'
      ''
      '  ( select'
      '      Count(*)'
      '    from'
      '      SALES s'
      '    where'
      '      (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (s.REQUEST_NO = srg.REQUEST_NO) and'
      '      (s.ASPECT_TYPE_CODE = 2)'
      '  ) as REALIZATION_SALE_COUNT,'
      ''
      '  srg.REQUEST_SEND_DATE,'
      '  srg.REQUEST_REGISTER_DATE,'
      ''
      '  srg.DOC_BRANCH_CODE,'
      '  srg.DOC_CODE,'
      '  %HAS_DOC_ITEMS[srg] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_HAS_DOCUMENTATION,'
      ''
      '  srg.CLIENT_REQUEST_GROUP_NO'
      ''
      'from'
      '  SALE_REQUEST_GROUPS srg'
      ''
      'where'
      '  (srg.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      '  '
      '  ( case'
      '      when'
      '        (srg.ANNUL_EMPLOYEE_CODE is not null) then 11'
      ''
      '      when'
      '        (srg.FINISH_EMPLOYEE_CODE is not null) then 10'
      '      '
      '      when'
      '        ('
      '          ( select'
      '              Count(*)'
      '            from'
      '              SALES s'
      '            where'
      
        '              (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) ' +
        'and'
      '              (s.REQUEST_NO = srg.REQUEST_NO) and'
      '              (s.ANNUL_EMPLOYEE_CODE is null) '
      '          ) = 0'
      '        ) then 1'
      ''
      '      else'
      '        Decode('
      '          ( select'
      '              Min('
      '                Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '                  11,'
      '                  Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '                    10,'
      '                    Nvl2(s.SALE_BRANCH_CODE,'
      '                      9,'
      '                      Nvl2(s.DECISION_DATE,'
      '                        8,'
      '                        Nvl2(s.OFFER_ANSWER_DATE,'
      
        '                          Decode(Sign(Coalesce(s.DECISION_PLAN_D' +
        'ATE, ContextDate) - ContextDate), -1,'
      '                            7,'
      '                            6'
      '                          ),'
      '                          Nvl2(s.OFFER_SEND_DATE,'
      
        '                            Decode(Sign(Coalesce(s.OFFER_ANSWER_' +
        'PLAN_DATE, ContextDate) - ContextDate), -1,'
      '                              5,'
      '                              4'
      '                            ),'
      '                            Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                              Decode(Sign(s.OFFER_SEND_PLAN_DATE' +
        ' - ContextDate), -1,'
      '                                3,'
      '                                2'
      '                              ),'
      '                              1'
      '                            )'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            from'
      '              SALES s'
      '            where'
      
        '              (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) ' +
        'and'
      '              (s.REQUEST_NO = srg.REQUEST_NO)'
      '          ), 10, 8,'
      '          ( select'
      '              Min('
      '                Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '                  11,'
      '                  Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '                    10,'
      '                    Nvl2(s.SALE_BRANCH_CODE,'
      '                      9,'
      '                      Nvl2(s.DECISION_DATE,'
      '                        8,'
      '                        Nvl2(s.OFFER_ANSWER_DATE,'
      
        '                          Decode(Sign(Coalesce(s.DECISION_PLAN_D' +
        'ATE, ContextDate) - ContextDate), -1,'
      '                            7,'
      '                            6'
      '                          ),'
      '                          Nvl2(s.OFFER_SEND_DATE,'
      
        '                            Decode(Sign(Coalesce(s.OFFER_ANSWER_' +
        'PLAN_DATE, ContextDate) - ContextDate), -1,'
      '                              5,'
      '                              4'
      '                            ),'
      '                            Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                              Decode(Sign(s.OFFER_SEND_PLAN_DATE' +
        ' - ContextDate), -1,'
      '                                3,'
      '                                2'
      '                              ),'
      '                              1'
      '                            )'
      '                          )'
      '                        )'
      '                      )'
      '                    )'
      '                  )'
      '                )'
      '              )'
      '            from'
      '              SALES s'
      '            where'
      
        '              (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) ' +
        'and'
      '              (s.REQUEST_NO = srg.REQUEST_NO)'
      '          )'
      '        )'
      '    end'
      '    between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:SALE_DEAL_TYPE_CODE is null) or'
      '    (srg.SALE_DEAL_TYPE_CODE = :SALE_DEAL_TYPE_CODE) ) and'
      ''
      '  ( (:REQUEST_BRANCH_CODE is null) or'
      '    (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) ) and'
      ''
      '  ( (:REQUEST_NO is null) or'
      '    (srg.REQUEST_NO = :REQUEST_NO) ) and'
      ''
      '  ( (:IS_ACTIVATED_BY_CLIENT is null) or'
      '    (srg.IS_ACTIVATED_BY_CLIENT = :IS_ACTIVATED_BY_CLIENT) ) and'
      ''
      '  ( (:LEASE_DATE_UNIT_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        SALES s'
      '      where'
      '        (s.REQUEST_BRANCH_CODE = srg.REQUEST_BRANCH_CODE) and'
      '        (s.REQUEST_NO = srg.REQUEST_NO) and'
      ''
      '        ( (:LEASE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE) or'
      
        '          (:LEASE_DATE_UNIT_CODE = s.CL_OFFER_LEASE_DATE_UNIT_CO' +
        'DE) or'
      
        '          (:LEASE_DATE_UNIT_CODE = s.OUR_OFFER_LEASE_DATE_UNIT_C' +
        'ODE) )'
      '    )'
      '  ) and'
      ''
      '  ( (:BEGIN_REQUEST_SEND_DATE is null) or'
      '    (srg.REQUEST_SEND_DATE >= :BEGIN_REQUEST_SEND_DATE) ) and'
      ''
      '  ( (:END_REQUEST_SEND_DATE is null) or'
      '    (srg.REQUEST_SEND_DATE <= :END_REQUEST_SEND_DATE) ) and'
      ''
      '  ( (:BEGIN_REQUEST_REGISTER_DATE is null) or'
      
        '    (srg.REQUEST_REGISTER_DATE >= :BEGIN_REQUEST_REGISTER_DATE) ' +
        ') and'
      ''
      '  ( (:END_REQUEST_REGISTER_DATE is null) or'
      
        '    (srg.REQUEST_REGISTER_DATE <= :END_REQUEST_REGISTER_DATE) ) ' +
        'and'
      ''
      '  ( (:CLIENT_COMPANY_CODE is null) or'
      '    (srg.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) ) and'
      ''
      '  (exists('
      '    select'
      '      1'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      ''
      '      ( (:COUNTRY_CODE is null) or'
      '        (c.COUNTRY_CODE = :COUNTRY_CODE) ) and'
      ''
      '      ( Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '            ( select'
      '                Sign(Count(*))'
      '              from'
      '                VENDOR_COMPANIES cc,'
      '                PRIORITIES p,'
      '                PRIORITIES bp,'
      '                PRIORITIES ep'
      '              where'
      '                (cc.VENDOR_COMPANY_CODE = c.COMPANY_CODE) and'
      '                (p.PRIORITY_CODE = cc.PRIORITY_CODE) and'
      '                (bp.PRIORITY_CODE = :BEGIN_PRIORITY_CODE) and'
      '                (ep.PRIORITY_CODE = :END_PRIORITY_CODE) and'
      
        '                (p.PRIORITY_NO between bp.PRIORITY_NO and ep.PRI' +
        'ORITY_NO)'
      '            ),'
      '            ( select'
      '                Sign(Count(*))'
      '              from'
      '                CLIENT_COMPANIES cc,'
      '                PRIORITIES p,'
      '                PRIORITIES bp,'
      '                PRIORITIES ep'
      '              where'
      '                (cc.CLIENT_COMPANY_CODE = c.COMPANY_CODE) and'
      '                (p.PRIORITY_CODE = cc.PRIORITY_CODE) and'
      '                (bp.PRIORITY_CODE = :BEGIN_PRIORITY_CODE) and'
      '                (ep.PRIORITY_CODE = :END_PRIORITY_CODE) and'
      
        '                (p.PRIORITY_NO between bp.PRIORITY_NO and ep.PRI' +
        'ORITY_NO)'
      '            )'
      '        )'
      '        ='
      '        1'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:HAS_MEDIATOR_CODE = 0) or'
      '    ( (:HAS_MEDIATOR_CODE = 1) and'
      '      (srg.MEDIATOR_COMPANY_CODE is not null)'
      '    ) or'
      '    ( (:HAS_MEDIATOR_CODE = 2) and'
      '      (srg.MEDIATOR_COMPANY_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( (:MEDIATOR_COMPANY_CODE is null) or'
      '    (srg.MEDIATOR_COMPANY_CODE = :MEDIATOR_COMPANY_CODE) ) and'
      ''
      '  ( (:SRG_EMPLOYEE_CODE is null) or'
      '    (srg.SRG_EMPLOYEE_CODE = :SRG_EMPLOYEE_CODE) ) and'
      ''
      '  ( (:STREAM_TYPE_CODE is null) or'
      '    (srg.STREAM_TYPE_CODE = :STREAM_TYPE_CODE) )'
      ''
      ''
      'order by'
      '  REQUEST_BRANCH_ID,'
      '  srg.REQUEST_NO'
      '')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[srg.CLIENT_COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[srg]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[c]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 224
    object qrySaleRequestGroupsREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleRequestGroupsREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleRequestGroupsSRG_STATUS_CODE: TAbmesFloatField
      FieldName = 'SRG_STATUS_CODE'
    end
    object qrySaleRequestGroupsSRG_ID: TAbmesWideStringField
      FieldName = 'SRG_ID'
      Size = 171
    end
    object qrySaleRequestGroupsSRG_EMPLOYEE_FULL_NAME: TAbmesWideStringField
      FieldName = 'SRG_EMPLOYEE_FULL_NAME'
      Size = 50
    end
    object qrySaleRequestGroupsCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qrySaleRequestGroupsCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qrySaleRequestGroupsCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object qrySaleRequestGroupsHAS_MEDIATOR: TAbmesFloatField
      FieldName = 'HAS_MEDIATOR'
    end
    object qrySaleRequestGroupsPROGNOSIS_SALE_COUNT: TAbmesFloatField
      FieldName = 'PROGNOSIS_SALE_COUNT'
    end
    object qrySaleRequestGroupsREALIZATION_SALE_COUNT: TAbmesFloatField
      FieldName = 'REALIZATION_SALE_COUNT'
    end
    object qrySaleRequestGroupsREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qrySaleRequestGroupsREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qrySaleRequestGroupsPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qrySaleRequestGroupsCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleRequestGroupsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleRequestGroupsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySaleRequestGroupsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySaleRequestGroupsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qrySaleRequestGroupsCLIENT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_BRANCH_CODE'
    end
    object qrySaleRequestGroupsCLIENT_DOC_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_CODE'
    end
    object qrySaleRequestGroupsCLIENT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'CLIENT_HAS_DOCUMENTATION'
    end
    object qrySaleRequestGroupsSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleRequestGroupsPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qrySaleRequestGroupsPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qrySaleRequestGroupsCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object qrySaleRequestGroupsREQUEST_BRANCH_ID: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_ID'
    end
    object qrySaleRequestGroupsCLIENT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_CODE'
    end
    object qrySaleRequestGroupsSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object qrySaleRequestGroupsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object qrySaleRequestGroupsIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
    end
    object qrySaleRequestGroupsBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
  end
  object qrySaleRequestGroupsDetail: TAbmesSQLQuery
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
      '  s.SALE_OBJECT_CODE,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '    11,'
      '    Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '      10,'
      '      Nvl2(s.SALE_BRANCH_CODE,'
      '        9,'
      '        Nvl2(s.DECISION_DATE,'
      '          8,'
      '          Nvl2(s.OFFER_ANSWER_DATE,'
      
        '            Decode(Sign(Coalesce(s.DECISION_PLAN_DATE, ContextDa' +
        'te) - ContextDate), -1,'
      '              7,'
      '              6'
      '            ),'
      '            Nvl2(s.OFFER_SEND_DATE,'
      
        '              Decode(Sign(Coalesce(s.OFFER_ANSWER_PLAN_DATE, Con' +
        'textDate) - ContextDate), -1,'
      '                5,'
      '                4'
      '              ),'
      '              Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                Decode(Sign(s.OFFER_SEND_PLAN_DATE - ContextDate' +
        '), -1,'
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
      '  s.ASPECT_TYPE_CODE,'
      '  ( select'
      '      aty.ASPECT_TYPE_ABBREV'
      '    from'
      '      ASPECT_TYPES aty'
      '    where'
      '      (aty.ASPECT_TYPE_CODE = s.ASPECT_TYPE_CODE)'
      '  ) as ASPECT_TYPE_ABBREV,'
      ''
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || s.REQUEST_NO || '#39'/'#39' || s.REQUEST_L' +
        'INE_NO || '#39'/'#39' || st.STREAM_TYPE_ABBREV'
      '    from'
      '      SALE_REQUEST_GROUPS srg,'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE) and'
      '      (srg.REQUEST_NO = s.REQUEST_NO) and'
      '      (d.DEPT_CODE = srg.REQUEST_BRANCH_CODE) and'
      '      (st.STREAM_TYPE_CODE = srg.STREAM_TYPE_CODE)'
      '  ) as SALE_ORDER_ID,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = s.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      ''
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      '             Decode(Sign(Count(*)), 0, 1, 3)'
      '           from'
      '             CONCRETE_PRODUCTS cp,'
      '             DEFINITE_PRODUCTS dp'
      '           where'
      '             (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.COMMON_PRODUCT_CODE is not null)'
      '         )'
      '  ) as COMMON_STATUS_CODE,'
      '  '
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      '  Nvl2(s.FINISH_EMPLOYEE_CODE, 1, 0) as IS_FINISHED,'
      ''
      
        '  (s.DECISION_PLAN_DATE - s.REQUEST_REGISTER_DATE) as PLAN_PERIO' +
        'D_DAYS,'
      
        '  (s.DECISION_DATE - s.REQUEST_REGISTER_DATE) as REAL_PERIOD_DAY' +
        'S,'
      ''
      '  Decode((s.DECISION_DATE - s.REQUEST_REGISTER_DATE), 0,'
      '    To_number(null),'
      
        '    (s.DECISION_PLAN_DATE - s.DECISION_DATE) / (s.DECISION_DATE ' +
        '- s.REQUEST_REGISTER_DATE)'
      '  ) as REAL_PERIOD_DEVIATION_PERCENT,'
      ''
      
        '  (s.OFFER_SEND_PLAN_DATE - Coalesce(s.OFFER_SEND_DATE, ContextDat' +
        'e)) as OFFER_SEND_DAYS_RSV,'
      
        '  (s.OFFER_ANSWER_PLAN_DATE - Coalesce(s.OFFER_ANSWER_DATE, Cont' +
        'extDate)) as OFFER_ANSWER_DAYS_RSV,'
      
        '  (s.DECISION_PLAN_DATE - Coalesce(s.DECISION_DATE, ContextDate)' +
        ') as DECISION_DAYS_RSV,'
      '  s.DECISION_TYPE_CODE,'
      '  ( select'
      '      dt.DECISION_TYPE_ABBREV'
      '    from'
      '      DECISION_TYPES dt'
      '    where'
      '      (dt.DECISION_TYPE_CODE = s.DECISION_TYPE_CODE)'
      '  ) as DECISION_TYPE_ABBREV,'
      ''
      '  s.PROGNOSIS_BEGIN_DATE,'
      '  s.PROGNOSIS_END_DATE,'
      ''
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.QUANTITY, Coalesce(s.' +
        'CL_OFFER_QUANTITY, s.OUR_OFFER_QUANTITY)), To_number(null)) as P' +
        'ROGNOSIS_QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, p.MEASURE_CODE, To_number(null))' +
        ' as PROGNOSIS_MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
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
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(s.LEASE_DATE_UNIT_QTY, Coalesce(s.CL_OFFER_LEASE_DA' +
        'TE_UNIT_QTY, s.OUR_OFFER_LEASE_DATE_UNIT_QTY)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_QTY,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(s.LEASE_DATE_UNIT_CODE, Coalesce(s.CL_OFFER_LEASE_D' +
        'ATE_UNIT_CODE, s.OUR_OFFER_LEASE_DATE_UNIT_CODE)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      
        '        (tdu.THE_DATE_UNIT_CODE = Coalesce(s.LEASE_DATE_UNIT_COD' +
        'E, Coalesce(s.CL_OFFER_LEASE_DATE_UNIT_CODE, s.OUR_OFFER_LEASE_D' +
        'ATE_UNIT_CODE)))'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_NAME,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      s.QUANTITY * s.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        s.CL_OFFER_LEASE_DATE_UNIT_QTY * s.CL_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        s.OUR_OFFER_LEASE_DATE_UNIT_QTY * s.OUR_OFFER_LEASE_DATE' +
        '_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_TOTAL_LEASE_QUANTITY,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      s.QUANTITY * s.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        s.CL_OFFER_LEASE_DATE_UNIT_QTY * s.CL_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        s.OUR_OFFER_LEASE_DATE_UNIT_QTY * s.OUR_OFFER_LEASE_DATE' +
        '_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) * p.ACCOUNT_MEASURE_COEF as PROGNOSIS_ACC_TOTAL_LEASE_QTY,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    Nvl2(s.QUANTITY + s.LEASE_DATE_UNIT_QTY + s.LEASE_DATE_UNIT_' +
        'CODE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_LEASE_QUANTITY_AGREED,'
      ''
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.QUANTITY, Coalesce(s.' +
        'CL_OFFER_QUANTITY, s.OUR_OFFER_QUANTITY)) * p.ACCOUNT_MEASURE_CO' +
        'EF, To_number(null)) as PROGNOSIS_ACCOUNT_QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, p.ACCOUNT_MEASURE_CODE, To_numbe' +
        'r(null)) as PROGNOSIS_ACCOUNT_MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_ACC_MEASURE_ABBREV,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(s.QUANTITY, 1, 0),'
      '    To_number(null)'
      '  ) as IS_QUANTITY_AGREED,'
      ''
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.SINGLE_PRICE, Coalesc' +
        'e(s.CL_OFFER_SINGLE_PRICE, OUR_OFFER_SINGLE_PRICE)), To_number(n' +
        'ull)) as PROGNOSIS_SINGLE_PRICE,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.SINGLE_PRICE, Coalesc' +
        'e(s.CL_OFFER_SINGLE_PRICE, OUR_OFFER_SINGLE_PRICE)), To_number(n' +
        'ull)) / p.ACCOUNT_MEASURE_COEF as PROGNOSIS_ACCOUNT_SINGLE_PRICE' +
        ','
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, s.CURRENCY_CODE, To_number(null)' +
        ') as PROGNOSIS_CURRENCY_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        c.CURRENCY_ABBREV'
      '      from'
      '        CURRENCIES c'
      '      where'
      '        (c.CURRENCY_CODE = s.CURRENCY_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_CURRENCY_ABBREV,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(s.SINGLE_PRICE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_SINGLE_PRICE_AGREED,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    ( Coalesce(s.SINGLE_PRICE, s.CL_OFFER_SINGLE_PRICE, OUR_OFFE' +
        'R_SINGLE_PRICE) *'
      '      Decode('
      '        s.SALE_DEAL_TYPE_CODE,'
      '        CommonConsts.sdtLease,'
      
        '        Coalesce(s.LEASE_DATE_UNIT_QTY, s.CL_OFFER_LEASE_DATE_UN' +
        'IT_QTY, s.OUR_OFFER_LEASE_DATE_UNIT_QTY),'
      '        1'
      '      ) *'
      
        '      Coalesce(s.QUANTITY, s.CL_OFFER_QUANTITY, s.OUR_OFFER_QUAN' +
        'TITY) *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = ContextDate)'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_TOTAL_PRICE,'
      ''
      
        '  Coalesce(s.RECEIVE_DATE, s.CL_OFFER_RECEIVE_DATE) as RECEIVE_D' +
        'ATE,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, s.QUANTITY, To_number(null)) as ' +
        'QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, p.MEASURE_CODE, To_number(null))' +
        ' as MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as MEASURE_ABBREV,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, p.ACCOUNT_MEASURE_CODE, To_numbe' +
        'r(null)) as ACCOUNT_MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, (s.QUANTITY * p.ACCOUNT_MEASURE_' +
        'COEF), To_number(null)) as ACCOUNT_QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, s.SINGLE_PRICE, To_number(null))' +
        ' as SINGLE_PRICE,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, s.CURRENCY_CODE, To_number(null)' +
        ') as CURRENCY_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        c.CURRENCY_ABBREV'
      '      from'
      '        CURRENCIES c'
      '      where'
      '        (c.CURRENCY_CODE = s.CURRENCY_CODE)'
      '    ),'
      '    null'
      '  ) as CURRENCY_ABBREV,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, (s.SINGLE_PRICE / p.ACCOUNT_MEAS' +
        'URE_COEF), To_number(null)) as ACCOUNT_SINGLE_PRICE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( s.SINGLE_PRICE *'
      '      s.QUANTITY *'
      
        '      Decode(s.SALE_DEAL_TYPE_CODE, CommonConsts.sdtLease, s.LEA' +
        'SE_DATE_UNIT_QTY, 1) *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = ContextDate)'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as TOTAL_PRICE,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    s.LEASE_DATE_UNIT_CODE,'
      '    To_number(null)'
      '  ) as LEASE_DATE_UNIT_CODE,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '    ),'
      '    To_number(null)'
      '  ) as LEASE_DATE_UNIT_NAME,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    s.LEASE_DATE_UNIT_QTY,'
      '    To_number(null)'
      '  ) as LEASE_DATE_UNIT_QTY,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    (s.QUANTITY * s.LEASE_DATE_UNIT_QTY),'
      '    To_number(null)'
      '  ) as TOTAL_LEASE_QUANTITY,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      
        '    (s.QUANTITY * s.LEASE_DATE_UNIT_QTY * p.ACCOUNT_MEASURE_COEF' +
        '),'
      '    To_number(null)'
      '  ) as TOTAL_ACCOUNT_LEASE_QUANTITY,'
      ''
      '  Nvl2(s.SALE_BRANCH_CODE,'
      '    ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '    ) || '#39'/'#39' || s.SALE_NO,'
      '    '#39#39
      '  ) as SALE_ID,'
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
      '      (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_NO,'
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
      '  ) as SALE_PRIORITY_COLOR,'
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
      '  ) as SALE_PRIORITY_BACKGROUND_COLOR,'
      ''
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as HAS_DOCUMENTATION,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      ''
      '  s.CLIENT_REQUEST_NO,'
      '  ( select'
      '      cp.NAME'
      '    from'
      '      COMPANY_PRODUCTS cp'
      '    where'
      '      (s.CLIENT_COMPANY_CODE = cp.COMPANY_CODE) and'
      '      (s.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '  ) as CLIENT_PRODUCT_NAME,'
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
      '      (prpsc.PARTNER_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      '      (prpsc.PRODUCT_CODE = s.PRODUCT_CODE) and'
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
      '  ( select'
      '      co.OFFICE_NAME'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = s.RECEIVE_PLACE_OFFICE_CODE)'
      '  ) as RECEIVE_PLACE_OFFICE_NAME'
      ''
      'from'
      '  SALES s,'
      '  PRODUCTS p'
      ''
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO) and'
      '  (p.PRODUCT_CODE(+) = s.PRODUCT_CODE)'
      ''
      'order by'
      '  s.REQUEST_LINE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s]'
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
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 680
    Top = 320
    object qrySaleRequestGroupsDetailSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qrySaleRequestGroupsDetailSALE_ORDER_ID: TAbmesWideStringField
      FieldName = 'SALE_ORDER_ID'
      Size = 211
    end
    object qrySaleRequestGroupsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySaleRequestGroupsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qrySaleRequestGroupsDetailSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qrySaleRequestGroupsDetailIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qrySaleRequestGroupsDetailIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
    end
    object qrySaleRequestGroupsDetailPLAN_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PERIOD_DAYS'
    end
    object qrySaleRequestGroupsDetailREAL_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DAYS'
    end
    object qrySaleRequestGroupsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
    end
    object qrySaleRequestGroupsDetailOFFER_SEND_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_SEND_DAYS_RSV'
    end
    object qrySaleRequestGroupsDetailOFFER_ANSWER_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_ANSWER_DAYS_RSV'
    end
    object qrySaleRequestGroupsDetailDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
    end
    object qrySaleRequestGroupsDetailDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object qrySaleRequestGroupsDetailDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object qrySaleRequestGroupsDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySaleRequestGroupsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qrySaleRequestGroupsDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qrySaleRequestGroupsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qrySaleRequestGroupsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailIS_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_QUANTITY_AGREED'
    end
    object qrySaleRequestGroupsDetailSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qrySaleRequestGroupsDetailCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qrySaleRequestGroupsDetailCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailIS_SINGLE_PRICE_AGREED: TAbmesFloatField
      FieldName = 'IS_SINGLE_PRICE_AGREED'
    end
    object qrySaleRequestGroupsDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
    end
    object qrySaleRequestGroupsDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySaleRequestGroupsDetailSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 81
    end
    object qrySaleRequestGroupsDetailCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
    end
    object qrySaleRequestGroupsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
    end
    object qrySaleRequestGroupsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySaleRequestGroupsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySaleRequestGroupsDetailHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qrySaleRequestGroupsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qrySaleRequestGroupsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qrySaleRequestGroupsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qrySaleRequestGroupsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qrySaleRequestGroupsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qrySaleRequestGroupsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
    end
    object qrySaleRequestGroupsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
    end
    object qrySaleRequestGroupsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
    end
    object qrySaleRequestGroupsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
    end
    object qrySaleRequestGroupsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      Size = 5
    end
    object qrySaleRequestGroupsDetailCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qrySaleRequestGroupsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object qrySaleRequestGroupsDetailREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qrySaleRequestGroupsDetailSALE_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_NO'
    end
    object qrySaleRequestGroupsDetailSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object qrySaleRequestGroupsDetailSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object qrySaleRequestGroupsDetailASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qrySaleRequestGroupsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleRequestGroupsDetailREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleRequestGroupsDetailREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleRequestGroupsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 50
    end
    object qrySaleRequestGroupsDetailRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
  end
  object prvSaleRequestGroupsDetail: TDataSetProvider
    DataSet = qrySaleRequestGroupsDetail
    Left = 680
    Top = 272
  end
  object qryGetNewRequestLineNo: TAbmesSQLQuery
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
      '  Coalesce(Max(s.REQUEST_LINE_NO) + 1, 1) as NEW_REQUEST_LINE_NO'
      'from'
      '  SALES s'
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 56
    Top = 168
    object qryGetNewRequestLineNoNEW_REQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'NEW_REQUEST_LINE_NO'
    end
  end
  object qryUpdateSaleOrderStuff: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UPDATE_SALE_DATES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SSH_DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SSH_DOC_CODE'
        ParamType = ptInput
      end
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
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
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
        Name = 'UPDATE_SALE_QUANTITIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
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
        Name = 'UPDATE_LEASE_DATES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
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
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
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
        Name = 'UPDATE_LEASE_QUANTITIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
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
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
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
        Name = 'UPDATE_GENERAL_PSD'
        ParamType = ptInput
      end
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
        Name = 'SALE_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
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
      'begin'
      '  -- sale groups'
      '  update'
      '    SALE_GROUPS_FOR_EDIT'
      '  set'
      '    PRIORITY_CODE = :SALE_PRIORITY_CODE,'
      '    CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE,'
      '    RECEIVE_DATE = :RECEIVE_DATE,'
      '    RECEIVE_PLACE_OFFICE_CODE = :RECEIVE_PLACE_OFFICE_CODE'
      '  where'
      
        '    (SALE_GROUP_OBJECT_BRANCH_CODE = :SALE_GROUP_OBJECT_BRANCH_C' +
        'ODE) and'
      '    (SALE_GROUP_OBJECT_CODE = :SALE_GROUP_OBJECT_CODE);'
      ''
      '    '
      '  -- dati na pp'
      '  if (:UPDATE_SALE_DATES = 1) then'
      '    update'
      '      SALE_SHIPMENTS_FOR_EDIT'
      '    set'
      '      SHIPMENT_PLAN_DATE = :SHIPMENT_DATE,'
      '      RECEIVE_PLAN_DATE = :RECEIVE_DATE,'
      '      DOC_BRANCH_CODE = :SSH_DOC_BRANCH_CODE,'
      '      DOC_CODE = :SSH_DOC_CODE'
      '    where'
      '      (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (SALE_SHIPMENT_NO = 1);'
      ''
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psd'
      '    set'
      '      psd.STORE_DEAL_BEGIN_DATE = :SHIPMENT_DATE,'
      '      psd.STORE_DEAL_END_DATE = :SHIPMENT_DATE,'
      '      psd.CHANGE_EMPLOYEE_CODE =:CHANGE_EMPLOYEE_CODE,'
      '      psd.CHANGE_DATE = :CHANGE_DATE,'
      '      psd.CHANGE_TIME = :CHANGE_TIME'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE, psd.BND_PROCESS_OBJEC' +
        'T_CODE) ='
      '      ( select'
      '          SHIPMENT_OBJECT_BRANCH_CODE,'
      '          SHIPMENT_OBJECT_CODE'
      '        from'
      '          SALE_SHIPMENTS'
      '        where'
      
        '          (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '          (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '          (SALE_SHIPMENT_NO = 1)'
      '      );'
      '  end if;'
      ''
      ''
      '  -- kolichestva na pp'
      '  if (:UPDATE_SALE_QUANTITIES = 1) then'
      '    update'
      '      SALE_SHIPMENTS_FOR_EDIT'
      '    set'
      '      PLAN_QUANTITY = :QUANTITY'
      '    where'
      '      (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (SALE_SHIPMENT_NO = 1);'
      ''
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psd'
      '    set'
      '      psd.QUANTITY = :QUANTITY,'
      '      psd.ACCOUNT_QUANTITY ='
      '        ( select'
      '            (:QUANTITY * p.ACCOUNT_MEASURE_COEF)'
      '          from'
      '            PRODUCTS p'
      '          where'
      '            (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '        ),'
      '      psd.CHANGE_EMPLOYEE_CODE =:CHANGE_EMPLOYEE_CODE,'
      '      psd.CHANGE_DATE = :CHANGE_DATE,'
      '      psd.CHANGE_TIME = :CHANGE_TIME'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE, psd.BND_PROCESS_OBJEC' +
        'T_CODE) ='
      '      ( select'
      '          SHIPMENT_OBJECT_BRANCH_CODE,'
      '          SHIPMENT_OBJECT_CODE'
      '        from'
      '          SALE_SHIPMENTS'
      '        where'
      
        '          (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '          (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '          (SALE_SHIPMENT_NO = 1)'
      '      );'
      '  end if;'
      '  '
      ''
      '  -- dati na np'
      '  if (:UPDATE_LEASE_DATES = 1) then'
      '    update'
      '      SALE_SHIPMENTS_FOR_EDIT'
      '    set'
      '      SHIPMENT_PLAN_DATE = :SHIPMENT_DATE,'
      '      IMPORT_PLAN_DATE = :IMPORT_DATE,'
      '      RECEIVE_PLAN_DATE = :RECEIVE_DATE,'
      '      RETURN_PLAN_DATE = :RETURN_DATE'
      '    where'
      '      (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (SALE_OBJECT_CODE = :SALE_OBJECT_CODE);'
      ''
      '    for Shipment in'
      '      ('
      '        select'
      '          ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '          ss.SHIPMENT_OBJECT_CODE'
      '        from'
      '          SALE_SHIPMENTS ss'
      '        where'
      
        '          (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '          (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '        order by'
      '          ss.SALE_SHIPMENT_NO'
      '      )'
      '    loop'
      '      update'
      '        PLANNED_STORE_DEALS_FOR_EDIT psd'
      '      set'
      
        '        psd.STORE_DEAL_BEGIN_DATE = Decode(psd.STORE_DEAL_TYPE_C' +
        'ODE, 851, :SHIPMENT_DATE, :IMPORT_DATE),'
      
        '        psd.STORE_DEAL_END_DATE = Decode(psd.STORE_DEAL_TYPE_COD' +
        'E, 851, :SHIPMENT_DATE, :IMPORT_DATE),'
      '        psd.CHANGE_EMPLOYEE_CODE =:CHANGE_EMPLOYEE_CODE,'
      '        psd.CHANGE_DATE = :CHANGE_DATE,'
      '        psd.CHANGE_TIME = :CHANGE_TIME'
      '      where'
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = Shipment.SHIPMENT_' +
        'OBJECT_BRANCH_CODE) and'
      
        '        (psd.BND_PROCESS_OBJECT_CODE = Shipment.SHIPMENT_OBJECT_' +
        'CODE);'
      '    end loop;'
      ''
      '  end if;'
      ''
      ''
      '  -- kolichestva na np'
      '  if (:UPDATE_LEASE_QUANTITIES = 1) then'
      '    update'
      '      SALE_SHIPMENTS_FOR_EDIT'
      '    set'
      '      PLAN_QUANTITY = :QUANTITY,'
      '      LEASE_PLAN_DATE_UNIT_QTY = :LEASE_DATE_UNIT_QTY'
      '    where'
      '      (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) and'
      '      (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '      (SALE_SHIPMENT_NO = 1);'
      ''
      '    update'
      '      PLANNED_STORE_DEALS_FOR_EDIT psd'
      '    set'
      '      psd.QUANTITY = :QUANTITY * :LEASE_DATE_UNIT_QTY,'
      '      psd.ACCOUNT_QUANTITY ='
      '        ( select'
      
        '            (:QUANTITY * p.ACCOUNT_MEASURE_COEF * :LEASE_DATE_UN' +
        'IT_QTY)'
      '          from'
      '            PRODUCTS p'
      '          where'
      '            (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '        ),'
      '      psd.CHANGE_EMPLOYEE_CODE =:CHANGE_EMPLOYEE_CODE,'
      '      psd.CHANGE_DATE = :CHANGE_DATE,'
      '      psd.CHANGE_TIME = :CHANGE_TIME'
      '    where'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE, psd.BND_PROCESS_OBJEC' +
        'T_CODE) in'
      '      ( select'
      '          SHIPMENT_OBJECT_BRANCH_CODE,'
      '          SHIPMENT_OBJECT_CODE'
      '        from'
      '          SALE_SHIPMENTS'
      '        where'
      
        '          (SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE) a' +
        'nd'
      '          (SALE_OBJECT_CODE = :SALE_OBJECT_CODE) and'
      '          (SALE_SHIPMENT_NO = 1)'
      '      );'
      '  end if;'
      ''
      ''
      '  -- drugi parametri na psd-tata'
      '  if (:UPDATE_GENERAL_PSD = 1) then'
      '    for Shipment in'
      '      ('
      '        select'
      '          ss.SHIPMENT_OBJECT_BRANCH_CODE,'
      '          ss.SHIPMENT_OBJECT_CODE'
      '        from'
      '          SALE_SHIPMENTS ss'
      '        where'
      
        '          (ss.SALE_OBJECT_BRANCH_CODE = :SALE_OBJECT_BRANCH_CODE' +
        ') and'
      '          (ss.SALE_OBJECT_CODE = :SALE_OBJECT_CODE)'
      '        order by'
      '          ss.SALE_SHIPMENT_NO'
      '      )'
      '    loop'
      '      update'
      '        PLANNED_STORE_DEALS_FOR_EDIT psd'
      '      set'
      '        psd.PRIORITY_CODE = :SALE_PRIORITY_CODE,'
      '        psd.STORE_CODE = :SHIPMENT_STORE_CODE,'
      '        psd.PRODUCT_CODE = :PRODUCT_CODE,'
      '        psd.ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '        psd.ANNUL_DATE = :ANNUL_DATE,'
      '        psd.ANNUL_TIME = :ANNUL_TIME,'
      '        psd.CLOSE_EMPLOYEE_CODE = :FINISH_EMPLOYEE_CODE,'
      '        psd.CLOSE_DATE = :FINISH_DATE,'
      '        psd.CLOSE_TIME = :FINISH_TIME,'
      '        psd.CHANGE_EMPLOYEE_CODE =:CHANGE_EMPLOYEE_CODE,'
      '        psd.CHANGE_DATE = :CHANGE_DATE,'
      '        psd.CHANGE_TIME = :CHANGE_TIME'
      '      where'
      
        '        (psd.BND_PROCESS_OBJECT_BRANCH_CODE = Shipment.SHIPMENT_' +
        'OBJECT_BRANCH_CODE) and'
      
        '        (psd.BND_PROCESS_OBJECT_CODE = Shipment.SHIPMENT_OBJECT_' +
        'CODE);'
      '    end loop;'
      ''
      '  end if;'
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 144
  end
  object qryInsertSaleOrderSSandPSD: TAbmesSQLQuery
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
      end
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
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SSH_DOC_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SSH_DOC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
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
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
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
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
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
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
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
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'begin'
      '  insert into SALE_SHIPMENTS_FOR_EDIT'
      '  ( SHIPMENT_OBJECT_BRANCH_CODE,'
      '    SHIPMENT_OBJECT_CODE,'
      '    SALE_OBJECT_BRANCH_CODE,'
      '    SALE_OBJECT_CODE,'
      '    SALE_SHIPMENT_NO,'
      '    PLAN_QUANTITY,'
      '    SHIPMENT_PLAN_DATE,'
      '    IMPORT_PLAN_DATE,'
      '    RECEIVE_PLAN_DATE,'
      '    RETURN_PLAN_DATE,'
      '    LEASE_PLAN_DATE_UNIT_QTY,'
      '    DOC_BRANCH_CODE,'
      '    DOC_CODE'
      '  ) values ('
      '    :SHIPMENT_OBJECT_BRANCH_CODE,'
      '    :SHIPMENT_OBJECT_CODE,'
      '    :SALE_OBJECT_BRANCH_CODE,'
      '    :SALE_OBJECT_CODE,'
      '    1,'
      '    :QUANTITY,'
      '    :SHIPMENT_DATE,'
      '    Decode(:SALE_DEAL_TYPE_CODE, 2, :IMPORT_DATE, null),'
      '    :RECEIVE_DATE,'
      '    Decode(:SALE_DEAL_TYPE_CODE, 2, :IMPORT_DATE, null),'
      '    Decode(:SALE_DEAL_TYPE_CODE, 2, :LEASE_DATE_UNIT_QTY, null),'
      '    :SSH_DOC_BRANCH_CODE,'
      '    :SSH_DOC_CODE'
      '  );'
      ''
      '    insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '    ( PLANNED_STORE_DEAL_BRANCH_CODE,'
      '      PLANNED_STORE_DEAL_CODE,'
      '      PLANNED_STORE_DEAL_TYPE_CODE,'
      '      PRIORITY_CODE,'
      '      IS_PLANNED_MANUALLY,'
      '      BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      BND_PROCESS_OBJECT_CODE,'
      '      BND_PROCESS_CODE,'
      '      STORE_CODE,'
      '      STORE_DEAL_BEGIN_DATE,'
      '      STORE_DEAL_END_DATE,'
      '      STORE_DEAL_TYPE_CODE,'
      '      PRODUCT_CODE,'
      '      QUANTITY,'
      '      ACCOUNT_QUANTITY,'
      '      CREATE_EMPLOYEE_CODE, CREATE_DATE, CREATE_TIME,'
      '      CHANGE_EMPLOYEE_CODE, CHANGE_DATE, CHANGE_TIME'
      '    )'
      '    select'
      '      :SALE_BRANCH_CODE,'
      '      seq_PLANNED_STORE_DEALS.NextVal,'
      '      1,'
      '      cc.PRIORITY_CODE,'
      '      0,'
      '      :SHIPMENT_OBJECT_BRANCH_CODE,'
      '      :SHIPMENT_OBJECT_CODE,'
      '      160,'
      '      :SHIPMENT_STORE_CODE,'
      '      :SHIPMENT_DATE,'
      '      :SHIPMENT_DATE,'
      '      851,'
      '      :PRODUCT_CODE,'
      
        '      :QUANTITY * Decode(:SALE_DEAL_TYPE_CODE, 2, :LEASE_DATE_UN' +
        'IT_QTY, 1),'
      
        '      :QUANTITY * p.ACCOUNT_MEASURE_COEF * Decode(:SALE_DEAL_TYP' +
        'E_CODE, 2, :LEASE_DATE_UNIT_QTY, 1),'
      '      :CREATE_EMPLOYEE_CODE, :CREATE_DATE, :CREATE_TIME,'
      '      :CHANGE_EMPLOYEE_CODE, :CHANGE_DATE, :CHANGE_TIME'
      '    from'
      '      CLIENT_COMPANIES cc,'
      '      PRODUCTS p,'
      '      INTERNAL_VALUES iv'
      '    where'
      '      (iv.CODE = 1) and'
      '      (cc.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) and'
      '      (p.PRODUCT_CODE = :PRODUCT_CODE);'
      ''
      ''
      ''
      '  if (:SALE_DEAL_TYPE_CODE = 2) then'
      '    insert into PLANNED_STORE_DEALS_FOR_EDIT'
      '    ( PLANNED_STORE_DEAL_BRANCH_CODE,'
      '      PLANNED_STORE_DEAL_CODE,'
      '      PLANNED_STORE_DEAL_TYPE_CODE,'
      '      PRIORITY_CODE,'
      '      IS_PLANNED_MANUALLY,'
      '      BND_PROCESS_OBJECT_BRANCH_CODE,'
      '      BND_PROCESS_OBJECT_CODE,'
      '      BND_PROCESS_CODE,'
      '      STORE_CODE,'
      '      STORE_DEAL_BEGIN_DATE,'
      '      STORE_DEAL_END_DATE,'
      '      STORE_DEAL_TYPE_CODE,'
      '      PRODUCT_CODE,'
      '      QUANTITY,'
      '      ACCOUNT_QUANTITY,'
      '      CREATE_EMPLOYEE_CODE, CREATE_DATE, CREATE_TIME,'
      '      CHANGE_EMPLOYEE_CODE, CHANGE_DATE, CHANGE_TIME'
      '    )'
      '    select'
      '      :SALE_BRANCH_CODE,'
      '      seq_PLANNED_STORE_DEALS.NextVal,'
      '      1,'
      '      cc.PRIORITY_CODE,'
      '      0,'
      '      :SHIPMENT_OBJECT_BRANCH_CODE,'
      '      :SHIPMENT_OBJECT_CODE,'
      '      160,'
      '      :SHIPMENT_STORE_CODE,'
      '      :IMPORT_DATE,'
      '      :IMPORT_DATE,'
      '      811,'
      '      :PRODUCT_CODE,'
      '      :QUANTITY * :LEASE_DATE_UNIT_QTY,'
      '      :QUANTITY * p.ACCOUNT_MEASURE_COEF * :LEASE_DATE_UNIT_QTY,'
      '      :CREATE_EMPLOYEE_CODE, :CREATE_DATE, :CREATE_TIME,'
      '      :CHANGE_EMPLOYEE_CODE, :CHANGE_DATE, :CHANGE_TIME'
      '    from'
      '      CLIENT_COMPANIES cc,'
      '      PRODUCTS p,'
      '      INTERNAL_VALUES iv'
      '    where'
      '      (iv.CODE = 1) and'
      '      (cc.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) and'
      '      (p.PRODUCT_CODE = :PRODUCT_CODE);'
      '  end if;'
      ''
      'end;')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 96
  end
  object qryCanAnnulSRG: TAbmesSQLQuery
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
      '  Count(*) as NOT_ANNULED_COUNT'
      'from'
      '  SALES s'
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and '
      '  (s.REQUEST_NO = :REQUEST_NO) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 608
    Top = 48
    object qryCanAnnulSRGNOT_ANNULED_COUNT: TAbmesFloatField
      FieldName = 'NOT_ANNULED_COUNT'
    end
  end
  object qryCanCloseSRG: TAbmesSQLQuery
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
      '  Count(*) as NOT_FINISHED_COUNT'
      'from'
      '  SALES s'
      'where'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and '
      '  (s.REQUEST_NO = :REQUEST_NO) and'
      '  (s.FINISH_EMPLOYEE_CODE is null) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 608
    Top = 96
    object qryCanCloseSRGNOT_FINISHED_COUNT: TAbmesFloatField
      FieldName = 'NOT_FINISHED_COUNT'
    end
  end
  object prvSaleOrders: TDataSetProvider
    DataSet = qrySaleOrders
    Left = 360
    Top = 64
  end
  object qrySaleOrders: TAbmesSQLQuery
    BeforeOpen = qrySaleOrdersBeforeOpen
    AfterClose = qrySaleOrdersAfterClose
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
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
        Name = 'REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CLIENT'
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
        Name = 'MANAGER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANAGER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_CLIENT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_CLIENT_PRIORITY_CODE'
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
        Name = 'DECISION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DECISION_TYPE_CODE'
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
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
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
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
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
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_OFFER_ANSWER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DECISION_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_SEND_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_ANSWER_DAYS_RSV'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_OFFER_ANSWER_DAYS_RSV'
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
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      ''
      '  srg.SALE_DEAL_TYPE_CODE,'
      '  ( select'
      '      bdt.BORDER_DEAL_TYPE_ABBREV'
      '    from'
      '      BORDER_DEAL_TYPES bdt'
      '    where'
      '      (bdt.BORDER_DEAL_TYPE_CODE = srg.SALE_DEAL_TYPE_CODE)'
      '  ) as SALE_DEAL_TYPE_ABBREV,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '    11,'
      '    Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '      10,'
      '      Nvl2(s.SALE_BRANCH_CODE,'
      '        9,'
      '        Nvl2(s.DECISION_DATE,'
      '          8,'
      '          Nvl2(s.OFFER_ANSWER_DATE,'
      
        '            Decode(Sign(Coalesce(s.DECISION_PLAN_DATE, ContextDa' +
        'te) - ContextDate), -1,'
      '              7,'
      '              6'
      '            ),'
      '            Nvl2(s.OFFER_SEND_DATE,'
      
        '              Decode(Sign(Coalesce(s.OFFER_ANSWER_PLAN_DATE, Con' +
        'textDate) - ContextDate), -1,'
      '                5,'
      '                4'
      '              ),'
      '              Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                Decode(Sign(s.OFFER_SEND_PLAN_DATE - ContextDate' +
        '), -1,'
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
      '  s.ASPECT_TYPE_CODE,'
      '  ( select'
      '      aty.ASPECT_TYPE_ABBREV'
      '    from'
      '      ASPECT_TYPES aty'
      '    where'
      '      (aty.ASPECT_TYPE_CODE = s.ASPECT_TYPE_CODE)'
      '  ) as ASPECT_TYPE_ABBREV,'
      ''
      '  s.REQUEST_BRANCH_CODE,'
      '  ( select'
      '      d.CUSTOM_CODE'
      '    from'
      '      DEPTS d'
      '    where'
      '      (d.DEPT_CODE = s.REQUEST_BRANCH_CODE)'
      '  ) as REQUEST_BRANCH_ID,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      '  ( select'
      
        '      d.CUSTOM_CODE || '#39'/'#39' || s.REQUEST_NO || '#39'/'#39' || s.REQUEST_L' +
        'INE_NO || '#39'/'#39' || st.STREAM_TYPE_ABBREV'
      '    from'
      '      DEPTS d,'
      '      STREAM_TYPES st'
      '    where'
      '      (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE) and'
      '      (srg.REQUEST_NO = s.REQUEST_NO) and'
      '      (d.DEPT_CODE = s.REQUEST_BRANCH_CODE) and'
      '      (st.STREAM_TYPE_CODE = srg.STREAM_TYPE_CODE)'
      '  ) as SALE_ORDER_ID,'
      ''
      '  srg.IS_ACTIVATED_BY_CLIENT,'
      ''
      '  ( select'
      
        '      (e.ABBREV || '#39'          '#39' || e.FIRST_NAME || '#39' '#39' || e.LAST' +
        '_NAME)'
      '    from'
      '      EMPLOYEES e'
      '    where'
      '      (e.EMPLOYEE_CODE = s.MANAGER_EMPLOYEE_CODE)'
      '  ) as MANAGER_EMPLOYEE_FULL_NAME,'
      ''
      
        '  %COMPANY_BASE_ROLE_CODE[srg.CLIENT_COMPANY_CODE] as BASE_ROLE_' +
        'CODE,'
      ''
      '  ( select'
      '      csc.COMPANY_STATUS_CODE'
      '    from'
      '      COMPANY_STATUSES_CHANGES csc'
      '    where'
      '      (csc.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
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
      '      (csc.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
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
      '  srg.CLIENT_COMPANY_CODE,'
      '  ( select'
      '      c.SHORT_NAME'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE) '
      '  ) as CLIENT_COMPANY_NAME,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        VENDOR_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    ),'
      '    ( select'
      '        p.PRIORITY_NO'
      '      from'
      '        CLIENT_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    )'
      '  ) as PRIORITY_NO,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        p.PRIORITY_COLOR'
      '      from'
      '        VENDOR_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    ),'
      '    ( select'
      '        p.PRIORITY_COLOR'
      '      from'
      '        CLIENT_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    )'
      '  ) as PRIORITY_COLOR,'
      ''
      '  Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '    ( select'
      '        p.PRIORITY_BACKGROUND_COLOR'
      '      from'
      '        VENDOR_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.VENDOR_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    ),'
      '    ( select'
      '        p.PRIORITY_BACKGROUND_COLOR'
      '      from'
      '        CLIENT_COMPANIES c,'
      '        PRIORITIES p'
      '      where'
      '        (c.CLIENT_COMPANY_CODE = srg.CLIENT_COMPANY_CODE) and'
      '        (c.PRIORITY_CODE = p.PRIORITY_CODE)'
      '    )'
      '  ) as PRIORITY_BACKGROUND_COLOR,'
      ''
      '  Nvl2(srg.MEDIATOR_COMPANY_CODE, 1, 0) as HAS_MEDIATOR,'
      ''
      '  ( select'
      '      p.NAME'
      '    from'
      '      PRODUCTS p'
      '    where'
      '      (p.PRODUCT_CODE = s.PRODUCT_CODE)'
      '  ) as PRODUCT_NAME,'
      ''
      '  Decode(p.IS_COMMON, 1, 2,'
      '         ( select'
      '             Decode(Sign(Count(*)), 0, 1, 3)'
      '           from'
      '             CONCRETE_PRODUCTS cp,'
      '             DEFINITE_PRODUCTS dp'
      '           where'
      '             (cp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.PRODUCT_CODE = p.PRODUCT_CODE) and'
      '             (dp.COMMON_PRODUCT_CODE is not null)'
      '         )'
      '  ) as COMMON_STATUS_CODE,'
      '  '
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE, 1, 0) as IS_ANNULED,'
      '  Nvl2(s.FINISH_EMPLOYEE_CODE, 1, 0) as IS_FINISHED,'
      ''
      
        '  (s.DECISION_PLAN_DATE - s.REQUEST_REGISTER_DATE) as PLAN_PERIO' +
        'D_DAYS,'
      
        '  (s.DECISION_DATE - s.REQUEST_REGISTER_DATE) as REAL_PERIOD_DAY' +
        'S,'
      ''
      '  Decode((s.DECISION_DATE - s.REQUEST_REGISTER_DATE), 0,'
      '    To_number(null),'
      
        '    (s.DECISION_PLAN_DATE - s.DECISION_DATE) / (s.DECISION_DATE ' +
        '- s.REQUEST_REGISTER_DATE)'
      '  ) as REAL_PERIOD_DEVIATION_PERCENT,'
      ''
      
        '  (s.OFFER_SEND_PLAN_DATE - Coalesce(s.OFFER_SEND_DATE, ContextDat' +
        'e)) as OFFER_SEND_DAYS_RSV,'
      
        '  (s.OFFER_ANSWER_PLAN_DATE - Coalesce(s.OFFER_ANSWER_DATE, Cont' +
        'extDate)) as OFFER_ANSWER_DAYS_RSV,'
      
        '  (s.DECISION_PLAN_DATE - Coalesce(s.DECISION_DATE, ContextDate)' +
        ') as DECISION_DAYS_RSV,'
      '  s.DECISION_TYPE_CODE,'
      '  ( select'
      '      dt.DECISION_TYPE_ABBREV'
      '    from'
      '      DECISION_TYPES dt'
      '    where'
      '      (dt.DECISION_TYPE_CODE = s.DECISION_TYPE_CODE)'
      '  ) as DECISION_TYPE_ABBREV,'
      ''
      '  s.PROGNOSIS_BEGIN_DATE,'
      '  s.PROGNOSIS_END_DATE,'
      ''
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.QUANTITY, Coalesce(s.' +
        'CL_OFFER_QUANTITY, s.OUR_OFFER_QUANTITY)), To_number(null)) as P' +
        'ROGNOSIS_QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, p.MEASURE_CODE, To_number(null))' +
        ' as PROGNOSIS_MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
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
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(s.LEASE_DATE_UNIT_QTY, Coalesce(s.CL_OFFER_LEASE_DA' +
        'TE_UNIT_QTY, s.OUR_OFFER_LEASE_DATE_UNIT_QTY)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_QTY,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    Coalesce(s.LEASE_DATE_UNIT_CODE, Coalesce(s.CL_OFFER_LEASE_D' +
        'ATE_UNIT_CODE, s.OUR_OFFER_LEASE_DATE_UNIT_CODE)),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      
        '        (tdu.THE_DATE_UNIT_CODE = Coalesce(s.LEASE_DATE_UNIT_COD' +
        'E, Coalesce(s.CL_OFFER_LEASE_DATE_UNIT_CODE, s.OUR_OFFER_LEASE_D' +
        'ATE_UNIT_CODE)))'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_LEASE_DATE_UNIT_NAME,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      s.QUANTITY * s.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        s.CL_OFFER_LEASE_DATE_UNIT_QTY * s.CL_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        s.OUR_OFFER_LEASE_DATE_UNIT_QTY * s.OUR_OFFER_LEASE_DATE' +
        '_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_TOTAL_LEASE_QUANTITY,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Coalesce('
      '      s.QUANTITY * s.LEASE_DATE_UNIT_QTY,'
      '      Coalesce('
      
        '        s.CL_OFFER_LEASE_DATE_UNIT_QTY * s.CL_OFFER_LEASE_DATE_U' +
        'NIT_QTY,'
      
        '        s.OUR_OFFER_LEASE_DATE_UNIT_QTY * s.OUR_OFFER_LEASE_DATE' +
        '_UNIT_QTY'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) * p.ACCOUNT_MEASURE_COEF as PROGNOSIS_ACC_TOTAL_LEASE_QTY,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    Nvl2(s.QUANTITY + s.LEASE_DATE_UNIT_QTY + s.LEASE_DATE_UNIT_' +
        'CODE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_LEASE_QUANTITY_AGREED,'
      ''
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.QUANTITY, Coalesce(s.' +
        'CL_OFFER_QUANTITY, s.OUR_OFFER_QUANTITY)) * p.ACCOUNT_MEASURE_CO' +
        'EF, To_number(null)) as PROGNOSIS_ACCOUNT_QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, p.ACCOUNT_MEASURE_CODE, To_numbe' +
        'r(null)) as PROGNOSIS_ACCOUNT_MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_ACC_MEASURE_ABBREV,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(s.QUANTITY, 1, 0),'
      '    To_number(null)'
      '  ) as IS_QUANTITY_AGREED,'
      ''
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.SINGLE_PRICE, Coalesc' +
        'e(s.CL_OFFER_SINGLE_PRICE, OUR_OFFER_SINGLE_PRICE)), To_number(n' +
        'ull)) as PROGNOSIS_SINGLE_PRICE,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, Coalesce(s.SINGLE_PRICE, Coalesc' +
        'e(s.CL_OFFER_SINGLE_PRICE, OUR_OFFER_SINGLE_PRICE)), To_number(n' +
        'ull)) / p.ACCOUNT_MEASURE_COEF as PROGNOSIS_ACCOUNT_SINGLE_PRICE' +
        ','
      
        '  Decode(s.ASPECT_TYPE_CODE, 1, s.CURRENCY_CODE, To_number(null)' +
        ') as PROGNOSIS_CURRENCY_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    ( select'
      '        c.CURRENCY_ABBREV'
      '      from'
      '        CURRENCIES c'
      '      where'
      '        (c.CURRENCY_CODE = s.CURRENCY_CODE)'
      '    ),'
      '    null'
      '  ) as PROGNOSIS_CURRENCY_ABBREV,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      '    Nvl2(s.SINGLE_PRICE, 1, 0),'
      '    To_number(null)'
      '  ) as IS_SINGLE_PRICE_AGREED,'
      '  Decode(s.ASPECT_TYPE_CODE, 1,'
      
        '    ( Coalesce(s.SINGLE_PRICE, s.CL_OFFER_SINGLE_PRICE, OUR_OFFE' +
        'R_SINGLE_PRICE) *'
      
        '      Coalesce(s.QUANTITY, s.CL_OFFER_QUANTITY, s.OUR_OFFER_QUAN' +
        'TITY) *'
      '      Decode('
      '        s.SALE_DEAL_TYPE_CODE,'
      '        CommonConsts.sdtLease,'
      
        '        Coalesce(s.LEASE_DATE_UNIT_QTY, s.CL_OFFER_LEASE_DATE_UN' +
        'IT_QTY, s.OUR_OFFER_LEASE_DATE_UNIT_QTY),'
      '        1'
      '      ) *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = ContextDate)'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as PROGNOSIS_TOTAL_PRICE,'
      ''
      
        '  Coalesce(s.RECEIVE_DATE, s.CL_OFFER_RECEIVE_DATE) as RECEIVE_D' +
        'ATE,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, s.QUANTITY, To_number(null)) as ' +
        'QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, p.MEASURE_CODE, To_number(null))' +
        ' as MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as MEASURE_ABBREV,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, p.ACCOUNT_MEASURE_CODE, To_numbe' +
        'r(null)) as ACCOUNT_MEASURE_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        m.MEASURE_ABBREV'
      '      from'
      '        MEASURES m'
      '      where'
      '        (m.MEASURE_CODE = p.ACCOUNT_MEASURE_CODE)'
      '    ),'
      '    null'
      '  ) as ACCOUNT_MEASURE_ABBREV,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, (s.QUANTITY * p.ACCOUNT_MEASURE_' +
        'COEF), To_number(null)) as ACCOUNT_QUANTITY,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, s.SINGLE_PRICE, To_number(null))' +
        ' as SINGLE_PRICE,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, s.CURRENCY_CODE, To_number(null)' +
        ') as CURRENCY_CODE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        c.CURRENCY_ABBREV'
      '      from'
      '        CURRENCIES c'
      '      where'
      '        (c.CURRENCY_CODE = s.CURRENCY_CODE)'
      '    ),'
      '    null'
      '  ) as CURRENCY_ABBREV,'
      
        '  Decode(s.ASPECT_TYPE_CODE, 2, (s.SINGLE_PRICE / p.ACCOUNT_MEAS' +
        'URE_COEF), To_number(null)) as ACCOUNT_SINGLE_PRICE,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( s.SINGLE_PRICE *'
      '      s.QUANTITY *'
      
        '      Decode(s.SALE_DEAL_TYPE_CODE, CommonConsts.sdtLease, s.LEA' +
        'SE_DATE_UNIT_QTY, 1) *'
      '      ( select'
      '          cr.FIXING'
      '        from'
      '          CURRENCY_RATES cr'
      '        where'
      '          (cr.CURRENCY_CODE = s.CURRENCY_CODE) and'
      '          (cr.RATE_DATE = ContextDate)'
      '      )'
      '    ),'
      '    To_number(null)'
      '  ) as TOTAL_PRICE,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    s.LEASE_DATE_UNIT_CODE,'
      '    To_number(null)'
      '  ) as LEASE_DATE_UNIT_CODE,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    ( select'
      '        tdu.THE_DATE_UNIT_NAME'
      '      from'
      '        THE_DATE_UNITS tdu'
      '      where'
      '        (tdu.THE_DATE_UNIT_CODE = s.LEASE_DATE_UNIT_CODE)'
      '    ),'
      '    To_number(null)'
      '  ) as LEASE_DATE_UNIT_NAME,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    s.LEASE_DATE_UNIT_QTY,'
      '    To_number(null)'
      '  ) as LEASE_DATE_UNIT_QTY,'
      ''
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      '    (s.QUANTITY * s.LEASE_DATE_UNIT_QTY),'
      '    To_number(null)'
      '  ) as TOTAL_LEASE_QUANTITY,'
      '  Decode(s.ASPECT_TYPE_CODE, 2,'
      
        '    (s.QUANTITY * s.LEASE_DATE_UNIT_QTY * p.ACCOUNT_MEASURE_COEF' +
        '),'
      '    To_number(null)'
      '  ) as TOTAL_ACCOUNT_LEASE_QUANTITY,'
      ''
      '  Nvl2(s.SALE_BRANCH_CODE,'
      '    ( select'
      '        d.CUSTOM_CODE'
      '      from'
      '        DEPTS d'
      '      where'
      '        (d.DEPT_CODE = s.SALE_BRANCH_CODE)'
      '    ) || '#39'/'#39' || s.SALE_NO,'
      '    '#39#39
      '  ) as SALE_ID,'
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
      '      (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '  ) as SALE_PRIORITY_NO,'
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
      '  ) as SALE_PRIORITY_COLOR,'
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
      '  ) as SALE_PRIORITY_BACKGROUND_COLOR,'
      ''
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as HAS_DOCUMENTATION,'
      ''
      '  ( select'
      '      c.DOC_BRANCH_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_DOC_BRANCH_CODE,'
      ''
      '  ( select'
      '      c.DOC_CODE'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_DOC_CODE,'
      ''
      '  ( select'
      '      %HAS_DOC_ITEMS[c]'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = srg.CLIENT_COMPANY_CODE)'
      '  ) as CLIENT_HAS_DOCUMENTATION,'
      ''
      '  p.DOC_BRANCH_CODE as PRODUCT_DOC_BRANCH_CODE,'
      '  p.DOC_CODE as PRODUCT_DOC_CODE,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOCUMENTATION,'
      '  s.CLIENT_REQUEST_NO,'
      '  ( select'
      '      cp.NAME'
      '    from'
      '      COMPANY_PRODUCTS cp'
      '    where'
      '      (s.CLIENT_COMPANY_CODE = cp.COMPANY_CODE) and'
      '      (s.PRODUCT_CODE = cp.PRODUCT_CODE)'
      '  ) as CLIENT_PRODUCT_NAME,'
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
      '      (prpsc.PARTNER_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (prpsc.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      '      (prpsc.PRODUCT_CODE = s.PRODUCT_CODE) and'
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
      '  ( select'
      '      co.OFFICE_NAME'
      '    from'
      '      COMPANY_OFFICES co'
      '    where'
      '      (co.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '      (co.OFFICE_CODE = s.RECEIVE_PLACE_OFFICE_CODE)'
      '  ) as RECEIVE_PLACE_OFFICE_NAME'
      ''
      'from'
      '  SALES s,'
      '  SALE_REQUEST_GROUPS srg,'
      '  PRODUCTS p'
      ''
      'where'
      '  (srg.PRODUCT_CLASS_CODE = :PRODUCT_CLASS_CODE) and'
      ''
      '  (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = s.REQUEST_NO) and'
      '  (p.PRODUCT_CODE = s.PRODUCT_CODE) and'
      ''
      '  ( ( (:SALE_DEAL_TYPE_CODE = -1) and'
      '      (srg.SALE_DEAL_TYPE_CODE in (%sdt_SALE, %sdt_EXPORT))'
      '    ) or'
      '    (srg.SALE_DEAL_TYPE_CODE = :SALE_DEAL_TYPE_CODE)'
      '  ) and'
      ''
      '  ( Nvl2(s.ANNUL_EMPLOYEE_CODE,'
      '      11,'
      '      Nvl2(s.FINISH_EMPLOYEE_CODE,'
      '        10,'
      '        Nvl2(s.SALE_BRANCH_CODE,'
      '          9,'
      '          Nvl2(s.DECISION_DATE,'
      '            8,'
      '            Nvl2(s.OFFER_ANSWER_DATE,'
      
        '              Decode(Sign(Coalesce(s.DECISION_PLAN_DATE, ContextDa' +
        'te) - ContextDate), -1,'
      '                7,'
      '                6'
      '              ),'
      '              Nvl2(s.OFFER_SEND_DATE,'
      
        '                Decode(Sign(Coalesce(s.OFFER_ANSWER_PLAN_DATE, C' +
        'ontextDate) - ContextDate), -1,'
      '                  5,'
      '                  4'
      '                ),'
      '                Nvl2(s.OFFER_SEND_PLAN_DATE,'
      
        '                  Decode(Sign(s.OFFER_SEND_PLAN_DATE - ContextDa' +
        'te), -1,'
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
      '    ) between :MIN_STATUS_CODE and :MAX_STATUS_CODE'
      '  ) and'
      ''
      '  ( (:REQUEST_BRANCH_CODE is null) or'
      '    (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) ) and'
      ''
      '  ( (:REQUEST_NO is null) or'
      '    (s.REQUEST_NO = :REQUEST_NO) ) and'
      ''
      '  ( (:REQUEST_LINE_NO is null) or'
      '    (s.REQUEST_LINE_NO = :REQUEST_LINE_NO) ) and'
      ''
      '  ( (:ASPECT_TYPE_CODE is null) or'
      '    (s.ASPECT_TYPE_CODE = :ASPECT_TYPE_CODE) ) and'
      ''
      '  ( (:IS_ACTIVATED_BY_CLIENT is null) or'
      '    (srg.IS_ACTIVATED_BY_CLIENT = :IS_ACTIVATED_BY_CLIENT) ) and'
      ''
      '  ( (:LEASE_DATE_UNIT_CODE is null) or'
      '    (s.CL_OFFER_LEASE_DATE_UNIT_CODE = :LEASE_DATE_UNIT_CODE) or'
      
        '    (s.OUR_OFFER_LEASE_DATE_UNIT_CODE = :LEASE_DATE_UNIT_CODE) o' +
        'r'
      '    (s.LEASE_DATE_UNIT_CODE = :LEASE_DATE_UNIT_CODE) ) and'
      ''
      '  ( (:SALE_BRANCH_CODE is null) or'
      '    (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ) and'
      ''
      '  ( (:SALE_NO is null) or'
      '    (s.SALE_NO = :SALE_NO) ) and'
      ''
      '  ( (:SALE_TYPE_CODE is null) or'
      '    (s.SALE_TYPE_CODE = :SALE_TYPE_CODE) ) and'
      ''
      
        '  ( ( (:BEGIN_PRIORITY_CODE = (select PRIORITY_CODE from PRIORIT' +
        'IES where (PRIORITY_NO = (select Min(PRIORITY_NO) from PRIORITIE' +
        'S)))) and'
      
        '      (:END_PRIORITY_CODE = (select PRIORITY_CODE from PRIORITIE' +
        'S where (PRIORITY_NO = (select Max(PRIORITY_NO) from PRIORITIES)' +
        ')))'
      '    ) or'
      '    ( ( select'
      '          PRIORITY_NO'
      '        from'
      '          SALE_GROUPS sg,'
      '          PRIORITIES p'
      '        where'
      
        '          (sg.SALE_GROUP_OBJECT_BRANCH_CODE = s.SALE_GROUP_OBJEC' +
        'T_BRANCH_CODE) and'
      
        '          (sg.SALE_GROUP_OBJECT_CODE = s.SALE_GROUP_OBJECT_CODE)' +
        ' and'
      '          (p.PRIORITY_CODE = sg.PRIORITY_CODE)'
      '      ) between'
      
        '      (select PRIORITY_NO from PRIORITIES where (PRIORITY_CODE =' +
        ' :BEGIN_PRIORITY_CODE)) and'
      
        '      (select PRIORITY_NO from PRIORITIES where (PRIORITY_CODE =' +
        ' :END_PRIORITY_CODE))'
      '    )'
      '  ) and'
      ''
      '  ( (:MANAGER_EMPLOYEE_CODE is null) or'
      '    (s.MANAGER_EMPLOYEE_CODE = :MANAGER_EMPLOYEE_CODE) ) and'
      ''
      '  ( (:CLIENT_COMPANY_CODE is null) or'
      '    (s.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) ) and'
      ''
      '  ( (:CLIENT_COUNTRY_CODE is null) or'
      '    exists('
      '      select'
      '        1'
      '      from'
      '        COMPANIES c'
      '      where'
      '        (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '        (c.COUNTRY_CODE = :CLIENT_COUNTRY_CODE)'
      '    )'
      '  ) and'
      ''
      '  ( Decode(srg.SALE_DEAL_TYPE_CODE, CommonConsts.sdtExport,'
      '      ( select'
      '          p.PRIORITY_NO'
      '        from'
      '          VENDOR_COMPANIES c,'
      '          PRIORITIES p'
      '        where'
      '          (c.VENDOR_COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (p.PRIORITY_CODE = c.PRIORITY_CODE)'
      '      ),'
      '      ( select'
      '          p.PRIORITY_NO'
      '        from'
      '          CLIENT_COMPANIES c,'
      '          PRIORITIES p'
      '        where'
      '          (c.CLIENT_COMPANY_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (p.PRIORITY_CODE = c.PRIORITY_CODE)'
      '      )'
      '    )'
      '    between'
      
        '    (select PRIORITY_NO from PRIORITIES where (PRIORITY_CODE = :' +
        'BEGIN_CLIENT_PRIORITY_CODE)) and'
      
        '    (select PRIORITY_NO from PRIORITIES where (PRIORITY_CODE = :' +
        'END_CLIENT_PRIORITY_CODE))'
      '  ) and'
      ''
      '  ( (:HAS_MEDIATOR_CODE is null) or'
      '    (:HAS_MEDIATOR_CODE = 0) or'
      '    ( (:HAS_MEDIATOR_CODE = 1) and'
      '      (srg.MEDIATOR_COMPANY_CODE is not null)'
      '    ) or'
      '    ( (:HAS_MEDIATOR_CODE = 2) and'
      '      (srg.MEDIATOR_COMPANY_CODE is null)'
      '    )'
      '  ) and'
      ''
      '  ( (:MEDIATOR_COMPANY_CODE is null) or'
      '    (srg.MEDIATOR_COMPANY_CODE = :MEDIATOR_COMPANY_CODE) ) and'
      ''
      '  ( (:DECISION_TYPE_CODE is null) or'
      '    (s.DECISION_TYPE_CODE = :DECISION_TYPE_CODE) ) and'
      ''
      '  ( (:DECISION_EMPLOYEE_CODE is null) or'
      '    (s.DECISION_EMPLOYEE_CODE = :DECISION_EMPLOYEE_CODE) ) and'
      ''
      '  ( (:ALL_FILTERED_PRODUCTS = 1) or'
      '    (exists'
      '      ( select'
      '          1'
      '        from'
      '          TEMP_FILTERED_PRODUCTS tfp'
      '        where'
      '          (tfp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( ( (:HAS_AGREED_QUANTITY = 1) and'
      '      (s.QUANTITY is not null) ) or'
      '    ( (:HAS_NOT_AGREED_QUANTITY = 1) and'
      '      (s.QUANTITY is null) )'
      '  ) and'
      ''
      '  ( ( (:HAS_AGREED_SINGLE_PRICE = 1) and'
      '      (s.SINGLE_PRICE is not null) ) or'
      '    ( (:HAS_NOT_AGREED_SINGLE_PRICE = 1) and'
      '      (s.SINGLE_PRICE is null) )'
      '  ) and'
      ''
      '  ( (:BEGIN_REQUEST_REGISTER_DATE is null) or'
      
        '    (s.REQUEST_REGISTER_DATE >= :BEGIN_REQUEST_REGISTER_DATE) ) ' +
        'and'
      ''
      '  ( (:END_REQUEST_REGISTER_DATE is null) or'
      
        '    (s.REQUEST_REGISTER_DATE <= :END_REQUEST_REGISTER_DATE) ) an' +
        'd'
      ''
      '  ( (:BEGIN_PROGNOSIS_BEGIN_DATE is null) or'
      
        '    (s.PROGNOSIS_BEGIN_DATE <= :BEGIN_PROGNOSIS_BEGIN_DATE) ) an' +
        'd'
      ''
      '  ( (:END_PROGNOSIS_BEGIN_DATE is null) or'
      '    (s.PROGNOSIS_BEGIN_DATE <= :END_PROGNOSIS_BEGIN_DATE) ) and'
      ''
      '  ( (:BEGIN_PROGNOSIS_DAYS_RSV is null) or'
      
        '    ( (ContextDate - s.PROGNOSIS_BEGIN_DATE) >= :BEGIN_PROGNOSIS' +
        '_DAYS_RSV) ) and'
      '    '
      '  ( (:END_PROGNOSIS_DAYS_RSV is null) or'
      
        '    ( (ContextDate - s.PROGNOSIS_BEGIN_DATE) <= :END_PROGNOSIS_D' +
        'AYS_RSV) ) and'
      ''
      '  ( (:BEGIN_OFFER_SEND_PLAN_DATE is null) or'
      
        '    (s.OFFER_SEND_PLAN_DATE >= :BEGIN_OFFER_SEND_PLAN_DATE) ) an' +
        'd'
      ''
      '  ( (:END_OFFER_SEND_PLAN_DATE is null) or'
      '    (s.OFFER_SEND_PLAN_DATE <= :END_OFFER_SEND_PLAN_DATE) ) and'
      ''
      '  ( (:BEGIN_OFFER_SEND_DATE is null) or'
      '    (s.OFFER_SEND_DATE >= :BEGIN_OFFER_SEND_DATE) ) and'
      ''
      '  ( (:END_OFFER_SEND_DATE is null) or'
      '    (s.OFFER_SEND_DATE <= :END_OFFER_SEND_DATE) ) and'
      ''
      '  ( (:BEGIN_OFFER_ANSWER_PLAN_DATE is null) or'
      
        '    (s.OFFER_ANSWER_PLAN_DATE >= :BEGIN_OFFER_ANSWER_PLAN_DATE) ' +
        ') and'
      ''
      '  ( (:END_OFFER_ANSWER_PLAN_DATE is null) or'
      
        '    (s.OFFER_ANSWER_PLAN_DATE <= :END_OFFER_ANSWER_PLAN_DATE) ) ' +
        'and'
      ''
      '  ( (:BEGIN_OFFER_ANSWER_DATE is null) or'
      '    (s.OFFER_ANSWER_DATE >= :BEGIN_OFFER_ANSWER_DATE) ) and'
      ''
      '  ( (:END_OFFER_ANSWER_DATE is null) or'
      '    (s.OFFER_ANSWER_DATE <= :END_OFFER_ANSWER_DATE) ) and'
      ''
      '  ( (:BEGIN_DECISION_PLAN_DATE is null) or'
      '    (s.DECISION_PLAN_DATE >= :BEGIN_DECISION_PLAN_DATE) ) and'
      ''
      '  ( (:END_DECISION_PLAN_DATE is null) or'
      '    (s.DECISION_PLAN_DATE <= :END_DECISION_PLAN_DATE) ) and'
      ''
      '  ( (:BEGIN_DECISION_DATE is null) or'
      '    (s.DECISION_DATE >= :BEGIN_DECISION_DATE) ) and'
      ''
      '  ( (:END_DECISION_DATE is null) or'
      '    (s.DECISION_DATE <= :END_DECISION_DATE) ) and'
      ''
      ''
      '  ( (:BEGIN_OFFER_SEND_DAYS_RSV is null) or'
      
        '    ( (s.OFFER_SEND_PLAN_DATE - Coalesce(s.OFFER_SEND_DATE, Cont' +
        'extDate)) >= :BEGIN_OFFER_SEND_DAYS_RSV) ) and'
      ''
      '  ( (:END_OFFER_SEND_DAYS_RSV is null) or'
      
        '    ( (s.OFFER_SEND_PLAN_DATE - Coalesce(s.OFFER_SEND_DATE, Cont' +
        'extDate)) <= :END_OFFER_SEND_DAYS_RSV) ) and'
      ''
      '  ( (:BEGIN_OFFER_ANSWER_DAYS_RSV is null) or'
      
        '    ( (s.OFFER_ANSWER_PLAN_DATE - Coalesce(s.OFFER_ANSWER_DATE, ' +
        'ContextDate)) >= :BEGIN_OFFER_ANSWER_DAYS_RSV) ) and'
      ''
      '  ( (:END_OFFER_ANSWER_DAYS_RSV is null) or'
      
        '    ( (s.OFFER_ANSWER_PLAN_DATE - Coalesce(s.OFFER_ANSWER_DATE, ' +
        'ContextDate)) <= :END_OFFER_ANSWER_DAYS_RSV) ) and'
      ''
      '  ( (:BEGIN_DECISION_DAYS_RSV is null) or'
      
        '    ( (s.DECISION_PLAN_DATE - Coalesce(s.DECISION_DATE, ContextDat' +
        'e)) >= :BEGIN_DECISION_DAYS_RSV) ) and'
      ''
      '  ( (:END_DECISION_DAYS_RSV is null) or'
      
        '    ( (s.DECISION_PLAN_DATE - Coalesce(s.DECISION_DATE, ContextDat' +
        'e)) <= :END_DECISION_DAYS_RSV) ) and'
      ''
      '  ( (:STREAM_TYPE_CODE is null) or'
      '    (srg.STREAM_TYPE_CODE = :STREAM_TYPE_CODE) ) and'
      ''
      '  ( (:PAR_REL_PRODUCT = 0) or'
      '    ( (:PAR_REL_PRODUCT = 1) and'
      '      exists('
      '        select'
      '          1'
      '        from'
      '          PAR_REL_PRODUCTS prp'
      '        where'
      '          (prp.PARTNER_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (prp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      '          (prp.PRODUCT_CODE = s.PRODUCT_CODE) and'
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
      '          (prp.BORDER_REL_TYPE_CODE = %brt_CLIENT) and'
      '          (prp.PARTNER_CODE = s.CLIENT_COMPANY_CODE) and'
      '          (prp.PRODUCT_CODE = s.PRODUCT_CODE)'
      '      )'
      '    )'
      '  ) and'
      ''
      '  ( (:HAS_DELIVERY is null) or'
      '    (:HAS_DELIVERY = 0) or'
      '    ( (:HAS_DELIVERY = 1) and'
      '      (s.DELIVERY_OBJECT_BRANCH_CODE is not null) and'
      '      (exists('
      '        select'
      '          1'
      '        from'
      '          DELIVERY_CONTRACTS dc,'
      '          DEFICIT_COVER_DECISIONS dcd'
      '        where'
      
        '          (dc.DELIVERY_OBJECT_BRANCH_CODE = s.DELIVERY_OBJECT_BR' +
        'ANCH_CODE) and'
      '          (dc.DELIVERY_OBJECT_CODE = s.DELIVERY_OBJECT_CODE) and'
      
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
      '      (s.DELIVERY_OBJECT_BRANCH_CODE is null)'
      '    )'
      '  )'
      '  '
      ''
      'order by'
      '  REQUEST_BRANCH_ID,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'COMPANY_BASE_ROLE_CODE[srg.CLIENT_COMPANY_CODE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[s]'
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
        Name = 'HAS_DOC_ITEMS[p]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
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
      end>
    MacroParams = <>
    CustomParams = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end>
    Left = 360
    Top = 112
    object qrySaleOrdersSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object qrySaleOrdersSALE_ORDER_ID: TAbmesWideStringField
      FieldName = 'SALE_ORDER_ID'
      Size = 211
    end
    object qrySaleOrdersMANAGER_EMPLOYEE_FULL_NAME: TAbmesWideStringField
      FieldName = 'MANAGER_EMPLOYEE_FULL_NAME'
      Size = 56
    end
    object qrySaleOrdersCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object qrySaleOrdersCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object qrySaleOrdersCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleOrdersCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object qrySaleOrdersPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object qrySaleOrdersPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object qrySaleOrdersPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object qrySaleOrdersHAS_MEDIATOR: TAbmesFloatField
      FieldName = 'HAS_MEDIATOR'
    end
    object qrySaleOrdersPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object qrySaleOrdersSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object qrySaleOrdersSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object qrySaleOrdersIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
    end
    object qrySaleOrdersIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
    end
    object qrySaleOrdersPLAN_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PERIOD_DAYS'
    end
    object qrySaleOrdersREAL_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DAYS'
    end
    object qrySaleOrdersREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
    end
    object qrySaleOrdersOFFER_SEND_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_SEND_DAYS_RSV'
    end
    object qrySaleOrdersOFFER_ANSWER_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_ANSWER_DAYS_RSV'
    end
    object qrySaleOrdersDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
    end
    object qrySaleOrdersDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object qrySaleOrdersDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 5
    end
    object qrySaleOrdersPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object qrySaleOrdersPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object qrySaleOrdersQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySaleOrdersMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object qrySaleOrdersMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleOrdersACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object qrySaleOrdersACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object qrySaleOrdersACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleOrdersIS_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_QUANTITY_AGREED'
    end
    object qrySaleOrdersSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qrySaleOrdersCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qrySaleOrdersCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object qrySaleOrdersIS_SINGLE_PRICE_AGREED: TAbmesFloatField
      FieldName = 'IS_SINGLE_PRICE_AGREED'
    end
    object qrySaleOrdersTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
    end
    object qrySaleOrdersPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
    end
    object qrySaleOrdersPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
    end
    object qrySaleOrdersPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
    end
    object qrySaleOrdersPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
    end
    object qrySaleOrdersRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySaleOrdersSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 81
    end
    object qrySaleOrdersCOMMON_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMMON_STATUS_CODE'
    end
    object qrySaleOrdersPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
    end
    object qrySaleOrdersPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
    end
    object qrySaleOrdersIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
    end
    object qrySaleOrdersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySaleOrdersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySaleOrdersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object qrySaleOrdersPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object qrySaleOrdersPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object qrySaleOrdersPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object qrySaleOrdersPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qrySaleOrdersLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qrySaleOrdersLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object qrySaleOrdersLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qrySaleOrdersPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
    end
    object qrySaleOrdersTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
    end
    object qrySaleOrdersPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
    end
    object qrySaleOrdersACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
    end
    object qrySaleOrdersPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
    end
    object qrySaleOrdersTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
    end
    object qrySaleOrdersPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
    end
    object qrySaleOrdersPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleOrdersPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
    end
    object qrySaleOrdersPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object qrySaleOrdersPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
    end
    object qrySaleOrdersPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      Size = 5
    end
    object qrySaleOrdersCLIENT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_BRANCH_CODE'
    end
    object qrySaleOrdersCLIENT_DOC_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_CODE'
    end
    object qrySaleOrdersCLIENT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'CLIENT_HAS_DOCUMENTATION'
    end
    object qrySaleOrdersSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleOrdersSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleOrdersCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qrySaleOrdersCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object qrySaleOrdersREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleOrdersREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleOrdersREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qrySaleOrdersREQUEST_BRANCH_ID: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_ID'
    end
    object qrySaleOrdersSALE_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_NO'
    end
    object qrySaleOrdersSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object qrySaleOrdersSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object qrySaleOrdersASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qrySaleOrdersASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object qrySaleOrdersPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 50
    end
    object qrySaleOrdersIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
    end
    object qrySaleOrdersBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
    object qrySaleOrdersRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object qrySaleOrdersCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
  end
  object qrySaleOrderProductInfo: TAbmesSQLQuery
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
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  x.MARKET_PRICE,'
      '  (x.MARKET_PRICE / x.ACCOUNT_MEASURE_COEF) as ACC_MARKET_PRICE,'
      '  x.MARKET_PRICE_CURRENCY_CODE,'
      ''
      '  x.SALE_LEASE_PRICE,'
      
        '  (x.MARKET_PRICE_CURRENCY_CODE / x.ACCOUNT_MEASURE_COEF) as ACC' +
        '_SALE_LEASE_PRICE,'
      '  x.SALE_LEASE_CURRENCY_CODE,'
      '  SALE_LEASE_DATE_UNIT_CODE,'
      ''
      '  x.SPEC_STATE_CODE,'
      ''
      '  x.PRODUCT_PRIORITY_NO,'
      '  x.PRODUCT_PRIORITY_COLOR,'
      '  x.PRODUCT_PRIORITY_BK_COLOR,'
      ''
      '  x.PRP_DOC_BRANCH_CODE,'
      '  x.PRP_DOC_CODE,'
      '  x.PRP_HAS_DOC'
      ''
      'from'
      '  ( select'
      
        '      ( Coalesce(prpp.ACQUIRE_SINGLE_PRICE, pper.SALE_ACQUIRE_SI' +
        'NGLE_PRICE) *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(prpp.ACQUIRE_CURRENCY_C' +
        'ODE, pper.SALE_ACQUIRE_CURRENCY_CODE)) and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(To_Number(:CURRENCY_COD' +
        'E), prpp.ACQUIRE_CURRENCY_CODE, pper.SALE_ACQUIRE_CURRENCY_CODE)' +
        ') and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        )'
      '      ) as MARKET_PRICE,'
      ''
      
        '      Coalesce(To_Number(:CURRENCY_CODE), prpp.ACQUIRE_CURRENCY_' +
        'CODE, pper.SALE_ACQUIRE_CURRENCY_CODE) as MARKET_PRICE_CURRENCY_' +
        'CODE,'
      ''
      
        '      ( Coalesce(prpp.LEASE_SINGLE_PRICE, pper.SALE_LEASE_SINGLE' +
        '_PRICE) *'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(prpp.LEASE_CURRENCY_COD' +
        'E, pper.SALE_LEASE_CURRENCY_CODE)) and'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        ) /'
      '        ( select'
      '            cr.FIXING'
      '          from'
      '            CURRENCY_RATES cr'
      '          where'
      
        '            (cr.CURRENCY_CODE = Coalesce(To_Number(:CURRENCY_COD' +
        'E), prpp.LEASE_CURRENCY_CODE, pper.SALE_LEASE_CURRENCY_CODE)) an' +
        'd'
      
        '            (cr.RATE_DATE = Least(Coalesce(Cast(:TO_DATE as Date' +
        '), ContextDate), ContextDate))'
      '        )'
      '      ) as SALE_LEASE_PRICE,'
      ''
      
        '      Coalesce(To_Number(:CURRENCY_CODE), prpp.LEASE_CURRENCY_CO' +
        'DE, pper.SALE_LEASE_CURRENCY_CODE) as SALE_LEASE_CURRENCY_CODE,'
      ''
      '      pper.SALE_LEASE_DATE_UNIT_CODE,'
      ''
      '      p.ACCOUNT_MEASURE_COEF,'
      ''
      
        '      %SPEC_STATE[p.PRODUCT_CODE~null~null~null~null] as SPEC_ST' +
        'ATE_CODE,'
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
      '      %HAS_DOC_ITEMS[prp] as PRP_HAS_DOC'
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
      '      (:CLIENT_COMPANY_CODE = prpp.PARTNER_CODE(+)) and'
      '      (%brt_CLIENT = prpp.BORDER_REL_TYPE_CODE(+)) and'
      '      (p.PRODUCT_CODE = prpp.PRODUCT_CODE(+)) and'
      
        '      (Coalesce(Cast(:TO_DATE as Date), ContextDate) between prp' +
        'p.BEGIN_DATE(+) and prpp.END_DATE(+)) and'
      ''
      '      (prpp.PARTNER_CODE = prp.PARTNER_CODE(+)) and'
      
        '      (prpp.BORDER_REL_TYPE_CODE = prp.BORDER_REL_TYPE_CODE(+)) ' +
        'and'
      '      (prpp.PRODUCT_CODE = prp.PRODUCT_CODE(+))'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftWideString
        Name = 'SPEC_STATE[p.PRODUCT_CODE~null~null~null~null]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'HAS_DOC_ITEMS[prp]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 48
    object qrySaleOrderProductInfoMARKET_PRICE: TAbmesFloatField
      FieldName = 'MARKET_PRICE'
    end
    object qrySaleOrderProductInfoACC_MARKET_PRICE: TAbmesFloatField
      FieldName = 'ACC_MARKET_PRICE'
    end
    object qrySaleOrderProductInfoMARKET_PRICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'MARKET_PRICE_CURRENCY_CODE'
    end
    object qrySaleOrderProductInfoSALE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'SALE_LEASE_PRICE'
    end
    object qrySaleOrderProductInfoACC_SALE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'ACC_SALE_LEASE_PRICE'
    end
    object qrySaleOrderProductInfoSALE_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_CURRENCY_CODE'
    end
    object qrySaleOrderProductInfoSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_DATE_UNIT_CODE'
    end
    object qrySaleOrderProductInfoSPEC_STATE_CODE: TAbmesFloatField
      FieldName = 'SPEC_STATE_CODE'
    end
    object qrySaleOrderProductInfoPRODUCT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_NO'
    end
    object qrySaleOrderProductInfoPRODUCT_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_COLOR'
    end
    object qrySaleOrderProductInfoPRODUCT_PRIORITY_BK_COLOR: TAbmesFloatField
      FieldName = 'PRODUCT_PRIORITY_BK_COLOR'
    end
    object qrySaleOrderProductInfoPRP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_BRANCH_CODE'
    end
    object qrySaleOrderProductInfoPRP_DOC_CODE: TAbmesFloatField
      FieldName = 'PRP_DOC_CODE'
    end
    object qrySaleOrderProductInfoPRP_HAS_DOC: TAbmesFloatField
      FieldName = 'PRP_HAS_DOC'
    end
  end
  object prvSaleOrderProductInfo: TDataSetProvider
    DataSet = qrySaleOrderProductInfo
    Left = 288
  end
  object qryInsertSaleGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RECEIVE_PLACE_OFFICE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '  insert into SALE_GROUPS_FOR_EDIT'
      '  ( SALE_GROUP_OBJECT_BRANCH_CODE,'
      '    SALE_GROUP_OBJECT_CODE,'
      '    SALE_GROUP_BRANCH_CODE,'
      '    SALE_GROUP_CODE,'
      '    SALE_GROUP_NO,'
      '    PRIORITY_CODE,'
      '    SALE_ORDER_TYPE_CODE,'
      '    CLIENT_COMPANY_CODE,'
      '    RECEIVE_DATE,'
      '    RECEIVE_PLACE_OFFICE_CODE'
      '  )'
      '  select'
      '    :SALE_GROUP_OBJECT_BRANCH_CODE,'
      '    :SALE_GROUP_OBJECT_CODE,'
      '    :SALE_BRANCH_CODE,'
      '    :SALE_GROUP_CODE,'
      '    1,'
      '    :SALE_PRIORITY_CODE,'
      '    :SALE_ORDER_TYPE_CODE,'
      '    :CLIENT_COMPANY_CODE,'
      '    :RECEIVE_DATE,'
      '    :RECEIVE_PLACE_OFFICE_CODE'
      '  from'
      '    DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 48
  end
  object qryGetMaxSaleGroupCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(SALE_GROUP_CODE) as MAX_SALE_GROUP_CODE'
      'from'
      '  SALE_GROUPS'
      'where'
      '  (SALE_GROUP_BRANCH_CODE = :SALE_GROUP_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 160
    Top = 8
    object qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'MAX_SALE_GROUP_CODE'
    end
  end
  object qryDeliveryID: TAbmesSQLQuery
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
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  dc.DELIVERY_OBJECT_BRANCH_CODE,'
      '  dc.DELIVERY_OBJECT_CODE,'
      '  dc.DCD_OBJECT_BRANCH_CODE,'
      '  dc.DCD_OBJECT_CODE,'
      '  dc.DELIVERY_PROJECT_CODE'
      'from'
      '  DELIVERY_CONTRACTS dc,'
      '  DEFICIT_COVER_DECISIONS dcd'
      'where'
      '  (dc.DCD_OBJECT_BRANCH_CODE = dcd.DCD_OBJECT_BRANCH_CODE) and '
      '  (dc.DCD_OBJECT_CODE = dcd.DCD_OBJECT_CODE) and '
      '  (dcd.DCD_BRANCH_CODE = :DCD_BRANCH_CODE) and'
      '  (dcd.DCD_CODE = :DCD_CODE) and'
      '  (dc.DELIVERY_PROJECT_CODE = :DELIVERY_PROJECT_CODE)'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 183
    Top = 272
    object qryDeliveryIDDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object qryDeliveryIDDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object qryDeliveryIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object qryDeliveryIDDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object qryDeliveryIDDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
  end
  object prvDeliveryID: TDataSetProvider
    DataSet = qryDeliveryID
    Left = 182
    Top = 224
  end
  object qrySaleOrderDefaults: TAbmesSQLQuery
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
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  To_Number(:PARTNER_CODE) as PARTNER_CODE,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ PARTNER_OF' +
        'FICE_CODE ~ OVERRIDE_PARTNER_OFFICE] as PARTNER_OFFICE_CODE,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ MEDIATOR_C' +
        'OMPANY_CODE ~ OVERRIDE_MEDIATOR_COMPANY] as MEDIATOR_COMPANY_COD' +
        'E,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ TRANSPORT_' +
        'DURATION_DAYS ~ OVERRIDE_TRANSPORT_DURATION] as TRANSPORT_DURATI' +
        'ON_DAYS,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ SHIPMENT_T' +
        'YPE_CODE ~ OVERRIDE_SHIPMENT_TYPE] as SHIPMENT_TYPE_CODE,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ IS_PARTNER' +
        '_TRANSPORT ~ OVERRIDE_IS_PARTNER_TRANSPORT] as IS_PARTNER_TRANSP' +
        'ORT,'
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ CUSTOMHOUS' +
        'E_CODE ~ OVERRIDE_CUSTOMHOUSE] as CUSTOMHOUSE_CODE,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ STORE_CODE' +
        ' ~ OVERRIDE_STORE] as STORE_CODE,'
      ''
      
        '  %GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT[:PARTNER_CODE ~ :B' +
        'ORDER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ RESOLVE_DU' +
        'RATION_DAYS ~ OVERRIDE_RESOLVE_DURATION_DAYS] as RESOLVE_DURATIO' +
        'N_DAYS,'
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
        'CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, :RECEIVE_DAT' +
        'E, 1) as PRICE_ROW'
      '    from'
      '      DUAL'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ PARTNER_OFFIC' +
          'E_CODE ~ OVERRIDE_PARTNER_OFFICE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ MEDIATOR_COMP' +
          'ANY_CODE ~ OVERRIDE_MEDIATOR_COMPANY]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ TRANSPORT_DUR' +
          'ATION_DAYS ~ OVERRIDE_TRANSPORT_DURATION]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ SHIPMENT_TYPE' +
          '_CODE ~ OVERRIDE_SHIPMENT_TYPE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ IS_PARTNER_TR' +
          'ANSPORT ~ OVERRIDE_IS_PARTNER_TRANSPORT]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ CUSTOMHOUSE_C' +
          'ODE ~ OVERRIDE_CUSTOMHOUSE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PARTNER[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ STORE_CODE ~ ' +
          'OVERRIDE_STORE]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 
          'GET_PARTNER_PRODUCT_FIELD_VALUE_EX_PRODUCT[:PARTNER_CODE ~ :BORD' +
          'ER_REL_TYPE_CODE ~ :PRODUCT_CODE ~ :RECEIVE_DATE ~ RESOLVE_DURAT' +
          'ION_DAYS ~ OVERRIDE_RESOLVE_DURATION_DAYS]'
        ParamType = ptInput
        Value = '0'
      end>
    MacroParams = <>
    CustomParams = <>
    AfterProviderStartTransaction = qrySaleOrderAfterProviderStartTransaction
    Left = 288
    Top = 208
    object qrySaleOrderDefaultsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object qrySaleOrderDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object qrySaleOrderDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object qrySaleOrderDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qrySaleOrderDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object qrySaleOrderDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qrySaleOrderDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qrySaleOrderDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object qrySaleOrderDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qrySaleOrderDefaultsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
  end
  object prvSaleOrderDefaults: TDataSetProvider
    DataSet = qrySaleOrderDefaults
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = prvSaleOrderAfterUpdateRecord
    BeforeUpdateRecord = prvSaleOrderBeforeUpdateRecord
    BeforeApplyUpdates = prvSaleOrderBeforeApplyUpdates
    AfterApplyUpdates = prvSaleOrderAfterApplyUpdates
    Left = 288
    Top = 160
  end
  object prvDecisionTypes: TDataSetProvider
    DataSet = qryDecisionTypes
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 264
  end
  object qryDecisionTypes: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  dt.DECISION_TYPE_CODE,'
      '  dt.DECISION_TYPE_ABBREV,'
      '  dt.DECISION_TYPE_NAME,'
      '  dt.DECISION_TYPE_NO,'
      '  dt.ALLOWS_SALE,'
      '  dt.IS_ESTIMATION_BOUND,'
      '  dt.IS_REALIZATION_BOUND,'
      '  dt.REQUIRES_FINISHING'
      ''
      'from'
      '  DECISION_TYPES dt'
      ''
      'order by'
      '  DECISION_TYPE_NO')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 296
    Top = 312
    object qryDecisionTypesDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDecisionTypesDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 5
    end
    object qryDecisionTypesDECISION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_NAME'
      Size = 50
    end
    object qryDecisionTypesDECISION_TYPE_NO: TAbmesFloatField
      FieldName = 'DECISION_TYPE_NO'
    end
    object qryDecisionTypesALLOWS_SALE: TAbmesFloatField
      FieldName = 'ALLOWS_SALE'
    end
    object qryDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField
      FieldName = 'IS_ESTIMATION_BOUND'
    end
    object qryDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField
      FieldName = 'IS_REALIZATION_BOUND'
    end
    object qryDecisionTypesREQUIRES_FINISHING: TAbmesFloatField
      FieldName = 'REQUIRES_FINISHING'
    end
  end
  object qryGetNewSaleDecisionTypeCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  seq_DECISION_TYPES.NextVal as NEW_SALE_DECISION_TYPE_CODE'
      'from'
      '  DUAL')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 168
    Top = 320
    object qryGetNewSaleDecisionTypeCodeNEW_SALE_DECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEW_SALE_DECISION_TYPE_CODE'
    end
  end
  object prvSaleRequestGroupDefaults: TDataSetProvider
    DataSet = qrySaleRequestGroupDefaults
    Options = [poPropogateChanges, poUseQuoteChar]
    BeforeUpdateRecord = prvSaleRequestGroupBeforeUpdateRecord
    BeforeApplyUpdates = prvSaleRequestGroupBeforeApplyUpdates
    AfterApplyUpdates = prvSaleRequestGroupAfterApplyUpdates
    Left = 576
    Top = 152
  end
  object qrySaleRequestGroupDefaults: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_SEND_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prp.MEDIATOR_COMPANY_CODE'
      'from'
      '  PAR_REL_PERIODS prp'
      'where'
      '  (:CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) and'
      
        '  (prp.PARTNER_CODE = %PAR_REL_PERIOD_EXISTANCE_PARTNER_CODE[:CL' +
        'IENT_COMPANY_CODE ~ 1 ~ :REQUEST_SEND_DATE]) and'
      '  (prp.BORDER_REL_TYPE_CODE = 1) and'
      '  (:REQUEST_SEND_DATE between prp.BEGIN_DATE and prp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PAR_REL_PERIOD_EXISTANCE_PARTNER_CODE[:CLIENT_COMPANY_CODE ~ 1 ~' +
          ' :REQUEST_SEND_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALE_REQUEST_GROUPS_FOR_EDIT'
    AfterProviderStartTransaction = qrySaleRequestGroupAfterProviderStartTransaction
    Left = 576
    Top = 200
    object qrySaleRequestGroupDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
  end
end
