inherited fmProductQuantitiesTreeEdit: TfmProductQuantitiesTreeEdit
  Left = 371
  Top = 203
  Caption = #1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassName% '#1087#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080
  ClientHeight = 278
  ClientWidth = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 243
    Width = 622
    object lblLegend: TLabel [0]
      Left = 8
      Top = 8
      Width = 246
      Height = 13
      Caption = #1042#1089#1080#1095#1082#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1089#1072' '#1079#1072#1082#1088#1098#1075#1083#1077#1085#1080' '#1076#1086' '#1094#1077#1083#1080' '#1095#1080#1089#1083#1072'.'
    end
    inherited pnlOKCancel: TPanel
      Left = 354
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 265
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 533
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 622
    Height = 243
    inherited pnlGrid: TPanel
      Width = 606
      Height = 227
      inherited pnlNavigator: TPanel
        Width = 606
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
        object tlbToggleMeasures: TToolBar
          Left = 550
          Top = 0
          Width = 56
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 3
          object sepWorkMeasure: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepWorkMeasure'
            ImageIndex = 29
            Style = tbsSeparator
          end
          object btnWorkMeasure: TToolButton
            Left = 8
            Top = 0
            Action = actWorkMeasure
            Grouped = True
            Style = tbsCheck
          end
          object btnAccountMeasure: TToolButton
            Left = 32
            Top = 0
            Action = actAccountMeasure
            Grouped = True
            Style = tbsCheck
          end
        end
        object tlbTogglePrices: TToolBar
          Left = 468
          Top = 0
          Width = 82
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 41
          ShowCaptions = True
          TabOrder = 4
          object btnExcludeVAT: TToolButton
            Left = 0
            Top = 0
            Action = actExcludeVAT
            Grouped = True
            Style = tbsCheck
          end
          object btnIncludeVAT: TToolButton
            Left = 41
            Top = 0
            Action = actIncludeVAT
            Grouped = True
            Style = tbsCheck
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 606
        Height = 203
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STORE_FULL_NAME'
            Footers = <>
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_QUANTITY'
            Footer.FieldName = '_SUM_TOTAL_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_ACCOUNT_QUANTITY'
            Footer.FieldName = '_SUM_TOTAL_ACCOUNT_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Visible = False
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footer.FieldName = '_SUM_TOTAL_PRICE'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1042#1057'1 (%s)'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_MARKET_PRICE'
            Footer.FieldName = '_SUM_TOTAL_MARKET_PRICE'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1051#1057' (%s)'
            Width = 90
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 120
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_MARKET_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_MIN_NO_RATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORE_FULL_NAME'
        DataType = ftWideString
        Size = 149
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductStoreQuantities'
    ConnectionBroker = dmMain.conProductQuantitiesTree
    Left = 32
    Top = 120
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_FULL_NAME'
      Size = 149
    end
    object cdsGridDataTOTAL_QUANTITY: TAbmesFloatField
      DisplayLabel = #1056#1072#1073'. '#1082'-'#1074#1086
      FieldName = 'TOTAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090' (%s)'
      FieldName = 'TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0'
    end
    object cdsGridDataTOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0'
    end
    object cdsGridData_SUM_TOTAL_QUANTITY: TAggregateField
      FieldName = '_SUM_TOTAL_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_QUANTITY)'
    end
    object cdsGridData_SUM_TOTAL_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_TOTAL_ACCOUNT_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_ACCOUNT_QUANTITY)'
    end
    object cdsGridData_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridData_SUM_TOTAL_MARKET_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_MARKET_PRICE'
      OnGetText = GetPriceFieldText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_MARKET_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 80
    Top = 189
    inherited actForm: TAction
      Caption = #1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassName% '#1087#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 9
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084'.'#1077#1076'.'
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 9
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084'.'#1077#1076'.'
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
    end
    object actExcludeVAT: TAction
      AutoCheck = True
      Caption = '- '#1044#1044#1057
      Checked = True
      GroupIndex = 3
      OnExecute = actExcludeVATExecute
    end
    object actIncludeVAT: TAction
      AutoCheck = True
      Caption = '+ '#1044#1044#1057
      GroupIndex = 3
      OnExecute = actIncludeVATExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 32
    Top = 152
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 152
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 88
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 88
  end
end
