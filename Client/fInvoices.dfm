inherited fmInvoices: TfmInvoices
  Left = 245
  Top = 131
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1080
  ClientHeight = 437
  ClientWidth = 759
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 402
    Width = 759
    inherited pnlOKCancel: TPanel
      Left = 491
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 402
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 670
      Visible = False
    end
    object btnEditData: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 759
    Height = 402
    inherited pnlGrid: TPanel
      Width = 743
      Height = 386
      inherited pnlNavigator: TPanel
        Width = 743
        object btnPrices: TSpeedButton [0]
          Left = 438
          Top = 2
          Width = 102
          Height = 22
          GroupIndex = 1
          Down = True
          Caption = #1057#1091#1084#1080
          Flat = True
          OnClick = SwitchButtonsClick
        end
        object btnNotes: TSpeedButton [1]
          Left = 642
          Top = 2
          Width = 100
          Height = 22
          GroupIndex = 1
          Caption = #1041#1077#1083#1077#1078#1082#1080
          Flat = True
          OnClick = SwitchButtonsClick
        end
        object btnInvoiceItems: TSpeedButton [2]
          Left = 540
          Top = 2
          Width = 102
          Height = 22
          GroupIndex = 1
          Caption = #1056#1077#1076#1086#1074#1077
          Flat = True
          OnClick = SwitchButtonsClick
        end
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 743
        Height = 362
        AutoFitColWidths = True
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        RowHeight = 4
        RowLines = 1
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'INVOICE_NO'
            Footers = <>
            Width = 65
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'INVOICE_DATE'
            Footers = <>
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_PROFORM_INVOICE'
            Footers = <>
            Title.Caption = #1055#1088
            Title.Hint = #1055#1088#1086#1092#1086#1088#1084#1072
            Title.ToolTips = True
            Width = 18
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'INVOICE_TYPE_NAME'
            Footers = <>
            Width = 116
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SELLER_NAME'
            Footers = <>
            Width = 86
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'BUYER_NAME'
            Footer.Alignment = taRightJustify
            Footers = <>
            Width = 81
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_MARKET_PRICE_WITHOUT_VAT'
            Footer.FieldName = '_SUM_TOTAL_MARKET_PRICE_WITHOUT_VAT'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1091#1084#1072'|'#1041#1077#1079' '#1086#1090#1089#1090#1098#1087#1082#1072
            Visible = False
            Width = 53
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_PRICE_DISCOUNT'
            Footer.FieldName = '_SUM_TOTAL_PRICE_DISCOUNT'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1091#1084#1072'|'#1054#1090#1089#1090#1098#1087'- '#1082#1072
            Visible = False
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE_WITHOUT_VAT'
            Footer.FieldName = '_SUM_TOTAL_PRICE_WITHOUT_VAT'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1091#1084#1072'|'#1055#1086' '#1092#1072#1082#1090'. '#1073#1077#1079' '#1044#1044#1057
            Visible = False
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_VAT'
            Footer.FieldName = '_SUM_TOTAL_VAT'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1091#1084#1072'|'#1044#1044#1057
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footer.FieldName = '_SUM_TOTAL_PRICE'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1091#1084#1072'|'#1054#1073#1097#1072' '#1087#1086' '#1092#1072#1082#1090#1091#1088#1072
            Visible = False
            Width = 53
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Width = 246
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'INVOICE_ITEMS_NAMES'
            Footers = <>
            Title.Caption = #1056#1077#1076#1086#1074#1077
            Visible = False
            Width = 246
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_IS_PAID'
            Footers = <>
            Title.Caption = #1055#1083
            Title.Hint = #1055#1083#1072#1090#1077#1085#1072' '#1075#1083#1072#1074#1085#1080#1094#1072';'#1044#1044#1057
            Visible = False
            Width = 18
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_APPROVED'
            Footers = <>
            Title.Caption = #1059
            Title.Hint = #1059#1090#1074#1098#1088#1076#1077#1085#1072
            Title.ToolTips = True
            Width = 15
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_STORNO_INVOICE'
            Footers = <>
            Title.Caption = #1040
            Title.Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1072
            Title.ToolTips = True
            Width = 15
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 216
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conInvoices
    FieldDefs = <
      item
        Name = 'INVOICE_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_NO'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_PROFORM_INVOICE'
        DataType = ftFloat
      end
      item
        Name = 'IS_STORNO_INVOICE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SELLER_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'BUYER_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TOTAL_MARKET_PRICE_WITHOUT_VAT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_WITHOUT_VAT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_VAT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PROCESS_OBJECT_CLASS_ABBREV'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TOTAL_PRICE_DISCOUNT'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'IS_PAID'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_ITEMS_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'IS_VAT_PAID'
        DataType = ftFloat
      end
      item
        Name = 'IS_APPROVED'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'INVOICE_START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_VAT_NOT_PAID'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO_INVOICE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_STORNO_INVOICE'
        ParamType = ptInput
        Value = '1'
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
        Value = '1'
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
        Value = '1'
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
    ProviderName = 'prvInvoices'
    OnCalcFields = cdsGridDataCalcFields
    Left = 24
    Top = 216
    object cdsGridDataINVOICE_ITEMS_NAMES: TAbmesWideStringField
      FieldName = 'INVOICE_ITEMS_NAMES'
      Size = 250
    end
    object cdsGridDataIS_PAID: TAbmesFloatField
      FieldName = 'IS_PAID'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      DisplayLabel = #1041#1077#1083#1077#1078#1082#1080
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsGridDataINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsGridDataINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      FieldValueType = fvtInteger
    end
    object cdsGridDataINVOICE_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'INVOICE_NO'
      DisplayFormat = '0000000000'
      FieldValueType = fvtInteger
    end
    object cdsGridDataINVOICE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
    object cdsGridDataIS_PROFORM_INVOICE: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1055#1088#1086#1092#1086#1088#1084#1072
      FieldName = 'IS_PROFORM_INVOICE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_STORNO_INVOICE: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1072
      FieldName = 'IS_STORNO_INVOICE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINVOICE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'INVOICE_DATE'
    end
    object cdsGridDataSELLER_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090
      FieldName = 'SELLER_NAME'
    end
    object cdsGridDataBUYER_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1076#1077#1085#1072' '#1085#1072
      FieldName = 'BUYER_NAME'
    end
    object cdsGridDataTOTAL_MARKET_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE_WITHOUT_VAT'
      OnGetText = PriceFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE_WITHOUT_VAT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_WITHOUT_VAT'
      OnGetText = PriceFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_VAT: TAbmesFloatField
      FieldName = 'TOTAL_VAT'
      OnGetText = PriceFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      OnGetText = PriceFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE_DISCOUNT: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_DISCOUNT'
      OnGetText = cdsGridDataTOTAL_PRICE_DISCOUNTGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataIS_VAT_PAID: TAbmesFloatField
      FieldName = 'IS_VAT_PAID'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_IS_PAID: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_IS_PAID'
      Size = 5
      Calculated = True
    end
    object cdsGridDataIS_APPROVED: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1059#1090#1074#1098#1088#1076#1077#1085#1072
      FieldName = 'IS_APPROVED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_SUM_TOTAL_MARKET_PRICE_WITHOUT_VAT: TAggregateField
      FieldName = '_SUM_TOTAL_MARKET_PRICE_WITHOUT_VAT'
      OnGetText = SumPricesGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_MARKET_PRICE_WITHOUT_VAT)'
    end
    object cdsGridData_SUM_TOTAL_PRICE_WITHOUT_VAT: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE_WITHOUT_VAT'
      OnGetText = SumPricesGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE_WITHOUT_VAT)'
    end
    object cdsGridData_SUM_TOTAL_VAT: TAggregateField
      FieldName = '_SUM_TOTAL_VAT'
      OnGetText = SumPricesGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_VAT)'
    end
    object cdsGridData_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      OnGetText = SumPricesGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridData_SUM_TOTAL_PRICE_DISCOUNT: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE_DISCOUNT'
      OnGetText = cdsGridData_SUM_TOTAL_PRICE_DISCOUNTGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE_DISCOUNT)'
    end
    object cdsGridData_COUNT_NULL_PRICES: TAggregateField
      FieldName = '_COUNT_NULL_PRICES'
      Active = True
      Expression = 'Count(INVOICE_CODE) - Count(TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 304
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 24
    Top = 248
    object pdsGridDataParamsINVOICE_START_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'INVOICE_START_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsINVOICE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'INVOICE_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsINVOICE_NO: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' '#8470
      FieldName = 'INVOICE_NO'
    end
    object pdsGridDataParamsINVOICE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1092#1072#1082#1090#1091#1088#1072
      FieldName = 'INVOICE_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsSELLER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090
      FieldName = 'SELLER_COMPANY_CODE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsBUYER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1048#1079#1076#1072#1076#1077#1085#1072' '#1085#1072
      FieldName = 'BUYER_COMPANY_CODE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
    end
    object pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      OnChange = pdsGridDataParamsPRODUCT_CODEChange
    end
    object pdsGridDataParamsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParamsPRODUCT_NO: TAbmesWideStringField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParamsIS_CASH_PAYMENT: TAbmesFloatField
      DisplayLabel = #1042' '#1073#1088#1086#1081
      FieldName = 'IS_CASH_PAYMENT'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_BANK_ACCOUNT_PAYMENT: TAbmesFloatField
      DisplayLabel = #1055#1086' '#1073#1072#1085#1082#1086#1074#1072' '#1089#1084#1077#1090#1082#1072
      FieldName = 'IS_BANK_ACCOUNT_PAYMENT'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsBANK_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1041#1072#1085#1082#1072
      FieldName = 'BANK_COMPANY_CODE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsACCOUNT: TAbmesFloatField
      DisplayLabel = #1057#1084#1077#1090#1082#1072
      FieldName = 'ACCOUNT'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsIS_PAID: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1090#1077#1085#1072' '#1075#1083#1072#1074#1085#1080#1094#1072
      FieldName = 'IS_PAID'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_PAID: TAbmesFloatField
      DisplayLabel = #1053#1077#1087#1083#1072#1090#1077#1085#1072' '#1075#1083#1072#1074#1085#1080#1094#1072
      FieldName = 'IS_NOT_PAID'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_VAT_PAID: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1090#1077#1085#1086' '#1044#1044#1057
      FieldName = 'IS_VAT_PAID'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_VAT_NOT_PAID: TAbmesFloatField
      DisplayLabel = #1053#1077#1087#1083#1072#1090#1077#1085#1086' '#1044#1044#1057
      FieldName = 'IS_VAT_NOT_PAID'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_PROFORM_INVOICE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1092#1086#1088#1084#1072
      FieldName = 'IS_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_PROFORM_INVOICE: TAbmesFloatField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072
      FieldName = 'IS_NOT_PROFORM_INVOICE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_STORNO_INVOICE: TAbmesFloatField
      FieldName = 'IS_STORNO_INVOICE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_STORNO_INVOICE: TAbmesFloatField
      DisplayLabel = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1072
      FieldName = 'IS_NOT_STORNO_INVOICE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_IS_PROFORM_INVOICE: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_PROFORM_INVOICE'
      DisplayValues = 'x;'
      Calculated = True
    end
    object pdsGridDataParams_IS_NOT_PROFORM_INVOICE: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_NOT_PROFORM_INVOICE'
      DisplayValues = 'x;'
      Calculated = True
    end
    object pdsGridDataParams_IS_STORNO_INVOICE: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_STORNO_INVOICE'
      DisplayValues = 'x;'
      Calculated = True
    end
    object pdsGridDataParams_IS_NOT_STORNO_INVOICE: TBooleanField
      FieldKind = fkCalculated
      FieldName = '_IS_NOT_STORNO_INVOICE'
      DisplayValues = 'x;'
      Calculated = True
    end
    object pdsGridDataParams_INVOICE_START_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_INVOICE_START_DATE'
      Calculated = True
    end
    object pdsGridDataParams_INVOICE_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_INVOICE_END_DATE'
      Calculated = True
    end
    object pdsGridDataParamsIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_APPROVED: TAbmesFloatField
      FieldName = 'IS_NOT_APPROVED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsMIN_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_INVOICE_NO'
    end
    object pdsGridDataParamsMAX_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_INVOICE_NO'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 248
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 184
  end
end
