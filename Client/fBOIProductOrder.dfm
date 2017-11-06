inherited fmBOIProductOrder: TfmBOIProductOrder
  Left = 227
  Top = 153
  Caption = #1054#1088#1076#1077#1088' - '#1055#1088#1077#1076#1084#1077#1090#1077#1085' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%s)'
  ClientHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 626
  end
  inherited gbBudgetOrderStuff: TGroupBox
    inherited lblFormCaption: TLabel
      Width = 341
      Caption = #1054#1088#1076#1077#1088' - '#1055#1088#1077#1076#1084#1077#1090#1077#1085' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
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
    Top = 264
    Height = 353
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1088#1076#1077#1088' - '#1055#1088#1077#1076#1084#1077#1090#1077#1085' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072 +
      ' '#1057#1088#1077#1076#1072' '
    inherited gbBOIOrder: TGroupBox [0]
    end
    inherited frConsumerDept: TfrDeptFieldEditFrameLabeled [1]
      Width = 385
      inherited gbTreeNode: TGroupBox
        Width = 385
        inherited pnlTreeNode: TPanel
          Width = 369
          inherited pnlTreeNodeName: TPanel
            Width = 222
            inherited edtTreeNodeName: TDBEdit
              Width = 221
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 222
          end
          inherited pnlRightButtons: TPanel
            Left = 333
          end
        end
      end
    end
    inherited gbDecision: TGroupBox
      Top = 280
      TabOrder = 7
    end
    inline frProduct: TfrProductFieldEditFrameLabeled
      Left = 552
      Top = 16
      Width = 425
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 2
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 425
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1058#1077#1075#1083#1077#1085' '
        inherited pnlTreeNode: TPanel
          Width = 409
          inherited pnlTreeNodeName: TPanel
            Width = 227
            inherited edtTreeNodeName: TDBEdit
              Width = 226
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 227
          end
          inherited pnlRightButtons: TPanel
            Left = 350
          end
        end
      end
    end
    inline frStore: TfrDeptFieldEditFrameLabeled
      Left = 8
      Top = 88
      Width = 537
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 3
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 537
        Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
        inherited lblTreeNodeName: TLabel
          Width = 3
          Caption = ''
        end
        inherited lblTreeNodeNo: TLabel
          Width = 3
          Caption = ''
        end
        inherited pnlTreeNode: TPanel
          Width = 521
          inherited pnlTreeNodeName: TPanel
            Width = 374
            inherited edtTreeNodeName: TDBEdit
              Width = 373
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 374
          end
          inherited pnlRightButtons: TPanel
            Left = 485
          end
        end
      end
    end
    object gbPSDOut: TGroupBox
      Left = 8
      Top = 160
      Width = 329
      Height = 113
      Caption = ' '#1055#1083#1072#1085#1086#1074#1086' '#1058#1077#1075#1083#1077#1085#1077' '
      TabOrder = 4
      TabStop = True
      object lblQuantity: TLabel
        Left = 8
        Top = 16
        Width = 66
        Height = 13
        Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
      end
      object lblAccountQuantity: TLabel
        Left = 112
        Top = 16
        Width = 50
        Height = 13
        Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      end
      object lblPlanDate: TLabel
        Left = 216
        Top = 16
        Width = 91
        Height = 13
        Caption = #1044#1072#1090#1072' '#1055#1083'. '#1058#1077#1075#1083#1077#1085#1077
      end
      object lblProductEstimatedSecondaryPrice: TLabel
        Left = 8
        Top = 64
        Width = 43
        Height = 13
        Caption = #1045#1076'. '#1094#1077#1085#1072
      end
      object lblProductTotalPrice: TLabel
        Left = 112
        Top = 64
        Width = 57
        Height = 13
        Caption = #1054#1073#1097#1072' '#1089#1090'-'#1089#1090
      end
      object lblBOIPricePercent: TLabel
        Left = 216
        Top = 64
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
      object lblMeasure: TDBText
        Left = 82
        Top = 37
        Width = 28
        Height = 14
        DataField = '_MEASURE_ABBREV'
        DataSource = dsData
      end
      object lblAccountMeasure: TDBText
        Left = 187
        Top = 37
        Width = 28
        Height = 14
        DataField = '_ACCOUNT_MEASURE_ABBREV'
        DataSource = dsData
      end
      object lblBaseCurrency6: TLabel
        Left = 82
        Top = 84
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object lblBaseCurrency4: TLabel
        Left = 187
        Top = 84
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object lblPercents4: TLabel
        Left = 267
        Top = 84
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
      object edtQuantity: TDBEdit
        Left = 8
        Top = 32
        Width = 73
        Height = 21
        DataField = 'QUANTITY'
        DataSource = dsData
        TabOrder = 0
      end
      object edtAccountQuantity: TDBEdit
        Left = 112
        Top = 32
        Width = 73
        Height = 21
        DataField = 'ACCOUNT_QUANTITY'
        DataSource = dsData
        TabOrder = 1
      end
      inline frPlanDate: TfrDateFieldEditFrame
        Left = 216
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
      object edtProductEstimatedSecondaryPrice: TDBEdit
        Left = 8
        Top = 80
        Width = 73
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'PRODUCT_SINGLE_PRICE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      object edtProductTotalPrice: TDBEdit
        Left = 112
        Top = 80
        Width = 73
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_PRODUCT_TOTAL_PLAN_PRICE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
      object edtBOIPricePercent: TDBEdit
        Left = 216
        Top = 80
        Width = 49
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = '_PRODUCT_BOI_PRICE_PERCENT'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
    object gbReal: TGroupBox
      Left = 344
      Top = 160
      Width = 329
      Height = 113
      Caption = ' '#1054#1090#1095#1077#1090#1085#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '
      TabOrder = 5
      object lblSDQuantity: TLabel
        Left = 8
        Top = 16
        Width = 66
        Height = 13
        Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
      end
      object lblSDAccountQuantity: TLabel
        Left = 112
        Top = 16
        Width = 50
        Height = 13
        Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      end
      object lblLastSDDate: TLabel
        Left = 216
        Top = 16
        Width = 103
        Height = 13
        Caption = #1044#1072#1090#1072' '#1055#1086#1089#1083'. '#1058#1077#1075#1083#1077#1085#1077
      end
      object lblSDTotalPrice: TLabel
        Left = 112
        Top = 64
        Width = 57
        Height = 13
        Caption = #1054#1073#1097#1072' '#1089#1090'-'#1089#1090
      end
      object lblMeasureAbbrev2: TDBText
        Left = 82
        Top = 37
        Width = 28
        Height = 14
        DataField = '_MEASURE_ABBREV'
        DataSource = dsData
      end
      object lblAccountMeasureAbbrev2: TDBText
        Left = 187
        Top = 37
        Width = 28
        Height = 14
        DataField = '_ACCOUNT_MEASURE_ABBREV'
        DataSource = dsData
      end
      object lblBaseCurrency5: TLabel
        Left = 187
        Top = 84
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object edtSDQuantity: TDBEdit
        Left = 8
        Top = 32
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = 'PRODUCT_REAL_QUANTITY'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtSDAccountQuantity: TDBEdit
        Left = 112
        Top = 32
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtSDTotalPrice: TDBEdit
        Left = 112
        Top = 80
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = 'PRODUCT_REAL_TOTAL_PRICE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
      inline frLastSDDate: TfrDateFieldEditFrame
        Left = 216
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
    end
    object gbPlanRealDeviation: TGroupBox
      Left = 680
      Top = 160
      Width = 297
      Height = 113
      Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
      TabOrder = 6
      object lblQuantityDeviation: TLabel
        Left = 8
        Top = 16
        Width = 66
        Height = 13
        Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
      end
      object lblAccountQuantityDeviation: TLabel
        Left = 112
        Top = 16
        Width = 50
        Height = 13
        Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      end
      object lblProductTotalPriceDeviation: TLabel
        Left = 112
        Top = 64
        Width = 57
        Height = 13
        Caption = #1054#1073#1097#1072' '#1089#1090'-'#1089#1090
      end
      object lblProductDaysDeviation: TLabel
        Left = 216
        Top = 16
        Width = 28
        Height = 13
        Caption = #1056#1079#1088#1074'.'
      end
      object lblDeviationMeasure: TLabel
        Left = 82
        Top = 37
        Width = 15
        Height = 13
        Caption = 'xxx'
      end
      object lblDeviationAccountMeasure: TLabel
        Left = 187
        Top = 37
        Width = 15
        Height = 13
        Caption = 'xxx'
      end
      object lblDeviationPriceMeasure: TLabel
        Left = 187
        Top = 84
        Width = 15
        Height = 13
        Caption = 'xxx'
      end
      object btnToggleDeviationDiffPercent: TSpeedButton
        Left = 274
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
      object edtQuantityDeviation: TDBEdit
        Left = 8
        Top = 32
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = '_QUANTITY_DEVIATION'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtAccountQuantityDeviation: TDBEdit
        Left = 112
        Top = 32
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = '_ACCOUNT_QUANTITY_DEVIATION'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtProductTotalPriceDeviation: TDBEdit
        Left = 112
        Top = 80
        Width = 73
        Height = 21
        Color = clBtnFace
        DataField = '_PRODUCT_TOTAL_PRICE_DEVIATION'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtProductDaysDeviation: TDBEdit
        Left = 216
        Top = 32
        Width = 73
        Height = 21
        Color = 14276044
        DataField = '_PRODUCT_DAYS_DEVIATION'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
    end
    object gbStoreRequests: TGroupBox
      Left = 616
      Top = 280
      Width = 145
      Height = 65
      Caption = ' '#1043#1088'. '#1047#1072#1103#1074#1082#1080' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '
      TabOrder = 8
      object btnStoreRequests: TBitBtn
        Left = 13
        Top = 29
        Width = 113
        Height = 25
        Action = actStoreRequests
        Caption = #1056#1077#1075#1080#1089#1090#1098#1088'...'
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          000000000000840000000000000000000000FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          000000000000840000000000000000000000FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
    object gbStoreDeals: TGroupBox
      Left = 768
      Top = 280
      Width = 209
      Height = 65
      Caption = ' '#1058#1077#1075#1083#1077#1085#1080#1103' '
      TabOrder = 9
      object btnNewStoreDeal: TBitBtn
        Left = 96
        Top = 29
        Width = 105
        Height = 25
        Action = actNewStoreDeal
        Caption = #1053#1086#1074#1086' '#1058#1077#1075#1083#1077#1085#1077'...'
        TabOrder = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF0000FF
          FF0000FFFF00FF00FF007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF007B7B
          7B007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF00FF00FF00FF00FF00FF00
          FF0000FFFF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
          000000000000FFFFFF00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000007B7B7B00FF00FF00FF00FF0000FFFF0000FF
          FF0000FFFF0000000000FFFFFF0000000000000000000000000000000000FFFF
          FF0000000000FFFFFF000000000000FFFF0000FFFF00FF00FF00FF00FF0000FF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000BDBDBD00FFFFFF0000000000FFFF
          FF000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000FFFF00000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF
          FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF0000FFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00}
      end
      object btnStoreDeals: TBitBtn
        Left = 40
        Top = 29
        Width = 121
        Height = 25
        Action = actStoreDeals
        Caption = #1056#1077#1075#1080#1089#1090#1098#1088'...'
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          000000000000840000000000000000000000FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
          000000000000840000000000000000000000FFFFFF000000000000000000FF00
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF00
          FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
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
    Left = 168
    Top = 600
    inherited actForm: TAction
      Caption = #1054#1088#1076#1077#1088' - '#1055#1088#1077#1076#1084#1077#1090#1077#1085' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%s)'
    end
    object actStoreRequests: TAction [8]
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088'...'
      ImageIndex = 108
      OnExecute = actStoreRequestsExecute
      OnUpdate = actStoreRequestsUpdate
    end
    object actStoreDeals: TAction [9]
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088'...'
      ImageIndex = 108
      OnExecute = actStoreDealsExecute
    end
    object actNewStoreDeal: TAction [10]
      Caption = #1053#1086#1074#1086' '#1058#1077#1075#1083#1077#1085#1077'...'
      ImageIndex = 9
      Visible = False
      OnExecute = actNewStoreDealExecute
      OnUpdate = actNewStoreDealUpdate
    end
    inherited actToggleDeviationDiffPercent: TAction
      OnUpdate = actToggleDeviationDiffPercentUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 80
    Top = 600
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 48
    Top = 600
    inherited cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1058#1077#1075#1083#1077#1085
      Required = True
    end
    inherited cdsDataSTORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      Required = True
    end
    inherited cdsDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
      Required = True
    end
    inherited cdsDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1083'. '#1090#1077#1075#1083#1077#1085#1077
      Required = True
    end
    object cdsData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Size = 10
      Lookup = True
    end
    object cdsData_PRODUCT_TOTAL_PLAN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_TOTAL_PLAN_PRICE'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_PRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_BOI_PRICE_PERCENT'
      OnGetText = cdsData_PRODUCT_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = '0.#'
      Calculated = True
    end
    object cdsData_QUANTITY_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_QUANTITY_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.#'
      EditFormat = '0.#'
      Calculated = True
    end
    object cdsData_ACCOUNT_QUANTITY_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.#'
      EditFormat = ',0.#'
      Calculated = True
    end
    object cdsData_PRODUCT_DAYS_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_DAYS_DEVIATION'
      OnGetText = NumericFieldsGetText
      Calculated = True
    end
    object cdsData_PRODUCT_TOTAL_PRICE_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_TOTAL_PRICE_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsData_QUANTITY_DEV_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_QUANTITY_DEV_PERCENT'
      OnGetText = cdsData_QUANTITY_DEV_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsData_ACCOUNT_QUANTITY_DEV_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY_DEV_PERCENT'
      OnGetText = cdsData_ACCOUNT_QUANTITY_DEV_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsData_PRODUCT_TOTAL_PRICE_DEV_PER: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_TOTAL_PRICE_DEV_PER'
      OnGetText = cdsData_PRODUCT_TOTAL_PRICE_DEV_PERGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
  end
  inherited cdsPrintData: TAbmesClientDataSet
    Left = 616
    Top = 608
    object cdsPrintDataQUANTITY: TAbmesFloatField [27]
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1086' '#1082'-'#1074#1086
      FieldName = 'QUANTITY'
      Required = True
      DisplayFormat = ',0.#'
    end
    object cdsPrintDataACCOUNT_QUANTITY: TAbmesFloatField [28]
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',0.#'
    end
    object cdsPrintDataPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintData_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = '_MEASURE_ABBREV'
      Size = 10
    end
    object cdsPrintData_PRODUCT_TOTAL_PLAN_PRICE: TAbmesFloatField
      FieldName = '_PRODUCT_TOTAL_PLAN_PRICE'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.00'
    end
    object cdsPrintData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      Size = 10
    end
    object cdsPrintDataPRODUCT_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',#'
      EditFormat = ',#'
    end
    object cdsPrintDataPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',#'
      EditFormat = ',#'
    end
    object cdsPrintDataPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_TOTAL_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintDataPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_LAST_DEAL_DATE'
      ProviderFlags = []
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataPLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1083'. '#1090#1077#1075#1083#1077#1085#1077
      FieldName = 'PLAN_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintData_PRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = '_PRODUCT_BOI_PRICE_PERCENT'
      OnGetText = cdsPrintData_PRODUCT_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsPrintData_QUANTITY_DEVIATION: TAbmesFloatField
      FieldName = '_QUANTITY_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.#'
    end
    object cdsPrintData_ACCOUNT_QUANTITY_DEVIATION: TAbmesFloatField
      FieldName = '_ACCOUNT_QUANTITY_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.#'
    end
    object cdsPrintData_PRODUCT_TOTAL_PRICE_DEVIATION: TAbmesFloatField
      FieldName = '_PRODUCT_TOTAL_PRICE_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsPrintData_PRODUCT_DAYS_DEVIATION: TAbmesFloatField
      FieldName = '_PRODUCT_DAYS_DEVIATION'
      OnGetText = NumericFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsPrintDataSTORE_DEPT_NAME: TAbmesWideStringField
      FieldName = 'STORE_DEPT_NAME'
      Size = 100
    end
    object cdsPrintDataSTORE_DEPT_NO: TAbmesWideStringField
      FieldName = 'STORE_DEPT_NO'
      Size = 50
    end
    object cdsPrintDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsPrintDataPRODUCT_NO: TAbmesWideStringField
      FieldName = 'PRODUCT_NO'
      Size = 50
    end
  end
  object cdsStoreRequestsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 552
    object cdsStoreRequestsParamsPSD_STORE_CODE: TAbmesFloatField
      FieldName = 'PSD_STORE_CODE'
    end
    object cdsStoreRequestsParamsPSD_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'PSD_PRODUCT_CODE'
    end
    object cdsStoreRequestsParamsBND_PROCESS: TAbmesWideStringField
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
  end
  object cdsStoreDealsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 832
    Top = 552
    object cdsStoreDealsParamsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsStoreDealsParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsStoreDealsParamsBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsStoreDealsParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsStoreDealsParamsBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsStoreDealsParamsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsStoreDealsParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsStoreDealsParamsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsStoreDealsParamsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsStoreDealsParamsSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
    end
    object cdsStoreDealsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsStoreDealsParamsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
    end
    object cdsStoreDealsParamsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object cdsStoreDealsParamsWANTED_QUANTITY: TAbmesFloatField
      FieldName = 'WANTED_QUANTITY'
    end
    object cdsStoreDealsParamsPRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_MEASURE_CODE'
    end
    object cdsStoreDealsParamsPRODUCT_ACC_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_MEASURE_CODE'
    end
    object cdsStoreDealsParamsPRODUCT_ACC_MEASURE_COEF: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_MEASURE_COEF'
    end
    object cdsStoreDealsParamsBND_PROCESS: TAbmesWideStringField
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvMeasures'
    ConnectionBroker = dmMain.conCommon
    Left = 162
    Top = 338
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsBinding: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 760
    Top = 552
    object cdsBindingBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsBindingSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsBindingSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsBindingSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsBindingSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsBindingSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object cdsBindingCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsBindingPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsBindingIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR_STATUS'
    end
    object cdsBindingNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 255
    end
    object cdsBindingFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsBindingIS_WASTE_FORK_STATUS: TAbmesFloatField
      FieldName = 'IS_WASTE_FORK_STATUS'
    end
    object cdsBindingML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsBindingMLMS_OPERATION_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_NO'
    end
    object cdsBindingMLMS_OPERATION_VARIANT_NO: TAbmesFloatField
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object cdsBindingDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsBindingDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsBindingDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsBindingDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsBindingDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsBindingVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsBindingINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsBindingINVOICE_ABBREV: TAbmesWideStringField
      FieldName = 'INVOICE_ABBREV'
      Size = 255
    end
    object cdsBindingINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsBindingIS_PROFORM_INVOICE_STATUS: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE_STATUS'
    end
    object cdsBindingOTHER_STORE_DEAL_STORE_CODE: TAbmesFloatField
      FieldName = 'OTHER_STORE_DEAL_STORE_CODE'
    end
    object cdsBindingOTHER_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTHER_STORE_DEAL_DATE'
    end
    object cdsBindingOTHER_STORE_DEAL_NO: TAbmesFloatField
      FieldName = 'OTHER_STORE_DEAL_NO'
    end
    object cdsBindingBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object cdsBindingBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsBindingBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsBindingBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsBindingBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsBindingFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object cdsBindingFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsBindingFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsBindingFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsBindingPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsBindingBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
    end
    object cdsBindingDOCUMENT_IDENTIFIER_STATUS: TAbmesFloatField
      FieldName = 'DOCUMENT_IDENTIFIER_STATUS'
    end
    object cdsBindingDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
    end
    object cdsBindingSALE_GROUP_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_BRANCH_CODE'
    end
    object cdsBindingSALE_GROUP_CODE: TAbmesFloatField
      FieldName = 'SALE_GROUP_CODE'
    end
  end
  object cdsBOIOrderStoreDealsMinMaxDates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrderStoredDealsMinMaxDates'
    Left = 864
    Top = 552
    object cdsBOIOrderStoreDealsMinMaxDatesMIN_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_STORE_DEAL_DATE'
    end
    object cdsBOIOrderStoreDealsMinMaxDatesMAX_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_STORE_DEAL_DATE'
    end
  end
end
