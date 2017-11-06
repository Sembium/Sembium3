inherited dmGroupSales: TdmGroupSales
  Height = 481
  Width = 845
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
      '  srg.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  srg.SALE_GROUP_OBJECT_CODE,'
      '  srg.ANNUL_EMPLOYEE_CODE,'
      '  srg.ANNUL_DATE,'
      '  srg.ANNUL_TIME,'
      '  srg.FINISH_EMPLOYEE_CODE,'
      '  srg.FINISH_DATE,'
      '  srg.FINISH_TIME,'
      '  srg.CREATE_EMPLOYEE_CODE,'
      '  srg.CREATE_DATE,'
      '  srg.CREATE_TIME,'
      '  srg.CHANGE_EMPLOYEE_CODE,'
      '  srg.CHANGE_DATE,'
      '  srg.CHANGE_TIME,'
      '  srg.DOC_BRANCH_CODE,'
      '  srg.DOC_CODE,'
      '  %HAS_DOC_ITEMS[srg] as HAS_DOC_ITEMS,'
      '  sg.PRIORITY_CODE as SG_PRIORITY_CODE,'
      '  sg.SALE_ORDER_TYPE_CODE as SG_SALE_ORDER_TYPE_CODE,'
      '  sg.CLIENT_COMPANY_CODE as SG_CLIENT_COMPANY_CODE,'
      '  sg.RECEIVE_DATE as SG_RECEIVE_DATE,'
      '  sg.SALE_GROUP_NO as SG_SALE_GROUP_NO,'
      '  sr.STORE_REQUEST_BRANCH_CODE,'
      '  sr.STORE_REQUEST_CODE,'
      '  s.SALE_TYPE_CODE as S_SALE_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE as S_CLIENT_COMPANY_CODE,'
      
        '  %GET_PARTNER_NAME[s.CLIENT_COMPANY_CODE] as S_CLIENT_COMPANY_N' +
        'AME,'
      '  ( select'
      '      c.COMPANY_NO'
      '    from'
      '      COMPANIES c'
      '    where'
      '      (c.COMPANY_CODE = s.CLIENT_COMPANY_CODE)'
      '  ) as S_CLIENT_COMPANY_NO,'
      '  s.REQUEST_SEND_DATE as S_REQUEST_SEND_DATE,'
      '  s.REQUEST_REGISTER_DATE as S_REQUEST_REGISTER_DATE,'
      '  s.RECEIVE_DATE as S_RECEIVE_DATE,'
      '  s.RECEIVE_DATE_CHG as S_RECEIVE_DATE_CHG,'
      '  s.CL_OFFER_RECEIVE_DATE as S_CL_OFFER_RECEIVE_DATE,'
      '  s.CL_OFFER_RECEIVE_DATE_CH as S_CL_OFFER_RECEIVE_DATEC,'
      '  s.SHIPMENT_DATE as S_SHIPMENT_DATE,'
      '  s.CURRENCY_CODE as S_CURRENCY_CODE,'
      '  Min(ssh.SHIPMENT_PLAN_DATE) as SSH_SHIPMENT_PLAN_DATE,'
      '  Min(ssh.SHIPMENT_DATE) as SSH_SHIPMENT_DATE,'
      '  Min(ssh.INVOICE_NO) as SSH_INVOICE_NO,'
      '  Min(ssh.INVOICE_DATE) as SSH_INVOICE_DATE,'
      '  Min(ssh.IS_PROFORM_INVOICE) as SSH_IS_PROFORM_INVOICE,'
      '  Min(ssh.INVOICE_CURRENCY_CODE) as SSH_INVOICE_CURRENCY_CODE,'
      '  Min(inv.INVOICE_BRANCH_CODE) as INVOICE_BRANCH_CODE,'
      '  Min(inv.INVOICE_CODE) as INVOICE_CODE,'
      '  Min(inv.INVOICE_NO) as INV_INVOICE_NO,'
      '  Min(inv.INVOICE_DATE) as INV_INVOICE_DATE,'
      '  Min(inv.IS_PROFORM_INVOICE) as INV_IS_PROFORM_INVOICE,'
      '  Min('
      '    case'
      '      when (inv.APPROVE_EMPLOYEE_CODE is not null) then'
      '        6'
      '      when (inv.IS_PROFORM_INVOICE = 0) then'
      '        5'
      '      when (inv.INVOICE_CODE is not null) then'
      '        4'
      
        '      when (ssh.INVOICE_NO is not null) and (ssh.IS_PROFORM_INVO' +
        'ICE = 0) then'
      '        3'
      
        '      when (ssh.INVOICE_NO is not null) and (ssh.IS_PROFORM_INVO' +
        'ICE = 1) then'
      '        2'
      '    else'
      '      1'
      '    end'
      '  ) as INVOICE_STATE_CODE,'
      ''
      
        '  sgpo.PROCESS_OBJECT_IDENTIFIER as SALE_GROUP_OBJECT_IDENTIFIER' +
        ','
      '  0 as CREATE_SALE_GROUP,'
      '  s.SALE_DEAL_TYPE_CODE as S_SALE_DEAL_TYPE_CODE,'
      '  s.CL_OFFER_RETURN_DATE as S_CL_OFFER_RETURN_DATE,'
      '  s.RETURN_DATE as S_RETURN_DATE,'
      '  s.IMPORT_DATE as S_IMPORT_DATE,'
      '  Min(ssh.IMPORT_PLAN_DATE) as SSH_IMPORT_PLAN_DATE,'
      '  Min(ssh.IMPORT_DATE) as SSH_IMPORT_DATE,'
      '  srg.IS_ACTIVATED_BY_CLIENT,'
      '  srg.CLIENT_REQUEST_GROUP_NO,'
      '  srg.STREAM_TYPE_CODE,'
      '  srg.PRODUCT_CLASS_CODE,'
      ''
      '  fo.FIN_ORDER_CODE,'
      '  fo.FIN_ORDER_BRANCH_CODE as FO_BRANCH_CODE,'
      '  fo.EXEC_DEPT_CODE as FO_EXEC_DEPT_CODE,'
      '  fo.PRIORITY_CODE as FO_PRIORITY_CODE,'
      
        '  fo.WORK_FINANCIAL_PRODUCT_CODE as FO_WORK_FINANCIAL_PRODUCT_CO' +
        'DE,'
      '  fo.PARTNER_CODE as FO_PARTNER_CODE,'
      '  ( select'
      '      %FIN_ORDER_STATUS[fo2] as FO_STATUS_CODE'
      '    from'
      '      FIN_ORDERS fo2'
      '    where'
      '      (fo2.FIN_ORDER_CODE = fo.FIN_ORDER_CODE)'
      '  ) as FO_STATUS_CODE,'
      '  To_Number(null) as SPEC_FIN_MODEL_CODE,'
      '  To_Number(null) as FO_CLOSE_REQUESTED,'
      ''
      '  s.SHIPMENT_DAYS as S_SHIPMENT_DAYS,'
      '  s.RECEIVE_PLACE_OFFICE_CODE as S_RECEIVE_PLACE_OFFICE_CODE,'
      '  s.CUSTOMHOUSE_CODE as S_CUSTOMHOUSE_CODE,'
      '  s.SHIPMENT_TYPE_CODE as S_SHIPMENT_TYPE_CODE,'
      '  s.IS_VENDOR_TRANSPORT as S_IS_VENDOR_TRANSPORT,'
      '  Min(ssh.RECEIVE_DATE) as SSH_RECEIVE_DATE,'
      '  s.MANAGER_EMPLOYEE_CODE as S_MANAGER_EMPLOYEE_CODE,'
      ''
      '  sg.SALE_GROUP_BRANCH_CODE,'
      '  sg.SALE_GROUP_CODE,'
      ''
      '  srg.MEDIATOR_COMPANY_CODE,'
      '  srg.NOTES'
      '    '
      'from'
      '  SALE_REQUEST_GROUPS srg,'
      '  SALE_GROUPS sg,'
      '  PROCESS_OBJECTS sgpo,'
      '  INVOICE_ITEMS ii,'
      '  INVOICES inv,'
      '  STORE_REQUESTS sr,'
      '  SALES s,'
      '  SALE_SHIPMENTS ssh,'
      '  FIN_ORDERS fo'
      ''
      'where'
      
        '  (srg.SALE_GROUP_OBJECT_BRANCH_CODE = sg.SALE_GROUP_OBJECT_BRAN' +
        'CH_CODE(+)) and'
      
        '  (srg.SALE_GROUP_OBJECT_CODE = sg.SALE_GROUP_OBJECT_CODE(+)) an' +
        'd'
      
        '  (sg.SALE_GROUP_OBJECT_BRANCH_CODE = sgpo.PROCESS_OBJECT_BRANCH' +
        '_CODE(+)) and'
      '  (sg.SALE_GROUP_OBJECT_CODE = sgpo.PROCESS_OBJECT_CODE(+)) and'
      
        '  (sg.SALE_GROUP_OBJECT_BRANCH_CODE = sr.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE(+)) and'
      
        '  (sg.SALE_GROUP_OBJECT_CODE = sr.BND_PROCESS_OBJECT_CODE(+)) an' +
        'd'
      '  (srg.REQUEST_BRANCH_CODE = s.REQUEST_BRANCH_CODE(+)) and'
      '  (srg.REQUEST_NO = s.REQUEST_NO(+)) and'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE(+)) a' +
        'nd'
      '  (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE(+)) and'
      
        '  (ssh.SHIPMENT_OBJECT_BRANCH_CODE = ii.BND_PROCESS_OBJECT_BRANC' +
        'H_CODE(+)) and'
      '  (ssh.SHIPMENT_OBJECT_CODE = ii.BND_PROCESS_OBJECT_CODE(+)) and'
      '  (ii.BRANCH_CODE = inv.INVOICE_BRANCH_CODE(+)) and'
      '  (ii.INVOICE_CODE = inv.INVOICE_CODE(+)) and'
      '  (inv.STORNO_EMPLOYEE_CODE(+) is null) and'
      
        '  (srg.SALE_GROUP_OBJECT_BRANCH_CODE = fo.BND_PROCESS_OBJECT_BRA' +
        'NCH_CODE(+)) and'
      
        '  (srg.SALE_GROUP_OBJECT_CODE = fo.BND_PROCESS_OBJECT_CODE(+)) a' +
        'nd'
      '  (fo.ANNUL_EMPLOYEE_CODE(+) is null) and'
      '  (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (srg.REQUEST_NO = :REQUEST_NO)'
      ''
      'group by'
      '  srg.REQUEST_BRANCH_CODE,'
      '  srg.REQUEST_NO,'
      '  srg.SALE_ORDER_TYPE_CODE,'
      '  srg.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  srg.SALE_GROUP_OBJECT_CODE,'
      '  srg.ANNUL_EMPLOYEE_CODE,'
      '  srg.ANNUL_DATE,'
      '  srg.ANNUL_TIME,'
      '  srg.FINISH_EMPLOYEE_CODE,'
      '  srg.FINISH_DATE,'
      '  srg.FINISH_TIME,'
      '  srg.CREATE_EMPLOYEE_CODE,'
      '  srg.CREATE_DATE,'
      '  srg.CREATE_TIME,'
      '  srg.CHANGE_EMPLOYEE_CODE,'
      '  srg.CHANGE_DATE,'
      '  srg.CHANGE_TIME,'
      '  srg.DOC_BRANCH_CODE,'
      '  srg.DOC_CODE,'
      '  sg.PRIORITY_CODE,'
      '  sg.SALE_ORDER_TYPE_CODE,'
      '  sg.CLIENT_COMPANY_CODE,'
      '  sg.RECEIVE_DATE,'
      '  sg.SALE_GROUP_NO,'
      '  sr.STORE_REQUEST_BRANCH_CODE,'
      '  sr.STORE_REQUEST_CODE,'
      '  s.SALE_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE,'
      '  s.REQUEST_SEND_DATE,'
      '  s.REQUEST_REGISTER_DATE,'
      '  s.RECEIVE_DATE,'
      '  s.RECEIVE_DATE_CHG,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      '  s.CL_OFFER_RECEIVE_DATE_CH,'
      '  s.SHIPMENT_DATE,'
      '  s.CURRENCY_CODE,'
      '  sgpo.PROCESS_OBJECT_IDENTIFIER,'
      '  s.SALE_DEAL_TYPE_CODE,'
      '  s.CL_OFFER_RETURN_DATE,'
      '  s.RETURN_DATE,'
      '  s.IMPORT_DATE,'
      '  srg.IS_ACTIVATED_BY_CLIENT,'
      '  srg.CLIENT_REQUEST_GROUP_NO,'
      '  srg.STREAM_TYPE_CODE,'
      '  srg.PRODUCT_CLASS_CODE,'
      '  srg.STREAM_TYPE_CODE,'
      '  fo.FIN_ORDER_CODE,'
      '  fo.CLOSE_EMPLOYEE_CODE,'
      '  fo.FIN_ORDER_BRANCH_CODE,'
      '  fo.EXEC_DEPT_CODE,'
      '  fo.PRIORITY_CODE,'
      '  fo.WORK_FINANCIAL_PRODUCT_CODE,'
      '  fo.PARTNER_CODE,'
      '  s.SHIPMENT_DAYS,'
      '  s.RECEIVE_PLACE_OFFICE_CODE,'
      '  s.CUSTOMHOUSE_CODE,'
      '  s.SHIPMENT_TYPE_CODE,'
      '  s.IS_VENDOR_TRANSPORT,'
      '  s.MANAGER_EMPLOYEE_CODE,'
      '  sg.SALE_GROUP_BRANCH_CODE,'
      '  sg.SALE_GROUP_CODE,'
      '  srg.MEDIATOR_COMPANY_CODE,'
      '  srg.NOTES'
      '')
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
        Name = 'GET_PARTNER_NAME[s.CLIENT_COMPANY_CODE]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftWideString
        Name = 'FIN_ORDER_STATUS[fo2]'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALE_REQUEST_GROUPS_FOR_EDIT'
    AfterProviderStartTransaction = qrySaleRequestGroupAfterProviderStartTransaction
    Left = 48
    Top = 56
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
    object qrySaleRequestGroupSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object qrySaleRequestGroupSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
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
    object qrySaleRequestGroupFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qrySaleRequestGroupFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
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
    object qrySaleRequestGroupCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySaleRequestGroupCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySaleRequestGroupSG_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'SG_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSG_SALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SG_SALE_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSG_CLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SG_CLIENT_COMPANY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSG_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SG_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSG_SALE_GROUP_NO: TAbmesFloatField
      FieldName = 'SG_SALE_GROUP_NO'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_SALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'S_SALE_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'S_CLIENT_COMPANY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_REQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_REQUEST_SEND_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_REQUEST_REGISTER_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_RECEIVE_DATE_CHG: TAbmesSQLTimeStampField
      FieldName = 'S_RECEIVE_DATE_CHG'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_CL_OFFER_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CL_OFFER_RECEIVE_DATEC: TAbmesSQLTimeStampField
      FieldName = 'S_CL_OFFER_RECEIVE_DATEC'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_SHIPMENT_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'S_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_INVOICE_NO: TAbmesFloatField
      FieldName = 'SSH_INVOICE_NO'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_INVOICE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SSH_INVOICE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupINV_INVOICE_NO: TAbmesFloatField
      FieldName = 'INV_INVOICE_NO'
      ProviderFlags = []
    end
    object qrySaleRequestGroupINV_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INV_INVOICE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSALE_GROUP_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_GROUP_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleRequestGroupCREATE_SALE_GROUP: TAbmesFloatField
      FieldName = 'CREATE_SALE_GROUP'
      ProviderFlags = []
    end
    object qrySaleRequestGroupDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleRequestGroupDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object qrySaleRequestGroupHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'S_CLIENT_COMPANY_NAME'
      ProviderFlags = []
      Size = 153
    end
    object qrySaleRequestGroupS_SALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'S_SALE_DEAL_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_CL_OFFER_RETURN_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_RETURN_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_IMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_IMPORT_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_IMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object qrySaleRequestGroupSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object qrySaleRequestGroupIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
    end
    object qrySaleRequestGroupPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object qrySaleRequestGroupFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_CLOSE_REQUESTED: TAbmesFloatField
      FieldName = 'FO_CLOSE_REQUESTED'
      ProviderFlags = []
    end
    object qrySaleRequestGroupFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_SHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'S_SHIPMENT_DAYS'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_RECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'S_RECEIVE_PLACE_OFFICE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'S_CUSTOMHOUSE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'S_SHIPMENT_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_IS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'S_IS_VENDOR_TRANSPORT'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSSH_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_MANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'S_MANAGER_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupS_CLIENT_COMPANY_NO: TAbmesFloatField
      FieldName = 'S_CLIENT_COMPANY_NO'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSALE_GROUP_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupINVOICE_STATE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_STATE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qrySaleRequestGroupSSH_IS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'SSH_IS_PROFORM_INVOICE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupINV_IS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'INV_IS_PROFORM_INVOICE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 2000
    end
  end
  object prvSaleRequestGroup: TDataSetProvider
    DataSet = qrySaleRequestGroup
    UpdateMode = upWhereKeyOnly
    OnGetData = prvSaleRequestGroupGetData
    OnUpdateError = prvSaleRequestGroupUpdateError
    AfterUpdateRecord = prvSaleRequestGroupAfterUpdateRecord
    BeforeUpdateRecord = prvSaleRequestGroupBeforeUpdateRecord
    BeforeApplyUpdates = prvSaleRequestGroupBeforeApplyUpdates
    AfterApplyUpdates = prvSaleRequestGroupAfterApplyUpdates
    Left = 48
    Top = 8
  end
  object dsSaleRequestGroup: TDataSource
    DataSet = qrySaleRequestGroup
    Left = 168
    Top = 8
  end
  object qrySaleRequestGroupLines: TAbmesSQLQuery
    DataSource = dsSaleRequestGroup
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select'
      '  s.SALE_OBJECT_BRANCH_CODE,'
      '  s.SALE_OBJECT_CODE,'
      '  s.SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  s.SALE_GROUP_OBJECT_CODE,'
      '  s.SALE_ORDER_TYPE_CODE,'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO,'
      '  s.CLIENT_COMPANY_CODE,'
      '  s.REQUEST_SEND_DATE,'
      '  s.REQUEST_REGISTER_DATE,'
      '  s.PRODUCT_CODE,'
      '  p.NAME as PRODUCT_NAME,'
      '  p.CUSTOM_CODE as PRODUCT_NO,'
      '  p.MEASURE_CODE as PRODUCT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_CODE as PRODUCT_ACCOUNT_MEASURE_CODE,'
      '  p.ACCOUNT_MEASURE_COEF as PRODUCT_ACCOUNT_MEASURE_COEF,'
      '  %HAS_DOC_ITEMS[p] as PRODUCT_HAS_DOC_ITEMS,'
      '  s.QUANTITY,'
      '  s.QUANTITY_CHG,'
      '  s.CL_OFFER_QUANTITY,'
      '  s.CL_OFFER_QUANTITY_CHG,'
      '  s.CURRENCY_CODE,'
      '  s.SINGLE_PRICE,'
      '  s.CL_OFFER_SINGLE_PRICE,'
      '  s.MARKET_SINGLE_PRICE,'
      '  s.DISCOUNT_PERCENT,'
      '  s.RECEIVE_DATE,'
      '  s.RECEIVE_DATE_CHG,'
      '  s.CL_OFFER_RECEIVE_DATE,'
      '  s.CL_OFFER_RECEIVE_DATE_CH,'
      '  s.SALE_BRANCH_CODE,'
      '  s.SALE_NO,'
      '  s.SALE_TYPE_CODE,'
      '  s.SHIPMENT_DATE,'
      '  s.SHIPMENT_STORE_CODE,'
      ''
      '   ( select'
      
        '       (dt.DEPT_TYPE_ABBREV || d.CUSTOM_CODE || d.SUFFIX_LETTER)' +
        ' as STORE_IDENTIFIER'
      '    from'
      '      DEPTS d,'
      '      DEPT_TYPES dt'
      '    where'
      '      (d.DEPT_CODE = s.SHIPMENT_STORE_CODE) and'
      '      (d.DEPT_TYPE_CODE = dt.DEPT_TYPE_CODE(+))'
      '  ) as SHIPMENT_STORE_IDENTIFIER,'
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
      '  s.CHANGE_TIME,'
      
        '  ssh.SHIPMENT_OBJECT_BRANCH_CODE as SSH_SHIPMENT_OBJ_BRANCH_COD' +
        'E,'
      '  ssh.SHIPMENT_OBJECT_CODE as SSH_SHIPMENT_OBJ_CODE,'
      '  ssh.SALE_OBJECT_BRANCH_CODE as SSH_SALE_OBJECT_BRANCH_CODE,'
      '  ssh.SALE_OBJECT_CODE as SSH_SALE_OBJECT_CODE,'
      '  ssh.PLAN_QUANTITY as SSH_PLAN_QUANTITY,'
      '  ssh.QUANTITY as SSH_QUANTITY,'
      '  ssh.SHIPMENT_PLAN_DATE as SSH_SHIPMENT_PLAN_DATE,'
      '  ssh.SHIPMENT_DATE as SSH_SHIPMENT_DATE,'
      '  ssh.INVOICE_NO as SSH_INVOICE_NO,'
      '  ssh.INVOICE_DATE as SSH_INVOICE_DATE,'
      '  ssh.IS_PROFORM_INVOICE as SSH_IS_PROFORM_INVOICE,'
      '  ssh.INVOICE_CURRENCY_CODE as SSH_INVOICE_CURRENCY_CODE,'
      '  ssh.INVOICE_SINGLE_PRICE as SSH_INVOICE_SINGLE_PRICE,'
      '  po.PROCESS_OBJECT_IDENTIFIER,'
      ''
      '  ( select'
      '      Sum('
      '        sd.QUANTITY -'
      '        ( select'
      '            Coalesce(Sum(sd2.QUANTITY), 0) as RETURNED_QUANTITY'
      '          from'
      '            STORE_DEALS sd2'
      '          where'
      
        '            (sd2.BND_PROCESS_OBJECT_BRANCH_CODE = sd.STORE_DEAL_' +
        'OBJECT_BRANCH_CODE) and'
      
        '            (sd2.BND_PROCESS_OBJECT_CODE = sd.STORE_DEAL_OBJECT_' +
        'CODE) and'
      '            (sd2.BND_PROCESS_CODE = 50) and'
      '            (sd2.IN_OUT = 1) and'
      '            (sd2.STORNO_EMPLOYEE_CODE is null)'
      '        )'
      '      )'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (sd.BND_PROCESS_OBJECT_CODE = ssh.SHIPMENT_OBJECT_CODE) an' +
        'd'
      '      (sd.IN_OUT = -1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as QUANTITY_TAKEN_FROM_STORE,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      PLANNED_STORE_DEALS psd,'
      '      STORE_REQUESTS sr,'
      '      STORE_REQUEST_ITEMS sri,'
      '      STORE_DEALS sd'
      '    where'
      
        '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_DE' +
        'AL_BRANCH_CODE) and'
      
        '      (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CODE' +
        ') and'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sr.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sr.STORE_REQUEST_CODE) and'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = sd.STORE_REQUEST_BRANCH_C' +
        'ODE) and'
      '      (sri.STORE_REQUEST_CODE = sd.STORE_REQUEST_CODE) and'
      
        '      (sri.STORE_REQUEST_ITEM_CODE = sd.STORE_REQUEST_ITEM_CODE)' +
        ' and'
      
        '      (psd.BND_PROCESS_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJECT_' +
        'BRANCH_CODE) and'
      
        '      (psd.BND_PROCESS_OBJECT_CODE = ssh.SHIPMENT_OBJECT_CODE) a' +
        'nd'
      '      (psd.BND_PROCESS_CODE = 160) and'
      '      (psd.IN_OUT = -1) and'
      '      (psd.IS_PLANNED_MANUALLY = 0) and'
      '      (sr.ANNUL_EMPLOYEE_CODE is null) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as STORE_REQ_COMPLETED_QUANTITY,'
      ''
      '  Nvl2(s.ANNUL_EMPLOYEE_CODE, null, 1) as ANNUL_MULTIPLIER,'
      '  0 as TOTAL_PRICE,'
      '  s.QUANTITY_CHG as QUANTITY_CHG_X,'
      '  s.CL_OFFER_QUANTITY_CHG as CL_OFFER_QUANTITY_CHG_X,'
      '  0 as CREATE_SALE,'
      '  0 as RECORD_CHANGED,'
      ''
      '  s.SALE_DEAL_TYPE_CODE,'
      '  s.CL_OFFER_RETURN_DATE,'
      '  s.RETURN_DATE,'
      '  s.CL_OFFER_LEASE_DATE_UNIT_QTY,'
      '  s.CL_OFFER_LEASE_DATE_UNIT_CODE,'
      '  s.LEASE_DATE_UNIT_QTY,'
      '  s.LEASE_DATE_UNIT_CODE,'
      '  s.IMPORT_DATE,'
      ''
      '  ssh.LEASE_PLAN_DATE_UNIT_QTY as SSH_LEASE_PLAN_DATE_UNIT_QTY,'
      '  ssh.LEASE_DATE_UNIT_QTY as SSH_LEASE_DATE_UNIT_QTY,'
      '  ssh.IMPORT_PLAN_DATE as SSH_IMPORT_PLAN_DATE,'
      '  ssh.IMPORT_DATE as SSH_IMPORT_DATE,'
      ''
      '  s.CLIENT_REQUEST_NO,'
      '  s.DOC_BRANCH_CODE,'
      '  s.DOC_CODE,'
      '  %HAS_DOC_ITEMS[s] as HAS_DOC_ITEMS,'
      
        '  %PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.' +
        'CLIENT_COMPANY_CODE~p] as CLIENT_PRODUCT_NAME,'
      ''
      '  ( select'
      '      Sum(sd.QUANTITY)'
      '    from'
      '      STORE_DEALS sd'
      '    where'
      
        '      (sd.BND_PROCESS_OBJECT_BRANCH_CODE = ssh.SHIPMENT_OBJECT_B' +
        'RANCH_CODE) and'
      
        '      (sd.BND_PROCESS_OBJECT_CODE = ssh.SHIPMENT_OBJECT_CODE) an' +
        'd'
      '      (sd.IN_OUT = 1) and'
      '      (sd.STORNO_EMPLOYEE_CODE is null)'
      '  ) as QUANTITY_RETURNED_TO_STORE,'
      '  s.IS_VENDOR_TRANSPORT,'
      '  s.ASPECT_TYPE_CODE,'
      ''
      '  s.SHIPMENT_DAYS,'
      '  s.RECEIVE_PLACE_OFFICE_CODE,'
      '  s.CUSTOMHOUSE_CODE,'
      '  s.SHIPMENT_TYPE_CODE,'
      '  ssh.RECEIVE_DATE as SSH_RECEIVE_DATE,'
      '  s.MANAGER_EMPLOYEE_CODE,'
      ''
      '  %brt_CLIENT as BORDER_REL_TYPE_CODE,'
      '  s.CLIENT_COMPANY_CODE as PARTNER_CODE,'
      ''
      '  ssh.DOC_BRANCH_CODE as SSH_DOC_BRANCH_CODE,'
      '  ssh.DOC_CODE as SSH_DOC_CODE'
      ''
      'from'
      '  SALES s,'
      '  PROCESS_OBJECTS po,'
      '  PRODUCTS p,'
      '  SALE_SHIPMENTS ssh'
      ''
      'where'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = po.PROCESS_OBJECT_BRANCH_CODE) an' +
        'd'
      '  (s.SALE_OBJECT_CODE = po.PROCESS_OBJECT_CODE) and'
      
        '  (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE(+)) a' +
        'nd'
      '  (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE(+)) and'
      '  (s.PRODUCT_CODE = p.PRODUCT_CODE(+)) and'
      '  (s.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (s.REQUEST_NO = :REQUEST_NO)'
      ''
      'order by'
      '  s.REQUEST_BRANCH_CODE,'
      '  s.REQUEST_NO,'
      '  s.REQUEST_LINE_NO')
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
        Name = 'HAS_DOC_ITEMS[s]'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 
          'PRODUCT_COMPANY_PRODUCT_NAMES_FROM_PRODUCTS[s.PRODUCT_CODE~s.CLI' +
          'ENT_COMPANY_CODE~p]'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftString
        Name = 'brt_CLIENT'
        ParamType = ptInput
        Value = '1'
      end>
    MacroParams = <>
    CustomParams = <>
    TableName = 'SALES_FOR_EDIT'
    Left = 168
    Top = 56
    object qrySaleRequestGroupLinesSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleRequestGroupLinesSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrySaleRequestGroupLinesSALE_GROUP_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_BRANCH_CODE'
    end
    object qrySaleRequestGroupLinesSALE_GROUP_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_OBJECT_CODE'
    end
    object qrySaleRequestGroupLinesSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object qrySaleRequestGroupLinesREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object qrySaleRequestGroupLinesREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object qrySaleRequestGroupLinesREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object qrySaleRequestGroupLinesCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object qrySaleRequestGroupLinesREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object qrySaleRequestGroupLinesREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object qrySaleRequestGroupLinesPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object qrySaleRequestGroupLinesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object qrySaleRequestGroupLinesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesPRODUCT_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesPRODUCT_ACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object qrySaleRequestGroupLinesQUANTITY_CHG: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_CHG'
    end
    object qrySaleRequestGroupLinesCL_OFFER_QUANTITY: TAbmesFloatField
      FieldName = 'CL_OFFER_QUANTITY'
    end
    object qrySaleRequestGroupLinesCL_OFFER_QUANTITY_CHG: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_QUANTITY_CHG'
    end
    object qrySaleRequestGroupLinesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qrySaleRequestGroupLinesSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object qrySaleRequestGroupLinesCL_OFFER_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'CL_OFFER_SINGLE_PRICE'
    end
    object qrySaleRequestGroupLinesMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
    end
    object qrySaleRequestGroupLinesDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
    end
    object qrySaleRequestGroupLinesRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object qrySaleRequestGroupLinesRECEIVE_DATE_CHG: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE_CHG'
    end
    object qrySaleRequestGroupLinesCL_OFFER_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE'
    end
    object qrySaleRequestGroupLinesCL_OFFER_RECEIVE_DATE_CH: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RECEIVE_DATE_CH'
    end
    object qrySaleRequestGroupLinesSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object qrySaleRequestGroupLinesSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object qrySaleRequestGroupLinesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object qrySaleRequestGroupLinesSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object qrySaleRequestGroupLinesSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
    end
    object qrySaleRequestGroupLinesANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupLinesANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object qrySaleRequestGroupLinesANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object qrySaleRequestGroupLinesFINISH_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'FINISH_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupLinesFINISH_DATE: TAbmesSQLTimeStampField
      FieldName = 'FINISH_DATE'
    end
    object qrySaleRequestGroupLinesFINISH_TIME: TAbmesSQLTimeStampField
      FieldName = 'FINISH_TIME'
    end
    object qrySaleRequestGroupLinesCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupLinesCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object qrySaleRequestGroupLinesCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object qrySaleRequestGroupLinesCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupLinesCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object qrySaleRequestGroupLinesCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object qrySaleRequestGroupLinesSSH_SHIPMENT_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_SHIPMENT_OBJ_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_SHIPMENT_OBJ_CODE: TAbmesFloatField
      FieldName = 'SSH_SHIPMENT_OBJ_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_SALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_SALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SSH_SALE_OBJECT_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_PLAN_QUANTITY: TAbmesFloatField
      FieldName = 'SSH_PLAN_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_QUANTITY: TAbmesFloatField
      FieldName = 'SSH_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_SHIPMENT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_SHIPMENT_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_INVOICE_NO: TAbmesFloatField
      FieldName = 'SSH_INVOICE_NO'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_INVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_INVOICE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_INVOICE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SSH_INVOICE_CURRENCY_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_INVOICE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SSH_INVOICE_SINGLE_PRICE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object qrySaleRequestGroupLinesQUANTITY_TAKEN_FROM_STORE: TAbmesFloatField
      FieldName = 'QUANTITY_TAKEN_FROM_STORE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSTORE_REQ_COMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'STORE_REQ_COMPLETED_QUANTITY'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesANNUL_MULTIPLIER: TAbmesFloatField
      FieldName = 'ANNUL_MULTIPLIER'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesQUANTITY_CHG_X: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_CHG_X'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesCL_OFFER_QUANTITY_CHG_X: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_QUANTITY_CHG_X'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesCREATE_SALE: TAbmesFloatField
      FieldName = 'CREATE_SALE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesRECORD_CHANGED: TAbmesFloatField
      FieldName = 'RECORD_CHANGED'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object qrySaleRequestGroupLinesCL_OFFER_RETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'CL_OFFER_RETURN_DATE'
    end
    object qrySaleRequestGroupLinesRETURN_DATE: TAbmesSQLTimeStampField
      FieldName = 'RETURN_DATE'
    end
    object qrySaleRequestGroupLinesCL_OFFER_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
    end
    object qrySaleRequestGroupLinesCL_OFFER_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CL_OFFER_LEASE_DATE_UNIT_CODE'
    end
    object qrySaleRequestGroupLinesLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object qrySaleRequestGroupLinesLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object qrySaleRequestGroupLinesIMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'IMPORT_DATE'
    end
    object qrySaleRequestGroupLinesSHIPMENT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIPMENT_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object qrySaleRequestGroupLinesSSH_LEASE_PLAN_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'SSH_LEASE_PLAN_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'SSH_LEASE_DATE_UNIT_QTY'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_IMPORT_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_PLAN_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_IMPORT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_IMPORT_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object qrySaleRequestGroupLinesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object qrySaleRequestGroupLinesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object qrySaleRequestGroupLinesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      ProviderFlags = []
      Size = 250
    end
    object qrySaleRequestGroupLinesQUANTITY_RETURNED_TO_STORE: TAbmesFloatField
      FieldName = 'QUANTITY_RETURNED_TO_STORE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesIS_VENDOR_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_VENDOR_TRANSPORT'
    end
    object qrySaleRequestGroupLinesASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object qrySaleRequestGroupLinesSHIPMENT_DAYS: TAbmesFloatField
      FieldName = 'SHIPMENT_DAYS'
    end
    object qrySaleRequestGroupLinesRECEIVE_PLACE_OFFICE_CODE: TAbmesFloatField
      FieldName = 'RECEIVE_PLACE_OFFICE_CODE'
    end
    object qrySaleRequestGroupLinesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qrySaleRequestGroupLinesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qrySaleRequestGroupLinesSSH_RECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'SSH_RECEIVE_DATE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
    object qrySaleRequestGroupLinesBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = []
      Required = True
    end
    object qrySaleRequestGroupLinesSSH_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_DOC_CODE: TAbmesFloatField
      FieldName = 'SSH_DOC_CODE'
      ProviderFlags = []
    end
    object qrySaleRequestGroupLinesSSH_IS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'SSH_IS_PROFORM_INVOICE'
      ProviderFlags = []
    end
  end
  object qryInsSaleShipment: TAbmesSQLQuery
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
        Name = 'PLAN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_SINGLE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_PLAN_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
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
      'insert into SALE_SHIPMENTS_FOR_EDIT'
      ' (SHIPMENT_OBJECT_BRANCH_CODE,'
      '  SHIPMENT_OBJECT_CODE,'
      '  SALE_OBJECT_BRANCH_CODE,'
      '  SALE_OBJECT_CODE,'
      '  SALE_SHIPMENT_NO,'
      '  PLAN_QUANTITY,'
      '  QUANTITY,'
      '  SHIPMENT_PLAN_DATE,'
      '  SHIPMENT_DATE,'
      '  INVOICE_NO,'
      '  INVOICE_DATE,'
      '  INVOICE_CURRENCY_CODE,'
      '  INVOICE_SINGLE_PRICE,'
      '  RECEIVE_DATE,'
      '  LEASE_PLAN_DATE_UNIT_QTY,'
      '  LEASE_DATE_UNIT_QTY,'
      '  IMPORT_PLAN_DATE,'
      '  IMPORT_DATE,'
      '  IS_PROFORM_INVOICE,'
      '  DOC_BRANCH_CODE,'
      '  DOC_CODE'
      ' )'
      'values'
      ' (:SHIPMENT_OBJECT_BRANCH_CODE,'
      '  :SHIPMENT_OBJECT_CODE,'
      '  :SALE_OBJECT_BRANCH_CODE,'
      '  :SALE_OBJECT_CODE,'
      '  1,'
      '  :PLAN_QUANTITY,'
      '  :QUANTITY,'
      '  :SHIPMENT_PLAN_DATE,'
      '  :SHIPMENT_DATE,'
      '  :INVOICE_NO,'
      '  :INVOICE_DATE,'
      '  :INVOICE_CURRENCY_CODE,'
      '  :INVOICE_SINGLE_PRICE,'
      '  :RECEIVE_DATE,'
      '  :LEASE_PLAN_DATE_UNIT_QTY,'
      '  :LEASE_DATE_UNIT_QTY,'
      '  :IMPORT_PLAN_DATE,'
      '  :IMPORT_DATE,'
      '  :IS_PROFORM_INVOICE,'
      '  :DOC_BRANCH_CODE,'
      '  :DOC_CODE'
      ')')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 168
    Top = 120
  end
  object qryUpdSaleShipment: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PLAN_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SHIPMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_SINGLE_PRICE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RECEIVE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_PLAN_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_QTY'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'IMPORT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROFORM_INVOICE'
        ParamType = ptInput
      end
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
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  SALE_SHIPMENTS_FOR_EDIT'
      'set'
      '  PLAN_QUANTITY = :PLAN_QUANTITY,'
      '  QUANTITY = :QUANTITY,'
      '  SHIPMENT_PLAN_DATE = :SHIPMENT_PLAN_DATE,'
      '  SHIPMENT_DATE = :SHIPMENT_DATE,'
      '  INVOICE_NO = :INVOICE_NO,'
      '  INVOICE_DATE = :INVOICE_DATE,'
      '  INVOICE_CURRENCY_CODE = :INVOICE_CURRENCY_CODE,'
      '  INVOICE_SINGLE_PRICE = :INVOICE_SINGLE_PRICE,'
      '  RECEIVE_DATE = :RECEIVE_DATE,'
      '  LEASE_PLAN_DATE_UNIT_QTY = :LEASE_PLAN_DATE_UNIT_QTY,'
      '  LEASE_DATE_UNIT_QTY = :LEASE_DATE_UNIT_QTY,'
      '  IMPORT_PLAN_DATE = :IMPORT_PLAN_DATE,'
      '  IMPORT_DATE = :IMPORT_DATE,'
      '  IS_PROFORM_INVOICE = :IS_PROFORM_INVOICE,'
      '  DOC_BRANCH_CODE = :DOC_BRANCH_CODE,'
      '  DOC_CODE = :DOC_CODE'
      'where'
      
        '  (SHIPMENT_OBJECT_BRANCH_CODE = :SHIPMENT_OBJECT_BRANCH_CODE) a' +
        'nd'
      '  (SHIPMENT_OBJECT_CODE = :SHIPMENT_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 168
    Top = 168
  end
  object qryInsSaleGroup: TAbmesSQLQuery
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
        Name = 'SALE_GROUP_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
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
        Name = 'SALE_GROUP_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into SALE_GROUPS_FOR_EDIT'
      ' (SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  SALE_GROUP_OBJECT_CODE,'
      '  SALE_GROUP_BRANCH_CODE,'
      '  SALE_GROUP_CODE,'
      '  PRIORITY_CODE,'
      '  SALE_ORDER_TYPE_CODE,'
      '  CLIENT_COMPANY_CODE,'
      '  RECEIVE_DATE,'
      '  SALE_GROUP_NO'
      ' )'
      'values'
      ' (:SALE_GROUP_OBJECT_BRANCH_CODE,'
      '  :SALE_GROUP_OBJECT_CODE,'
      '  :SALE_GROUP_BRANCH_CODE,'
      '  :SALE_GROUP_CODE,'
      '  :PRIORITY_CODE,'
      '  :SALE_ORDER_TYPE_CODE,'
      '  :CLIENT_COMPANY_CODE,'
      '  :RECEIVE_DATE,'
      '  :SALE_GROUP_NO'
      ' )'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 120
  end
  object qryUpdSaleGroup: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'PRIORITY_CODE'
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
        Name = 'SALE_GROUP_NO'
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
      end>
    SQL.Strings = (
      'update'
      '  SALE_GROUPS_FOR_EDIT'
      'set'
      '  PRIORITY_CODE = :PRIORITY_CODE,'
      '  CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE,'
      '  RECEIVE_DATE = :RECEIVE_DATE,'
      '  SALE_GROUP_NO = :SALE_GROUP_NO'
      'where'
      
        '  (SALE_GROUP_OBJECT_BRANCH_CODE = :SALE_GROUP_OBJECT_BRANCH_COD' +
        'E) and'
      '  (SALE_GROUP_OBJECT_CODE = :SALE_GROUP_OBJECT_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 168
  end
  object qryGetMaxSaleGroupNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      end>
    SQL.Strings = (
      'select'
      '  Max(sg.SALE_GROUP_NO) as MAX_SALE_GROUP_NO'
      'from'
      '  SALE_GROUPS sg'
      'where'
      '  (sg.SALE_ORDER_TYPE_CODE = :SALE_ORDER_TYPE_CODE) and'
      '  (sg.CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE) and'
      '  (sg.RECEIVE_DATE = :RECEIVE_DATE) and'
      '  (sg.RECEIVE_PLACE_OFFICE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 232
    object qryGetMaxSaleGroupNoMAX_SALE_GROUP_NO: TAbmesFloatField
      FieldName = 'MAX_SALE_GROUP_NO'
    end
  end
  object qryGetClientPriority: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  PRIORITY_CODE'
      'from'
      '  CLIENT_COMPANIES'
      'where'
      '  (CLIENT_COMPANY_CODE = :CLIENT_COMPANY_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 8
    object qryGetClientPriorityPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
  end
  object qryGetMaxSaleRequestNo: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(srg.REQUEST_NO) as MAX_REQUEST_NO'
      'from'
      '  SALE_REQUEST_GROUPS srg'
      'where'
      '  (srg.REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 72
    object qryGetMaxSaleRequestNoMAX_REQUEST_NO: TAbmesFloatField
      FieldName = 'MAX_REQUEST_NO'
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
      '    Max(s.SALE_NO) as MAX_SALE_NO'
      'from'
      '  SALES s'
      'where'
      '  (s.SALE_BRANCH_CODE = :SALE_BRANCH_CODE) ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 168
    Top = 232
    object qryGetMaxSaleNoMAX_SALE_NO: TAbmesFloatField
      FieldName = 'MAX_SALE_NO'
    end
  end
  object qryUpdSales: TAbmesSQLQuery
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
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  SALES_FOR_EDIT'
      'set'
      
        '  SALE_GROUP_OBJECT_BRANCH_CODE = :SALE_GROUP_OBJECT_BRANCH_CODE' +
        ','
      '  SALE_GROUP_OBJECT_CODE = :SALE_GROUP_OBJECT_CODE'
      'where'
      '  (REQUEST_BRANCH_CODE = :REQUEST_BRANCH_CODE) and'
      '  (REQUEST_NO = :REQUEST_NO) and'
      '  (ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 360
  end
  object qryInsPlannedStoreDeal: TAbmesSQLQuery
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
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into PLANNED_STORE_DEALS_FOR_EDIT'
      ' (PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  PLANNED_STORE_DEAL_TYPE_CODE,'
      '  PRIORITY_CODE,'
      '  IS_PLANNED_MANUALLY,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  BND_PROCESS_CODE,'
      '  STORE_CODE,'
      '  STORE_DEAL_BEGIN_DATE,'
      '  STORE_DEAL_END_DATE,'
      '  STORE_DEAL_TYPE_CODE,'
      '  PRODUCT_CODE,'
      '  QUANTITY,'
      '  ACCOUNT_QUANTITY,'
      '  ANNUL_EMPLOYEE_CODE,'
      '  ANNUL_DATE,'
      '  ANNUL_TIME,'
      '  CLOSE_EMPLOYEE_CODE,'
      '  CLOSE_DATE,'
      '  CLOSE_TIME,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME)'
      'select'
      '  :PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  :PLANNED_STORE_DEAL_TYPE_CODE,'
      '  :PRIORITY_CODE,'
      '  0,'
      '  :BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  :BND_PROCESS_OBJECT_CODE,'
      '  :BND_PROCESS_CODE,'
      '  :STORE_CODE,'
      '  :STORE_DEAL_BEGIN_DATE,'
      '  :STORE_DEAL_END_DATE,'
      '  :STORE_DEAL_TYPE_CODE,'
      '  :PRODUCT_CODE,'
      '  :QUANTITY,'
      '  (:QUANTITY * p.ACCOUNT_MEASURE_COEF) as ACCOUNT_QUANTITY,'
      '  :ANNUL_EMPLOYEE_CODE,'
      '  :ANNUL_DATE,'
      '  :ANNUL_TIME,'
      '  :CLOSE_EMPLOYEE_CODE,'
      '  :CLOSE_DATE,'
      '  :CLOSE_TIME,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME'
      'from'
      '  PRODUCTS p,'
      '  INTERNAL_VALUES iv'
      'where'
      '  (p.PRODUCT_CODE = :PRODUCT_CODE) and'
      '  (iv.CODE = 1)'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 8
  end
  object qryUpdPlannedStoreDeal: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
        Name = 'OLD_BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OLD_BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  PLANNED_STORE_DEALS_FOR_EDIT psd'
      'set'
      
        '  psd.PLANNED_STORE_DEAL_TYPE_CODE = :PLANNED_STORE_DEAL_TYPE_CO' +
        'DE,'
      '  psd.PRIORITY_CODE = :PRIORITY_CODE,'
      
        '  psd.BND_PROCESS_OBJECT_BRANCH_CODE = :BND_PROCESS_OBJECT_BRANC' +
        'H_CODE,'
      '  psd.BND_PROCESS_OBJECT_CODE = :BND_PROCESS_OBJECT_CODE,'
      '  psd.BND_PROCESS_CODE = :BND_PROCESS_CODE,'
      '  psd.STORE_CODE = :STORE_CODE,'
      '  psd.STORE_DEAL_BEGIN_DATE = :STORE_DEAL_BEGIN_DATE,'
      '  psd.STORE_DEAL_END_DATE = :STORE_DEAL_END_DATE,'
      '  psd.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE,'
      '  psd.PRODUCT_CODE = :PRODUCT_CODE,'
      '  psd.QUANTITY = :QUANTITY,'
      '  psd.ACCOUNT_QUANTITY ='
      '    ( select'
      '        :QUANTITY * p.ACCOUNT_MEASURE_COEF'
      '      from'
      '        PRODUCTS p'
      '      where'
      '        (p.PRODUCT_CODE = :PRODUCT_CODE)'
      '    ),'
      '  psd.ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '  psd.ANNUL_DATE = :ANNUL_DATE,'
      '  psd.ANNUL_TIME = :ANNUL_TIME,'
      '  psd.CLOSE_EMPLOYEE_CODE = :CLOSE_EMPLOYEE_CODE,'
      '  psd.CLOSE_DATE = :CLOSE_DATE,'
      '  psd.CLOSE_TIME = :CLOSE_TIME,'
      '  psd.CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  psd.CHANGE_DATE = :CHANGE_DATE,'
      '  psd.CHANGE_TIME = :CHANGE_TIME'
      'where'
      
        '  (psd.BND_PROCESS_OBJECT_BRANCH_CODE = :OLD_BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '  (psd.BND_PROCESS_OBJECT_CODE = :OLD_BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      '  (psd.STORE_DEAL_TYPE_CODE = :STORE_DEAL_TYPE_CODE) and'
      '  (psd.BND_PROCESS_CODE in (160, 165)) and'
      '  (psd.IS_PLANNED_MANUALLY = 0)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 56
  end
  object qryGetMaxStoreRequestCode: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  Max(sr.STORE_REQUEST_CODE) as MAX_STORE_REQUEST_CODE'
      'from'
      '  STORE_REQUESTS sr'
      'where'
      '  (sr.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE)'
      '  ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 360
    object qryGetMaxStoreRequestCodeMAX_STORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'MAX_STORE_REQUEST_CODE'
    end
  end
  object qryInsStoreRequest: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
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
        Name = 'REQUEST_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_END_DATE'
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
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORE_REQUESTS'
      ' (STORE_REQUEST_BRANCH_CODE,'
      '  STORE_REQUEST_CODE,'
      '  IN_OUT,'
      '  BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  BND_PROCESS_OBJECT_CODE,'
      '  REQUEST_DEPT_CODE,'
      '  REQUEST_EMPLOYEE_CODE,'
      '  REQUEST_BEGIN_DATE,'
      '  REQUEST_END_DATE,'
      '  CREATE_EMPLOYEE_CODE,'
      '  CREATE_DATE,'
      '  CREATE_TIME,'
      '  CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE,'
      '  CHANGE_TIME,'
      '  FINISH_EMPLOYEE_CODE,'
      '  FINISH_DATE,'
      '  FINISH_TIME,'
      '  ANNUL_EMPLOYEE_CODE,'
      '  ANNUL_DATE,'
      '  ANNUL_TIME,'
      '  PRODUCT_CLASS_CODE)'
      'values'
      ' (:STORE_REQUEST_BRANCH_CODE,'
      '  :STORE_REQUEST_CODE,'
      '  -1,'
      '  :BND_PROCESS_OBJECT_BRANCH_CODE,'
      '  :BND_PROCESS_OBJECT_CODE,'
      '  :REQUEST_DEPT_CODE,'
      '  :REQUEST_EMPLOYEE_CODE,'
      '  :REQUEST_BEGIN_DATE,'
      '  :REQUEST_END_DATE,'
      '  :CREATE_EMPLOYEE_CODE,'
      '  :CREATE_DATE,'
      '  :CREATE_TIME,'
      '  :CHANGE_EMPLOYEE_CODE,'
      '  :CHANGE_DATE,'
      '  :CHANGE_TIME,'
      '  :FINISH_EMPLOYEE_CODE,'
      '  :FINISH_DATE,'
      '  :FINISH_TIME,'
      '  :ANNUL_EMPLOYEE_CODE,'
      '  :ANNUL_DATE,'
      '  :ANNUL_TIME,'
      '  :PRODUCT_CLASS_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 264
  end
  object qryInsStoreRequestItem: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_ITEM_CODE'
        ParamType = ptInput
      end
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
        Name = 'REQUEST_QUANTITY'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORE_REQUEST_ITEMS'
      ' (STORE_REQUEST_BRANCH_CODE,'
      '  STORE_REQUEST_CODE,'
      '  STORE_REQUEST_ITEM_CODE,'
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  REQUEST_QUANTITY)'
      'values'
      ' (:STORE_REQUEST_BRANCH_CODE,'
      '  :STORE_REQUEST_CODE,'
      '  :STORE_REQUEST_ITEM_CODE,'
      '  :PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  :PLANNED_STORE_DEAL_CODE,'
      '  :REQUEST_QUANTITY)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 360
  end
  object qryUpdStoreRequest: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'REQUEST_END_DATE'
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
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  STORE_REQUESTS'
      'set'
      '  REQUEST_DEPT_CODE = :REQUEST_DEPT_CODE,'
      '  REQUEST_EMPLOYEE_CODE = :REQUEST_EMPLOYEE_CODE,'
      '  REQUEST_BEGIN_DATE = :REQUEST_BEGIN_DATE,'
      '  REQUEST_END_DATE = :REQUEST_END_DATE,'
      '  CHANGE_EMPLOYEE_CODE = :CHANGE_EMPLOYEE_CODE,'
      '  CHANGE_DATE = :CHANGE_DATE,'
      '  CHANGE_TIME = :CHANGE_TIME,'
      '  FINISH_EMPLOYEE_CODE = :FINISH_EMPLOYEE_CODE,'
      '  FINISH_DATE = :FINISH_DATE,'
      '  FINISH_TIME = :FINISH_TIME,'
      '  ANNUL_EMPLOYEE_CODE = :ANNUL_EMPLOYEE_CODE,'
      '  ANNUL_DATE = :ANNUL_DATE,'
      '  ANNUL_TIME = :ANNUL_TIME'
      'where'
      '  (STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) and'
      '  (STORE_REQUEST_CODE = :STORE_REQUEST_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 288
    Top = 312
  end
  object qryUpdStoreRequestItems: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update'
      '  STORE_REQUEST_ITEMS sri'
      'set'
      '  sri.REQUEST_QUANTITY = ('
      '    select'
      '      psd2.QUANTITY'
      '    from'
      '      PLANNED_STORE_DEALS psd2'
      '    where'
      
        '      (psd2.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_D' +
        'EAL_BRANCH_CODE) and'
      
        '      (psd2.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_COD' +
        'E)'
      '  )'
      'where'
      
        '  (sri.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) a' +
        'nd'
      '  (sri.STORE_REQUEST_CODE = :STORE_REQUEST_CODE) and'
      '  exists ('
      '    select'
      '      s.SALE_OBJECT_BRANCH_CODE,'
      '      s.SALE_OBJECT_CODE'
      '    from'
      '      PLANNED_STORE_DEALS psd,'
      '      SALE_SHIPMENTS ssh,'
      '      SALES s'
      '    where'
      
        '      (psd.PLANNED_STORE_DEAL_BRANCH_CODE = sri.PLANNED_STORE_DE' +
        'AL_BRANCH_CODE) and'
      
        '      (psd.PLANNED_STORE_DEAL_CODE = sri.PLANNED_STORE_DEAL_CODE' +
        ') and'
      
        '      (ssh.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_' +
        'BRANCH_CODE) and'
      
        '      (ssh.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) a' +
        'nd'
      
        '      (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE) ' +
        'and'
      '      (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      '      (psd.BND_PROCESS_CODE = 160) and'
      '      (s.ANNUL_EMPLOYEE_CODE is null)'
      '  )')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 312
  end
  object qryInsStoreRequestItems: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
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
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'insert into STORE_REQUEST_ITEMS'
      ' (STORE_REQUEST_BRANCH_CODE,'
      '  STORE_REQUEST_CODE,'
      '  STORE_REQUEST_ITEM_CODE,'
      '  PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  PLANNED_STORE_DEAL_CODE,'
      '  REQUEST_QUANTITY)'
      'select'
      '  :STORE_REQUEST_BRANCH_CODE,'
      '  :STORE_REQUEST_CODE,'
      '  s.REQUEST_LINE_NO as STORE_REQUEST_ITEM_CODE,'
      '  psd.PLANNED_STORE_DEAL_BRANCH_CODE,'
      '  psd.PLANNED_STORE_DEAL_CODE,'
      '  psd.QUANTITY as REQUEST_QUANTITY'
      'from'
      '  SALES s,'
      '  SALE_SHIPMENTS ssh,'
      '  PLANNED_STORE_DEALS psd'
      'where'
      
        '  (s.SALE_GROUP_OBJECT_BRANCH_CODE = :SALE_GROUP_OBJECT_BRANCH_C' +
        'ODE) and'
      '  (s.SALE_GROUP_OBJECT_CODE = :SALE_GROUP_OBJECT_CODE) and'
      '  (s.SALE_OBJECT_BRANCH_CODE = ssh.SALE_OBJECT_BRANCH_CODE) and'
      '  (s.SALE_OBJECT_CODE = ssh.SALE_OBJECT_CODE) and'
      
        '  (ssh.SHIPMENT_OBJECT_BRANCH_CODE = psd.BND_PROCESS_OBJECT_BRAN' +
        'CH_CODE) and'
      '  (ssh.SHIPMENT_OBJECT_CODE = psd.BND_PROCESS_OBJECT_CODE) and'
      '  (s.ANNUL_EMPLOYEE_CODE is null) and'
      '  (psd.BND_PROCESS_CODE = 160) and'
      '  (psd.IS_PLANNED_MANUALLY = 0) and'
      '  not exists ('
      '    select'
      '      sri.STORE_REQUEST_BRANCH_CODE,'
      '      sri.STORE_REQUEST_CODE,'
      '      sri.STORE_REQUEST_ITEM_CODE'
      '    from'
      '      STORE_REQUEST_ITEMS sri'
      '    where'
      
        '      (sri.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_COD' +
        'E) and'
      '      (sri.STORE_REQUEST_CODE = :STORE_REQUEST_CODE) and'
      '      (sri.STORE_REQUEST_ITEM_CODE = s.REQUEST_LINE_NO)'
      '  )'
      ' ')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 264
  end
  object qryGetSaleGroupNonAnnuledSaleCount: TAbmesSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  Count(*) as SALE_COUNT'
      'from'
      '  SALES'
      'where'
      
        '  (SALE_GROUP_OBJECT_BRANCH_CODE = :SALE_GROUP_OBJECT_BRANCH_COD' +
        'E) and'
      '  (SALE_GROUP_OBJECT_CODE = :SALE_GROUP_OBJECT_CODE) and'
      '  (ANNUL_EMPLOYEE_CODE is null)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 424
    Top = 216
    object qryGetSaleGroupNonAnnuledSaleCountSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
    end
  end
  object qryDelStoreRequestItemsForAnnuledPlannedStoreDeals: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete'
      '  STORE_REQUEST_ITEMS sri'
      'where'
      
        '  (sri.STORE_REQUEST_BRANCH_CODE = :STORE_REQUEST_BRANCH_CODE) a' +
        'nd'
      '  (sri.STORE_REQUEST_CODE = :STORE_REQUEST_CODE) and'
      '  (exists'
      '    ( select'
      '        1'
      '      from'
      '        PLANNED_STORE_DEALS psd'
      '      where'
      
        '        (sri.PLANNED_STORE_DEAL_BRANCH_CODE = psd.PLANNED_STORE_' +
        'DEAL_BRANCH_CODE) and'
      
        '        (sri.PLANNED_STORE_DEAL_CODE = psd.PLANNED_STORE_DEAL_CO' +
        'DE) and'
      '        (psd.ANNUL_EMPLOYEE_CODE is not null)'
      '    )'
      '  ) and'
      '  (not exists'
      '    ( select'
      '        1'
      '      from'
      '        STORE_DEALS sd'
      '      where'
      
        '        (sd.STORE_REQUEST_BRANCH_CODE = sri.STORE_REQUEST_BRANCH' +
        '_CODE) and'
      '        (sd.STORE_REQUEST_CODE = sri.STORE_REQUEST_CODE) and'
      
        '        (sd.STORE_REQUEST_ITEM_CODE = sri.STORE_REQUEST_ITEM_COD' +
        'E)'
      '    )'
      '  )'
      '')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 352
    Top = 416
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
      '  Max(sg.SALE_GROUP_CODE) as MAX_SALE_GROUP_CODE'
      'from'
      '  SALE_GROUPS sg'
      'where'
      '  (sg.SALE_GROUP_BRANCH_CODE = :SALE_GROUP_BRANCH_CODE)')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 48
    Top = 296
    object qryGetMaxSaleGroupCodeMAX_SALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'MAX_SALE_GROUP_CODE'
    end
  end
  object qryGroupSaleDefaults: TAbmesSQLQuery
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
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  prp.CURRENCY_CODE,'
      '  prp.STORE_CODE,'
      '  prp.TRANSPORT_DURATION_DAYS,'
      '  prp.MEDIATOR_COMPANY_CODE,'
      '  prp.SHIPMENT_TYPE_CODE,'
      '  prp.IS_PARTNER_TRANSPORT,'
      '  prp.CUSTOMHOUSE_CODE,'
      '  prp.PARTNER_OFFICE_CODE'
      ''
      'from'
      '  PAR_REL_PERIODS prp'
      ''
      'where'
      '  (:PARTNER_CODE = :PARTNER_CODE) and'
      
        '  (prp.PARTNER_CODE = %PAR_REL_PERIOD_EXISTANCE_PARTNER_CODE[:PA' +
        'RTNER_CODE ~ :BORDER_REL_TYPE_CODE ~ :THE_DATE]) and'
      '  (prp.BORDER_REL_TYPE_CODE = :BORDER_REL_TYPE_CODE) and'
      '  (:THE_DATE between prp.BEGIN_DATE and prp.END_DATE)')
    SQLConnection = SQLConn
    Macros = <
      item
        DataType = ftString
        Name = 
          'PAR_REL_PERIOD_EXISTANCE_PARTNER_CODE[:PARTNER_CODE ~ :BORDER_RE' +
          'L_TYPE_CODE ~ :THE_DATE]'
        ParamType = ptInput
        Value = '0=0'
      end>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 56
    object qryGroupSaleDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object qryGroupSaleDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object qryGroupSaleDefaultsTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
    end
    object qryGroupSaleDefaultsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object qryGroupSaleDefaultsSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object qryGroupSaleDefaultsIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
    end
    object qryGroupSaleDefaultsCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object qryGroupSaleDefaultsPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
  end
  object prvGroupSaleDefaults: TDataSetProvider
    DataSet = qryGroupSaleDefaults
    Options = [poReadOnly, poUseQuoteChar]
    Left = 640
    Top = 8
  end
  object qryGroupSaleLineDefaults: TAbmesSQLQuery
    MaxBlobSize = -1
    Params = <
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
      
        '  MiscUtils.GetNamedValue(x.PRICE_ROW, '#39'UNMODIFIED_PRICE'#39') as PR' +
        'ICE,'
      
        '  MiscUtils.GetNamedValue(x.PRICE_ROW, '#39'PRICE_MODIFIER'#39') as PRIC' +
        'E_MODIFIER,'
      
        '  MiscUtils.GetNamedValue(x.PRICE_ROW, '#39'CURRENCY_CODE'#39') as CURRE' +
        'NCY_CODE'
      ''
      'from'
      '  ( select'
      
        '      ProductUtils.ProductPartnerPrice2(:PRODUCT_CODE, :PARTNER_' +
        'CODE, :BORDER_REL_TYPE_CODE, :OBTAINMENT_TYPE_CODE, :THE_DATE, 1' +
        ') as PRICE_ROW'
      '    from'
      '      DUAL'
      '  ) x')
    SQLConnection = SQLConn
    Macros = <>
    MacroParams = <>
    CustomParams = <>
    Left = 640
    Top = 168
    object qryGroupSaleLineDefaultsPRICE: TAbmesFloatField
      FieldName = 'PRICE'
    end
    object qryGroupSaleLineDefaultsPRICE_MODIFIER: TAbmesFloatField
      FieldName = 'PRICE_MODIFIER'
    end
    object qryGroupSaleLineDefaultsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
  end
  object prvGroupSaleLineDefaults: TDataSetProvider
    DataSet = qryGroupSaleLineDefaults
    Options = [poReadOnly, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 120
  end
end
