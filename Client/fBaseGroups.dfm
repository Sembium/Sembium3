inherited fmBaseGroups: TfmBaseGroups
  Left = 314
  Top = 160
  Caption = #1041#1072#1079#1086#1074#1086' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1074' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
  ClientHeight = 567
  ClientWidth = 894
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 532
    Width = 894
    inherited pnlOKCancel: TPanel
      Left = 626
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 537
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 805
      TabOrder = 3
    end
    object pnlBottomButtonsClient: TPanel
      Left = 0
      Top = 0
      Width = 537
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object btnDeptDetailToolNeeds: TSpeedButton
        Left = 9
        Top = 2
        Width = 249
        Height = 25
        Action = actDeptDetailToolNeeds
      end
      object pnlResizeWorkspaceButton: TPanel
        Left = 503
        Top = 0
        Width = 34
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 894
    Height = 532
    DesignSize = (
      894
      532)
    inherited sptDetail: TSplitter
      Top = 310
      Width = 878
      Height = 4
    end
    inherited pnlDetailGrid: TPanel
      Left = 120
      Top = 140
      Width = 273
      Height = 77
      Align = alNone
      Enabled = False
      TabOrder = 2
      Visible = False
      inherited pnlDetailNavigator: TPanel
        Width = 273
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 96
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 310
        Height = 53
        TabStop = False
        Align = alLeft
        DataSource = nil
        Enabled = False
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        Visible = False
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = 'ID '#1050#1057#1063' - '#1095#1083#1077#1085#1086#1074#1077' '#1085#1072' ID '#1041#1043
            Width = 219
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'PRODUCT_HAS_DOC_ITEMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1048#1054
            Width = 28
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_BASE_PRODUCT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1055
            Title.Hint = #1058#1080#1087#1086'-'#1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083
            Width = 28
          end>
      end
    end
    inherited pnlGrid: TPanel
      Top = 57
      Width = 878
      Height = 253
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Top = 5
        Width = 878
        object btnDeptToolNeeds: TSpeedButton [0]
          Left = 668
          Top = 2
          Width = 209
          Height = 22
          Action = actDeptToolNeeds
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbBaseGroupDoc: TToolBar
          Left = 248
          Top = 0
          Width = 116
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbBaseGroupDoc'
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBaseGroupDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBaseGroupDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblBaseGroupDoc: TLabel
            Left = 8
            Top = 0
            Width = 72
            Height = 24
            Caption = #1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072' '
            Layout = tlCenter
          end
          object btnBaseGroupDoc: TToolButton
            Left = 80
            Top = 0
            Action = actBaseGroupDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 29
        Width = 878
        Height = 184
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BASE_GROUP_NO'
            Footers = <>
            Title.Caption = 'ID '#1041#1043
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'BASE_GROUP_NAME'
            Footers = <>
            Width = 481
          end
          item
            EditButtons = <>
            FieldName = 'BASE_GROUP_PRODUCTS_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1059#1095
            Width = 33
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOC_ITEMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'BASE_PRODUCT_NAME'
            Footers = <>
            Title.Caption = 'ID '#1050#1057#1063' - '#1058#1080#1087#1086'-'#1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083' /'#1058#1055'/'
            Width = 235
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'BASE_PRODUCT_HAS_DOC_ITEMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 28
          end>
      end
      object pnlTopSeparator: TPanel
        Left = 0
        Top = 0
        Width = 878
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
      end
      object pnlBaseGroupButtons: TPanel
        Left = 0
        Top = 213
        Width = 878
        Height = 40
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object pnlDataButtons: TPanel
          Left = 0
          Top = 0
          Width = 345
          Height = 40
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object btnAddData: TBitBtn
            Left = 0
            Top = 8
            Width = 105
            Height = 25
            Action = actInsertRecord
            Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 0
          end
          object btnDeleteData: TBitBtn
            Left = 114
            Top = 8
            Width = 105
            Height = 25
            Action = actDelRecord
            Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 1
          end
          object btnEditData: TBitBtn
            Left = 228
            Top = 8
            Width = 105
            Height = 25
            Action = actEditRecord
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
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
            Spacing = -1
            TabOrder = 2
          end
        end
      end
    end
    object pnlFilter: TPanel
      Left = 8
      Top = 8
      Width = 878
      Height = 49
      Align = alTop
      TabOrder = 0
      inline frGroupDept: TfrDeptFieldEditFrame
        Left = 7
        Top = 1
        Width = 450
        Height = 43
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 450
          Height = 43
          DesignSize = (
            450
            43)
          inherited pnlTreeNode: TPanel
            Width = 434
            inherited pnlTreeNodeName: TPanel
              Width = 287
              DesignSize = (
                287
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 286
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 287
            end
            inherited pnlRightButtons: TPanel
              Left = 398
            end
          end
        end
      end
      object gbJoinedProduct: TGroupBox
        Left = 462
        Top = 1
        Width = 409
        Height = 43
        Caption = ' '#1050#1057#1063' - '#1063#1083#1077#1085' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072' '
        TabOrder = 1
        object edtProductName: TDBEdit
          Left = 8
          Top = 16
          Width = 317
          Height = 21
          BevelWidth = 2
          Color = clBtnFace
          DataField = '_PRODUCT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductNo: TDBEdit
          Left = 326
          Top = 16
          Width = 75
          Height = 21
          BevelWidth = 2
          Color = clBtnFace
          DataField = '_PRODUCT_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    inline frBaseGroupProducts: TDualGridFrame
      Left = 8
      Top = 314
      Width = 878
      Height = 210
      Align = alBottom
      ParentBackground = False
      TabOrder = 3
      TabStop = True
      OnResize = frBaseGroupProductsResize
      inherited pnlIncluded: TPanel
        Width = 417
        Height = 210
        inherited pnlIncludedNavigator: TPanel
          Width = 417
          inherited navIncluded: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited grdIncluded: TAbmesDBGrid
          Width = 417
          Height = 186
          FooterFont.Name = 'Microsoft Sans Serif'
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TitleFont.Name = 'Microsoft Sans Serif'
          UseMultiTitle = True
          VTitleMargin = 6
          OnGetCellParams = frBaseGroupProductsgrdIncludedGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Title.Caption = 'ID '#1050#1057#1063' - '#1095#1083#1077#1085#1086#1074#1077' '#1085#1072' ID '#1041#1043
              Width = 159
            end
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = 'id '#1094#1080#1092#1088#1086#1074
              Width = 76
            end
            item
              Alignment = taCenter
              Color = 15532031
              EditButtons = <>
              FieldName = 'PRODUCT_HAS_DOC_ITEMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #1048#1048#1054
              Width = 28
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'IS_BASE_PRODUCT'
              Footers = <>
              Title.Caption = #1058#1055
              Title.Hint = #1058#1080#1087#1086'-'#1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083
              Width = 20
            end
            item
              EditButtons = <>
              FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
              Footers = <>
              Title.Caption = #1041#1088#1086#1081' '#1059#1095#1072#1089#1090#1080#1103'|'#1041#1043
              Title.Hint = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080
              Width = 23
            end
            item
              EditButtons = <>
              FieldName = 'GROUP_DEPT_FLOW_COUNT'
              Footers = <>
              Title.Caption = #1041#1088#1086#1081' '#1059#1095#1072#1089#1090#1080#1103'|'#1045#1090'/'#1054#1087
              Title.Hint = #1045#1090#1072#1087#1080' / '#1054#1087#1077#1088#1072#1094#1080#1080
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'MODEL_VARIANTS_COUNT'
              Footers = <>
              Title.Caption = #1041#1088#1086#1081' '#1059#1095#1072#1089#1090#1080#1103'|'#1042#1072#1088'.'#1052
              Title.Hint = #1042#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1080
              Width = 36
            end>
        end
      end
      inherited pnlButtons: TPanel
        Left = 417
        Height = 210
        DesignSize = (
          44
          210)
        inherited pnlProductButtons: TPanel
          Top = 46
          Height = 145
        end
      end
      inherited pnlExcluded: TPanel
        Left = 461
        Width = 417
        Height = 210
        inherited pnlExcludedNavigator: TPanel
          Width = 417
          inherited navExcluded: TDBColorNavigator
            Left = 321
            Hints.Strings = ()
          end
        end
        inherited grdExcluded: TAbmesDBGrid
          Width = 417
          Height = 186
          FooterFont.Name = 'Microsoft Sans Serif'
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TitleFont.Name = 'Microsoft Sans Serif'
          UseMultiTitle = True
          VTitleMargin = 6
          OnGetCellParams = frBaseGroupProductsgrdExcludedGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Title.Caption = 'ID '#1050#1057#1063' - '#1082#1072#1085#1076#1080#1076#1072#1090' '#1095#1083#1077#1085#1086#1074#1077' '#1085#1072' ID '#1041#1043
              Width = 180
            end
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = 'id '#1094#1080#1092#1088#1086#1074
              Width = 76
            end
            item
              Alignment = taCenter
              Color = 15532031
              EditButtons = <>
              FieldName = 'PRODUCT_HAS_DOC_ITEMS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              Footers = <>
              Title.Caption = #1048#1048#1054
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              Footers = <>
              Title.Caption = #1041#1088#1086#1081' '#1059#1095#1072#1089#1090#1080#1103'|'#1041#1043
              Title.Hint = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080
              Width = 23
            end
            item
              EditButtons = <>
              FieldName = 'GROUP_DEPT_FLOW_COUNT'
              Footers = <>
              Title.Caption = #1041#1088#1086#1081' '#1059#1095#1072#1089#1090#1080#1103'|'#1045#1090'/'#1054#1087
              Title.Hint = #1045#1090#1072#1087#1080' / '#1054#1087#1077#1088#1072#1094#1080#1080
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'MODEL_VARIANTS_COUNT'
              Footers = <>
              Title.Caption = #1041#1088#1086#1081' '#1059#1095#1072#1089#1090#1080#1103'|'#1042#1072#1088'.'#1052
              Title.Hint = #1042#1072#1088#1080#1072#1085#1090#1080' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083'-'#1080
              Width = 36
            end>
        end
      end
      inherited alActions: TActionList
        inherited actInclude: TAction
          OnUpdate = frBaseGroupProductsactIncludeUpdate
        end
        inherited actIncludeAll: TAction
          OnUpdate = frBaseGroupProductsactIncludeUpdate
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsDetail
      end
      inherited dsExcluded: TDataSource
        DataSet = cdsCandidateProducts
        Left = 448
      end
    end
    object tlbBaseGroupProducts: TToolBar
      Left = 173
      Top = 314
      Width = 201
      Height = 24
      Align = alNone
      Anchors = [akLeft, akBottom]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'tlbBaseGroupProducts'
      Images = dmMain.ilActions
      TabOrder = 4
      object sepJoinedProductSpecDocStatus: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sepJoinedProductSpecDocStatus'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnJoinedProductSpecDocStatus: TToolButton
        Left = 8
        Top = 0
        Action = actJoinedProductSpecDocStatus
        ParentShowHint = False
        ShowHint = True
      end
      object sepJoinedProductStage: TToolButton
        Left = 32
        Top = 0
        Width = 8
        Caption = 'sepJoinedProductStage'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnJoinedProductStage: TToolButton
        Left = 40
        Top = 0
        Action = actJoinedProductStage
        ParentShowHint = False
        ShowHint = True
      end
      object sepSetBaseProduct: TToolButton
        Left = 64
        Top = 0
        Width = 8
        ImageIndex = 1
        Style = tbsSeparator
      end
      object btnJoinedProductBaseGroups: TSpeedButton
        Left = 72
        Top = 0
        Width = 24
        Height = 24
        Action = actJoinedProductBaseGroups
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000000000000000000000000000FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000000000000000000000000000FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object sepJoinedProductBaseGroups: TToolButton
        Left = 96
        Top = 0
        Width = 8
        Caption = 'sepJoinedProductBaseGroups'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnSetBaseProduct: TSpeedButton
        Left = 104
        Top = 0
        Width = 97
        Height = 24
        Action = actSetBaseProduct
        Flat = True
        Transparent = False
      end
    end
    object tlbCandidateProductDocs: TToolBar
      Left = 592
      Top = 314
      Width = 128
      Height = 24
      Align = alNone
      Anchors = [akRight, akBottom]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'tlbTopGridButtons'
      Images = dmMain.ilActions
      TabOrder = 5
      object btnCandidateProductsFilter: TToolButton
        Left = 0
        Top = 0
        Action = actCandidateProductsFilter
        ParentShowHint = False
        ShowHint = True
      end
      object sepCandidateProductsFilter: TToolButton
        Left = 24
        Top = 0
        Width = 8
        Caption = 'sepCandidateProductsFilter'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnCandidateProductBaseGroups: TSpeedButton
        Left = 32
        Top = 0
        Width = 24
        Height = 24
        Action = actCandidateProductBaseGroups
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000000000000000000000000000FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000000000000000000000000000FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object sepCandidateProductBaseGroups: TToolButton
        Left = 56
        Top = 0
        Width = 8
        Caption = 'sepCandidateProductBaseGroups'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnCandidateProductStage: TToolButton
        Left = 64
        Top = 0
        Action = actCandidateProductStage
        ParentShowHint = False
        ShowHint = True
      end
      object sepCandidateProductStage: TToolButton
        Left = 88
        Top = 0
        Width = 8
        Caption = 'sepCandidateProductStage'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnCandidateProductSpecDocStatus: TToolButton
        Left = 96
        Top = 0
        Action = actCandidateProductSpecDocStatus
        ParentShowHint = False
        ShowHint = True
      end
      object sepCandidateProductSpecDocStatus: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'sepCandidateProductSpecDocStatus'
        ImageIndex = 0
        Style = tbsSeparator
      end
    end
    object tlbToggles: TToolBar
      Left = 435
      Top = 315
      Width = 24
      Height = 25
      Align = alNone
      Anchors = [akLeft, akBottom]
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'tlbToggles'
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      object btnShowInactive: TToolButton
        Left = 0
        Top = 0
        Action = actShowInactive
        AllowAllUp = True
        Style = tbsCheck
      end
    end
    object tlbBaseGroupProductDoc: TToolBar
      Left = 104
      Top = 314
      Width = 69
      Height = 24
      Align = alNone
      Anchors = [akLeft, akBottom]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 36
      Caption = 'tlbBaseGroupProductDoc'
      Images = dmMain.ilDocs
      TabOrder = 7
      object sepBaseGroupProductDoc: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
      object lblBaseGroupProductDoc: TLabel
        Left = 8
        Top = 0
        Width = 25
        Height = 24
        Caption = #1050#1057#1063' '
        Transparent = False
        Layout = tlCenter
      end
      object btnBaseGroupProductDoc: TToolButton
        Left = 33
        Top = 0
        Action = actBaseGroupProductDoc
      end
    end
    object tlbCandidateProductDoc: TToolBar
      Left = 720
      Top = 314
      Width = 69
      Height = 24
      Align = alNone
      Anchors = [akLeft, akBottom]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 36
      Caption = 'tlbBaseGroupProductDoc'
      Images = dmMain.ilDocs
      TabOrder = 8
      object lblCandidateProductDoc: TLabel
        Left = 0
        Top = 0
        Width = 25
        Height = 24
        Caption = #1050#1057#1063' '
        Transparent = False
        Layout = tlCenter
      end
      object btnCandidateProductDoc: TToolButton
        Left = 25
        Top = 0
        Action = actCandidateProductDoc
      end
      object sepCandidateProductDoc: TToolButton
        Left = 61
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 72
    Top = 168
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conBaseGroups
    FieldDefs = <
      item
        Name = 'BASE_GROUP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'GROUP_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'GROUP_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'GROUP_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'BASE_GROUP_NO'
        DataType = ftFloat
      end
      item
        Name = 'BASE_GROUP_NAME'
        DataType = ftWideString
        Size = 100
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
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CHANGED'
        DataType = ftFloat
      end
      item
        Name = 'BASE_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BASE_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BASE_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'BASE_PRODUCT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'BASE_GROUP_PRODUCTS_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'qryBaseGroupProducts'
        DataType = ftDataSet
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvBaseGroups'
    BeforeClose = cdsGridDataBeforeClose
    BeforeDelete = cdsGridDataBeforeDelete
    OnNewRecord = cdsGridDataNewRecord
    BeforeApplyUpdates = cdsGridDataBeforeApplyUpdates
    Left = 40
    Top = 168
    object cdsGridDataBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnChange = cdsGridDataGROUP_DEPT_CODEChange
    end
    object cdsGridDataGROUP_DEPT_NAME: TAbmesWideStringField
      FieldName = 'GROUP_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataGROUP_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GROUP_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataBASE_GROUP_NO: TAbmesFloatField
      FieldName = 'BASE_GROUP_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataBASE_GROUP_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1090#1072' '#1085#1072' ID '#1041#1043
      FieldName = 'BASE_GROUP_NAME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_CHANGED: TAbmesFloatField
      FieldName = 'DOC_CHANGED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBASE_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_CODE'
      ProviderFlags = []
    end
    object cdsGridDataBASE_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BASE_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataBASE_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsGridDataBASE_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'BASE_PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBASE_GROUP_PRODUCTS_COUNT: TAbmesFloatField
      FieldName = 'BASE_GROUP_PRODUCTS_COUNT'
      ProviderFlags = []
    end
    object cdsGridDataqryBaseGroupProducts: TDataSetField
      FieldName = 'qryBaseGroupProducts'
    end
    object cdsGridData_MAX_BASE_GROUP_NO: TAggregateField
      FieldName = '_MAX_BASE_GROUP_NO'
      Active = True
      Expression = 'Max(BASE_GROUP_NO)'
    end
  end
  inherited alActions: TActionList
    Left = 408
    Top = 152
    inherited actForm: TAction
      Caption = #1041#1072#1079#1086#1074#1086' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1074' '#1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actSetBaseProduct: TAction
      Caption = #1054#1073#1103#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1058#1055
      OnExecute = actSetBaseProductExecute
      OnUpdate = actSetBaseProductUpdate
    end
    object actJoinedProductSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actJoinedProductSpecDocStatusExecute
      OnUpdate = actJoinedProductSpecDocStatusUpdate
    end
    object actCandidateProductSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actCandidateProductSpecDocStatusExecute
      OnUpdate = actCandidateProductSpecDocStatusUpdate
    end
    object actJoinedProductStage: TAction
      Hint = 'ID '#1045#1090#1072#1087
      ImageIndex = 76
      OnExecute = actJoinedProductStageExecute
      OnUpdate = actJoinedProductStageUpdate
    end
    object actCandidateProductStage: TAction
      Hint = 'ID '#1045#1090#1072#1087
      ImageIndex = 76
      OnExecute = actCandidateProductStageExecute
      OnUpdate = actCandidateProductStageUpdate
    end
    object actShowInactive: TAction
      GroupIndex = 1
      Hint = #1053#1077#1072#1082#1090#1080#1074#1085#1080
      ImageIndex = 16
      OnExecute = actShowInactiveExecute
    end
    object actJoinedProductBaseGroups: TAction
      Hint = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080', '#1074' '#1082#1086#1080#1090#1086' '#1091#1095#1072#1089#1090#1074#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1050#1057#1063
      ImageIndex = 47
      OnExecute = actJoinedProductBaseGroupsExecute
      OnUpdate = actJoinedProductBaseGroupsUpdate
    end
    object actCandidateProductBaseGroups: TAction
      Hint = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080', '#1074' '#1082#1086#1080#1090#1086' '#1091#1095#1072#1089#1090#1074#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1050#1057#1063
      ImageIndex = 47
      OnExecute = actCandidateProductBaseGroupsExecute
      OnUpdate = actCandidateProductBaseGroupsUpdate
    end
    object actDeptToolNeeds: TAction
      Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055'...'
      Hint = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055
      OnExecute = actDeptToolNeedsExecute
    end
    object actDeptDetailToolNeeds: TAction
      Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055' '#1080' '#1050#1057#1063'...'
      Hint = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055' '#1080' '#1050#1057#1063
      OnExecute = actDeptDetailToolNeedsExecute
      OnUpdate = actDeptDetailToolNeedsUpdate
    end
    object actCandidateProductsFilter: TAction
      Caption = #1060#1080#1083#1090#1098#1088'...'
      Hint = #1060#1080#1083#1090#1098#1088
      ImageIndex = 3
      OnExecute = actCandidateProductsFilterExecute
      OnUpdate = actCandidateProductsFilterUpdate
    end
    object actBaseGroupDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072
      ImageIndex = 98
      OnExecute = actBaseGroupDocExecute
      OnUpdate = actBaseGroupDocUpdate
    end
    object actBaseGroupProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1050#1057#1063' - '#1095#1083#1077#1085' '#1085#1072' ID '#1041#1043
      ImageIndex = 98
      OnExecute = actBaseGroupProductDocExecute
      OnUpdate = actBaseGroupProductDocUpdate
    end
    object actCandidateProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1050#1057#1063' - '#1082#1072#1085#1076#1080#1076#1072#1090' '#1095#1083#1077#1085' '#1085#1072' ID '#1041#1043
      ImageIndex = 98
      OnExecute = actCandidateProductDocExecute
      OnUpdate = actCandidateProductDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    BeforeClose = pdsGridDataParamsBeforeClose
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 40
    Top = 200
    object pdsGridDataParamsGROUP_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055
      FieldName = 'GROUP_DEPT_CODE'
      OnChange = pdsGridDataParamsGROUP_DEPT_CODEChange
    end
    object pdsGridDataParamsGROUP_DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'GROUP_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParamsGROUP_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GROUP_DEPT_IDENTIFIER'
      ProviderFlags = []
    end
    object pdsGridDataParams_GROUP_DEPT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_GROUP_DEPT_NAME'
      ProviderFlags = []
      Size = 100
      Calculated = True
    end
    object pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField
      FieldName = 'ALL_FILTERED_PRODUCTS'
      ProviderFlags = []
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1050#1057#1063' - '#1063#1083#1077#1085' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072
      FieldName = 'CHOSEN_PRODUCTS'
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      FieldName = '_PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParamsHAS_SMVS_OPERATIONS_FOR_DEPT: TAbmesFloatField
      FieldName = 'HAS_SMVS_OPERATIONS_FOR_DEPT'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCANDIDATE_CHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1050#1072#1085#1076#1080#1076#1072#1090' '#1063#1083#1077#1085#1086#1074#1077' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1043#1088#1091#1087#1072
      FieldName = 'CANDIDATE_CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsFLOWS_THROUGH_DEPT: TAbmesFloatField
      DisplayLabel = #1050#1057#1063' '#1074' '#1055#1086#1090#1086#1082' '#1087#1088#1077#1079' '#1058#1055
      FieldName = 'FLOWS_THROUGH_DEPT'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 72
    Top = 200
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
    Top = 136
  end
  inherited cdsDetail: TAbmesClientDataSet
    DataSetField = cdsGridDataqryBaseGroupProducts
    Filtered = True
    IndexFieldNames = 'PRODUCT_NO'
    OnFilterRecord = cdsDetailFilterRecord
    OnNewRecord = cdsDetailNewRecord
    Left = 64
    Top = 360
    object cdsDetailBASE_GROUP_CODE: TAbmesFloatField
      FieldName = 'BASE_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_BASE_PRODUCT: TAbmesFloatField
      FieldName = 'IS_BASE_PRODUCT'
      ProviderFlags = [pfInUpdate]
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
    end
    object cdsDetailGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
    end
    object cdsDetailMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
    end
  end
  inherited dsDetail: TDataSource
    Left = 72
    Top = 400
  end
  inherited tmrMaster: TTimer
    Left = 472
    Top = 152
  end
  object cdsCandidateProducts: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'PRODUCT_NO'
    Params = <>
    OnFilterRecord = cdsCandidateProductsFilterRecord
    Left = 488
    Top = 360
    object cdsCandidateProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsCandidateProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsCandidateProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsCandidateProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsCandidateProductsHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsCandidateProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsCandidateProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsCandidateProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
    end
    object cdsCandidateProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
    end
    object cdsCandidateProductsMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
    end
  end
  object cdsAllCandidateProducts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBaseGroups
    IndexFieldNames = 'PRODUCT_NO'
    Params = <
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOWS_THROUGH_DEPT'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'FLOWS_THROUGH_DEPT'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOWS_THROUGH_DEPT'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CANDIDATE_CHOSEN_PRODUCTS'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvBaseGroupCandidateProducts'
    Left = 128
    Top = 168
    object cdsAllCandidateProductsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsAllCandidateProductsPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsAllCandidateProductsPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsAllCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsAllCandidateProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsAllCandidateProductsHAS_SPEC: TAbmesFloatField
      FieldName = 'HAS_SPEC'
      FieldValueType = fvtBoolean
    end
    object cdsAllCandidateProductsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsAllCandidateProductsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsAllCandidateProductsJOINED_IN_BASE_GROUPS_COUNT: TAbmesFloatField
      FieldName = 'JOINED_IN_BASE_GROUPS_COUNT'
    end
    object cdsAllCandidateProductsGROUP_DEPT_FLOW_COUNT: TAbmesFloatField
      FieldName = 'GROUP_DEPT_FLOW_COUNT'
    end
    object cdsAllCandidateProductsMODEL_VARIANTS_COUNT: TAbmesFloatField
      FieldName = 'MODEL_VARIANTS_COUNT'
    end
  end
  object cdsProductBaseGroupsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 168
    object cdsProductBaseGroupsParamsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
    object cdsProductBaseGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
  end
  object pmDeptToolNeeds: TPopupMenu
    Left = 592
    Top = 56
  end
  object pmDeptDetailToolNeeds: TPopupMenu
    Left = 264
    Top = 472
  end
  object pdsAllCandidateProductsParams: TParamDataSet
    BeforePost = pdsAllCandidateProductsParamsBeforePost
    DataSet = cdsAllCandidateProducts
    Left = 128
    Top = 200
    object pdsAllCandidateProductsParamsFLOWS_THROUGH_DEPT: TAbmesFloatField
      FieldName = 'FLOWS_THROUGH_DEPT'
    end
    object pdsAllCandidateProductsParamsCANDIDATE_CHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CANDIDATE_CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsAllCandidateProductsParamsGROUP_DEPT_CODE: TAbmesFloatField
      FieldName = 'GROUP_DEPT_CODE'
    end
  end
end
