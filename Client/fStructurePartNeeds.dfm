inherited fmStructurePartNeeds: TfmStructurePartNeeds
  Left = 235
  Top = 190
  Caption = '%Needs% '#1086#1090' %StructureParts%'
  ClientHeight = 476
  ClientWidth = 876
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 441
    Width = 876
    inherited pnlOKCancel: TPanel
      Left = 608
      TabOrder = 4
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 519
      TabOrder = 6
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 787
      TabOrder = 5
      Visible = False
    end
    object btnStructurePartNeedsByResultProduct: TBitBtn
      Left = 176
      Top = 2
      Width = 161
      Height = 25
      Action = actStructurePartNeedsByResultProduct
      Caption = #1042#1082#1083'. '#1074' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object btnStructurePartNeedsByUpperLevelStructurePart: TBitBtn
      Left = 344
      Top = 2
      Width = 161
      Height = 25
      Action = actStructurePartNeedsByUpperLevelStructurePart
      Caption = #1042#1082#1083'. '#1074' %UpperLevelStructurePartsAbbrev%...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object btnStructurePartNeedsBySale: TBitBtn
      Left = 8
      Top = 2
      Width = 161
      Height = 25
      Action = actStructurePartNeedsBySale
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' %SaleProcessOrderAbbrev%...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnEditRecord: TBitBtn
      Left = 512
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1058#1080#1083'. '#1086#1073#1077#1079#1087'...'
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
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 876
    Height = 441
    inherited pnlGrid: TPanel
      Width = 860
      Height = 425
      inherited pnlNavigator: TPanel
        Width = 860
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
          Width = 103
          object sepBeforeCopyToClipboard: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepBeforeCopyToClipboard'
            ImageIndex = 15
            Style = tbsSeparator
          end
          object btnCopyToClipboard: TToolButton
            Left = 64
            Top = 0
            Action = actCopyToClipboard
            DropdownMenu = pmCopy
            Style = tbsDropDown
          end
        end
        object tbRightTop: TToolBar
          Left = 781
          Top = 0
          Width = 79
          Height = 24
          Align = alRight
          ButtonHeight = 24
          Caption = 'tbRightTop'
          TabOrder = 3
          Transparent = False
          object btnWorkMeasure: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 24
            Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
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
          end
          object btnAccountMeasure: TSpeedButton
            Left = 24
            Top = 0
            Width = 24
            Height = 24
            Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
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
          end
          object sepToggleProductDisplay: TToolButton
            Left = 48
            Top = 0
            Width = 8
            Caption = 'sepToggleProductDisplay'
            Style = tbsSeparator
          end
          object btnToggleProductDisplay: TSpeedButton
            Left = 56
            Top = 0
            Width = 23
            Height = 24
            Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'/'#1044#1088#1091#1075' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
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
            Transparent = False
          end
        end
        object tlbTopButtons: TToolBar
          Left = 247
          Top = 0
          Width = 129
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
            Width = 84
            Height = 22
            Caption = ' %StructurePart% '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 92
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Caption = 'btnProductDoc'
            ImageIndex = 0
            OnClick = btnProductDocClick
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 860
        Height = 401
        FooterColor = 15258325
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Height = -9
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        ParentFont = False
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%StructurePart%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 255
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = '%StructurePart%|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
            Footers = <>
            Title.Caption = '%StructurePart%|'#1044#1088#1091#1075#1080' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080
            Visible = False
            Width = 332
          end
          item
            EditButtons = <>
            FieldName = 'IS_PRODUCTION_PRODUCT'
            Footers = <>
            Title.Caption = '%StructurePart%|'#1058#1080#1083'. '#1086#1073#1077#1079#1087'.'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footer.FieldName = '_SUM_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1050#1072#1090#1086' %StructurePart%'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DIRECT_SALE_QUANTITY'
            Footer.FieldName = '_SUM_DIRECT_SALE_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1050#1072#1090#1086' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_SUM_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_QUANTITY'
            Footer.FieldName = '_SUM_ACCOUNT_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1050#1072#1090#1086' %StructurePart%'
            Visible = False
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_DIRECT_SALE_QUANTITY'
            Footer.FieldName = '_SUM_ACCOUNT_DIRECT_SALE_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1050#1072#1090#1086' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085
            Visible = False
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footer.FieldName = '_SUM_ACCOUNT_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'FULL_QUANTITY_PRICE'
            Footer.FieldName = 'SUM_FULL_QUANTITY_PRICE'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SALE_COUNT'
            Footers = <>
            Title.Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077'|'#1042' '#1073#1088#1086#1081' %SaleProcessOrderAbbrev%'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'SPEC_PRODUCT_COUNT'
            Footers = <>
            Title.Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077'|'#1042' '#1073#1088#1086#1081' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'UPPER_LEVEL_STRUCT_PART_COUNT'
            Footers = <>
            Title.Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077'|'#1042' '#1073#1088#1086#1081' %UpperLevelStructurePartsAbbrev%'
            Width = 67
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conNeeds
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
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'IS_PRODUCTION_PRODUCT'
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
        Name = 'ACCOUNT_MEASURE_COEF'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'QUANTITY_NOPRICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DIRECT_SALE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DIRECT_SALE_QUANTITY_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DIRECT_SALE_QTY_NOPRICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'FULL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'FULL_QUANTITY_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'FULL_QUANTITY_NOPRICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'SALE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_PRODUCT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'UPPER_LEVEL_STRUCT_PART_COUNT'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'IS_PRODUCTION_PRODUCT'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'SELF_EXISTENT_STATUS_CODE'
        ParamType = ptInput
        Value = '9'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_STRUCT_PART_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvDetailEstNeeds'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataQUANTITY_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE'
      OnGetText = cdsGridDataQUANTITY_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataQUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'QUANTITY_NOPRICE_DATE'
    end
    object cdsGridDataDIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataDIRECT_SALE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'DIRECT_SALE_QUANTITY_PRICE'
      OnGetText = cdsGridDataDIRECT_SALE_QUANTITY_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataDIRECT_SALE_QTY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DIRECT_SALE_QTY_NOPRICE_DATE'
    end
    object cdsGridDataFULL_QUANTITY: TAbmesFloatField
      FieldName = 'FULL_QUANTITY'
    end
    object cdsGridDataFULL_QUANTITY_PRICE: TAbmesFloatField
      DisplayLabel = #1042#1057'1 (%BaseCurrencyAbbrev%)'
      FieldName = 'FULL_QUANTITY_PRICE'
      OnGetText = cdsGridDataFULL_QUANTITY_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataFULL_QUANTITY_NOPRICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'FULL_QUANTITY_NOPRICE_DATE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataSALE_COUNT: TAbmesFloatField
      FieldName = 'SALE_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSPEC_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataUPPER_LEVEL_STRUCT_PART_COUNT: TAbmesFloatField
      FieldName = 'UPPER_LEVEL_STRUCT_PART_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      Calculated = True
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'END_DATE'
      DisplayFormat = 'ww\e\iiii'
      Calculated = True
    end
    object cdsGridDataPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PRODUCT_COMMON_LEVEL'
      Calculated = True
    end
    object cdsGridDataPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'PARTNER_COMMON_LEVEL'
      Calculated = True
    end
    object cdsGridDataIS_PRODUCTION_PRODUCT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_PRODUCTION_PRODUCT'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCHOSEN_RESULT_PRODUCTS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = 'CHOSEN_RESULT_PRODUCTS'
      Size = 4000
      Calculated = True
    end
    object cdsGridDataCHOSEN_COMPANIES: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
      Calculated = True
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridData_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_DIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_DIRECT_SALE_QUANTITY'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SUM_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_DIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_DIRECT_SALE_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SUM_MEASURE_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsGridData_SUM_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_ACCOUNT_DIRECT_SALE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_ACCOUNT_DIRECT_SALE_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SUM_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SUM_ACCOUNT_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsGridData_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_BEGIN_DATE'
      Calculated = True
    end
    object cdsGridData_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      Calculated = True
    end
    object cdsGridDataMIN_PRP_STATUS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'MIN_PRP_STATUS_CODE'
      Calculated = True
    end
    object cdsGridDataMAX_PRP_STATUS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'MAX_PRP_STATUS_CODE'
      Calculated = True
    end
    object cdsGridDataIS_ONE_MEASURE: TAggregateField
      FieldName = 'IS_ONE_MEASURE'
      Active = True
      Expression = 'Min(MEASURE_CODE) = Max(MEASURE_CODE)'
    end
    object cdsGridDataIS_ONE_ACCOUNT_MEASURE: TAggregateField
      FieldName = 'IS_ONE_ACCOUNT_MEASURE'
      Active = True
      Expression = 'Min(ACCOUNT_MEASURE_CODE) = Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridDataSUM_QUANTITY: TAggregateField
      FieldName = 'SUM_QUANTITY'
      Active = True
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridDataSUM_DIRECT_SALE_QUANTITY: TAggregateField
      FieldName = 'SUM_DIRECT_SALE_QUANTITY'
      Active = True
      Expression = 'Sum(DIRECT_SALE_QUANTITY)'
    end
    object cdsGridDataSUM_ACCOUNT_QUANTITY: TAggregateField
      FieldName = 'SUM_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(QUANTITY * ACCOUNT_MEASURE_COEF)'
    end
    object cdsGridDataSUM_ACCOUNT_DIRECT_SALE_QUANTITY: TAggregateField
      FieldName = 'SUM_ACCOUNT_DIRECT_SALE_QUANTITY'
      Active = True
      Expression = 'Sum(DIRECT_SALE_QUANTITY * ACCOUNT_MEASURE_COEF)'
    end
    object cdsGridDataSUM_FULL_QUANTITY_PRICE: TAggregateField
      FieldName = 'SUM_FULL_QUANTITY_PRICE'
      OnGetText = cdsGridDataSUM_FULL_QUANTITY_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(FULL_QUANTITY_PRICE)'
    end
    object cdsGridDataMIN_FULL_QUANTITY_NOPRICE_DATE: TAggregateField
      FieldName = 'MIN_FULL_QUANTITY_NOPRICE_DATE'
      Active = True
      Expression = 'Min(FULL_QUANTITY_NOPRICE_DATE)'
    end
    object cdsGridDataSUM_QUANTITY_PRICE: TAggregateField
      FieldName = 'SUM_QUANTITY_PRICE'
      OnGetText = cdsGridDataSUM_QUANTITY_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(QUANTITY_PRICE)'
    end
    object cdsGridDataMIN_QUANTITY_NOPRICE_DATE: TAggregateField
      FieldName = 'MIN_QUANTITY_NOPRICE_DATE'
      Active = True
      Expression = 'Min(QUANTITY_NOPRICE_DATE)'
    end
    object cdsGridDataSUM_DIRECT_SALE_QUANTITY_PRICE: TAggregateField
      FieldName = 'SUM_DIRECT_SALE_QUANTITY_PRICE'
      OnGetText = cdsGridDataSUM_DIRECT_SALE_QUANTITY_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(DIRECT_SALE_QUANTITY_PRICE)'
    end
    object cdsGridDataMIN_DRCT_SALE_QTY_NOPRICE_DATE: TAggregateField
      FieldName = 'MIN_DRCT_SALE_QTY_NOPRICE_DATE'
      Active = True
      Expression = 'Min(DIRECT_SALE_QTY_NOPRICE_DATE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%Needs% '#1086#1090' %StructureParts%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actStructurePartNeedsBySale: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' %SaleProcessOrderAbbrev%...'
      Hint = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' %SaleProcessOrderAbbrev%'
      OnExecute = actStructurePartNeedsBySaleExecute
      OnUpdate = actStructurePartNeedsBySaleUpdate
    end
    object actStructurePartNeedsByResultProduct: TAction
      Caption = #1042#1082#1083'. '#1074' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080'...'
      Hint = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1074' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
      OnExecute = actStructurePartNeedsByResultProductExecute
      OnUpdate = actStructurePartNeedsByResultProductUpdate
    end
    object actStructurePartNeedsByUpperLevelStructurePart: TAction
      Caption = #1042#1082#1083'. '#1074' %UpperLevelStructurePartsAbbrev%...'
      Hint = #1042#1082#1083'. '#1074' %UpperLevelStructureParts%'
      OnExecute = actStructurePartNeedsByUpperLevelStructurePartExecute
      OnUpdate = actStructurePartNeedsByUpperLevelStructurePartUpdate
    end
    object actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      OnExecute = actCopyToClipboardExecute
    end
    object actCopyNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNoToClipboardExecute
    end
    object actCopyNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNameToClipboardExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = '%DateIntervalName% - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = '%DateIntervalName% - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_RESULT_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1088#1086#1076#1072#1074#1072#1085
      FieldName = 'CHOSEN_RESULT_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_STRUCT_PART_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%StructurePart%'
      FieldName = 'CHOSEN_STRUCT_PART_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsIS_USED: TAbmesFloatField
      DisplayLabel = #1048#1079#1087#1086#1083#1079#1074#1072#1085#1072' %StructurePart%'
      FieldName = 'IS_USED'
    end
    object pdsGridDataParamsIS_PRODUCTION_PRODUCT: TAbmesFloatField
      DisplayLabel = #1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1072' %StructurePart%'
      FieldName = 'IS_PRODUCTION_PRODUCT'
    end
    object pdsGridDataParamsSELF_EXISTENT_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1072#1084#1086#1089#1090#1086#1103#1090#1077#1083#1085#1086' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1097#1072' %StructurePart%'
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
    end
  end
  object pmCopy: TPopupMenu
    Left = 275
    Top = 154
    object miCopyNoToClipboard: TMenuItem
      Action = actCopyNoToClipboard
      Default = True
    end
    object miCopyNameToClipboard: TMenuItem
      Action = actCopyNameToClipboard
    end
  end
  object cdsParRelProductsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    object cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsParRelProductsParamsCHOSEN_COMPANIES: TAbmesWideStringField
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object cdsParRelProductsParamsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsParRelProductsParamsMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
  end
end
