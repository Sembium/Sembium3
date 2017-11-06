inherited fmStoreQuantities: TfmStoreQuantities
  Left = 272
  Top = 267
  Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev% '#1082#1098#1084' '#1076#1072#1090#1072
  ClientHeight = 499
  ClientWidth = 1018
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 464
    Width = 1018
    inherited pnlOKCancel: TPanel
      Left = 750
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 661
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 929
      TabOrder = 3
      Visible = False
    end
    object pnlNewStoreDealOut: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnNewStoreDealOut: TBitBtn
        Left = 8
        Top = 0
        Width = 161
        Height = 25
        Action = actNewStoreDealOut
        Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077'...'
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1018
    Height = 464
    inherited pnlGrid: TPanel
      Top = 65
      Width = 1002
      Height = 391
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1002
        object lblComment: TLabel [0]
          Left = 520
          Top = 7
          Width = 193
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'lblComment'
        end
        object btnToggleProductDisplay: TSpeedButton [1]
          Left = 979
          Top = 0
          Width = 23
          Height = 24
          Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072'  %ProductClassAbbrev%'
          Align = alRight
          AllowAllUp = True
          GroupIndex = 2
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000000000FF0000FF00
            00FF0000FF0000FF0000000000FF00FFFF00FFFFFF00FFFF00FFFF00FFFF00FF
            FF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF0000000000FF00FF
            FF80808000FFFFFF00FFFF00FFFF00FFFF00FF0000FF00000000000000000000
            00000000000000000000000000FF00FFFF80808080808000FFFFFF00FFFF00FF
            FF00FF0000FF0000FF0000000000FF0000FF0000FF0000000000FF0000FF00FF
            FF80808080808000FFFFFF00FFFF00FFFF00FF0000FF0000FF00000000000000
            00FF0000000000000000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF00FF
            FF80808000FFFF00FFFFFF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF00
            00000000FF0000FF0000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
            FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
            FF00FFFF80808000FFFFFF00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF
            0000FF0000FF0000FF0000FF0000FF000000FFFF00FFFF00FFFFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
            00FF000000FFFF00FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF
            0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FFFFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
        end
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
        object tbSpeed: TToolBar
          Left = 885
          Top = 0
          Width = 94
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 28
          Caption = 'tbQuantity'
          EdgeInner = esNone
          EdgeOuter = esNone
          TabOrder = 6
          object sbtnWorkMeasure: TSpeedButton
            Left = 0
            Top = 0
            Width = 27
            Height = 24
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
            OnClick = sbtnWorkMeasureClick
          end
          object sbtnAccountMeasure: TSpeedButton
            Left = 27
            Top = 0
            Width = 28
            Height = 24
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
            OnClick = sbtnAccountMeasureClick
          end
          object sepBeforeShowTowardsReserve: TToolButton
            Left = 55
            Top = 0
            Width = 8
            Caption = 'sepBeforeShowTowardsReserve'
            Style = tbsSeparator
          end
          object btnShowTowardsReserve: TSpeedButton
            Left = 63
            Top = 0
            Width = 23
            Height = 24
            Action = actShowTowardsReserve
            AllowAllUp = True
            GroupIndex = 11
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000084000000840000008400000084
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000840000008400000084000000840000008400000084
              0000008400000084000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000840000008400000084000000840000008400000084
              0000008400000084000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000084000000840000008400000000000000000000000000000000
              000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF000000000000840000008400000084000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000084000000840000008400000084000000000000FF00FF000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00000000000084000000840000008400000084000000000000FF00FF00FF00
              FF00000000000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
              FF00FF00FF00000000000084000000840000008400000084000000000000FF00
              FF00000000000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
              FF00FF00FF00000000000084000000840000008400000084000000000000FF00
              FF00FF00FF00000000000000FF000000FF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000000000000084000000840000008400000000
              0000FF00FF00000000000000FF000000FF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
              0000FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Transparent = False
          end
          object sepBeforeToggleProductDisplay: TToolButton
            Left = 86
            Top = 0
            Width = 8
            Caption = 'sepBeforeToggleProductDisplay'
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
        object tlbTopButtons: TToolBar
          Left = 200
          Top = 0
          Width = 79
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          EdgeInner = esNone
          EdgeOuter = esNone
          Images = dmMain.ilActions
          TabOrder = 3
          object sepBeforeCopy: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeCopy'
            ImageIndex = 15
            Style = tbsSeparator
          end
          object btnCopy: TToolButton
            Left = 8
            Top = 0
            Action = actCopyToClipboard
            DropdownMenu = pmCopy
            Style = tbsDropDown
          end
          object sepBeforeProductVIM: TToolButton
            Left = 47
            Top = 0
            Width = 8
            Caption = 'sepBeforeProductVIM'
            ImageIndex = 15
            Style = tbsSeparator
          end
          object btnProductVIM: TToolButton
            Left = 55
            Top = 0
            Action = actProductVIM
          end
        end
        object tlbDoc: TToolBar
          Left = 279
          Top = 0
          Width = 163
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeProductDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 118
            Height = 22
            Caption = ' %ProductClassAbbrev% '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 126
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' %ProductClassAbbrev% '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
            Caption = 'btnProductDoc'
            ImageIndex = 0
            OnClick = btnProductDocClick
          end
        end
        object tlbStoreDoc: TToolBar
          Left = 442
          Top = 0
          Width = 130
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeStoreDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeStoreDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblStoreDoc: TLabel
            Left = 8
            Top = 0
            Width = 85
            Height = 22
            Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
            Layout = tlCenter
          end
          object btnStoreDoc: TToolButton
            Left = 93
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
            Caption = 'btnStoreDoc'
            ImageIndex = 0
            OnClick = btnStoreDocClick
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1002
        Height = 367
        FooterRowCount = 1
        FooterParams.Color = 15258325
        HorzScrollBar.VisibleMode = sbNeverShowEh
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 6
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 254
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = '%ProductClassName%|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
            Footers = <>
            Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' %ProductClassName% '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
            Visible = False
            Width = 303
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1047#1072#1076'.'
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footer.FieldName = '_SUM_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|K-'#1074#1086
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_QUANTITY'
            Footer.FieldName = '_SUM_ACCOUNT_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|K-'#1074#1086
            Visible = False
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1052'.'#1077#1076'.'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
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
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1042#1057'1'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_MARKET_PRICE'
            Footer.FieldName = '_SUM_TOTAL_MARKET_PRICE'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1051#1057
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAN_QUANTITY'
            Footer.FieldName = '_SUM_PLAN_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|K-'#1074#1086
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAN_ACCOUNT_QUANTITY'
            Footer.FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|K-'#1074#1086
            Visible = False
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1052'.'#1077#1076'.'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAN_TOTAL_PRICE'
            Footer.FieldName = '_SUM_PLAN_TOTAL_PRICE'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1042#1057'1'
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAN_TOTAL_MARKET_PRICE'
            Footer.FieldName = '_SUM_PLAN_TOTAL_MARKET_PRICE'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1051#1057
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'QUANTITY_TOWARDS_RSV'
            Footer.FieldName = '_SUM_QUANTITY_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|K-'#1074#1086
            Visible = False
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACC_QUANTITY_TOWARDS_RSV'
            Footer.FieldName = '_SUM_ACCOUNT_QUANTITY_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|K-'#1074#1086
            Visible = False
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_PRICE_TOWARDS_RSV'
            Footer.FieldName = '_SUM_TOTAL_PRICE_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1042#1057'1'
            Visible = False
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_MARKET_PRICE_TOWARDS_RSV'
            Footer.FieldName = '_SUM_TOTAL_M_PRICE_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1051#1057
            Visible = False
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_QUANTITY_TOWARDS_RSV'
            Footer.FieldName = '_SUM_PLAN_QUANTITY_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|K-'#1074#1086
            Visible = False
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_ACCOUNT_QUANTITY_TOWARDS_RSV'
            Footer.FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|K-'#1074#1086
            Visible = False
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_TOTAL_PRICE_TOWARDS_RSV'
            Footer.FieldName = '_SUM_P_TOTAL_PRICE_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1042#1057'1'
            Visible = False
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_TOTAL_M_PRICE_TOWARDS_RSV'
            Footer.FieldName = '_SUM_P_TOTAL_M_PRICE_RSV'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1051#1057
            Visible = False
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLAN_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' 0|'#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TECH_QUANTITY_TOWARDS_RSV'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'P_TECH_QUANTITY_TOWARDS_RSV'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074#1080' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083'|'#1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082'-'#1074#1086
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1077#1093'.'#1084'.'#1077#1076'.'
            Visible = False
          end>
      end
    end
    object pnlFilter: TPanel
      Left = 8
      Top = 8
      Width = 1002
      Height = 57
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object lblStoreDealDate: TLabel
        Left = 16
        Top = 8
        Width = 48
        Height = 13
        Caption = #1050#1098#1084' '#1076#1072#1090#1072
      end
      object lblProduct: TLabel
        Left = 136
        Top = 8
        Width = 106
        Height = 13
        Caption = '%ProductClassName%'
      end
      object lblDept: TLabel
        Left = 480
        Top = 8
        Width = 79
        Height = 13
        Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      end
      object edtProduct: TDBEdit
        Left = 136
        Top = 24
        Width = 329
        Height = 21
        Color = clBtnFace
        DataField = '_PRODUCT_NAME'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 1
      end
      object edtDept: TDBEdit
        Left = 480
        Top = 24
        Width = 217
        Height = 21
        Color = clBtnFace
        DataField = '_DEPT_NAME'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 2
      end
      object edtDeptNo: TDBEdit
        Left = 696
        Top = 24
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = '_DEPT_NO'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 3
      end
      inline frStoreDealDate: TfrDateFieldEditFrame
        Left = 16
        Top = 24
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 216
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conStore
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'PRODUCT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_MARKET_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_TOTAL_MARKET_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'ACC_QUANTITY_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_MARKET_PRICE_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'P_QUANTITY_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'P_ACCOUNT_QUANTITY_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'P_TOTAL_PRICE_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'P_TOTAL_M_PRICE_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'STORE_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'TECH_MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TECH_QUANTITY_TOWARDS_RSV'
        DataType = ftFloat
      end
      item
        Name = 'P_TECH_QUANTITY_TOWARDS_RSV'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'STORE_DEAL_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_GROUPED_BY_STORE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvQuantities'
    OnCalcFields = cdsGridDataCalcFields
    BeforeGetRecords = cdsGridDataBeforeGetRecords
    Left = 16
    Top = 216
    object cdsGridDataPLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPLAN_TOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_MARKET_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataTOTAL_MARKET_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      FieldValueType = fvtInteger
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      FieldValueType = fvtInteger
    end
    object cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 255
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      FieldValueType = fvtInteger
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayWidth = 100
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      DisplayLabel = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1086#1090' '#1050#1083#1080#1077#1085#1090#1080
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 255
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataQUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'QUANTITY_TOWARDS_RSV'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataACC_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_TOWARDS_RSV'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataTOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_TOWARDS_RSV'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTOTAL_MARKET_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TOTAL_MARKET_PRICE_TOWARDS_RSV'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataP_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_QUANTITY_TOWARDS_RSV'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataP_ACCOUNT_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_ACCOUNT_QUANTITY_TOWARDS_RSV'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataP_TOTAL_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TOTAL_PRICE_TOWARDS_RSV'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataP_TOTAL_M_PRICE_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TOTAL_M_PRICE_TOWARDS_RSV'
      DisplayFormat = ',0.00'
    end
    object cdsGridData_SUM_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_PLAN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_PLAN_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SUM_QUANTITY_RSV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_QUANTITY_RSV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_ACCOUNT_QUANTITY_RSV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_ACCOUNT_QUANTITY_RSV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_PLAN_QUANTITY_RSV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_PLAN_QUANTITY_RSV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RSV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY_RSV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridDataSTORE_HAS_DOC: TAbmesFloatField
      FieldName = 'STORE_HAS_DOC'
    end
    object cdsGridDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object cdsGridDataTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataTECH_QUANTITY: TAbmesFloatField
      FieldName = 'TECH_QUANTITY'
    end
    object cdsGridDataPLAN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_TECH_QUANTITY'
    end
    object cdsGridDataTECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'TECH_QUANTITY_TOWARDS_RSV'
    end
    object cdsGridDataP_TECH_QUANTITY_TOWARDS_RSV: TAbmesFloatField
      FieldName = 'P_TECH_QUANTITY_TOWARDS_RSV'
    end
    object cdsGridData_IS_ONE_MEASURE: TAggregateField
      FieldName = '_IS_ONE_MEASURE'
      Active = True
      DisplayName = ''
      Expression = 'Min(MEASURE_CODE) = Max(MEASURE_CODE)'
    end
    object cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField
      FieldName = '_IS_ONE_ACCOUNT_MEASURE'
      Active = True
      DisplayName = ''
      Expression = 'Min(ACCOUNT_MEASURE_CODE) = Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_SUM_QUANTITY_RAW: TAggregateField
      FieldName = '_SUM_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridData_SUM_PLAN_QUANTITY_RAW: TAggregateField
      FieldName = '_SUM_PLAN_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_QUANTITY)'
    end
    object cdsGridData_SUM_ACCOUNT_QUANTITY_RAW: TAggregateField
      FieldName = '_SUM_ACCOUNT_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(ACCOUNT_QUANTITY)'
    end
    object cdsGridData_SUM_PLAN_ACCOUNT_QUANTITY_RAW: TAggregateField
      FieldName = '_SUM_PLAN_ACCOUNT_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_ACCOUNT_QUANTITY)'
    end
    object cdsGridData_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridData_SUM_TOTAL_MARKET_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_MARKET_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_MARKET_PRICE)'
    end
    object cdsGridData_SUM_PLAN_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_PLAN_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_TOTAL_PRICE)'
    end
    object cdsGridData_SUM_PLAN_TOTAL_MARKET_PRICE: TAggregateField
      FieldName = '_SUM_PLAN_TOTAL_MARKET_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_TOTAL_MARKET_PRICE)'
    end
    object cdsGridData_SUM_QTY_RSV_RAW: TAggregateField
      FieldName = '_SUM_QTY_RSV_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(QUANTITY_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_ACC_QTY_RSV_RAW: TAggregateField
      FieldName = '_SUM_ACC_QTY_RSV_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(ACC_QUANTITY_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_P_QTY_RSV_RAW: TAggregateField
      FieldName = '_SUM_P_QTY_RSV_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(P_QUANTITY_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_P_ACC_QTY_RSV_RAW: TAggregateField
      FieldName = '_SUM_P_ACC_QTY_RSV_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(P_ACCOUNT_QUANTITY_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_TOTAL_PRICE_RSV: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE_RSV'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_TOTAL_M_PRICE_RSV: TAggregateField
      FieldName = '_SUM_TOTAL_M_PRICE_RSV'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_MARKET_PRICE_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_P_TOTAL_PRICE_RSV: TAggregateField
      FieldName = '_SUM_P_TOTAL_PRICE_RSV'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(P_TOTAL_PRICE_TOWARDS_RSV)'
    end
    object cdsGridData_SUM_P_TOTAL_M_PRICE_RSV: TAggregateField
      FieldName = '_SUM_P_TOTAL_M_PRICE_RSV'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(P_TOTAL_M_PRICE_TOWARDS_RSV)'
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 280
    inherited actForm: TAction
      Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev% '#1082#1098#1084' '#1076#1072#1090#1072
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      OnExecute = actCopyToClipboardExecute
      OnUpdate = actCopyToClipboardUpdate
    end
    object actCopyNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNameToClipboardExecute
    end
    object actCopyNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNoToClipboardExecute
    end
    object actProductVIM: TAction
      Caption = 'actProductVIM'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1042#1048#1052' '#1085#1072' %ProductClassNameWithThePrefix% '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1088#1077#1076
      ImageIndex = 30
      OnExecute = actProductVIMExecute
      OnUpdate = actProductVIMUpdate
    end
    object actShowTowardsReserve: TAction
      GroupIndex = 11
      Hint = #1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083' / '#1057#1087#1088#1103#1084#1086' 0'
      ImageIndex = 85
      OnExecute = actShowTowardsReserveExecute
      OnUpdate = actShowTowardsReserveUpdate
    end
    object actNewStoreDealOut: TAction
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077
      ImageIndex = 34
      OnExecute = actNewStoreDealOutExecute
      OnUpdate = actNewStoreDealOutUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 16
    Top = 248
    object pdsGridDataParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1098#1084' '#1076#1072#1090#1072
      FieldName = 'STORE_DEAL_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsIS_GROUPED_BY_STORE: TAbmesFloatField
      DisplayLabel = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
      FieldName = 'IS_GROUPED_BY_STORE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'CHOSEN_DEPTS'
      OnChange = pdsGridDataParamsCHOSEN_DEPTSChange
      Size = 4000
    end
    object pdsGridDataParamsIS_TOWARDS_RESERVE: TAbmesFloatField
      FieldName = 'IS_TOWARDS_RESERVE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      FieldName = '_PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_PRODUCT_NAMEGetText
      Size = 50
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_STORE_DEAL_DATE_2: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_STORE_DEAL_DATE_2'
      ProviderFlags = []
      Calculated = True
    end
    object pdsGridDataParams_STORE_CODE: TAbmesFloatField
      FieldName = '_STORE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_DEPT_NAME: TAbmesWideStringField
      FieldName = '_DEPT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_DEPT_NAMEGetText
      Size = 100
    end
    object pdsGridDataParams_DEPT_NO: TAbmesWideStringField
      FieldName = '_DEPT_NO'
      ProviderFlags = []
      Size = 50
    end
    object pdsGridDataParams_SHOW_STORE_DEAL_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1098#1084' '#1076#1072#1090#1072
      FieldKind = fkCalculated
      FieldName = '_SHOW_STORE_DEAL_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
      Calculated = True
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 248
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 184
  end
  object pmCopy: TPopupMenu
    Left = 467
    Top = 114
    object miCopyNoToClipboard: TMenuItem
      Action = actCopyNoToClipboard
      Default = True
    end
    object miCopyNameToClipboard: TMenuItem
      Action = actCopyNameToClipboard
    end
  end
  object cdsNewStoreDealDefaults: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 400
    object cdsNewStoreDealDefaultsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsNewStoreDealDefaultsQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      Required = True
    end
    object cdsNewStoreDealDefaultsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      Required = True
    end
    object cdsNewStoreDealDefaultsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object cdsNewStoreDealDefaultsWANTED_QUANTITY: TAbmesFloatField
      FieldName = 'WANTED_QUANTITY'
      Required = True
    end
    object cdsNewStoreDealDefaultsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      Required = True
    end
  end
end
