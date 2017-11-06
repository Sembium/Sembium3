inherited fmBOIProductOrders: TfmBOIProductOrders
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1076#1084#1077#1090#1085#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNamePlur' +
    'al% '#1079#1072' '#1057#1088#1077#1076#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlDetailGrid: TPanel
      inherited pnlDetailNavigator: TPanel
        inherited lblDetailGridTitle: TLabel
          Left = 435
        end
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbDocs: TToolBar
          Width = 384
          inherited lblConsumerDeptDoc: TLabel
            Width = 132
            Caption = ' '#1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088' '
          end
          inherited btnConsumerDeptDoc: TToolButton
            Left = 347
          end
        end
        object tlbProductDoc: TToolBar
          Left = 584
          Top = 0
          Width = 73
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 28
            Height = 22
            Caption = ' '#1059#1054#1073' '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 36
            Top = 0
            Action = actProductDoc
          end
        end
        object tbToggleQuantity: TToolBar
          Left = 897
          Top = 0
          Width = 79
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 23
          ButtonWidth = 28
          Caption = 'tbQuantity'
          EdgeInner = esNone
          EdgeOuter = esNone
          TabOrder = 4
          object btnToggleAccountDeviation: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 23
            Action = actToggleAccountDeviation
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0080000000FF00FF00FF00FF00FF00FF00FF00FF008000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000
              0000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00
              FF008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008000
              0000FF000000FF00FF00FF00FF00FF00FF00FF00FF0080000000FF00FF00FF00
              0000800000008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              00008000000080000000FF00FF00FF00FF0080000000FF00FF00FF000000FF00
              0000FF000000800000008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              0000FF000000FF000000800000008080800000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00
              0000FF000000FF000000FF00000080000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00
              FF0000008000FF00FF008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF000000
              8000FF00FF000000FF00000080008080800000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF0000008000FF00
              FF000000FF000000FF000000FF00000080008080800000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF00000080008080800000000000FF00
              FF00FF00FF00000080000000800000008000FF00FF00FF00FF00FF00FF00FF00
              FF000000FF000000FF000000FF000000FF000000FF0000008000FF00FF00FF00
              FF00FF00FF00FF00FF000000FF0000008000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00
              FF00FF00FF000000FF00FF00FF0000008000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object sepBeforeWorkMeasure: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'ToolButton2'
            Style = tbsSeparator
          end
          object btnWorkMeasure: TSpeedButton
            Left = 31
            Top = 0
            Width = 24
            Height = 23
            Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
            GroupIndex = 1
            Down = True
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF000000FFFFFFFFFFFF000000FF00FFFF00FF0000FF0000
              800000FFFF00FF000000FF00FF7F7F7F000000000000000000FFFFFFFFFFFF00
              0000FF00FFFF00FFFF00FF0000FF0000800000FF0000000080807F7F7F000000
              FFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
              800000FF008080008080000000FFFFFF000000000000FFFFFFFFFFFF000000FF
              00FFFF00FFFF00FFFF00FF0000FF0000800000FF008080008080000000000000
              FF00FFFF00FF000000FFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
              800000FF008080FF00FF0000007F7F7FFF00FFFF00FF000000FFFFFF000000FF
              00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FF
              7F7F7F000000FFFFFF0000007F7F7FFF00FFFF00FF0000000000800000800000
              80000080000080FF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF
              00FF000000008080008080008080000000FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080008080FF00FF0000
              00FF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FF00000000
              8080008080008080FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF000000
              FF00FF000000FF00FF000000008080008080008080FF00FFFF00FFFF00FF0000
              00FF00FFFF00FFFF00FF000000FF00FF00000000000000000000808000808000
              8080FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000000000
              000000000000000000000000008080FF00FFFF00FFFF00FFFF00FF7F7F7F0000
              007F7F7FFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF
              00FFFF00FFFF00FFFF00FF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FF
              0080800000000000000000000000007F7F7FFF00FFFF00FFFF00FF7F7F7F0000
              007F7F7FFF00FFFF00FFFF00FFFF00FF008080008080FF00FF00000000000000
              0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnWorkMeasureClick
          end
          object btnAccountMeasure: TSpeedButton
            Left = 55
            Top = 0
            Width = 24
            Height = 23
            Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
            GroupIndex = 1
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FF7F7F7F7F7F7FFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00
              FF7F7F7F7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF
              BF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF000000BFBFBFBFBFBFBFBFBF000000FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080BFBF
              BF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
              808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000
              FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000000000FFFF000000FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
              00000000000000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF0000000000800000FF000000000000FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000FF
              0000FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnAccountMeasureClick
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BOI_ORDER_STATUS_CODE'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderItemOrderAbbrev%|'#1057#1090#1072#1090
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'BOI_ORDER_CODE'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderItemOrderAbbrev%|No'
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'CONSUMER_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 262
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|'#1052'.'#1077#1076'.'
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            Color = 15532031
            EditButtons = <>
            FieldName = 'PRODUCT_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|'#1048#1048#1054
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1050'-'#1074#1086
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1050'-'#1074#1086
            Visible = False
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1045#1076'. '#1094#1077#1085#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_ACC_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_BOI_PRICE_PERCENT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|% '#1086#1090' %BudgetOrderItemAbbrev%'
          end
          item
            EditButtons = <>
            FieldName = 'STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1058#1055' '#1047
            Width = 53
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'PLAN_DATE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REAL_QUANTITY'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1050'-'#1074#1086
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1050'-'#1074#1086
            Visible = False
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REAL_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1054#1073#1097#1072' '#1089#1090'-'#1089#1090
            Width = 67
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'PRODUCT_LAST_DEAL_DATE'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REAL_QUANTITY_DEV_P'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (% '#1080' '#1074#1088#1077#1084#1077')|'#1050'-'#1074#1086
            Visible = False
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REAL_ACC_QTY_DEV_P'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (% '#1080' '#1074#1088#1077#1084#1077')|'#1050'-'#1074#1086
            Visible = False
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_AVG_S_PRICE_DEV_P'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (% '#1080' '#1074#1088#1077#1084#1077')|'#1045#1076'.'#1094#1077#1085#1072
            Visible = False
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_AVG_ACC_S_PRICE_DEV_P'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (% '#1080' '#1074#1088#1077#1084#1077')|'#1045#1076'.'#1094#1077#1085#1072
            Visible = False
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REAL_PRICE_DEV_P'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (% '#1080' '#1074#1088#1077#1084#1077')|'#1054#1073#1097#1072' '#1089#1090
            Visible = False
            Width = 47
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'PRODUCT_LAST_SD_DAYS_DEV'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' (% '#1080' '#1074#1088#1077#1084#1077')|'#1056#1079#1088#1074
            Visible = False
            Width = 29
          end>
      end
      inherited pnlBottomGridBottom: TPanel
        inherited edtSumBOPricePercent: TDBEdit
          Left = 645
          DataField = '_SUM_PRODUCT_BOI_PRICE_PERCENT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited edtDetailSumTotalPrice: TDBEdit
          Left = 583
          Width = 62
          DataField = '_SUM_PRODUCT_TOTAL_PRICE'
        end
        inherited edtSumTotalAccountPrice: TDBEdit
          Left = 857
          Width = 69
          DataField = '_SUM_PRODUCT_REAL_TOTAL_PRICE'
        end
      end
    end
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited pnlUpperGridBottom: TPanel
        object lblStoreRequests: TLabel [0]
          Left = 184
          Top = 11
          Width = 115
          Height = 13
          Caption = #1043#1088'. '#1047#1072#1103#1074#1082#1080' '#1079#1072' '#1058#1077#1075#1083#1077#1085#1077
        end
        inherited edtSumTotalPrice: TDBEdit
          TabOrder = 3
        end
        object btnNewStoreRequest: TBitBtn
          Left = 305
          Top = 4
          Width = 96
          Height = 25
          Action = actNewStoreRequest
          Caption = #1053#1086#1074#1072'...'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 1
        end
        object btnStoreRequests: TBitBtn
          Left = 409
          Top = 4
          Width = 96
          Height = 25
          Action = actStoreRequests
          Caption = #1056#1077#1075#1080#1089#1090#1098#1088'...'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 2
        end
      end
    end
  end
  inherited alActions: TActionList
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actToggleAccountDeviation: TAction
      GroupIndex = 2
      Hint = #1054#1090#1095#1077#1090' / '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      ImageIndex = 89
      OnExecute = actToggleAccountDeviationExecute
    end
    object actNewStoreRequest: TAction
      Caption = #1053#1086#1074#1072'...'
      ImageIndex = 9
      OnExecute = actNewStoreRequestExecute
      OnUpdate = actNewStoreRequestUpdate
    end
    object actStoreRequests: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088'...'
      ImageIndex = 108
      OnExecute = actStoreRequestsExecute
      OnUpdate = actStoreRequestsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    inherited pdsGridDataParamsBOIO_BEGIN_PLAN_DATE: TAbmesSQLTimeStampField [28]
    end
    inherited pdsGridDataParamsBOIO_END_PLAN_DATE: TAbmesSQLTimeStampField [29]
    end
    inherited pdsGridDataParamsCONSUMER_DEPT_CODE: TAbmesFloatField [30]
    end
    inherited pdsGridDataParamsSTORE_CODE: TAbmesFloatField [32]
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
    end
    inherited pdsGridDataParamsALL_FILTERED_PRODUCTS_2: TAbmesFloatField [33]
    end
    inherited pdsGridDataParamsCHOSEN_PRODUCTS_2: TAbmesWideStringField [34]
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
    end
    inherited pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField [35]
    end
    inherited pdsGridDataParamsBOIO_BEGIN_ACCOUNT_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsBOIO_END_ACCOUNT_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    OnCalcFields = cdsDetailCalcFields
    inherited cdsDetailPRODUCT_HAS_DOC: TAbmesFloatField
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetail_MEASURE_ABBREV: TAbmesWideStringField [51]
      FieldKind = fkCalculated
      FieldName = '_MEASURE_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsDetail_QUANTITY: TAbmesFloatField [52]
      FieldKind = fkCalculated
      FieldName = '_QUANTITY'
      Calculated = True
    end
    object cdsDetail_REAL_QUANTITY: TAbmesFloatField [53]
      FieldKind = fkCalculated
      FieldName = '_REAL_QUANTITY'
      Calculated = True
    end
    object cdsDetail_SINGLE_PRICE: TAbmesFloatField [57]
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsDetaiL_REAL_AVG_SINGLE_PRICE_DEV_P: TAbmesFloatField [58]
      FieldKind = fkCalculated
      FieldName = '_REAL_AVG_SINGLE_PRICE_DEV_P'
      OnGetText = cdsDetaiL_REAL_AVG_SINGLE_PRICE_DEV_PGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
  end
  object cdsStoreRequestNewValues: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 224
    object cdsStoreRequestNewValuesSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object cdsStoreRequestNewValuesREQUEST_DEPT_CODE: TAbmesFloatField
      FieldName = 'REQUEST_DEPT_CODE'
    end
    object cdsStoreRequestNewValuesREQUEST_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_CODE'
    end
    object cdsStoreRequestNewValuesREQUEST_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_BEGIN_DATE'
    end
    object cdsStoreRequestNewValuesREQUEST_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_END_DATE'
    end
  end
  object cdsStoreRequestItemsFilter: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 224
    object cdsStoreRequestItemsFilterALGORITHM_CODE: TAbmesFloatField
      FieldName = 'ALGORITHM_CODE'
    end
    object cdsStoreRequestItemsFilterIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsStoreRequestItemsFilterBND_PROCESS: TAbmesWideStringField
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
  end
  object cdsStoreRequestsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 224
    object cdsStoreRequestsParamsBND_PROCESS: TAbmesWideStringField
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
  end
  object cdsBinding: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 224
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
end
