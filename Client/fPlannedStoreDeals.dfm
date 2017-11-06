inherited fmPlannedStoreDeals: TfmPlannedStoreDeals
  Left = 285
  Top = 171
  ActiveControl = nil
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbre' +
    'v%'
  ClientHeight = 560
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 525
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
    object pnlEditRecord: TPanel
      Left = 0
      Top = 0
      Width = 153
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object btnEdit: TBitBtn
        Left = 8
        Top = 2
        Width = 137
        Height = 25
        Action = actEditRecord
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
        TabOrder = 0
      end
    end
    object pnlMllChange: TPanel
      Left = 153
      Top = 0
      Width = 145
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object btnMllChange: TBitBtn
        Left = 0
        Top = 2
        Width = 137
        Height = 25
        Action = actMllChange
        Caption = #1047#1072#1084#1103#1085#1072'...'
        TabOrder = 0
      end
    end
    object pnlMllStoreChange: TPanel
      Left = 298
      Top = 0
      Width = 145
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      object btnMllStoreChange: TBitBtn
        Left = 0
        Top = 2
        Width = 137
        Height = 25
        Action = actMllStoreChange
        Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1058#1055' '#1047'...'
        TabOrder = 0
      end
    end
    object pnlNewStoreDeal: TPanel
      Left = 443
      Top = 0
      Width = 201
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      object btnNewStoreDeal: TBitBtn
        Left = 0
        Top = 2
        Width = 193
        Height = 25
        Action = actNewStoreDeal
        Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077'...'
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 525
    inherited pnlGrid: TPanel
      Top = 64
      Width = 1001
      Height = 453
      inherited pnlNavigator: TPanel
        Width = 1001
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
          Width = 106
          ButtonHeight = 22
          ButtonWidth = 25
          inherited btnPrintOnNavigator: TToolButton
            Left = 33
          end
          object sepBeforeCopyToClipboard: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'sepBeforeCopyToClipboard'
            ImageIndex = 15
            Style = tbsSeparator
          end
          object btnCopyToClipboard: TToolButton
            Left = 66
            Top = 0
            Action = actCopyToClipboard
            DropdownMenu = pmCopy
            Style = tbsDropDown
          end
        end
        object tlbDoc: TToolBar
          Left = 226
          Top = 0
          Width = 186
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
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
        object tlbDetailDoc: TToolBar
          Left = 412
          Top = 0
          Width = 73
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
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
        object tlbSaleProductDoc: TToolBar
          Left = 485
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
          TabOrder = 6
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
          Left = 703
          Top = 0
          Width = 76
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 7
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
        Height = 429
        FooterRowCount = 1
        FooterParams.Color = 15258325
        HorzScrollBar.VisibleMode = sbNeverShowEh
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 14
        Visible = False
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PSD_ID'
            Footers = <>
            Title.Caption = #1050#1083'- '#1086#1085
            Width = 21
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_DEAL_TYPE'
            Footers = <>
            Width = 22
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1053#1080'- '#1074#1086
            Width = 19
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STORE_NAME'
            Footers = <>
            Title.Caption = #1058#1055' '#1047#1072#1076'.'
            Width = 36
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Visible = False
            Width = 237
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
            Visible = False
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STORE_DEAL_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090
            Visible = False
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BND_PROCESS_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
            Visible = False
            Width = 98
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID '#1054#1055
            Visible = False
            Width = 134
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPLETED_QUANTITY'
            Footer.FieldName = '_OVERALL_COMPLETED_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1072#1073'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095'.'
            Visible = False
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'INCOMPLETED_QUANTITY'
            Footer.FieldName = '_OVERALL_INCOMPLETED_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1072#1073'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1089#1090#1072#1074'.'
            Visible = False
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1056#1072#1073'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
            Footer.FieldName = '_OVERALL_COMPLETED_ACCOUNT_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095'.'
            Visible = False
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'INCOMPLETED_ACCOUNT_QUANTITY'
            Footer.FieldName = '_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1089#1090#1072#1074'.'
            Visible = False
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
            Visible = False
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'COMPLETED_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095'.'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'INCOMPLETED_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1089#1090#1072#1074'.'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_PRICE_SC'
            Footer.FieldName = '_OVERALL_TOTAL_PRICE_SC'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1062#1077#1085#1072' (XXX)'
            Visible = False
            Width = 49
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1050#1057#1063'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Visible = False
            Width = 119
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1050#1057#1063'|'#1058#1077#1093#1085'. '#1084'.'#1077#1076'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_COMPLETED_QTY'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1050#1057#1063'|'#1054#1090#1095'. '#1090#1077#1093#1085'. '#1082'-'#1074#1086
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_INCOMPLETED_QTY'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1050#1057#1063'|'#1054#1089#1090#1072#1074#1072#1097#1086' '#1090#1077#1093#1085'. '#1082'-'#1074#1086
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MLL_NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080' '#1087#1086' '#1088#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SALE_PRODUCT_NAME'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_MODEL_LIMITING'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1040#1082#1090'.'
            Title.Orientation = tohVertical
            Visible = False
            Width = 16
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1055#1086#1089#1090'. '#1074' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086'|'#1053#1072#1095#1072#1083#1086
            Visible = False
            Width = 56
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ENTER_RESULT_STORE_END_DATE'
            Footers = <>
            Title.Caption = #1052#1054#1044#1045#1083'|'#1055#1086#1089#1090'. '#1074' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086'|'#1050#1088#1072#1081
            Visible = False
            Width = 56
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VENDOR_SHORT_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1044#1086#1089#1090#1072#1074#1095#1080#1082
            Visible = False
            Width = 78
            WordWrap = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DELIVERY_PLACE'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1052#1103#1089#1090#1086' '#1085#1072' '#1087#1086#1083#1091#1095#1072#1074#1072#1085#1077
            Visible = False
            Width = 122
            WordWrap = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_DONE'
            Footers = <>
            Title.Caption = #1055
            Visible = False
            Width = 15
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_ANNULED'
            Footers = <>
            Title.Caption = #1040
            Visible = False
            Width = 15
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_MLL_CHANGE_STATUS_ABBREV'
            Footers = <>
            Title.Caption = #1047' '#1072' '#1084
            Title.Hint = 
              '               '#1047#1072#1084#1077#1085#1080#13#10'~~~~~~~~~~~~~~~~~'#13#10#1042#1055' - '#1042#1080#1089#1103#1097#1086' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080 +
              #1077#13#10#1053#1054' - '#1053#1077#1074#1080#1076#1103#1085' '#1086#1090#1082#1072#1079
            Visible = False
            Width = 15
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_DATE'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1072'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_TIME'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1072'|'#1063#1072#1089
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1072'|'#1057#1083#1091#1078'.'
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_DATE'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_TIME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1063#1072#1089
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CHANGE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1057#1083#1091#1078'.'
            Width = 33
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLOSE_DATE'
            Footers = <>
            Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1072'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLOSE_TIME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1072'|'#1063#1072#1089
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLOSE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1072'|'#1057#1083#1091#1078'.'
            Width = 33
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ANNUL_DATE'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ANNUL_TIME'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072'|'#1063#1072#1089
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ANNUL_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072'|'#1057#1083#1091#1078'.'
            Width = 33
          end>
      end
      object pcMain: TPageControl
        Left = 0
        Top = 24
        Width = 1001
        Height = 429
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
        OnChanging = pcMainChanging
        object tsIdentification: TTabSheet
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
          object grdIdentification: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 397
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 11
            OnDblClick = grdDataDblClick
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PSD_ID'
                Footers = <>
                Title.Caption = 'ID '#1055#1083#1055'/'#1058
                Width = 70
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEAL_TYPE'
                Footers = <>
                Title.Caption = #1042' '#1080' '#1076
                Width = 12
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1053#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076'.'
                Width = 36
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 384
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1094#1080#1092#1088#1086#1074
                Width = 76
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' %ProductClassCommonName% '#1086#1090' '#1050#1083#1080#1077#1085#1090#1080
                Visible = False
                Width = 461
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_DEAL_BEGIN_DATE'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090
                Width = 99
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BND_PROCESS_ABBREV'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
                Width = 82
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROCESS_OBJECT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
                Width = 144
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_DONE'
                Footers = <>
                Title.Caption = #1055' '#1082
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_ANNULED'
                Footers = <>
                Title.Caption = #1040' '#1085
                Width = 15
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
            Height = 397
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 11
            OnDblClick = grdDataDblClick
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PSD_ID'
                Footers = <>
                Title.Caption = 'ID '#1055#1083#1055'/'#1058
                Width = 70
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEAL_TYPE'
                Footers = <>
                Title.Caption = #1042' '#1080' '#1076
                Width = 12
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1053#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076'.'
                Width = 36
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 384
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1094#1080#1092#1088#1086#1074
                Width = 76
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' %ProductClassCommonName% '#1086#1090' '#1050#1083#1080#1077#1085#1090#1080
                Visible = False
                Width = 461
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMPLETED_QUANTITY'
                Footer.FieldName = '_OVERALL_COMPLETED_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095#1077#1090#1085#1086
                Width = 95
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'INCOMPLETED_QUANTITY'
                Footer.FieldName = '_OVERALL_INCOMPLETED_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1089#1090#1072#1074#1072#1097#1086
                Width = 94
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
                Width = 44
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
                Footer.FieldName = '_OVERALL_COMPLETED_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1095#1077#1090#1085#1086
                Visible = False
                Width = 95
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'INCOMPLETED_ACCOUNT_QUANTITY'
                Footer.FieldName = '_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1089#1090#1072#1074#1072#1097#1086
                Visible = False
                Width = 94
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 44
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTAL_PRICE_SC'
                Footer.FieldName = '_OVERALL_TOTAL_PRICE_SC'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' (XXX)'
                Width = 91
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_DONE'
                Footers = <>
                Title.Caption = #1055' '#1082
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_ANNULED'
                Footers = <>
                Title.Caption = #1040' '#1085
                Width = 15
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
            Top = 0
            Width = 993
            Height = 397
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            TabOrder = 0
            TitleParams.MultiTitle = True
            OnDblClick = grdDataDblClick
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PSD_ID'
                Footers = <>
                Title.Caption = 'ID '#1055#1083#1055'/'#1058
                Width = 70
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEAL_TYPE'
                Footers = <>
                Title.Caption = #1042' '#1080' '#1076
                Width = 12
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1053#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076'.'
                Width = 36
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1055'/'#1058
                Width = 250
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1086#1090' '#1050#1083#1080#1077#1085#1090#1080
                Visible = False
                Width = 250
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DETAIL_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1050#1057#1063
                Width = 224
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SALE_PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1059#1054#1073' '#1087#1086' ID '#1054#1055#1042
                Width = 179
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_MODEL_LIMITING'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1040#1082#1090'.'
                Title.Orientation = tohVertical
                Width = 13
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'ENTER_RESULT_STORE_BEGIN_DATE'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1042#1088#1084#1048#1085#1090' '#1055#1088#1080#1077#1084#1072#1085#1077
                Width = 99
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_MLL_CHANGE_STATUS_ABBREV'
                Footers = <>
                Title.Caption = #1047'  '#1072'  '#1084
                Title.Hint = #1047#1072#1084#1077#1085#1080#13#10
                Width = 19
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_DONE'
                Footers = <>
                Title.Caption = #1055' '#1082
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_ANNULED'
                Footers = <>
                Title.Caption = #1040' '#1085
                Width = 15
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsFinModel: TTabSheet
          Caption = #1044#1072#1085#1085#1080' '#1079#1072' '#1056'-'#1052#1054#1044#1045#1083
          ImageIndex = 5
          object grdFinModel: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 993
            Height = 397
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 3
            OnDblClick = grdDataDblClick
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PSD_ID'
                Footers = <>
                Title.Caption = 'ID '#1055#1083#1055'/'#1058
                Width = 70
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEAL_TYPE'
                Footers = <>
                Title.Caption = #1042' '#1080' '#1076
                Width = 12
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1053#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076'.'
                Width = 36
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '#1055'/'#1058
                Width = 154
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '#1086#1090' '#1050#1083#1080#1077#1085#1090#1080
                Visible = False
                Width = 208
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_DEAL_BEGIN_DATE'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090
                Width = 99
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'BND_PROCESS_ABBREV'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|'#1042#1080#1076
                Width = 74
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PROCESS_OBJECT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'|ID'
                Width = 81
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RFML_BND_OBJECT_ID'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|ID '#1054#1055
                Width = 93
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RFML_PARTNER_SHORT_NAME'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1055#1072#1088#1090#1085#1100#1086#1088
                Width = 123
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RFML_QUANTITY'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1050'-'#1074#1086
                Width = 61
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RFML_DOCUMENT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1044#1086#1082'. '#1054#1089#1085'.|'#1060#1072#1082#1090#1091#1088#1072
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'RFML_DOCUMENT_DATE'
                Footers = <>
                Title.Caption = #1056'-'#1052#1054#1044#1045#1083'|'#1044#1086#1082'. '#1054#1089#1085'.|'#1044#1072#1090#1072
                Width = 31
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_DONE'
                Footers = <>
                Title.Caption = #1055' '#1082
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_ANNULED'
                Footers = <>
                Title.Caption = #1040' '#1085
                Width = 15
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
            Height = 397
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 11
            OnDblClick = grdDataDblClick
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PSD_ID'
                Footers = <>
                Title.Caption = 'ID '#1055#1083#1055'/'#1058
                Width = 70
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEAL_TYPE'
                Footers = <>
                Title.Caption = #1042' '#1080' '#1076
                Width = 12
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1053#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076'.'
                Width = 36
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 352
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Title.Caption = '%ProductClassCommonName% '#1055'/'#1058'|id '#1094#1080#1092#1088#1086#1074
                Width = 96
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' %ProductClassCommonName% '#1086#1090' '#1050#1083#1080#1077#1085#1090#1080
                Visible = False
                Width = 449
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'VENDOR_SHORT_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1044#1086#1089#1090#1072#1074#1095#1080#1082
                Width = 149
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DELIVERY_PLACE'
                Footers = <>
                Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1058#1055' '#1047' '#1085#1072' '#1048#1055' '#1079#1072' '#1087#1086#1083#1091#1095'.'
                Width = 189
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_DONE'
                Footers = <>
                Title.Caption = #1055' '#1082
                Width = 15
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'IS_ANNULED'
                Footers = <>
                Title.Caption = #1040' '#1085
                Width = 15
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
            Height = 397
            Align = alClient
            DataSource = dsGridData
            DynProps = <>
            FooterRowCount = 1
            FooterParams.Color = 15258325
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.VisibleMode = sbNeverShowEh
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            TabOrder = 0
            TitleParams.MultiTitle = True
            TitleParams.VTitleMargin = 11
            OnDblClick = grdDataDblClick
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PSD_ID'
                Footers = <>
                Title.Caption = 'ID '#1055#1083#1055'/'#1058
                Width = 70
              end
              item
                Alignment = taCenter
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = '_DEAL_TYPE'
                Footers = <>
                Title.Caption = #1042' '#1080' '#1076
                Width = 12
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1053#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 17
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'STORE_NAME'
                Footers = <>
                Title.Caption = #1058#1055' '#1047#1072#1076'.'
                Width = 36
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1044#1072#1090#1072
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CREATE_TIME'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1063#1072#1089
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CREATE_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1057#1083#1091#1078'.'
                Width = 91
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'CHANGE_DATE'
                Footers = <>
                Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1044#1072#1090#1072
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CHANGE_TIME'
                Footers = <>
                Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1063#1072#1089
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CHANGE_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1072' '#1087#1088#1086#1084#1103#1085#1072'|'#1057#1083#1091#1078'.'
                Width = 91
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLOSE_DATE'
                Footers = <>
                Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1086'|'#1044#1072#1090#1072
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLOSE_TIME'
                Footers = <>
                Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1086'|'#1063#1072#1089
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CLOSE_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1055#1088#1080#1082#1083#1102#1095#1077#1085#1086'|'#1057#1083#1091#1078'.'
                Width = 91
              end
              item
                CellButtons = <>
                Color = 16115403
                DynProps = <>
                EditButtons = <>
                FieldName = 'ANNUL_DATE'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1044#1072#1090#1072
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ANNUL_TIME'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1063#1072#1089
                Width = 46
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ANNUL_EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1057#1083#1091#1078'.'
                Width = 93
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
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object gbFilter: TGroupBox
        Left = 0
        Top = -5
        Width = 1001
        Height = 57
        TabOrder = 0
        object lblStore: TLabel
          Left = 368
          Top = 8
          Width = 79
          Height = 13
          Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
        end
        object lblInterval: TLabel
          Left = 648
          Top = 8
          Width = 97
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
        end
        object lblProductName: TLabel
          Left = 8
          Top = 8
          Width = 106
          Height = 13
          Caption = '%ProductClassName%'
        end
        object edtStore: TDBEdit
          Left = 368
          Top = 24
          Width = 265
          Height = 21
          Color = clBtnFace
          DataField = '_DEPT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductName: TDBEdit
          Left = 8
          Top = 24
          Width = 265
          Height = 21
          Color = clBtnFace
          DataField = '_PRODUCT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object edtProductNo: TDBEdit
          Left = 272
          Top = 24
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = '_PRODUCT_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 2
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 648
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
    Left = 64
    Top = 256
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conStore
    FieldDefs = <
      item
        Name = 'IN_OUT'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORE_DEAL_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_NAME'
        DataType = ftWideString
        Size = 45
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'INCOMPLETED_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE_SC'
        DataType = ftFloat
      end
      item
        Name = 'IS_DONE'
        DataType = ftFloat
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'COMPLETED_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'INCOMPLETED_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_CODE'
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
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
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
        Name = 'DELIVERY_PLACE'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'BND_PROCESS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NO'
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
        Name = 'CREATE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'CLOSE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLOSE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLOSE_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'ANNUL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'BND_PROCESS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_MODEL_LIMITING'
        DataType = ftFloat
      end
      item
        Name = 'PSD_ID'
        DataType = ftWideString
        Size = 81
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
        Name = 'BND_PROCESS_OBJECT_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'PSD_BRANCH_ID'
        DataType = ftFloat
      end
      item
        Name = 'MLL_NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'DETAIL_TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DETAIL_TECH_COMPLETED_QTY'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_INCOMPLETED_QTY'
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
        Name = 'RFML_DOCUMENT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'RFML_DOCUMENT_DATE'
        DataType = ftTimeStamp
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
        Name = 'COMPLETED_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'INCOMPLETED_TECH_QUANTITY'
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
      end>
    Params = <
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
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
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
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_P'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OUT_P'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'START_DATE'
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
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ANNULED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_ANNULED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_CLOSED'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_NOT_CLOSED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_INACTIVE'
        ParamType = ptInput
        Value = '0'
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
    ProviderName = 'prvPlannedStoreDeals'
    OnCalcFields = cdsGridDataCalcFields
    Left = 32
    Top = 256
    object cdsGridDataIS_MODEL_LIMITING: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_MODEL_LIMITING'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsGridDataSTORE_DEAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_BEGIN_DATE'
      OnGetText = cdsGridDataSTORE_DEAL_BEGIN_DATEGetText
    end
    object cdsGridDataSTORE_DEAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_END_DATE'
    end
    object cdsGridDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object cdsGridDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      DisplayLabel = #8470
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object cdsGridDataSTORE_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'STORE_NAME'
      Size = 255
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1088#1072#1073'. '#1084'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridData_DEAL_TYPE: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkCalculated
      FieldName = '_DEAL_TYPE'
      Size = 2
      Calculated = True
    end
    object cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataPLANNED_STORE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object cdsGridData_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
      OnGetText = QuantitiesGetText
      DisplayFormat = ',#0.##'
    end
    object cdsGridDataINCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_QUANTITY'
      OnGetText = QuantitiesGetText
      DisplayFormat = ',#0.##'
    end
    object cdsGridDataTOTAL_PRICE_SC: TAbmesFloatField
      FieldName = 'TOTAL_PRICE_SC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataIS_DONE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_DONE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_ANNULED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_ANNULED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_OVERALL_COMPLETED_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OVERALL_COMPLETED_QUANTITY'
      DisplayFormat = ',#0'
      Calculated = True
    end
    object cdsGridData_OVERALL_INCOMPLETED_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OVERALL_INCOMPLETED_QUANTITY'
      DisplayFormat = ',#0'
      Calculated = True
    end
    object cdsGridDataCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_ACCOUNT_QUANTITY'
      OnGetText = QuantitiesGetText
      DisplayFormat = ',#0.##'
    end
    object cdsGridDataINCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_ACCOUNT_QUANTITY'
      OnGetText = QuantitiesGetText
      DisplayFormat = ',#0.##'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OVERALL_COMPLETED_ACCOUNT_QUANTITY'
      DisplayFormat = ',#0'
      Calculated = True
    end
    object cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY'
      DisplayFormat = ',#0'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
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
    object cdsGridData_MLL_CHANGE_STATUS_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MLL_CHANGE_STATUS_ABBREV'
      Size = 100
      Calculated = True
    end
    object cdsGridDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
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
    object cdsGridDataDELIVERY_PLACE: TAbmesWideStringField
      FieldName = 'DELIVERY_PLACE'
      Size = 122
    end
    object cdsGridDataBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsGridDataBND_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'BND_PROCESS_ABBREV'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      OnGetText = TimeFieldsGetText
    end
    object cdsGridDataCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 49
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      OnGetText = TimeFieldsGetText
    end
    object cdsGridDataCHANGE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CHANGE_EMPLOYEE_NAME'
      Size = 49
    end
    object cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
      OnGetText = TimeFieldsGetText
    end
    object cdsGridDataCLOSE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CLOSE_EMPLOYEE_NAME'
      Size = 49
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      OnGetText = TimeFieldsGetText
    end
    object cdsGridDataANNUL_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'ANNUL_EMPLOYEE_NAME'
      Size = 49
    end
    object cdsGridDataPSD_ID: TAbmesWideStringField
      FieldName = 'PSD_ID'
      Size = 81
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsGridDataDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsGridDataDETAIL_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOCUMENTATION'
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
      DisplayLabel = #1059#1054#1073' '#1087#1086' ID '#1054#1055#1042
      FieldName = 'SALE_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataSALE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_NO'
    end
    object cdsGridDataSALE_PRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_HAS_DOCUMENTATION'
    end
    object cdsGridDataSALE_PRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataSALE_PRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'SALE_PRODUCT_DOC_CODE'
    end
    object cdsGridDataBND_PROCESS_OBJECT_CLASS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CLASS_CODE'
    end
    object cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 255
    end
    object cdsGridDataPSD_BRANCH_ID: TAbmesFloatField
      FieldName = 'PSD_BRANCH_ID'
    end
    object cdsGridDataMLL_NOTES: TAbmesWideStringField
      FieldName = 'MLL_NOTES'
      Size = 250
    end
    object cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataDETAIL_TECH_COMPLETED_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_COMPLETED_QTY'
      DisplayFormat = ',#0'
    end
    object cdsGridDataDETAIL_TECH_INCOMPLETED_QTY: TAbmesFloatField
      FieldName = 'DETAIL_TECH_INCOMPLETED_QTY'
      DisplayFormat = ',#0'
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
    object cdsGridDataRFML_DOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'RFML_DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataRFML_DOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RFML_DOCUMENT_DATE'
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
    object cdsGridDataCOMPLETED_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_TECH_QUANTITY'
    end
    object cdsGridDataINCOMPLETED_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'INCOMPLETED_TECH_QUANTITY'
    end
    object cdsGridDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
    end
    object cdsGridDataTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridData_IS_ONE_MEASURE: TAggregateField
      FieldName = '_IS_ONE_MEASURE'
      Active = True
      DisplayName = ''
      Expression = 'Min(MEASURE_CODE) = Max(MEASURE_CODE)'
    end
    object cdsGridData_OVERALL_COMPLETED_QUANTITY_RAW: TAggregateField
      FieldName = '_OVERALL_COMPLETED_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(COMPLETED_QUANTITY)'
    end
    object cdsGridData_OVERALL_INCOMPLETED_QUANTITY_RAW: TAggregateField
      FieldName = '_OVERALL_INCOMPLETED_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(INCOMPLETED_QUANTITY)'
    end
    object cdsGridData_OVERALL_TOTAL_PRICE_SC: TAggregateField
      Alignment = taRightJustify
      FieldName = '_OVERALL_TOTAL_PRICE_SC'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE_SC)'
    end
    object cdsGridData_IS_ONE_ACCOUNT_MEASURE: TAggregateField
      FieldName = '_IS_ONE_ACCOUNT_MEASURE'
      Active = True
      DisplayName = ''
      Expression = 'Min(ACCOUNT_MEASURE_CODE) = Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsGridData_OVERALL_COMPLETED_ACCOUNT_QUANTITY_RAW: TAggregateField
      FieldName = '_OVERALL_COMPLETED_ACCOUNT_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(COMPLETED_ACCOUNT_QUANTITY)'
    end
    object cdsGridData_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY_RAW: TAggregateField
      FieldName = '_OVERALL_INCOMPLETED_ACCOUNT_QUANTITY_RAW'
      Active = True
      DisplayName = ''
      Expression = 'Sum(INCOMPLETED_ACCOUNT_QUANTITY)'
    end
  end
  inherited alActions: TActionList
    Left = 80
    inherited actForm: TAction
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1080' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' %ProductClassAbbre' +
        'v%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actMllChange: TAction
      Caption = #1047#1072#1084#1103#1085#1072'...'
      Hint = #1047#1072#1084#1103#1085#1072
      ImageIndex = 33
      OnExecute = actMllChangeExecute
      OnUpdate = actMllChangeUpdate
    end
    object actMllStoreChange: TAction
      Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1058#1055' '#1047'...'
      Hint = #1057#1084#1103#1085#1072' '#1085#1072' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      ImageIndex = 33
      OnExecute = actMllStoreChangeExecute
      OnUpdate = actMllStoreChangeUpdate
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
      OnUpdate = actCopySaleProductNoToClipboardUpdate
    end
    object actCopySaleProductNameToClipboard: TAction
      Caption = 
        #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055' '#1074' '#1073#1091#1092#1077#1088 +
        #1072
      Hint = 
        #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' %ProductClassAbbrev% '#1087#1086' ID '#1054#1055' '#1074' '#1073#1091#1092#1077#1088 +
        #1072
      OnExecute = actCopySaleProductNameToClipboardExecute
      OnUpdate = actCopySaleProductNameToClipboardUpdate
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
    object actNewStoreDeal: TAction
      Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077'...'
      Hint = #1054#1090#1095#1080#1090#1072#1085#1077' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
      OnExecute = actNewStoreDealExecute
      OnUpdate = actNewStoreDealUpdate
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
    Left = 32
    Top = 288
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_PRODUCT_NAMEGetText
      Size = 100
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParamsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      FieldValueType = fvtInteger
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
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'START_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1055'/'#1058' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1085#1072' '#1055'/'#1058
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object pdsGridDataParamsPLAN_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085#1080#1088#1072#1083' '#1055'/'#1058
      FieldName = 'PLAN_EMPLOYEE_CODE'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsIN_P: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
      FieldName = 'IN_P'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsOUT_P: TAbmesFloatField
      DisplayLabel = #1058#1077#1075#1083#1077#1085#1077
      FieldName = 'OUT_P'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_INACTIVE: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1077#1085#1080
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_ACTIVE: TAbmesFloatField
      DisplayLabel = #1053#1077#1086#1090#1095#1077#1090#1077#1085#1080
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_CLOSED: TAbmesFloatField
      FieldName = 'IS_CLOSED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_CLOSED: TAbmesFloatField
      FieldName = 'IS_NOT_CLOSED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_NOT_ANNULED: TAbmesFloatField
      FieldName = 'IS_NOT_ANNULED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsBND_PROCESS: TAbmesWideStringField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'BND_PROCESS'
      Size = 4000
    end
    object pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_DEPT_NO: TAbmesWideStringField
      FieldName = '_DEPT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_DEPT_NAME: TAbmesWideStringField
      FieldName = '_DEPT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_DEPT_NAMEGetText
      Size = 100
    end
    object pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Size = 50
      Calculated = True
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 288
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 216
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 216
  end
  object pmCopy: TPopupMenu
    Left = 171
    Top = 50
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
  object cdsNewStoreDealDefaults: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
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
      end>
    ProviderName = 'prvNewStoreDealDefaults'
    Left = 432
    Top = 456
    object cdsNewStoreDealDefaultsPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      Required = True
    end
    object cdsNewStoreDealDefaultsPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      Required = True
    end
    object cdsNewStoreDealDefaultsBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
    end
    object cdsNewStoreDealDefaultsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsNewStoreDealDefaultsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
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
