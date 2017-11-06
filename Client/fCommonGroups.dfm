inherited fmCommonGroups: TfmCommonGroups
  Left = 341
  Top = 188
  ActiveControl = nil
  Caption = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' '#1085#1072' %ProductClassAbbrev%'
  ClientHeight = 550
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 515
    Width = 1019
    object lblHint: TLabel [0]
      Left = 8
      Top = 8
      Width = 402
      Height = 13
      Caption = 
        '* - '#1057#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1085#1072' '#1041#1088#1086#1081' '#1054#1055#1042' '#1080' '#1057#1088#1077#1076#1085#1072' '#1057#1077#1088#1080#1081#1085#1086#1089#1090' '#1089#1072' '#1079#1072' '#1087#1086#1089#1083#1077#1076#1085#1080#1090#1077' ' +
        '%d '#1084#1077#1089#1077#1094#1072
    end
    inherited pnlOKCancel: TPanel
      Left = 751
    end
    inherited pnlClose: TPanel
      Left = 662
    end
    inherited pnlApply: TPanel
      Left = 930
    end
    object pnlResizeWorkspaceButton: TPanel
      Left = 628
      Top = 0
      Width = 34
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 515
    inherited sptDetail: TSplitter
      Top = 290
      Width = 1003
      Height = 4
    end
    inherited pnlDetailGrid: TPanel
      Left = 216
      Top = 128
      Width = 273
      Height = 105
      Align = alNone
      TabOrder = 2
      Visible = False
      inherited pnlDetailNavigator: TPanel
        Width = 273
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 273
        Height = 81
        DataSource = nil
      end
    end
    inherited pnlGrid: TPanel
      Top = 62
      Width = 1003
      Height = 228
      TabOrder = 1
      inherited grdData: TAbmesDBGrid [0]
        Width = 1003
        Height = 204
        TabStop = False
        AutoFitColWidths = True
        EvenRowColor = 15463925
        Options = [dgTitles, dgIndicator, dgColLines, dgConfirmDelete, dgCancelOnExit]
        UseMultiTitle = True
        VTitleMargin = 15
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'COMMON_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080
            Width = 320
          end
          item
            Alignment = taRightJustify
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'COMMON_PRODUCT_NO'
            Footers = <>
            Title.Caption = 'id '#1094#1080#1092#1088#1086#1074
            Width = 78
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_HAS_THOROUGHLY_ENGINEERED'
            Footers = <>
            Title.Caption = #1045#1090#1072#1083#1086#1085
            Width = 53
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'SPEC_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089' '#1055#1048#1056
            Width = 46
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_JOINED_PRODUCT_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1055#1088#1080#1086#1073'.'
            Width = 46
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_JOINED_PRODUCTS_PR_ORD_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' * '#1054#1055#1042
            Width = 46
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_CHILD_PRODUCTION_ORDER_AVG_QTY'
            Footers = <>
            Title.Caption = #1057#1088#1077#1076#1085#1072' * '#1057#1077#1088#1080#1081#1085#1086#1089#1090
            Width = 61
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Width = 300
          end>
      end
      inherited pnlNavigator: TPanel [1]
        Width = 1003
        inherited pnlFilterButton: TPanel
          Left = 265
        end
        inherited navData: TDBColorNavigator
          Left = 169
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 345
          Width = 288
          AutoSize = False
          object sepCopyToClipboard: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepCopyToClipboard'
            ImageIndex = 114
            Style = tbsSeparator
          end
          object btnCopyToClipboard: TToolButton
            Left = 64
            Top = 0
            Action = actCopyToClipboard
            DropdownMenu = pmCopy
            Style = tbsDropDown
          end
          object sepCommonProductDocStatus: TToolButton
            Left = 103
            Top = 0
            Width = 8
            Caption = 'sepCommonProductDocStatus'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnCommonProductDocStatus: TToolButton
            Left = 111
            Top = 0
            Action = actCommonProductDocStatus
          end
          object sepCommonProductPeriods: TToolButton
            Left = 135
            Top = 0
            Width = 8
            Caption = 'sepCommonProductPeriods'
            ImageIndex = 115
            Style = tbsSeparator
          end
          object btnCommonProductPeriods: TSpeedButton
            Left = 143
            Top = 0
            Width = 58
            Height = 24
            Action = actCommonProductPeriods
            Align = alLeft
            Flat = True
            Transparent = False
          end
          object sepCommonProductDocs: TToolButton
            Left = 201
            Top = 0
            Width = 8
            Caption = 'sepCommonProductDocs'
            ImageIndex = 114
            Style = tbsSeparator
          end
          object pnlProductDocsCaption: TPanel
            Left = 209
            Top = 0
            Width = 31
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = '%ProductClassAbbrev%'
            TabOrder = 0
          end
          object btnCommonProductDocs: TSpeedButton
            Left = 240
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassName% - '#1054#1041#1054#1041#1065#1040#1042#1040#1065
            Flat = True
            Glyph.Data = {
              36060000424D360600000000000036040000280000001D000000100000000100
              0800000000000002000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
              1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
              0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
              0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
              0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
              000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
              000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
              0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
              1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
              FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
              0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
              0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
              1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
              FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
              FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnCommonProductDocsClick
          end
        end
        object tlbMove: TToolBar
          Left = 0
          Top = 0
          Width = 169
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 40
          Images = dmMain.ilActions
          TabOrder = 3
          object btnStartMoving: TToolButton
            Left = 0
            Top = 0
            Action = actStartMoving
            AllowAllUp = True
          end
          object btnFinishMoving: TToolButton
            Left = 40
            Top = 0
            Action = actFinishMoving
          end
          object btnMakeRoot: TToolButton
            Left = 80
            Top = 0
            Action = actMakeRoot
          end
        end
        inline frTreeListExpander: TfrGridTreeListExpanderFrame
          Left = 289
          Top = 0
          Width = 56
          Height = 24
          Align = alLeft
          Constraints.MaxHeight = 24
          Constraints.MaxWidth = 56
          Constraints.MinHeight = 24
          Constraints.MinWidth = 56
          TabOrder = 4
        end
      end
    end
    object pnlFilter: TPanel
      Left = 8
      Top = 8
      Width = 1003
      Height = 54
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblProductParent: TLabel
        Left = 0
        Top = 0
        Width = 134
        Height = 13
        Caption = #1056#1086#1076' %ProductClassAbbrev%'
        FocusControl = frProductParent
      end
      object lblMeasure: TLabel
        Left = 256
        Top = 0
        Width = 27
        Height = 13
        Caption = #1052'.'#1077#1076'.'
        FocusControl = edtMeasure
      end
      object lblUsedBy: TLabel
        Left = 312
        Top = 0
        Width = 87
        Height = 13
        Caption = #1055#1088#1086#1094'. '#1055#1086#1083#1079#1074#1072#1090#1077#1083
        FocusControl = edtUsedBy
      end
      object lblDeliveredBy: TLabel
        Left = 408
        Top = 0
        Width = 98
        Height = 13
        Caption = #1055#1088#1086#1094'. '#1054#1073#1077#1079#1087#1077#1095#1080#1090#1077#1083
        FocusControl = edtDeliveredBy
      end
      object lblFirstLevelCommonProductCount: TLabel
        Left = 552
        Top = 0
        Width = 48
        Height = 13
        Caption = '1-'#1074#1086' '#1085#1080#1074#1086
        FocusControl = edtFirstLevelCommonProductCount
      end
      object lblCommonProductCount: TLabel
        Left = 608
        Top = 0
        Width = 29
        Height = 13
        Caption = #1054#1073#1097#1086
        FocusControl = edtCommonProductCount
      end
      object lblCommonProducts: TLabel
        Left = 509
        Top = 19
        Width = 40
        Height = 13
        Caption = #1041#1075'. '#1058#1049#1057
      end
      object lblJoinedProductCount: TLabel
        Left = 672
        Top = 0
        Width = 35
        Height = 13
        Caption = #1055#1088#1080#1086#1073'.'
        FocusControl = edtJoinedProductCount
      end
      object lblCandidateProductCount: TLabel
        Left = 728
        Top = 0
        Width = 43
        Height = 13
        Caption = #1045#1076#1080#1085#1072#1094#1080
        FocusControl = edtCandidateProductCount
      end
      inline frProductParent: TfrProductFieldEditFrameBald
        Left = 0
        Top = 16
        Width = 249
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 265
          inherited pnlTreeNode: TPanel
            Width = 249
            inherited pnlTreeNodeName: TPanel
              Width = 67
              inherited edtTreeNodeName: TDBEdit
                Width = 66
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 67
            end
            inherited pnlRightButtons: TPanel
              Left = 190
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = pdsGridDataParams
        end
      end
      object edtMeasure: TDBEdit
        Left = 256
        Top = 16
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = 'MEASURE_ABBREV'
        DataSource = dsHeader
        ReadOnly = True
        TabOrder = 1
      end
      object edtUsedBy: TDBEdit
        Left = 312
        Top = 16
        Width = 89
        Height = 21
        Color = clBtnFace
        DataField = 'IS_USED_BY'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 2
      end
      object edtDeliveredBy: TDBEdit
        Left = 408
        Top = 16
        Width = 89
        Height = 21
        Color = clBtnFace
        DataField = 'IS_PROVIDED_BY'
        DataSource = dsGridDataParams
        ReadOnly = True
        TabOrder = 3
      end
      object edtFirstLevelCommonProductCount: TDBEdit
        Left = 552
        Top = 16
        Width = 49
        Height = 21
        Color = 16115403
        DataField = '_FIRST_LEVEL_COUNT'
        DataSource = dsGridData
        ReadOnly = True
        TabOrder = 4
      end
      object edtCommonProductCount: TDBEdit
        Left = 608
        Top = 16
        Width = 49
        Height = 21
        Color = 16115403
        DataField = '_COUNT'
        DataSource = dsGridData
        ReadOnly = True
        TabOrder = 5
      end
      object edtJoinedProductCount: TDBEdit
        Left = 672
        Top = 16
        Width = 49
        Height = 21
        Color = 16115403
        DataField = '_JOINED_PRODUCT_COUNT'
        DataSource = dsHeader
        ReadOnly = True
        TabOrder = 6
      end
      object edtCandidateProductCount: TDBEdit
        Left = 728
        Top = 16
        Width = 47
        Height = 21
        Color = 16115403
        DataField = '_COUNT'
        DataSource = frCommonGroupProducts.dsExcluded
        ReadOnly = True
        TabOrder = 7
      end
    end
    inline frCommonGroupProducts: TDualGridFrame
      Left = 8
      Top = 294
      Width = 1003
      Height = 213
      Align = alBottom
      TabOrder = 3
      TabStop = True
      OnResize = frCommonGroupProductsResize
      inherited pnlIncluded: TPanel
        Width = 480
        Height = 213
        inherited pnlIncludedNavigator: TPanel
          Width = 480
          inherited navIncluded: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited grdIncluded: TAbmesDBGrid
          Width = 480
          Height = 189
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          UseMultiTitle = True
          VTitleMargin = 7
          OnDblClick = frCommonGroupProductsgrdIncludedDblClick
          OnGetCellParams = frCommonGroupProductsgrdIncludedGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
              Width = 192
            end
            item
              Alignment = taLeftJustify
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|id '#1094#1080#1092#1088#1086#1074
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'COMPANY_PRODUCT_NAMES'
              Footers = <>
              Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
              Visible = False
              Width = 269
            end
            item
              EditButtons = <>
              FieldName = 'SPEC_STATUS_CODE'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|'#1057#1090#1072#1090#1091#1089' '#1055#1048#1056
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'PRODUCTION_ORDER_COUNT'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|'#1041#1088#1086#1081' * '#1054#1055#1042
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '_PRODUCTION_ORDERS_AVG_QUANTITY'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|'#1057#1088'.* '#1089#1077#1088#1080#1081#1085#1086#1089#1090'|'#1050'-'#1074#1086
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|'#1057#1088'.* '#1089#1077#1088#1080#1081#1085#1086#1089#1090'|'#1052'.'#1077#1076'.'
              Width = 30
            end
            item
              Alignment = taCenter
              EditButtons = <>
              FieldName = 'IS_THOROUGHLY_ENGINEERED'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1055#1056#1048#1054#1041#1065#1045#1053#1048'|'#1045#1090#1072#1083#1086#1085
              Title.Orientation = tohVertical
              Width = 13
            end>
        end
      end
      inherited pnlButtons: TPanel
        Left = 480
        Height = 213
        inherited pnlProductButtons: TPanel
          Top = 30
        end
      end
      inherited pnlExcluded: TPanel
        Left = 524
        Width = 479
        Height = 213
        inherited pnlExcludedNavigator: TPanel
          Width = 479
          inherited navExcluded: TDBColorNavigator
            Left = 0
            Align = alLeft
            Hints.Strings = ()
          end
        end
        inherited grdExcluded: TAbmesDBGrid
          Width = 479
          Height = 189
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          UseMultiTitle = True
          VTitleMargin = 8
          OnGetCellParams = frCommonGroupProductsgrdIncludedGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1044#1048#1053#1040#1062#1048'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
              Width = 205
            end
            item
              Alignment = taLeftJustify
              EditButtons = <>
              FieldName = 'PRODUCT_NO'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1044#1048#1053#1040#1062#1048'|id '#1094#1080#1092#1088#1086#1074
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'COMPANY_PRODUCT_NAMES'
              Footers = <>
              Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
              Visible = False
              Width = 282
            end
            item
              EditButtons = <>
              FieldName = 'SPEC_STATUS_CODE'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1044#1048#1053#1040#1062#1048'|'#1057#1090#1072#1090#1091#1089' '#1055#1048#1056
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'PRODUCTION_ORDER_COUNT'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1044#1048#1053#1040#1062#1048'|'#1041#1088#1086#1081' * '#1054#1055#1042
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = '_PRODUCTION_ORDERS_AVG_QUANTITY'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1044#1048#1053#1040#1062#1048'|'#1057#1088'.* '#1089#1077#1088#1080#1081#1085#1086#1089#1090'|'#1050'-'#1074#1086
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'MEASURE_ABBREV'
              Footers = <>
              Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084#1080' '#1054#1073#1077#1082#1090#1080' - '#1045#1044#1048#1053#1040#1062#1048'|'#1057#1088'.* '#1089#1077#1088#1080#1081#1085#1086#1089#1090'|'#1052'.'#1077#1076'.'
              Width = 30
            end>
        end
      end
      inherited alActions: TActionList
        inherited actInclude: TAction
          OnExecute = frCommonGroupProductsactIncludeExecute
          OnUpdate = frCommonGroupProductsactIncludeUpdate
        end
        inherited actExclude: TAction
          OnExecute = frCommonGroupProductsactExcludeExecute
        end
        inherited actIncludeAll: TAction
          OnExecute = frCommonGroupProductsactIncludeAllExecute
          OnUpdate = frCommonGroupProductsactIncludeUpdate
        end
        inherited actExcludeAll: TAction
          OnExecute = frCommonGroupProductsactExcludeAllExecute
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsDetail
        Top = 104
      end
      inherited dsExcluded: TDataSource
        DataSet = cdsCandidateProducts
        Left = 608
        Top = 112
      end
    end
    object tlbCommonGroupProducts: TToolBar
      Left = 104
      Top = 294
      Width = 233
      Height = 24
      Align = alNone
      Anchors = [akRight, akBottom]
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      TabOrder = 4
      object sepJoinedProductsExcelExport: TToolButton
        Left = 0
        Top = 0
        Width = 8
        ImageIndex = 115
        Style = tbsSeparator
      end
      object btnJoinedProductsExcelExport: TToolButton
        Left = 8
        Top = 0
        Action = frCommonGroupProducts.actIncludedExcelExport
      end
      object sepCopyJoinedToClipboard: TToolButton
        Left = 32
        Top = 0
        Width = 8
        Caption = 'sepCopyJoinedToClipboard'
        ImageIndex = 115
        Style = tbsSeparator
      end
      object btnCopyJoinedToClipboard: TToolButton
        Left = 40
        Top = 0
        Action = actCopyJoinedToClipboard
        DropdownMenu = pmJoinedCopy
        Style = tbsDropDown
      end
      object sepJoinedProductDocStatus: TToolButton
        Left = 79
        Top = 0
        Width = 8
        Caption = 'sepJoinedProductDocStatus'
        Style = tbsSeparator
      end
      object btnJoinedProductDocStatus: TToolButton
        Left = 87
        Top = 0
        Action = actJoinedProductDocStatus
        ParentShowHint = False
        ShowHint = True
      end
      object sepJoinedProductPeriods: TToolButton
        Left = 111
        Top = 0
        Width = 8
        Caption = 'sepJoinedProductPeriods'
        ImageIndex = 115
        Style = tbsSeparator
      end
      object btnJoinedProductPeriods: TSpeedButton
        Left = 119
        Top = 0
        Width = 58
        Height = 24
        Action = actJoinedProductPeriods
        Flat = True
        Transparent = False
      end
      object sepBeforeCommonGroupProductsCaption: TToolButton
        Left = 177
        Top = 0
        Width = 8
        Caption = 'sepBeforeCommonGroupProductsCaption'
        ImageIndex = 114
        Style = tbsSeparator
      end
      object pnlCommonGroupProductsCaption: TPanel
        Left = 185
        Top = 0
        Width = 31
        Height = 24
        Align = alLeft
        BevelOuter = bvNone
        Caption = '%ProductClassAbbrev%'
        TabOrder = 0
      end
      object btnCommonGroupProductDocs: TSpeedButton
        Left = 216
        Top = 0
        Width = 37
        Height = 24
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassName% - '#1055#1056#1048#1054#1041#1065#1045#1053
        Flat = True
        Glyph.Data = {
          36060000424D360600000000000036040000280000001D000000100000000100
          0800000000000002000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
          1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
          0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
          0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
          000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
          0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
          0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
          000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
          000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
          0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
          1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
          FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
          0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
          0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
          1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
          FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
          FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = btnCommonGroupProductDocsClick
      end
    end
    object tlbCandidateProducts: TToolBar
      Left = 628
      Top = 294
      Width = 253
      Height = 24
      Align = alNone
      Anchors = [akRight, akBottom]
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      TabOrder = 5
      object sepNotJoinedProductsExcelExport: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sepNotJoinedProductsExcelExport'
        ImageIndex = 115
        Style = tbsSeparator
      end
      object btnNotJoinedProductsExcelExport: TToolButton
        Left = 8
        Top = 0
        Action = frCommonGroupProducts.actExcludedExcelExport
      end
      object sepCopyCandidateToClipboard: TToolButton
        Left = 32
        Top = 0
        Width = 8
        Caption = 'sepCopyCandidateToClipboard'
        ImageIndex = 115
        Style = tbsSeparator
      end
      object btnCopyCandidateToClipboard: TToolButton
        Left = 40
        Top = 0
        Action = actCopyCandidateToClipboard
        DropdownMenu = pmCandidateCopy
        Style = tbsDropDown
      end
      object sepCandidateProductDocStatus: TToolButton
        Left = 79
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        Style = tbsSeparator
      end
      object btnCandidateProductDocStatus: TToolButton
        Left = 87
        Top = 0
        Action = actCandidateProductDocStatus
        ParentShowHint = False
        ShowHint = True
      end
      object sepCandidateProductPeriods: TToolButton
        Left = 111
        Top = 0
        Width = 8
        Caption = 'sepCandidateProductPeriods'
        ImageIndex = 115
        Style = tbsSeparator
      end
      object btnCandidateProductPeriods: TSpeedButton
        Left = 119
        Top = 0
        Width = 58
        Height = 24
        Action = actCandidateProductPeriods
        Flat = True
        Transparent = False
      end
      object sepBeforeCandidateProductDocsCaption: TToolButton
        Left = 177
        Top = 0
        Width = 8
        Caption = 'sepBeforeCandidateProductDocsCaption'
        ImageIndex = 114
        Style = tbsSeparator
      end
      object pnlCandidateProductDocsCaption: TPanel
        Left = 185
        Top = 0
        Width = 31
        Height = 24
        Align = alLeft
        BevelOuter = bvNone
        Caption = '%ProductClassAbbrev%'
        TabOrder = 0
      end
      object btnCandidateProductDocs: TSpeedButton
        Left = 216
        Top = 0
        Width = 37
        Height = 24
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassName% - '#1045#1044#1048#1053#1040#1050
        Flat = True
        Glyph.Data = {
          36060000424D360600000000000036040000280000001D000000100000000100
          0800000000000002000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFD1D
          1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFB0000
          0000000000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFB1D1D
          0000001D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
          000000FBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFBFB
          0000001DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1D1DFB1D
          0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FBFB1DFBFB1D
          000000FB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFD00FDFD000000FBFB1DFBFB1D
          000000FBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFD000000FD000000FBFB1D1D0000
          0000001DFB1DFBFB1D1DFDFDFDFDFDFDFDFD0000000000000000FBFBFB1DFBFB
          1D1D1DFBFB1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFB1D1DFB
          FBFBFBFB1D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFBFBFB1D1D
          0000001D1DFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFBFBFB1D
          0000001D1DFBFB1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFBFBFB
          1D001DFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFB
          FBFBFBFBFB1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000FDFDFDFDFDFD
          FD1D1D1D1DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD000000}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = btnCandidateProductDocsClick
      end
    end
    object tlbSelectTreeProduct: TToolBar
      Left = 987
      Top = 62
      Width = 24
      Height = 24
      Align = alNone
      Anchors = [akTop, akRight]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      object btnSelectTreeProduct: TToolButton
        Left = 0
        Top = 0
        Hint = #1060#1086#1082#1091#1089#1080#1088#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassAbbrev% '#1089#1083#1077#1076' '#1054#1050
        Caption = 'btnSelectTreeProduct'
        ImageIndex = 126
        Style = tbsCheck
        OnClick = btnSelectTreeProductClick
      end
    end
    object tlbSelectCommonGroupProduct: TToolBar
      Left = 464
      Top = 294
      Width = 24
      Height = 24
      Align = alNone
      Anchors = [akRight, akBottom]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      object btnSelectCommonGroupProduct: TToolButton
        Left = 0
        Top = 0
        Hint = #1060#1086#1082#1091#1089#1080#1088#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassAbbrev% '#1089#1083#1077#1076' '#1054#1050
        Caption = 'btnSelectCommonGroupProduct'
        ImageIndex = 126
        Style = tbsCheck
        OnClick = btnSelectCommonGroupProductClick
      end
    end
    object tlbSelectCandidateProduct: TToolBar
      Left = 987
      Top = 294
      Width = 24
      Height = 24
      Align = alNone
      Anchors = [akRight, akBottom]
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      object btnSelectCandidateProduct: TToolButton
        Left = 0
        Top = 0
        Hint = #1060#1086#1082#1091#1089#1080#1088#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %ProductClassAbbrev% '#1089#1083#1077#1076' '#1054#1050
        Caption = 'btnSelectCandidateProduct'
        ImageIndex = 126
        Style = tbsCheck
        OnClick = btnSelectCandidateProductClick
      end
    end
    object pnlToggles: TPanel
      Left = 858
      Top = 24
      Width = 153
      Height = 24
      BevelOuter = bvNone
      TabOrder = 9
      object btnCompanyProductNames: TSpeedButton
        Left = 129
        Top = 0
        Width = 24
        Height = 24
        Action = actCompanyProductNames
        Align = alRight
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
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
          FF00000000000000FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
          FF00000000000000FF0000FFFF008484840000FFFF00FF00FF00FF00FF00FF00
          FF00FF00FF000000FF0000000000000000000000000000000000000000000000
          0000000000000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
          FF00FF00FF000000FF000000FF00000000000000FF000000FF000000FF000000
          00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
          FF00FF00FF000000FF000000FF0000000000000000000000FF00000000000000
          00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000000000000000000000000000
          FF000000FF000000FF0000FFFF008484840000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF00000000000000FF000000
          FF000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
          FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF0000FFFF0000FFFF008484840000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF00000000FFFF0000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF00000000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF00000000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object btnShowInactive: TSpeedButton
        Left = 105
        Top = 0
        Width = 24
        Height = 24
        Action = actShowInactive
        Align = alRight
        AllowAllUp = True
        GroupIndex = 22
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
          FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
          FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
          FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
          0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
          0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
          000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF00000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 176
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conBaseGroups
    Filter = 'IS_INACTIVE = 0'
    FieldDefs = <
      item
        Name = 'COMMON_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMMON_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'JOINED_TO_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_ETALON'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NOTES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'PRODUCT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_PRODUCT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_PRODUCTS_PR_ORD_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'JOINED_PRODUCTS_PR_ORD_QTY'
        DataType = ftFloat
      end
      item
        Name = 'qryCommonProductJoinedProducts'
        DataType = ftDataSet
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCommonProducts'
    BeforeClose = cdsGridDataBeforeClose
    OnCalcFields = cdsGridDataCalcFields
    Left = 24
    Top = 176
    object cdsGridDataCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataCOMMON_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'COMMON_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataCOMMON_PRODUCT_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'COMMON_PRODUCT_NO'
    end
    object cdsGridDataJOINED_TO_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'JOINED_TO_PRODUCT_CODE'
    end
    object cdsGridDataSPEC_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'SPEC_STATUS_CODE'
      OnGetText = SpecStatusGetText
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_STRATEGIC: TAbmesFloatField
      FieldName = 'IS_STRATEGIC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataqryCommonProductJoinedProducts: TDataSetField
      FieldName = 'qryCommonProductJoinedProducts'
    end
    object cdsGridData_JOINED_PRODUCT_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_JOINED_PRODUCT_COUNT'
      Calculated = True
    end
    object cdsGridData_JOINED_PRODUCTS_PR_ORD_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_JOINED_PRODUCTS_PR_ORD_COUNT'
      Calculated = True
    end
    object cdsGridData_JOINED_PRODUCTS_PR_ORD_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_JOINED_PRODUCTS_PR_ORD_QTY'
      Calculated = True
    end
    object cdsGridData_CHILD_PRODUCTION_ORDER_AVG_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CHILD_PRODUCTION_ORDER_AVG_QTY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_HAS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_HAS_THOROUGHLY_ENGINEERED'
      DisplayFormat = '0'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_COUNT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_COUNT'
      Active = True
      Expression = 'Count(COMMON_PRODUCT_CODE)'
    end
    object cdsGridData_FIRST_LEVEL_COUNT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_FIRST_LEVEL_COUNT'
      Active = True
      Expression = 
        'Count(COMMON_PRODUCT_CODE) - Sum(JOINED_TO_PRODUCT_CODE/JOINED_T' +
        'O_PRODUCT_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 160
    Top = 0
    inherited actForm: TAction
      Caption = #1058#1080#1087#1080#1079#1080#1088#1072#1097#1080' '#1049#1077#1088#1072#1088#1093#1080#1095#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1080' '#1085#1072' %ProductClassAbbrev%'
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
    object actCommonProductDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' %ProductClassName%'
      ImageIndex = 113
      OnExecute = actCommonProductDocStatusExecute
      OnUpdate = actCommonProductDocStatusUpdate
    end
    object actJoinedProductDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' %ProductClassName%'
      ImageIndex = 113
      OnExecute = actJoinedProductDocStatusExecute
      OnUpdate = actJoinedProductDocStatusUpdate
    end
    object actCandidateProductDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' %ProductClassName%'
      ImageIndex = 113
      OnExecute = actCandidateProductDocStatusExecute
      OnUpdate = actCandidateProductDocStatusUpdate
    end
    object actStartMoving: TAction
      GroupIndex = 2
      Hint = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1087#1088#1077#1084#1077#1089#1090#1074#1072#1085#1077
      ImageIndex = 121
      OnExecute = actStartMovingExecute
      OnUpdate = actStartMovingUpdate
    end
    object actFinishMoving: TAction
      Hint = #1055#1088#1077#1084#1077#1089#1090#1074#1072#1085#1077
      ImageIndex = 123
      OnExecute = actFinishMovingExecute
      OnUpdate = actFinishMovingUpdate
    end
    object actMakeRoot: TAction
      Hint = #1055#1088#1077#1084#1077#1089#1090#1080' '#1082#1072#1090#1086' '#1082#1086#1088#1077#1085
      ImageIndex = 124
      OnExecute = actMakeRootExecute
      OnUpdate = actMakeRootUpdate
    end
    object actShowInactive: TAction
      GroupIndex = 22
      Hint = #1055#1086#1082#1072#1078#1080'/'#1057#1082#1088#1080#1081' '#1085#1077#1072#1082#1090#1080#1074#1085#1080#1090#1077' %ProductClassAbbrev%'
      ImageIndex = 16
      OnExecute = actShowInactiveExecute
    end
    object actCompanyProductNames: TAction
      GroupIndex = 2
      Hint = #1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 24
      OnExecute = actCompanyProductNamesExecute
      OnUpdate = actCompanyProductNamesUpdate
    end
    object actCommonProductPeriods: TAction
      Caption = '%ProductPeriodAbbrev%...'
      OnExecute = actCommonProductPeriodsExecute
      OnUpdate = actCommonProductPeriodsUpdate
    end
    object actJoinedProductPeriods: TAction
      Caption = '%ProductPeriodAbbrev%...'
      OnExecute = actJoinedProductPeriodsExecute
      OnUpdate = actJoinedProductPeriodsUpdate
    end
    object actCandidateProductPeriods: TAction
      Caption = '%ProductPeriodAbbrev%...'
      OnExecute = actCandidateProductPeriodsExecute
      OnUpdate = actCandidateProductPeriodsUpdate
    end
    object actCopyJoinedToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      OnExecute = actCopyJoinedToClipboardExecute
      OnUpdate = actCopyJoinedToClipboardUpdate
    end
    object actCopyJoinedNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyJoinedNoToClipboardExecute
    end
    object actCopyJoinedNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyJoinedNameToClipboardExecute
    end
    object actCopyCandidateToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      OnExecute = actCopyCandidateToClipboardExecute
      OnUpdate = actCopyCandidateToClipboardUpdate
    end
    object actCopyCandidateNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyCandidateNoToClipboardExecute
    end
    object actCopyCandidateNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyCandidateNameToClipboardExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 24
    Top = 208
    object pdsGridDataParamsPRODUCT_PARENT_CODE: TAbmesFloatField
      DisplayLabel = #1056#1086#1076' %ProductClassAbbrev%'
      FieldName = 'PRODUCT_PARENT_CODE'
      Required = True
    end
    object pdsGridDataParamsIS_USED_BY: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1055#1088#1086#1094#1077#1089' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
      FieldName = 'IS_USED_BY'
      OnGetText = pdsGridDataParamsIS_USED_BYGetText
    end
    object pdsGridDataParamsIS_PROVIDED_BY: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1055#1088#1086#1094#1077#1089' '#1054#1073#1077#1079#1087#1077#1095#1080#1090#1077#1083
      FieldName = 'IS_PROVIDED_BY'
      OnGetText = pdsGridDataParamsIS_PROVIDED_BYGetText
    end
    object pdsGridDataParams_PRODUCT_PARENT_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_PARENT_CODE'
      Calculated = True
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 208
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 144
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 144
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsGridDataqryCommonProductJoinedProducts
    Filter = 'IS_INACTIVE = 0'
    BeforePost = cdsDetailBeforePost
    OnCalcFields = cdsDetailCalcFields
    OnNewRecord = cdsDetailNewRecord
    Left = 64
    Top = 392
    object cdsDetailCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsDetailSPEC_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'SPEC_STATUS_CODE'
      OnGetText = SpecStatusGetText
    end
    object cdsDetailPRODUCTION_ORDER_COUNT: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_COUNT'
    end
    object cdsDetailPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDERS_QUANTITY'
    end
    object cdsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      FixedChar = True
      Size = 255
    end
    object cdsDetail_PRODUCTION_ORDERS_AVG_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCTION_ORDERS_AVG_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetail_SUM_PRODUCTION_ORDER_COUNT: TAggregateField
      FieldName = '_SUM_PRODUCTION_ORDER_COUNT'
      Active = True
      Expression = 'Sum(PRODUCTION_ORDER_COUNT)'
    end
    object cdsDetail_SUM_PRODUCTION_ORDERS_QUANTITY: TAggregateField
      FieldName = '_SUM_PRODUCTION_ORDERS_QUANTITY'
      Active = True
      Expression = 'Sum(PRODUCTION_ORDERS_QUANTITY)'
    end
    object cdsDetail_COUNT: TAggregateField
      FieldName = '_COUNT'
      Active = True
      Expression = 'Count(COMMON_PRODUCT_CODE)'
    end
    object cdsDetail_MAX_IS_THOROUGHLY_ENGINEERED: TAggregateField
      FieldName = '_MAX_IS_THOROUGHLY_ENGINEERED'
      Active = True
      Expression = 'Max(IS_THOROUGHLY_ENGINEERED)'
    end
    object cdsDetail_THOROUGHLY_ENGINEERED_COUNT: TAggregateField
      FieldName = '_THOROUGHLY_ENGINEERED_COUNT'
      Active = True
      Expression = 'Sum(IS_THOROUGHLY_ENGINEERED)'
    end
  end
  inherited dsDetail: TDataSource
    Left = 88
    Top = 424
  end
  inherited tmrMaster: TTimer
    Left = 128
  end
  object cdsCandidateProducts: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conBaseGroups
    Filter = 'IS_INACTIVE = 0'
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_ORDERS_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_PARENT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_USED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROVIDED_BY'
        ParamType = ptInput
      end>
    ProviderName = 'prvCommonProductsCandidateJoinedProducts'
    OnCalcFields = cdsCandidateProductsCalcFields
    Left = 584
    Top = 400
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
    object cdsCandidateProductsSPEC_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'SPEC_STATUS_CODE'
      OnGetText = SpecStatusGetText
    end
    object cdsCandidateProductsPRODUCTION_ORDER_COUNT: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_COUNT'
    end
    object cdsCandidateProductsPRODUCTION_ORDERS_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDERS_QUANTITY'
    end
    object cdsCandidateProductsMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsCandidateProductsMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsCandidateProductsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsCandidateProductsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsCandidateProductsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsCandidateProductsIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      FieldName = 'IS_THOROUGHLY_ENGINEERED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsCandidateProductsIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsCandidateProductsCOMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'COMPANY_PRODUCT_NAMES'
      FixedChar = True
      Size = 255
    end
    object cdsCandidateProducts_PRODUCTION_ORDERS_AVG_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCTION_ORDERS_AVG_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsCandidateProducts_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_COUNT'
      Calculated = True
    end
    object cdsCandidateProducts_TOTAL_COUNT: TAggregateField
      FieldName = '_TOTAL_COUNT'
      Active = True
      Expression = 'Count(PRODUCT_CODE)'
    end
    object cdsCandidateProducts_ACTIVE_COUNT: TAggregateField
      FieldName = '_ACTIVE_COUNT'
      Active = True
      Expression = 'Sum(1 - IS_INACTIVE)'
    end
  end
  object pmCopy: TPopupMenu
    Left = 419
    Top = 146
    object miCopyNoToClipboard: TMenuItem
      Action = actCopyNoToClipboard
      Default = True
    end
    object miCopyNameToClipboard: TMenuItem
      Action = actCopyNameToClipboard
    end
  end
  object ilCommonProducts: TImageList
    Left = 152
    Top = 158
    Bitmap = {
      494C010104000600480010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939FF000000FF000000FF0000
      00FF1A1A1AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000834A
      4AFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000834A
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000FEFEFEFFDEDEDEFFB8B3ACFFC0B8A9FFBFB7A9FFB5B2ACFFDFDFDFFFFDFD
      FDFF00000000000000000000000000000000393939FF000000FF000000FF3939
      39FF373737FFDEDEDEFFACB6B2FFA8BDB5FFA8BBB4FFACB3B1FFDFDFDFFFE6E6
      E6FF000000000000000000000000000000000000000000000000000000000000
      0000FBFBFBFFDEDEDEFFB8B4ACFFC1B8A9FFC0B7A9FFB5B2ACFF693838FF0000
      FEFF834A4AFF0000000000000000000000000000000000000000000000000000
      0000F4F4F4FFDEDEDEFFACB6B2FFA8BDB5FFA8BBB4FFACB3B1FF693838FF0000
      FEFF834A4AFF000000000000000000000000000000000000000000000000ECEC
      ECFFC8BCAEFFE39329FFFFBA32FFFFC23DFFFFC13CFFFFB530FFCF8629FFE5E1
      DEFFFCFCFCFF0000000000000000000000000000000000000000FEFEFEFFD3D3
      D3FF3B4C43FF128050FF2AE99DFF34ECA4FF32ECA3FF28E899FF25B273FFDDE3
      E1FFD7D7D7FF000000000000000000000000000000000000000000000000ECEC
      ECFFC9BDAEFFEA982AFFFFC034FFFFC93FFFFFC83EFF754A0FFF0000FFFF1313
      FEFF0000FEFF834A4AFF00000000000000000000000000000000FEFEFEFFD3D3
      D3FFAEC4B9FF24C27EFF2AE99DFF34ECA4FF32ECA3FF754A0FFF0000FFFF1313
      FEFF0000FEFF834A4AFF00000000000000000000000000000000F5F5F5FFDECC
      B8FFFFA833FFFFC95CFF1A160CFFFFE787FFFFE686FFFFDB74FFFFC253FFFF9E
      2CFFDAD0C6FFFCFCFCFF00000000000000000000000000000000E7E7E7FFB8D7
      C8FF1C9A5FFF1A5138FF66FCBCFF72FDC3FF71FDC3FF62FBB9FF47F4A4FF0000
      00FF000000FF353535FF00000000000000000000000000000000F5F5F5FFE0CD
      B8FFFFAE35FFFFD05FFFFFE67DFFFFEF8CFF693838FF0000FFFF0000FFFF0000
      FFFF0000FDFF0000FEFF834A4AFF000000000000000000000000E7E7E7FFB8D7
      C8FF2BE88FFF4EF5AAFF66FCBCFF72FDC3FF693838FF0000FFFF0000FFFF0000
      FFFF0000FEFF0000FEFF834A4AFF000000000000000000000000C6B4A1FFF799
      30FFFFC769FF7F7048FF090909FFFFEEA2FFFFEEA1FFFFE99CFFFFDD8BFFFFBB
      5AFFE78C26FFCEC7C1FF000000000000000000000000000000009EBEAFFF28D2
      81FF4ED695FF0D1C15FF86FEC7FF89FFC9FF88FFC9FF84FEC5FF244E3AFF0C0C
      0CFF000000FF2D3531FF00000000000000000000000000000000C8B6A2FFFF9E
      32FFFFCE6CFFFFEA96FFFFF4A4FF693838FF693838FF693838FF0000FFFF0000
      FFFF0E0EFEFF834A4AFF834A4AFF834A4AFF00000000000000009EBEAFFF28D2
      81FF58F1A8FF7BFDBFFF86FEC7FF693838FF693838FF693838FF0000FFFF0000
      FFFF0E0EFEFF834A4AFF834A4AFF834A4AFF00000000F4F4F3FFD18633FFFEA9
      4BFFFFCF7FFF0D0D0DFF2B2517FFAA945EFFFFDF8EFFFFDC8DFFFFD98BFFFFC8
      74FFF09937FFB27F46FF000000000000000000000000F3F4F3FF2EB474FF40D7
      90FF6CEEAFFF1A3629FF5EC191FF79FABCFF78FABDFF77F8BAFF040404FF4EB9
      86FF2FCC81FF439F74FF000000000000000000000000FAFAFAFFD78A35FFFFAF
      4EFFFFD683FFFFE191FFFFE593FFFFE693FFFFE693FF693838FF0000FFFF0000
      FFFF0000FFFF834A4AFF000000000000000000000000F3F4F3FF2EB474FF40D7
      90FF6CEEAFFF77F5B8FF79F8BBFF79FABCFF78FABDFF693838FF0000FFFF0000
      FFFF0000FFFF834A4AFF000000000000000000000000BCB4AAFFC8761BFFFAA7
      4BFF98713EFF0A0A0AFF8E6E3CFF725830FFFFC76CFFFFC56CFFFFC26CFFFFBA
      64FFED9838FFB36611FFDCDBD9FF0000000000000000AAB9B2FF17AA63FF40D4
      8EFF59E3A1FF32815CFF28694BFF5BEEA9FF5BEEA9FF22573EFF0D2218FF54E0
      9EFF30C980FF0F9857FFD9DCDAFF0000000000000000BDB4AAFF693838FF834A
      4AFF834A4AFF834A4AFF834A4AFFFFCE70FFFFCE70FF693838FF0000FFFF0000
      FFFF0000FFFF834A4AFFDCDBD9FF0000000000000000AAB9B2FF693838FF834A
      4AFF834A4AFF834A4AFF834A4AFF5BEEA9FF5BEEA9FF693838FF0000FFFF0000
      FFFF0000FFFF834A4AFFD9DCDAFF0000000000000000A3907CFFBF6D15FFE891
      31FF191006FF6E471CFFE3943AFF1D1307FFFFA842FFFFA642FFFCA442FFF49E
      3EFFDD8625FFAC610FFFB9B2ABFF00000000000000007C9C8DFF11A25DFF29C5
      7AFF36D287FF2AA86CFF0C301FFF38DD8FFF38DD8FFF070707FF269561FF34CF
      86FF20BC71FF0D9252FFABB7B1FF0000000000000000A4917DFF693838FF0000
      FEFF0000FFFF0504FCFF834A4AFFFFAE44FFFFAE44FF693838FF0000FFFF0000
      FFFF0000FFFF834A4AFFB9B2ABFF00000000000000007C9C8DFF693838FF0000
      FEFF0000FFFF0000FEFF834A4AFF38DD8FFF38DD8FFF693838FF0000FFFF0000
      FFFF0000FFFF834A4AFFABB7B1FF00000000000000009C8A76FFAF640FFF975C
      1AFF070707FFEC922FFFF0942FFF35210AFFBC7424FFEF942FFFEA922FFFE28C
      2EFFCD791CFFA05A0CFFB3ACA5FF0000000000000000769687FF0D9554FF20B8
      70FF27C378FF28C77BFF04170EFF23B671FF115937FF04140CFF28C77BFF26C0
      76FF18AE66FF0A884DFFA4B1ABFF00000000000000009E8B77FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFFFA9A30FFFA9A30FF693838FF0000FFFF0000
      FFFF0201FBFF834A4AFFB4ACA5FF0000000000000000769687FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFF28CD7FFF28CD7FFF693838FF0000FFFF0000
      FFFF0000FEFF834A4AFFA4B1ABFF0000000000000000ACA297FFA05D11FF2016
      0BFF543A1DFFE8A050FFECA150FF694823FF835A2CFFEAA150FFE79F50FFE09B
      50FFC88539FF8E510BFFCCC9C6FF000000000000000097A9A0FF0F884FFF43B7
      80FF42C184FF43C588FF1E583CFF256F4CFF0A0A0AFF287651FF43C486FF43BE
      84FF30AA71FF097944FFC6CBC8FF0000000000000000ADA397FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFFF5A852FFF5A852FF693838FF693838FF5845
      2CFF693838FF834A4AFFCCC9C6FF000000000000000097A9A0FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFF44C88AFF44C88AFF693838FF693838FF5845
      2CFF693838FF834A4AFFC6CBC8FF0000000000000000E2E1E0FF6D3F0BFF0404
      04FFE6B177FFEAB477FFEEB577FFBA8E5DFF35281AFFEDB578FFE9B377FFE3AF
      77FFC28E53FF815321FF000000000000000000000000E0E1E0FF0E7645FF61B8
      8FFF64C396FF65C699FF438666FF11221AFF0D0D0DFF66C89AFF64C697FF65C0
      94FF47A579FF1F7149FF000000000000000000000000E2E1E0FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFFF7BD7CFFF6BD7CFFF5BB7CFFF1B97BFFEBB5
      7BFFC99356FF845521FF000000000000000000000000E0E1E0FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFF65CB9BFF66CA9BFF66C89AFF64C697FF65C0
      94FF47A579FF1F7149FF0000000000000000393939FF000000FF0C0C0CFF3B2E
      1FFFE8C095FFEDC395FFEFC595FFF0C695FF1B1610FFD4AF84FFECC295FFE4BF
      94FFA5743FFFA79D92FF00000000000000000000000000000000648B78FF53A2
      7CFF7EC5A2FF7FC8A6FF7FCAA6FF090909FF3F6553FF7FCAA6FF7FC7A5FF7EC2
      A1FF368C62FF92A49BFF0000000000000000693838FF693838FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFF834A4AFF834A4AFFF7CB9AFFF4C99AFFECC5
      99FFAA7841FFA89E92FF0000000000000000693838FF693838FF693838FF0000
      FFFF0000FFFF0000FFFF834A4AFF834A4AFF834A4AFF7FCAA6FF7FC7A5FF7EC2
      A1FF368C62FF92A49BFF0000000000000000393939FF000000FF000000FFCBBB
      AAFFD3B18BFFEDCDABFFF0CFABFFF1D0ABFF504539FF9F8A72FFEACCABFFC3A0
      78FF8D7459FF0000000000000000000000000000000000000000F1F1F1FF3E7C
      5EFF75B395FF91C9AEFF91CCAFFF0E1411FF90CDB0FF91CBB0FF91C7ADFF66A5
      88FF58846EFF00000000000000000000000000000000693838FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF834A4AFFFAD7B0FFF7D6B0FFF2D3B0FFCAA5
      7CFF8F7559FF00000000000000000000000000000000693838FF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF834A4AFF90CDB0FF91CBB0FF91C7ADFF66A5
      88FF58846EFF000000000000000000000000000000000000000000000000F0F0
      F0FF988269FFAE865BFFD9BB99FFEACFB3FF9B8A76FF473D31FFA68055FF9C8D
      7EFF00000000000000000000000000000000000000000000000000000000F0F0
      F0FF678F7CFF4D9473FF82B89FFF98C6AFFF97C6B0FF7FB59CFF4A8E6EFF7D97
      8AFF000000000000000000000000000000000000000000000000693838FF0000
      FFFF0000FFFF0000FFFF834A4AFFF2D6B9FFF1D6B8FFDCBE9AFFAB8458FF9D8E
      7EFF000000000000000000000000000000000000000000000000693838FF0000
      FFFF0000FFFF0000FFFF834A4AFF98C6AFFF97C6B0FF7FB59CFF4A8E6EFF7D97
      8AFF000000000000000000000000000000000000000000000000000000000000
      000000000000DDDCDAFFA4998CFF93816CFF958470FF312A24FF363534FF0000
      00FF000000FF393939FF00000000000000000000000000000000000000000000
      000000000000D9DCDBFF8BA096FF6B8C7DFF6F8F7FFF98A9A1FFE6E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000005845
      2CFF0000FFFF745D3EFFA5998CFF95816CFF978470FFAEA399FFE8E7E6FF0000
      0000000000000000000000000000000000000000000000000000000000005845
      2CFF0000FFFF745D3EFF8BA096FF6B8C7DFF6F8F7FFF98A9A1FFE6E7E7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1AFF000000FF0000
      00FF000000FF393939FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000834A4AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000834A4AFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF07FFFFEFFFEFF00F000FF007F007
      E007C007E003C003C003C003C001C001C003C003C000C0008003800380038003
      8001800180018001800180018001800180018001800180018001800180018001
      80038003800380030003C003000300030007C00780078007E00FE00FC00FC00F
      F803F81FE01FE01FFF83FFFFF7FFF7FF00000000000000000000000000000000
      000000000000}
  end
  object cdsHeader: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBaseGroups
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCommonProductsHeader'
    OnCalcFields = cdsHeaderCalcFields
    Left = 480
    object cdsHeaderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsHeaderMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsHeader_JOINED_PRODUCT_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_JOINED_PRODUCT_COUNT'
      Calculated = True
    end
    object cdsHeaderTOTAL_CONCRETE_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'TOTAL_CONCRETE_PRODUCT_COUNT'
    end
    object cdsHeaderACTIVE_CONCRETE_PRODUCT_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_CONCRETE_PRODUCT_COUNT'
    end
  end
  object dsHeader: TDataSource
    DataSet = cdsHeader
    Left = 512
  end
  object cdsProductPeriodsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 208
    object cdsProductPeriodsParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
  end
  object pmJoinedCopy: TPopupMenu
    Left = 419
    Top = 194
    object miCopyJoinedNoToClipboard: TMenuItem
      Action = actCopyJoinedNoToClipboard
      Default = True
    end
    object miCopyJoinedNameToClipboard: TMenuItem
      Action = actCopyJoinedNameToClipboard
    end
  end
  object pmCandidateCopy: TPopupMenu
    Left = 419
    Top = 242
    object miCopyCandidateNoToClipboard: TMenuItem
      Action = actCopyCandidateNoToClipboard
      Default = True
    end
    object miCopyCandidateNameToClipboard: TMenuItem
      Action = actCopyCandidateNameToClipboard
    end
  end
end
