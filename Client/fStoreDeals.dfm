inherited fmStoreDeals: TfmStoreDeals
  ActiveControl = nil
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbre' +
    'v%'
  ClientHeight = 567
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 532
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 4
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 3
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 5
      Visible = False
    end
    object btnEdit: TBitBtn
      Left = 8
      Top = 2
      Width = 117
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Default = True
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
      TabOrder = 0
    end
    object btnNewStoreDealIn: TBitBtn
      Left = 136
      Top = 2
      Width = 161
      Height = 25
      Action = actNewStoreDealIn
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077'...'
      Default = True
      DoubleBuffered = True
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 1
    end
    object btnNewStoreDealOut: TBitBtn
      Left = 308
      Top = 2
      Width = 161
      Height = 25
      Action = actNewStoreDealOut
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077'...'
      Default = True
      DoubleBuffered = True
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 2
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 532
    inherited pnlGrid: TPanel
      Top = 73
      Width = 1001
      Height = 451
      inherited pnlNavigator: TPanel
        Width = 1001
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
        object tlbTopButtons: TToolBar
          Left = 200
          Top = 0
          Width = 45
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 24
          Caption = 'tlbTopButtons'
          Images = dmMain.ilActions
          TabOrder = 3
          object sepBeforeCopyButton: TToolButton
            Left = 0
            Top = 0
            Width = 6
            Caption = 'sepBeforeCopyButton'
            ImageIndex = 15
            Style = tbsSeparator
          end
          object btnCopyToClipboard: TToolButton
            Left = 6
            Top = 0
            Action = actCopyToClipboard
            DropdownMenu = pmCopy
            Style = tbsDropDown
          end
        end
        object tlbDoc: TToolBar
          Left = 316
          Top = 0
          Width = 186
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
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 141
            Height = 22
            Caption = ' %ProductClassAbbrev% '#1055'/'#1058' '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 149
            Top = 0
            Action = actProductDoc
          end
        end
        object tlbSaleProductDoc: TToolBar
          Left = 575
          Top = 0
          Width = 218
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 5
          object sepBeforeSaleProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeSaleProductDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblSaleProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 173
            Height = 22
            Caption = ' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055#1042' '
            Layout = tlCenter
          end
          object btnSaleProductDoc: TToolButton
            Left = 181
            Top = 0
            Action = actSaleProductDoc
          end
        end
        object tlbDetailDoc: TToolBar
          Left = 502
          Top = 0
          Width = 73
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 6
          object sepBeforeDetailDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDetailDoc: TLabel
            Left = 8
            Top = 0
            Width = 28
            Height = 22
            Caption = ' '#1050#1057#1063' '
            Layout = tlCenter
          end
          object btnDetailDoc: TToolButton
            Left = 36
            Top = 0
            Action = actDetailDoc
          end
        end
        object tlbSDDoc: TToolBar
          Left = 245
          Top = 0
          Width = 71
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 7
          object sepBeforeSDDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblSDDoc: TLabel
            Left = 8
            Top = 0
            Width = 26
            Height = 22
            Caption = ' '#1055'/'#1058' '
            Layout = tlCenter
          end
          object btnSDDoc: TToolButton
            Left = 34
            Top = 0
            Action = actDoc
          end
        end
        object tbToggleQuantity: TToolBar
          Left = 922
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
          TabOrder = 8
          object btnToggleProductDisplay: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 23
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
          object sepAfterToggleProductDisplay: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'sepAfterToggleProductDisplay'
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
          end
        end
        object tlbDeliveryDoc: TToolBar
          Left = 793
          Top = 0
          Width = 76
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 9
          object sepDeliveryDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDeliveryDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDeliveryDoc: TLabel
            Left = 8
            Top = 0
            Width = 31
            Height = 22
            Caption = ' '#1054#1055#1044' '
            Layout = tlCenter
          end
          object btnDeliveryDoc: TToolButton
            Left = 39
            Top = 0
            Action = actDeliveryDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 427
        Visible = False
      end
      object pcMain: TPageControl
        Left = 0
        Top = 24
        Width = 1001
        Height = 427
        ActivePage = tsIdentification
        Align = alClient
        BiDiMode = bdLeftToRight
        HotTrack = True
        MultiLine = True
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabHeight = 22
        TabOrder = 2
        object tsIdentification: TTabSheet
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
          object grdIdentification: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 395
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 9
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'.'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042' '#1080'  '#1076' '
                Width = 17
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORE_DEAL_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 23
              end
              item
                Checkboxes = False
                EditButtons = <>
                FieldName = 'IS_STORNO'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083'.'
                Title.Orientation = tohVertical
                Width = 22
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 311
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1094#1080#1092#1088#1086#1074
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' %ProductClassCommonName%'
                Visible = False
                Width = 388
              end
              item
                EditButtons = <>
                FieldName = 'WORK_DEPT_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1055#1086#1089#1090'/'#1058#1077#1075#1083
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'BND_PROCESS_ABBREV'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
                Width = 89
              end
              item
                EditButtons = <>
                FieldName = 'BND_PROCESS_OBJECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1058#1080#1087
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'BND_PO_IDENTIFIER'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
                Width = 144
              end
              item
                EditButtons = <>
                FieldName = 'STORE_REQUEST_ID'
                Footers = <>
                Title.Caption = 'ID '#1043#1088#1091#1087#1086#1074#1072' '#1047#1072#1103#1074#1082#1072
                Width = 59
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'HAS_BND_SD'
                Footers = <>
                Title.Caption = #1042#1088#1097
                Title.Orientation = tohVertical
                Width = 13
              end
              item
                EditButtons = <>
                FieldName = 'PROJECT_PRODUCT_NAME'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'PROJECT_PRODUCT_NO'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'ORG_TASK_PROPOSAL_NO'
                Footers = <>
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'BOIO_BUDGET_PRODUCT_NO'
                Footers = <>
                Title.Caption = #1054#1051#1041#1057'|'#1051#1080#1084#1080#1090' '#1086#1090' '#1041#1086#1088#1076#1077#1088#1086'|'#1057#1090#1072#1090#1080#1103'|id '#1094#1080#1092#1088#1086#1074
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'BOIO_BUDGET_PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1054#1051#1041#1057'|'#1051#1080#1084#1080#1090' '#1086#1090' '#1041#1086#1088#1076#1077#1088#1086'|'#1057#1090#1072#1090#1080#1103'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Visible = False
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsQuantitiesAndPrices: TTabSheet
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
          ImageIndex = 1
          object grdOtch: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 395
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 9
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'.'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042' '#1080'  '#1076' '
                Width = 17
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORE_DEAL_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 23
              end
              item
                Checkboxes = False
                EditButtons = <>
                FieldName = 'IS_STORNO'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083'.'
                Title.Orientation = tohVertical
                Width = 22
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 348
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1094#1080#1092#1088#1086#1074
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' %ProductClassCommonName%'
                Visible = False
                Width = 424
              end
              item
                EditButtons = <>
                FieldName = 'QUANTITY'
                Footer.FieldName = '_TOTAL_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1056#1072#1073'. '#1082'-'#1074#1086
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1056#1072#1073'. '#1084'.'#1077#1076'.'
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footer.FieldName = '_TOTAL_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090'. '#1084'.'#1077#1076'.'
                Visible = False
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' /%s/|'#1045#1076#1080#1085#1080#1095#1085#1072
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' /%s/|'#1045#1076#1080#1085#1080#1095#1085#1072
                Visible = False
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.FieldName = '_OVERALL_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' /%s/|'#1054#1073#1097#1072
                Width = 121
              end
              item
                EditButtons = <>
                FieldName = 'SALE_TOTAL_PRICE'
                Footers = <>
                Visible = False
                Width = 120
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsMODEL: TTabSheet
          Caption = #1044#1072#1085#1085#1080' '#1079#1072' '#1056'-'#1052#1054#1044#1045#1083
          ImageIndex = 4
          object grdMODEL: TAbmesDBGrid
            Left = 0
            Top = 1
            Width = 993
            Height = 394
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 8
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'.'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042' '#1080'  '#1076' '
                Width = 17
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORE_DEAL_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 23
              end
              item
                Checkboxes = False
                EditButtons = <>
                FieldName = 'IS_STORNO'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083'.'
                Title.Orientation = tohVertical
                Width = 22
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1055'/'#1058
                Width = 272
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
                Visible = False
                Width = 272
              end
              item
                EditButtons = <>
                FieldName = 'DETAIL_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1050#1057#1063
                Width = 212
              end
              item
                EditButtons = <>
                FieldName = 'SALE_PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1059#1054#1073' '#1087#1086' ID '#1054#1055#1042
                Width = 214
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1042#1088#1084#1048#1085#1090' '#1055#1088#1080#1077#1084#1072#1085#1077
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = '_MLL_CHANGE_STATUS_ABBREV'
                Footers = <>
                Title.Caption = #1047' '#1072' '#1084
                Width = 16
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlBottom4: TPanel
            Left = 0
            Top = 0
            Width = 993
            Height = 1
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
          end
        end
        object tsFinModel: TTabSheet
          Caption = #1044#1072#1085#1085#1080' '#1079#1072' '#1056'-'#1052#1054#1044#1045#1083
          ImageIndex = 5
          object grdFinModel: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 395
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'.'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042' '#1080'  '#1076' '
                Width = 17
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORE_DEAL_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 23
              end
              item
                Checkboxes = False
                EditButtons = <>
                FieldName = 'IS_STORNO'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083'.'
                Title.Orientation = tohVertical
                Width = 22
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '#1055'/'#1058
                Width = 207
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
                Visible = False
                Width = 324
              end
              item
                EditButtons = <>
                FieldName = 'WORK_DEPT_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1055#1086#1089#1090'/'#1058#1077#1075#1083
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'BND_PROCESS_ABBREV'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'BND_PO_IDENTIFIER'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'RFML_BND_OBJECT_ID'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|ID '#1054#1055
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'RFML_PARTNER_SHORT_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1055#1072#1088#1090#1085#1100#1086#1088
                Width = 113
              end
              item
                EditButtons = <>
                FieldName = 'RFML_QUANTITY'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1050'-'#1074#1086
              end
              item
                EditButtons = <>
                FieldName = 'RFML_DOCUMENT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1044#1086#1082'. '#1054#1089#1085'.|'#1060#1072#1082#1090#1091#1088#1072
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'RFML_DOCUMENT_DATE'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1044#1086#1082'. '#1054#1089#1085'.|'#1044#1072#1090#1072
                Width = 31
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsDelivery: TTabSheet
          Caption = #1044#1072#1085#1085#1080' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
          ImageIndex = 5
          object grdDelivery: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 395
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 3
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'.'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042' '#1080'  '#1076' '
                Width = 17
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORE_DEAL_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 23
              end
              item
                Checkboxes = False
                EditButtons = <>
                FieldName = 'IS_STORNO'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083'.'
                Title.Orientation = tohVertical
                Width = 22
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 470
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' %ProductClassCommonName%'
                Visible = False
                Width = 470
              end
              item
                EditButtons = <>
                FieldName = 'VENDOR_SHORT_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1044#1086#1089#1090#1072#1074#1095#1080#1082
                Width = 245
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'INVOICE_DATE'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1060#1072#1082#1090#1091#1088#1072'|'#1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'INVOICE_NO'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1060#1072#1082#1090#1091#1088#1072'|'#1053#1086#1084#1077#1088
                Width = 68
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsSysInfo: TTabSheet
          Caption = #1057#1080#1089#1090#1077#1084#1085#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          ImageIndex = 3
          object grdSysInfo: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 395
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 9
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = GridsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078'.'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1042' '#1080'  '#1076' '
                Width = 17
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORE_DEAL_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'STORE_DEAL_NO'
                Footers = <>
                Title.Caption = #8470
                Width = 23
              end
              item
                EditButtons = <>
                FieldName = 'REQUEST_EMPLOYEE_NO'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072'|'#1055#1086#1080#1089#1082#1072#1083' '#1044#1074#1080#1078#1077#1085#1080#1077#1090#1086'|'#1050#1086#1076
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'REQUEST_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072'|'#1055#1086#1080#1089#1082#1072#1083' '#1044#1074#1080#1078#1077#1085#1080#1077#1090#1086'|'#1048#1084#1077
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'STORE_EMPLOYEE_NO'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072'|'#1052#1054#1051'|'#1050#1086#1076
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'STORE_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072'|'#1052#1054#1051'|'#1048#1084#1077
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'OTHER_EMPLOYEE_NO'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072'|'#1055#1054#1051' / '#1058#1054#1051'|'#1050#1086#1076
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'OTHER_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1080' '#1051#1080#1094#1072'|'#1055#1054#1051' / '#1058#1054#1051'|'#1048#1084#1077
                Visible = False
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1044#1072#1090#1072
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_TIME'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1063#1072#1089
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1057#1083#1091#1078#1080#1090#1077#1083
                Width = 255
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'STORNO_DATE'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1044#1072#1090#1072
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'STORNO_TIME'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1063#1072#1089
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'STORNO_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1057#1083#1091#1078#1080#1090#1077#1083
                Width = 255
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 1001
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object gbFilter: TGroupBox
        Left = 0
        Top = 0
        Width = 1001
        Height = 57
        TabOrder = 0
        object lblStore: TLabel
          Left = 408
          Top = 8
          Width = 91
          Height = 13
          Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
        end
        object lblInterval: TLabel
          Left = 680
          Top = 8
          Width = 97
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
        end
        object lblProductName: TLabel
          Left = 8
          Top = 8
          Width = 147
          Height = 13
          Caption = '%ProductClassCommonName%'
        end
        object edtStore: TDBEdit
          Left = 408
          Top = 24
          Width = 257
          Height = 21
          Color = clBtnFace
          DataField = '_STORE_DEPT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductName: TDBEdit
          Left = 8
          Top = 24
          Width = 284
          Height = 21
          Color = clBtnFace
          DataField = '_PRODUCT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object edtProductNo: TDBEdit
          Left = 288
          Top = 24
          Width = 105
          Height = 21
          Color = clBtnFace
          DataField = '_PRODUCT_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 2
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 680
          Top = 24
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 3
          TabStop = True
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 136
    Top = 232
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conStore
    FieldDefs = <
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORE_DEAL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IN_OUT'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PO_CLASS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BND_PO_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_DEPT_NAME'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'WORK_ORDER_NO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'QUANTITY'
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
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
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
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'STORNO_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORNO_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORNO_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'STORNO_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'STORE_REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_REQUEST_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ENTER_RESULT_STORE_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENTER_RESULT_STORE_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'MLL_CHANGE_STATUS'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MATERIAL_LIST_LINE_CHANGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'VENDOR_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'INVOICE_NO'
        DataType = ftFloat
      end
      item
        Name = 'STORE_NAME'
        DataType = ftWideString
        Size = 45
      end
      item
        Name = 'STORE_DEAL_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'IS_STORNO'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'STORE_REQUEST_ID'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SALE_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRODUCT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRODUCT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRODUCT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
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
        Name = 'SD_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'SD_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SD_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_BND_SD'
        DataType = ftFloat
      end
      item
        Name = 'RFML_BND_OBJECT_ID'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'RFML_PARTNER_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'RFML_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SALE_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'RFML_DOCUMENT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'RFML_DOCUMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PROJECT_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROJECT_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'ORG_TASK_PROPOSAL_NO'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 152
      end
      item
        Name = 'STORE_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'STORE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 152
      end
      item
        Name = 'OTHER_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'OTHER_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 152
      end
      item
        Name = 'DELIVERY_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_BUDGET_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_BUDGET_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BND_PROCESS_OBJECT_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_DEAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
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
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_IN'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_OUT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OTHER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OTHER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
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
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'BND_PROCESS'
        ParamType = ptInput
      end>
    ProviderName = 'prvMovements'
    OnCalcFields = cdsGridDataCalcFields
    Left = 104
    Top = 232
    object cdsGridData_TOTAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',#0'
      Calculated = True
    end
    object cdsGridData_TOTAL_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_QUANTITY'
      DisplayFormat = ',#0'
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
    object cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MLL_CHANGE_STATUS_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsGridDataSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object cdsGridDataSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsGridDataSTORE_DEAL_NO: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsGridDataBND_PO_CLASS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PO_CLASS_ABBREV'
      Size = 10
    end
    object cdsGridDataBND_PO_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PO_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsGridDataWORK_DEPT_NAME: TAbmesWideStringField
      FieldName = 'WORK_DEPT_NAME'
      Size = 46
    end
    object cdsGridDataWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.####'
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.####'
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsGridDataSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      OnGetText = TimeFieldsGetText
    end
    object cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      OnGetText = TimeFieldsGetText
    end
    object cdsGridDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 41
    end
    object cdsGridDataSTORNO_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_NAME'
      Size = 41
    end
    object cdsGridDataSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
    end
    object cdsGridDataSTORE_REQUEST_CODE: TAbmesFloatField
      FieldName = 'STORE_REQUEST_CODE'
    end
    object cdsGridDataDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsGridDataENTER_RESULT_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
      OnGetText = cdsGridDataENTER_RESULT_STORE_BEGIN_DATEGetText
    end
    object cdsGridDataENTER_RESULT_STORE_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_RESULT_STORE_END_DATE'
    end
    object cdsGridDataMLL_CHANGE_STATUS: TAbmesFloatField
      FieldName = 'MLL_CHANGE_STATUS'
    end
    object cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsGridDataMATERIAL_LIST_LINE_CHANGE_NO: TAbmesFloatField
      FieldName = 'MATERIAL_LIST_LINE_CHANGE_NO'
    end
    object cdsGridDataVENDOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'VENDOR_COMPANY_CODE'
    end
    object cdsGridDataVENDOR_SHORT_NAME: TAbmesWideStringField
      FieldName = 'VENDOR_SHORT_NAME'
    end
    object cdsGridDataINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsGridDataINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
    object cdsGridDataSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 45
    end
    object cdsGridDataSTORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataIS_STORNO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_STORNO'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
    end
    object cdsGridDataSTORE_REQUEST_ID: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_ID'
      Size = 81
    end
    object cdsGridDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsGridDataDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsGridDataDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object cdsGridDataSALE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_CODE'
    end
    object cdsGridDataSALE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object cdsGridDataSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataSALE_PRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_CODE'
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataSD_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SD_HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSD_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SD_DOC_BRANCH_CODE'
    end
    object cdsGridDataSD_DOC_CODE: TAbmesFloatField
      FieldName = 'SD_DOC_CODE'
    end
    object cdsGridDataACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataHAS_BND_SD: TAbmesFloatField
      FieldName = 'HAS_BND_SD'
      DisplayBoolValues = '!;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataRFML_BND_OBJECT_ID: TAbmesWideStringField
      FieldName = 'RFML_BND_OBJECT_ID'
      Size = 128
    end
    object cdsGridDataRFML_PARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'RFML_PARTNER_SHORT_NAME'
    end
    object cdsGridDataRFML_QUANTITY: TAbmesFloatField
      FieldName = 'RFML_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataSALE_TOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1051#1057
      FieldName = 'SALE_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RFML_DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RFML_DOCUMENT_DATE'
    end
    object cdsGridDataPROJECT_PRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1054#1073' - '#1055#1088#1086#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FieldName = 'PROJECT_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPROJECT_PRODUCT_NO: TAbmesFloatField
      DisplayLabel = #1059#1054#1073' - '#1055#1088#1086#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
      FieldName = 'PROJECT_PRODUCT_NO'
    end
    object cdsGridDataORG_TASK_PROPOSAL_NO: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1077#1082#1090'|No'
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object cdsGridDataREQUEST_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'REQUEST_EMPLOYEE_NO'
    end
    object cdsGridDataREQUEST_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'REQUEST_EMPLOYEE_NAME'
      Size = 152
    end
    object cdsGridDataSTORE_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'STORE_EMPLOYEE_NO'
    end
    object cdsGridDataSTORE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'STORE_EMPLOYEE_NAME'
      Size = 152
    end
    object cdsGridDataOTHER_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'OTHER_EMPLOYEE_NO'
    end
    object cdsGridDataOTHER_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'OTHER_EMPLOYEE_NAME'
      Size = 152
    end
    object cdsGridDataDELIVERY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_BRANCH_CODE'
    end
    object cdsGridDataDELIVERY_DOC_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DOC_CODE'
    end
    object cdsGridDataDELIVERY_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DELIVERY_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBOIO_BUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BOIO_BUDGET_PRODUCT_NO'
    end
    object cdsGridDataBOIO_BUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BOIO_BUDGET_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataBND_PROCESS_OBJECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridData_TOTAL_QUANTITY_RAW: TAggregateField
      FieldName = '_TOTAL_QUANTITY_RAW'
      Active = True
      DisplayFormat = ',#0'
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridData_TOTAL_ACCOUNT_QUANTITY_RAW: TAggregateField
      FieldName = '_TOTAL_ACCOUNT_QUANTITY_RAW'
      Active = True
      DisplayFormat = ',#0'
      Expression = 'Sum(ACCOUNT_QUANTITY)'
    end
    object cdsGridData_IS_ONE_MEASURE: TAggregateField
      FieldName = '_IS_ONE_MEASURE'
      Active = True
      Expression = 'Min(MEASURE_CODE) = Max(MEASURE_CODE)'
    end
    object cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField
      FieldName = '_IS_ONE_ACCOUNT_MEASURE'
      Active = True
      Expression = 'Min(ACCOUNT_MEASURE_CODE) = Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_OVERALL_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_OVERALL_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 208
    Top = 200
    inherited actForm: TAction
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbre' +
        'v%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      ShortCut = 16451
      OnExecute = actCopyToClipboardExecute
      OnUpdate = actCopyToClipboardUpdate
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
    object actCopyDetailNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1050#1057#1063' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1050#1057#1063' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyDetailNoToClipboardExecute
      OnUpdate = actCopyDetailNoToClipboardUpdate
    end
    object actCopyDetailNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' '#1050#1057#1063' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' '#1050#1057#1063' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyDetailNameToClipboardExecute
      OnUpdate = actCopyDetailNameToClipboardUpdate
    end
    object actCopySaleProductNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1085#1072' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1085#1072' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopySaleProductNoToClipboardExecute
    end
    object actCopySaleProductNameToClipboard: TAction
      Caption = 
        #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055' '#1074' '#1073#1091#1092#1077#1088 +
        #1072
      Hint = 
        #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055' '#1074' '#1073#1091#1092#1077#1088 +
        #1072
      OnExecute = actCopySaleProductNameToClipboardExecute
    end
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassAbbrev%'
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actDetailDoc: TAction
      Caption = 'actDetailDoc'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1050#1057#1063
      OnExecute = actDetailDocExecute
      OnUpdate = actDetailDocUpdate
    end
    object actSaleProductDoc: TAction
      Caption = 'actSaleProductDoc'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1059#1054#1073' '#1087#1086' ID '#1054#1055#1042
      OnExecute = actSaleProductDocExecute
      OnUpdate = actSaleProductDocUpdate
    end
    object actDoc: TAction
      Caption = 'actDoc'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1055'/'#1058
      OnExecute = actDocExecute
    end
    object actNewStoreDealIn: TAction
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      OnExecute = actNewStoreDealInExecute
      OnUpdate = actNewStoreDealInUpdate
    end
    object actNewStoreDealOut: TAction
      Caption = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077'...'
      Hint = #1053#1086#1074#1086' '#1054#1090#1095#1077#1090#1085#1086' '#1058#1077#1075#1083#1077#1085#1077
      OnExecute = actNewStoreDealOutExecute
      OnUpdate = actNewStoreDealOutUpdate
    end
    object actDeliveryDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1054#1055#1044
      ImageIndex = 98
      OnExecute = actDeliveryDocExecute
      OnUpdate = actDeliveryDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 104
    Top = 264
    object pdsGridDataParamsSTORE_DEAL_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'STORE_DEAL_NO'
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'CHOSEN_DEPTS'
      OnChange = pdsGridDataParamsCHOSEN_DEPTSChange
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParamsSTART_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055'/'#1058' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'START_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055'/'#1058' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
    end
    object pdsGridDataParamsOTHER_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1055#1086#1089#1090#1098#1087#1074#1072#1097#1086'/'#1058#1077#1075#1083#1077#1097#1086
      FieldName = 'OTHER_DEPT_CODE'
      OnChange = pdsGridDataParamsOTHER_DEPT_CODEChange
    end
    object pdsGridDataParamsIS_IN: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      FieldName = 'IS_IN'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_OUT: TAbmesFloatField
      DisplayLabel = #1058#1077#1075#1083#1077#1085#1077
      FieldName = 'IS_OUT'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_STORNO: TAbmesFloatField
      DisplayLabel = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1080
      FieldName = 'IS_STORNO'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_STORNO: TAbmesFloatField
      DisplayLabel = #1040#1085#1091#1083#1080#1088#1072#1085#1080
      FieldName = 'IS_NOT_STORNO'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsSTORE_REQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = 'ID '#1043#1088#1091#1087#1086#1074#1072' '#1079#1072#1103#1074#1082#1072' - '#1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'STORE_REQUEST_BRANCH_CODE'
      OnChange = pdsGridDataParamsSTORE_REQUEST_BRANCH_CODEChange
    end
    object pdsGridDataParamsSTORE_REQUEST_CODE: TAbmesFloatField
      DisplayLabel = 'ID '#1043#1088#1091#1087#1086#1074#1072' '#1079#1072#1103#1074#1082#1072' - '#1053#1086#1084#1077#1088
      FieldName = 'STORE_REQUEST_CODE'
    end
    object pdsGridDataParamsBND_PROCESS: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
    object pdsGridDataParamsREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      Calculated = True
    end
    object pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
      OnChange = pdsGridDataParamsPRODUCT_CODEChange
    end
    object pdsGridDataParamsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSTORE_REQUEST_BRANCH_NAME: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_BRANCH_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParamsSTORE_REQUEST_BRANCH_ID: TAbmesWideStringField
      FieldName = 'STORE_REQUEST_BRANCH_ID'
      ProviderFlags = []
    end
    object pdsGridDataParamsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsALL_FILTERED_DEPTS: TAbmesFloatField
      FieldName = 'ALL_FILTERED_DEPTS'
      ProviderFlags = []
    end
    object pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField
      FieldName = 'ALL_FILTERED_PRODUCTS'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesWideStringField
      Alignment = taRightJustify
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
      Size = 15
    end
    object pdsGridDataParams_STORE_DEPT_NO: TAbmesWideStringField
      FieldName = '_STORE_DEPT_NO'
      ProviderFlags = []
      Size = 10
    end
    object pdsGridDataParams_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = '_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 50
    end
    object pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Size = 30
      Calculated = True
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = ProductAndStoreFieldsGetText
      Size = 50
    end
    object pdsGridDataParams_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = '_STORE_IDENTIFIER'
      ProviderFlags = []
      OnGetText = ProductAndStoreFieldsGetText
    end
    object pdsGridDataParams_STORE_DEPT_NAME: TAbmesWideStringField
      FieldName = '_STORE_DEPT_NAME'
      ProviderFlags = []
      OnGetText = ProductAndStoreFieldsGetText
      Size = 100
    end
    object pdsGridDataParams_BND_PROCESS_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BND_PROCESS_ABBREV'
      LookupDataSet = cdsProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'PROCESS_ABBREV'
      KeyFields = 'BND_PROCESS_CODE'
      OnGetText = ProductAndStoreFieldsGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_DEPT_NAME: TAbmesWideStringField
      FieldName = '_DEPT_NAME'
      ProviderFlags = []
      OnGetText = ProductAndStoreFieldsGetText
      Size = 100
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 136
    Top = 264
  end
  inherited dsData: TDataSource
    Left = 136
    Top = 200
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 104
    Top = 200
  end
  object cdsProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OUTBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REAL_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PLAN_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROJ_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcesses'
    Left = 328
    Top = 208
    object cdsProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object cdsProcessesPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsProcessesPROCESS_NAME: TAbmesWideStringField
      DisplayWidth = 41
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
  end
  object dsProcesses: TDataSource
    DataSet = cdsProcesses
    Left = 328
    Top = 240
  end
  object pmCopy: TPopupMenu
    Left = 211
    Top = 250
    object miCopyNoToClipboard: TMenuItem
      Action = actCopyNoToClipboard
      Default = True
    end
    object miCopyNameToClipboard: TMenuItem
      Action = actCopyNameToClipboard
    end
    object miCopyDetailNoToClipboard: TMenuItem
      Action = actCopyDetailNoToClipboard
    end
    object miCopyDetailNameToClipboard: TMenuItem
      Action = actCopyDetailNameToClipboard
    end
    object miCopySaleProductNoToClipboard: TMenuItem
      Action = actCopySaleProductNoToClipboard
    end
    object miCopySaleProductNameToClipboard: TMenuItem
      Action = actCopySaleProductNameToClipboard
    end
  end
end
