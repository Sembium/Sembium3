inherited frMLBoundProcessObject: TfrMLBoundProcessObject
  Width = 989
  Height = 69
  DesignSize = (
    989
    69)
  object gbProductionOrder: TGroupBox [0]
    Left = 5
    Top = 0
    Width = 284
    Height = 65
    Anchors = [akLeft, akTop, akBottom]
    Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042') '
    TabOrder = 0
    object lblStatus: TLabel
      Left = 8
      Top = 16
      Width = 36
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
      FocusControl = edtStatus
    end
    object lblSaleBranchNo: TLabel
      Left = 103
      Top = 16
      Width = 48
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = edtSaleBranchNo
    end
    object lblSaleNo: TLabel
      Left = 160
      Top = 16
      Width = 31
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtSaleNo
    end
    object lblSaleType: TLabel
      Left = 216
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = edtSaleType
    end
    object lblProductionOrderType: TLabel
      Left = 56
      Top = 16
      Width = 36
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = edtProductionOrderType
    end
    object edtStatus: TDBEdit
      Left = 8
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'ML_STATE_CODE'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtSaleBranchNo: TDBEdit
      Left = 104
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'SALE_BRANCH_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    object edtSaleNo: TDBEdit
      Left = 160
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'SALE_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object edtSaleType: TDBEdit
      Left = 216
      Top = 32
      Width = 24
      Height = 21
      Color = clBtnFace
      DataField = 'SALE_TYPE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 4
    end
    object pnlDocs: TToolBar
      Left = 242
      Top = 31
      Width = 37
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 24
      Images = dmMain.ilActions
      TabOrder = 5
      object btnDocs: TSpeedButton
        Left = 0
        Top = 0
        Width = 37
        Height = 22
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1054#1055#1044
        Flat = True
        Glyph.Data = {
          76070000424D760700000000000036000000280000001D000000100000000100
          2000000000004007000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000060A0000060A0000060A0000060A0000060
          A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A000000000000000
          0000000000000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
          FF000060A0000060A00000FFFF0000000000000000000000000000FFFF0000FF
          FF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FF
          FF000000000000000000000000000060A00000FFFF0000FFFF000060A0000060
          A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
          FF0000FFFF000060A0000060A00000FFFF000060A00000000000000000000000
          00000060A0000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF000060A00000FF
          FF0000FFFF000060A00000000000000000000000000000FFFF000060A0000060
          A00000FFFF0000FFFF000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
          FF00FF00FF0000FFFF0000FFFF000060A00000FFFF0000FFFF000060A0000000
          0000000000000000000000FFFF0000FFFF000060A00000FFFF0000FFFF000060
          A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000FFFF0000FF
          FF000060A0000060A00000000000000000000000000000000000000000000060
          A00000FFFF000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          000000000000000000000000000000FFFF0000FFFF0000FFFF000060A00000FF
          FF0000FFFF000060A0000060A0000060A00000FFFF0000FFFF000060A00000FF
          FF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF000060A000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
          FF0000FFFF000060A0000060A0000000000000000000000000000060A0000060
          A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060
          A0000000000000000000000000000060A0000060A00000FFFF0000FFFF000060
          A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060A000000000000060
          A00000FFFF0000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000060
          A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000060A0000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
    end
    object edtProductionOrderType: TDBEdit
      Left = 56
      Top = 32
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'PRODUCTION_ORDER_TYPE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
  end
  object gbManagerEmployee: TGroupBox [1]
    Left = 296
    Top = 0
    Width = 185
    Height = 65
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' '#1055#1086#1088#1098#1095#1080#1090#1077#1083' '
    TabOrder = 1
    DesignSize = (
      185
      65)
    object edtManagerEmployeeName: TDBEdit
      Left = 8
      Top = 32
      Width = 166
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = 'SALE_MANAGER_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
  end
  object gbProductionStart: TGroupBox [2]
    Left = 488
    Top = 0
    Width = 196
    Height = 65
    Anchors = [akTop, akRight, akBottom]
    Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 2
    object lblProductionStartDate: TLabel
      Left = 9
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object lblProductionStartReserveDays: TLabel
      Left = 119
      Top = 16
      Width = 27
      Height = 13
      Caption = #1088#1079#1088#1074'.'
      FocusControl = edtProductionStartReserveDays
    end
    object edtStartCoef2: TLabel
      Left = 151
      Top = 17
      Width = 25
      Height = 13
      Caption = #1050#1092#1094'.'
      FocusControl = edtStartCoef
      Transparent = True
    end
    object edtProductionStartReserveDays: TDBEdit
      Left = 119
      Top = 32
      Width = 25
      Height = 21
      Color = clBtnFace
      DataField = 'PRODUCTION_START_RESERVE_DAYS'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtStartCoef: TDBEdit
      Left = 151
      Top = 32
      Width = 36
      Height = 21
      Color = clBtnFace
      DataField = 'START_STAGE_COEF'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    inline frProductionStartDate: TfrDateFieldEditFrame
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      inherited dsData: TDataSource
        DataSet = cdsData
      end
    end
  end
  inherited alActions: TActionList
    Left = 368
    Top = 32
  end
  inherited dsData: TDataSource
    DataSet = cdsData
    Left = 400
  end
  object cdsData: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conXModels
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
    ProviderName = 'prvBoundProcessObject'
    AfterOpen = cdsDataAfterOpen
    Left = 368
    object cdsDataPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsDataPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
    object cdsDataPROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CLASS_CODE'
    end
    object cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object cdsDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsDataSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsDataSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
    end
    object cdsDataSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsDataSALE_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 5
    end
    object cdsDataSALE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_CODE'
    end
    object cdsDataSALE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object cdsDataSALE_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataSALE_MANUFACTURE_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_MANUFACTURE_QUANTITY'
    end
    object cdsDataSALE_MANUFACTURE_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'SALE_MANUFACTURE_TECH_QUANTITY'
    end
    object cdsDataSALE_MANAGER_CODE: TAbmesFloatField
      FieldName = 'SALE_MANAGER_CODE'
    end
    object cdsDataSALE_MANAGER_NAME: TAbmesWideStringField
      FieldName = 'SALE_MANAGER_NAME'
      Size = 41
    end
    object cdsDataS_ENTER_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_ENTER_STORE_PLAN_BEGIN_DATE'
    end
    object cdsDataS_ENTER_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'S_ENTER_STORE_PLAN_END_DATE'
    end
    object cdsDataOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object cdsDataSALE_CLIENT_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_COMPANY_SHORT_NAME'
    end
    object cdsDataSALE_CLIENT_COUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_COUNTRY_ABBREV'
      Size = 5
    end
    object cdsDataSALE_CLIENT_PRODUCT_SIGNATURE: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_PRODUCT_SIGNATURE'
      Size = 250
    end
    object cdsDataSALE_CLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'SALE_CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsDataSALE_PRODUCTION_DEPT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCTION_DEPT_CODE'
    end
    object cdsDataSALE_TRANSIENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SALE_TRANSIENT_STATUS_CODE'
    end
    object cdsDataSALE_WORKDAYS_TO_EXIST: TAbmesFloatField
      FieldName = 'SALE_WORKDAYS_TO_EXIST'
    end
    object cdsDataML_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'ML_STATE_CODE'
      OnGetText = cdsDataML_STATE_CODEGetText
    end
    object cdsDataMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_STORE_DEAL_DATE'
    end
    object cdsDataPRODUCTION_START_RESERVE_DAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_START_RESERVE_DAYS'
    end
    object cdsDataSTART_STAGE_COEF: TAbmesFloatField
      FieldName = 'START_STAGE_COEF'
      DisplayFormat = '0.00'
    end
    object cdsDataMODEL_WORKDAYS: TAbmesFloatField
      FieldName = 'MODEL_WORKDAYS'
    end
    object cdsDataSHIPMENT_STORE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_STORE_CODE'
    end
    object cdsDataPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsDataINITIAL_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'INITIAL_TREATMENT_WORKDAYS'
    end
    object cdsDataPRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'PRODUCTION_WORKDAYS'
    end
    object cdsDataMAX_OP_DATE_POSITIVE_DIFF: TAbmesFloatField
      FieldName = 'MAX_OP_DATE_POSITIVE_DIFF'
    end
    object cdsDataMIN_OP_DATE_NEGATIVE_DIFF: TAbmesFloatField
      FieldName = 'MIN_OP_DATE_NEGATIVE_DIFF'
    end
    object cdsDataIS_WASTE_COMPENSATING_ORDER: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_WASTE_COMPENSATING_ORDER'
      OnGetText = cdsDataIS_WASTE_COMPENSATING_ORDERGetText
      DisplayBoolValues = #1057';'#1054
      FieldValueType = fvtBoolean
    end
    object cdsDataWASTING_SALE_OBJ_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_BRANCH_CODE'
    end
    object cdsDataWASTING_SALE_OBJ_CODE: TAbmesFloatField
      FieldName = 'WASTING_SALE_OBJ_CODE'
    end
    object cdsDataWASTING_SALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_BRANCH_NO'
    end
    object cdsDataWASTING_SALE_NO: TAbmesFloatField
      FieldName = 'WASTING_SALE_NO'
    end
    object cdsDataWASTING_ML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OBJECT_BRANCH_CODE'
    end
    object cdsDataWASTING_ML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'WASTING_ML_OBJECT_CODE'
    end
    object cdsDataPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDataWORK_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
      DisplayBoolValues = '!;'
      FieldValueType = fvtBoolean
    end
    object cdsDataWASTE_COMPENSATOR_COUNT: TAbmesFloatField
      FieldName = 'WASTE_COMPENSATOR_COUNT'
    end
    object cdsDataREAL_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'REAL_PRODUCTION_WORKDAYS'
    end
    object cdsDataSTART_AFTER_LIMITING_DAYS: TAbmesFloatField
      FieldName = 'START_AFTER_LIMITING_DAYS'
    end
    object cdsDataCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object cdsDataMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Required = True
    end
    object cdsDataMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object cdsDataPRODUCTION_START_PLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_START_PLAN_DATE'
    end
    object cdsDataPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
  end
end
