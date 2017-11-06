inherited fmBOICompanyOrder: TfmBOICompanyOrder
  Left = 241
  Top = 162
  Caption = #1054#1088#1076#1077#1088' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%s)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbBudgetOrderStuff: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 344
      Caption = #1054#1088#1076#1077#1088' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
    end
    inherited gbGenerator: TGroupBox
      inherited frGeneratorDept: TfrDeptFieldEditFrameBald
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    inherited gbDeveloperDept: TGroupBox
      inherited frDeveloperDept: TfrDeptFieldEditFrameBald
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
  end
  inherited gbBOIOrderStuff: TGroupBox
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1088#1076#1077#1088' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072 +
      ' '#1057#1088#1077#1076#1072' '
    inherited gbBOIOrder: TGroupBox
      inherited tbDocButton: TToolBar
        Anchors = [akLeft, akTop, akRight]
      end
    end
    inherited gbDecision: TGroupBox
      TabOrder = 7
    end
    object gbPartner: TGroupBox
      Left = 456
      Top = 16
      Width = 241
      Height = 65
      Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' '
      TabOrder = 2
      inline frCompany: TfrPartnerFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 225
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          225
          22)
        inherited gbPartner: TGroupBox
          Width = 240
          inherited pnlNameAndButtons: TPanel
            Width = 151
            inherited pnlRightButtons: TPanel
              Left = 115
            end
            inherited pnlPartnerName: TPanel
              Width = 115
              DesignSize = (
                115
                23)
              inherited cbPartner: TJvDBLookupCombo
                Width = 116
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 232
          end
        end
      end
    end
    object gbDescription: TGroupBox
      Left = 704
      Top = 16
      Width = 273
      Height = 65
      Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077' '#1087#1086' %BudgetOrderItemOrderAbbrev% '
      TabOrder = 3
      object edtDescription: TDBEdit
        Left = 8
        Top = 32
        Width = 257
        Height = 21
        DataField = 'DESCRIPTION'
        DataSource = dsData
        TabOrder = 0
      end
    end
    object gbPlan: TGroupBox
      Left = 8
      Top = 88
      Width = 385
      Height = 113
      Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '
      TabOrder = 4
      object lblCurrency: TLabel
        Left = 8
        Top = 16
        Width = 35
        Height = 13
        Caption = #1042#1072#1083#1091#1090#1072
      end
      object lblPlanTotalPrice: TLabel
        Left = 72
        Top = 16
        Width = 79
        Height = 13
        Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblPlanDate: TLabel
        Left = 192
        Top = 16
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object lblBOITotalPricePercent: TLabel
        Left = 304
        Top = 16
        Width = 155
        Height = 13
        Caption = '% '#1086#1090' %BudgetOrderItemAbbrev%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblPlanTotalPriceBC: TLabel
        Left = 72
        Top = 64
        Width = 79
        Height = 13
        Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblPercents4: TLabel
        Left = 364
        Top = 36
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblBaseCurrency4: TLabel
        Left = 156
        Top = 84
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object dbtCurrency2: TDBText
        Left = 156
        Top = 35
        Width = 63
        Height = 13
        AutoSize = True
        DataField = '_CURRENCY_ABBREV'
        DataSource = dsData
      end
      object cbCurrency: TJvDBLookupCombo
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        DataField = 'CURRENCY_CODE'
        DataSource = dsData
        LookupField = 'CURRENCY_CODE'
        LookupDisplay = 'CURRENCY_ABBREV'
        LookupSource = dsCurrencies
        TabOrder = 0
      end
      object edtPlanTotalPrice: TDBEdit
        Left = 72
        Top = 32
        Width = 81
        Height = 21
        DataField = 'PLAN_TOTAL_PRICE'
        DataSource = dsData
        TabOrder = 1
      end
      inline frPlanDate: TfrDateFieldEditFrame
        Left = 192
        Top = 32
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 2
        TabStop = True
      end
      object edtBOITotalPricePercent: TDBEdit
        Left = 304
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = '_BOI_PRICE_PERCENT_BC'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object edtPlanTotalPriceBC: TDBEdit
        Left = 72
        Top = 80
        Width = 81
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'PLAN_TOTAL_PRICE_BC'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
    end
    object gbReal: TGroupBox
      Left = 400
      Top = 88
      Width = 417
      Height = 113
      Caption = ' '#1054#1090#1095#1077#1090' '
      TabOrder = 5
      object lblDocumentTypeText: TLabel
        Left = 8
        Top = 16
        Width = 73
        Height = 13
        Caption = #1042#1080#1076' '#1044#1086#1082#1091#1084#1077#1085#1090
      end
      object lblDocumentIDText: TLabel
        Left = 8
        Top = 64
        Width = 65
        Height = 13
        Caption = 'ID '#1044#1086#1082#1091#1084#1077#1085#1090
      end
      object lblBOIOAccountTotalPrice: TLabel
        Left = 208
        Top = 16
        Width = 79
        Height = 13
        Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblAccountDate: TLabel
        Left = 304
        Top = 16
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object dbtCurrency: TDBText
        Left = 268
        Top = 35
        Width = 32
        Height = 15
        DataField = '_CURRENCY_ABBREV'
        DataSource = dsData
      end
      object lblBOIOAccountTotalPriceBC: TLabel
        Left = 208
        Top = 64
        Width = 79
        Height = 13
        Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblBaseCurrency5: TLabel
        Left = 269
        Top = 84
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object edtDocumentTypeText: TDBEdit
        Left = 8
        Top = 32
        Width = 193
        Height = 21
        DataField = 'DOCUMENT_TYPE_TEXT'
        DataSource = dsData
        TabOrder = 0
      end
      object edtDocumentIDText: TDBEdit
        Left = 8
        Top = 80
        Width = 193
        Height = 21
        DataField = 'DOCUMENT_ID_TEXT'
        DataSource = dsData
        TabOrder = 1
      end
      object edtBOIOAccountTotalPrice: TDBEdit
        Left = 208
        Top = 32
        Width = 57
        Height = 21
        DataField = 'ACCOUNT_TOTAL_PRICE'
        DataSource = dsData
        TabOrder = 2
      end
      inline frAccountDate: TfrDateFieldEditFrame
        Left = 304
        Top = 32
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 3
        TabStop = True
      end
      object edtBOIOAccountTotalPriceBC: TDBEdit
        Left = 208
        Top = 80
        Width = 57
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'ACCOUNT_TOTAL_PRICE_BC'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
    end
    object gbPlanRealDeviation: TGroupBox
      Left = 824
      Top = 88
      Width = 153
      Height = 113
      Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
      TabOrder = 6
      object lblPlanRealPriceDeviation: TLabel
        Left = 8
        Top = 16
        Width = 47
        Height = 13
        Caption = #1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblWorkdays: TLabel
        Left = 102
        Top = 16
        Width = 28
        Height = 13
        Caption = #1056#1079#1088#1074'.'
      end
      object btnToggleDeviationDiffPercent: TSpeedButton
        Left = 130
        Top = 7
        Width = 21
        Height = 21
        Action = actToggleDeviationDiffPercent
        AllowAllUp = True
        GroupIndex = 2
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00800000008000
          0000FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF008000000080000000FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
          FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00
          FF00FF00FF008000000080000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000
          000080000000FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0040600000FF00FF00FF00FF004060000040600000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0040600000FF00FF00FF00FF0040600000FF00FF0040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0040600000FF00FF0040600000FF00FF0040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0040600000FF00FF004060000040600000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF004060000040600000FF00FF0040600000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0040600000FF00FF0040600000FF00FF0040600000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF004060000040600000FF00FF00FF00FF0040600000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object lblPriceDeviationMeasure: TLabel
        Left = 75
        Top = 35
        Width = 15
        Height = 13
        Caption = 'xxx'
      end
      object lblBaseCurrencyDeviationTitle: TLabel
        Left = 8
        Top = 64
        Width = 47
        Height = 13
        Caption = #1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblBaseCurrencyDeviation: TLabel
        Left = 75
        Top = 83
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object edtDaysDeviation: TDBEdit
        Left = 102
        Top = 32
        Width = 41
        Height = 21
        Color = 14276044
        DataField = '_DAYS_DEVIATION'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtPlanRealPriceDeviation: TDBEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = '_PRICE_DEVIATION'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtBaseCurrencyDeviation: TDBEdit
        Left = 8
        Top = 80
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = '_PRICE_DEVIATION_BC'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
    end
    object gbFinanceContract: TGroupBox
      Left = 616
      Top = 208
      Width = 361
      Height = 65
      Caption = ' '#1044#1086#1075#1086#1074#1086#1088' - '#1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1095#1072#1089#1090' '
      TabOrder = 8
      object btnFinOrder: TButton
        Left = 272
        Top = 22
        Width = 73
        Height = 25
        Action = actFinOrder
        TabOrder = 0
      end
    end
  end
  inherited gbBudgetOrderItem: TGroupBox
    inherited gbConsumer: TGroupBox
      inherited frBOIDept: TfrDeptFieldEditFrameBald
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    inherited gbItemDates: TGroupBox
      inherited frItemDates: TfrDateIntervalFrame
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    inherited frBudgetClass: TfrProductFieldEditFrameLabeled
      inherited dsData: TDataSource
        DataSet = cdsBOIOrderInfo
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1088#1076#1077#1088' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%s)'
    end
    inherited actToggleDeviationDiffPercent: TAction
      OnUpdate = actToggleDeviationDiffPercentUpdate
    end
    object actFinOrder: TAction
      Caption = #1054#1055#1060'...'
      OnExecute = actFinOrderExecute
      OnUpdate = actFinOrderUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    inherited cdsDataCOMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      Required = True
      OnChange = cdsDataCOMPANY_CODEChange
    end
    inherited cdsDataDESCRIPTION: TAbmesWideStringField
      Required = True
    end
    inherited cdsDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      Required = True
      OnChange = cdsDataCURRENCY_CODEChange
    end
    inherited cdsDataPLAN_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Required = True
      OnChange = cdsDataPLAN_TOTAL_PRICEChange
    end
    inherited cdsDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      Required = True
      OnChange = cdsDataPLAN_DATEChange
    end
    inherited cdsDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      OnChange = cdsDataACCOUNT_TOTAL_PRICEChange
    end
    inherited cdsDataACCOUNT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      OnChange = cdsDataACCOUNT_DATEChange
    end
    object cdsData_CURRENCY_ABBREV: TAbmesWideStringField [72]
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    inherited cdsDataFIN_ORDER_CODE: TAbmesFloatField [77]
    end
    inherited cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField [78]
    end
    inherited cdsDataBUDGET_PRODUCT_CODE: TAbmesFloatField [79]
    end
    inherited cdsDataFO_BRANCH_CODE: TAbmesFloatField [80]
    end
    object cdsDataFO_IS_COMPLETED: TAbmesFloatField [84]
      FieldName = 'FO_IS_COMPLETED'
      FieldValueType = fvtBoolean
    end
    object cdsDataFO_CLOSE_REQUESTED: TAbmesFloatField [85]
      FieldName = 'FO_CLOSE_REQUESTED'
      FieldValueType = fvtBoolean
    end
  end
  inherited cdsPrintData: TAbmesClientDataSet
    object cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField [15]
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'PLAN_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataACCOUNT_DATE: TAbmesSQLTimeStampField [16]
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'ACCOUNT_DATE'
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataPLAN_TOTAL_PRICE: TAbmesFloatField [17]
      DisplayLabel = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'PLAN_TOTAL_PRICE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataACCOUNT_TOTAL_PRICE: TAbmesFloatField [18]
      DisplayLabel = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataPLAN_TOTAL_PRICE_BC: TAbmesFloatField [19]
      FieldName = 'PLAN_TOTAL_PRICE_BC'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataACCOUNT_TOTAL_PRICE_BC: TAbmesFloatField [20]
      FieldName = 'ACCOUNT_TOTAL_PRICE_BC'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataPARTNER_NO: TAbmesFloatField [27]
      FieldName = 'PARTNER_NO'
    end
    object cdsPrintDataPARTNER_NAME: TAbmesWideStringField [28]
      FieldName = 'PARTNER_NAME'
      Size = 100
    end
    object cdsPrintDataDESCRIPTION: TAbmesWideStringField [29]
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object cdsPrintDataDOCUMENT_TYPE_TEXT: TAbmesWideStringField [30]
      FieldName = 'DOCUMENT_TYPE_TEXT'
      Size = 50
    end
    object cdsPrintDataDOCUMENT_ID_TEXT: TAbmesWideStringField [31]
      FieldName = 'DOCUMENT_ID_TEXT'
      Size = 50
    end
    object cdsPrintData_BOI_PRICE_PERCENT_BC: TAbmesFloatField [32]
      FieldName = '_BOI_PRICE_PERCENT_BC'
      OnGetText = cdsPrintData_BOI_PRICE_PERCENT_BCGetText
      DisplayFormat = ',0'
    end
    object cdsPrintData_PRICE_DEVIATION: TAbmesFloatField [37]
      FieldName = '_PRICE_DEVIATION'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintData_PRICE_DEVIATION_BC: TAbmesFloatField [38]
      FieldName = '_PRICE_DEVIATION_BC'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintData_DAYS_DEVIATION: TAbmesFloatField [41]
      FieldName = '_DAYS_DEVIATION'
      DisplayFormat = ',0'
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 24
    Top = 400
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCurrenciesCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Required = True
      Size = 50
    end
    object cdsCurrenciesSCALE: TAbmesFloatField
      FieldName = 'SCALE'
      Required = True
    end
    object cdsCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
      Required = True
    end
    object cdsCurrenciesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
      Required = True
    end
    object cdsCurrenciesCURRENCY_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME_SINGULAR'
    end
    object cdsCurrenciesCURRENCY_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME_PLURAL'
    end
    object cdsCurrenciesCURRENCY_NAME_GENDER_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_NAME_GENDER_CODE'
    end
    object cdsCurrenciesCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_NAME_SINGULAR'
    end
    object cdsCurrenciesCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_NAME_PLURAL'
    end
    object cdsCurrenciesCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CENT_NAME_GENDER_CODE'
    end
  end
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 56
    Top = 400
  end
end
