inherited fmOccupationAndEmployee: TfmOccupationAndEmployee
  Left = 284
  Top = 165
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - %s'
  ClientHeight = 602
  ClientWidth = 809
  DesignSize = (
    809
    602)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 567
    Width = 809
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 541
      TabOrder = 3
    end
    inherited pnlClose: TPanel
      Left = 452
      TabOrder = 2
    end
    inherited pnlApply: TPanel
      Left = 720
      TabOrder = 4
      Visible = False
    end
    object pnlNotes: TPanel
      Left = 0
      Top = 0
      Width = 105
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnNotes: TBitBtn
        Left = 8
        Top = 2
        Width = 97
        Height = 25
        Action = actNotes
        Caption = #1041#1077#1083#1077#1078#1082#1080'...'
        TabOrder = 0
      end
    end
    object pnlBottomButtonsClient: TPanel
      Left = 105
      Top = 0
      Width = 347
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlPrintCheckBox: TPanel
        Left = 196
        Top = 0
        Width = 62
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object chkPrint: TCheckBox
          Left = 0
          Top = 6
          Width = 53
          Height = 17
          Caption = #1055#1077#1095#1072#1090
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
      end
      object pnlPrintButton: TPanel
        Left = 258
        Top = 0
        Width = 89
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnPrint: TBitBtn
          Left = 0
          Top = 2
          Width = 81
          Height = 25
          Action = actPrint
          Caption = #1055#1077#1095#1072#1090
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
            C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
            C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 0
        end
      end
    end
  end
  object pcMain: TPageControl [1]
    Left = 8
    Top = 360
    Width = 793
    Height = 201
    ActivePage = tsOccupationProfessionsDepts
    Anchors = [akLeft, akTop, akBottom]
    HotTrack = True
    TabOrder = 3
    object tsOccupationProfessionsDepts: TTabSheet
      Caption = #1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090
      ImageIndex = 3
      object grdProfessionsDepts: TAbmesDBGrid
        Left = 0
        Top = 25
        Width = 785
        Height = 148
        Align = alClient
        AutoFitColWidths = True
        DataGrouping.GroupLevels = <>
        DataSource = dsOAEProfessionsDepts
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = grdProfessionsDeptsGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 257
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_IS_EXTERNAL'
            Footers = <>
            Title.Caption = #1055#1076#1074'.'
            Title.Hint = #1055#1086#1076#1074#1083#1072#1089#1090#1085#1086#1089#1090
            Width = 30
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'DEPT_IS_RECURRENT'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 30
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'OCC_WORK_DEPT_PR_FULL_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
            Width = 200
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Caption = #1054#1090#1075'.'
            Width = 30
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'OWDP_IS_CAPACITY_GENERATOR'
            Footers = <>
            Title.Caption = #1050#1087#1094'.'
            Width = 30
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnlOccupationProfessionDeptsTop: TPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblProfessionDeptDoc: TLabel
          Left = 144
          Top = 5
          Width = 33
          Height = 13
          Caption = #1058#1055
        end
        object navOccupationProfessions: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 97
          Height = 25
          DataSource = dsOAEProfessionsDepts
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object tlbProfessionDeptsDocs: TToolBar
          Left = 184
          Top = 1
          Width = 37
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 1
          object btnProfessionDeptsDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 22
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1058#1055' '#1085#1072' '#1080#1079#1087#1098#1083#1085#1077#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1085#1080#1090#1077' '#1056#1086#1083#1080
            Flat = True
            Glyph.Data = {
              76010000424D760100000000000076000000280000001D000000100000000100
              0400000000000001000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD33333DD
              DDDDDDDDDDDDDDDDD000DDDB0000000DDDDDDDDDDDDDDDDDD000DDBB33000333
              DDDDDDDDDDDDDDDDD000DBB33B000BB33DDDDDDDDDDDDDDDD000BB33BB0003BB
              33DDDDDDDDDDDDDDD000BB33B300033BB33DDDDDDDDDDDDDD000BB3BB3000B33
              BB3DDDDDDDDDDD0DD000BB3BB3000BB3BB33DDDDDDDDD000D000BB33000003B3
              BB33DDDDDDDD00000000BBB3BB333BB3BB33DDDDDDDDDDDDD000DBB33BBBBB33
              BB3DDDDDDDDDDDDDD000DBBB3300033BB33DDDDDDDDDDDDDD000DDBBB300033B
              B3DDDDDDDDDDDDDDD000DDDBBB303BBB33DDDDDDDDDDDDDDD000DDDDDBBBBBB3
              3DDDDDDDDDDDDDDDD000DDDDDDD3333DDDDDDDDDDDDDDDDDD000}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnProfessionDeptsDocsClick
          end
        end
        object tlbProfessionsDeptsButtons: TToolBar
          Left = 97
          Top = 0
          Width = 40
          Height = 25
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object sepFilterCoveredDepts: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Style = tbsSeparator
          end
          object btnFilterCoveredDepts: TToolButton
            Left = 8
            Top = 0
            Action = actFilterCoveredDepts
            Style = tbsCheck
          end
          object sepProfessionsDeptsDoc: TToolButton
            Left = 32
            Top = 0
            Width = 8
            Caption = 'sepProfessionsDeptsDoc'
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
      end
    end
    object tsPrcData: TTabSheet
      Caption = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
      ImageIndex = 5
    end
    object tsProfessions: TTabSheet
      Caption = #1056#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090
      inline frProfessions: TDualGridFrame
        Left = 0
        Top = 25
        Width = 785
        Height = 148
        Align = alClient
        TabOrder = 0
        TabStop = True
        inherited pnlIncluded: TPanel
          Width = 369
          Height = 148
          inherited pnlIncludedNavigator: TPanel
            Width = 295
            Align = alNone
            Visible = False
            inherited navIncluded: TDBColorNavigator
              DataSource = nil
              Hints.Strings = ()
            end
          end
          inherited grdIncluded: TAbmesDBGrid
            Top = 0
            Width = 369
            Height = 148
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            UseMultiTitle = True
            VTitleMargin = 5
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                Width = 54
              end
              item
                Alignment = taCenter
                Color = 15532031
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 236
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_KIND_IDENTIFIER'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Title.Orientation = tohVertical
                Width = 15
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 369
          Width = 43
          Height = 148
          DesignSize = (
            43
            148)
          inherited pnlProductButtons: TPanel
            Top = 46
            Width = 40
            inherited btnInclude: TSpeedButton
              Top = 0
              Height = 20
            end
            inherited btnExclude: TSpeedButton
              Top = 24
              Height = 20
            end
            inherited btnIncludeAll: TSpeedButton
              Top = 48
              Height = 20
            end
            inherited btnExcludeAll: TSpeedButton
              Top = 72
              Height = 20
            end
          end
        end
        inherited pnlExcluded: TPanel
          Left = 412
          Width = 373
          Height = 148
          inherited pnlExcludedNavigator: TPanel
            Width = 295
            Align = alNone
            Visible = False
            inherited navExcluded: TDBColorNavigator
              Left = 199
              DataSource = nil
              Hints.Strings = ()
            end
          end
          inherited grdExcluded: TAbmesDBGrid
            Top = 0
            Width = 373
            Height = 148
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            UseMultiTitle = True
            VTitleMargin = 5
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                Width = 54
              end
              item
                Alignment = taCenter
                Color = 15532031
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 240
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_KIND_IDENTIFIER'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'EMP_HAS_THE_PROFESSION'
                Footers = <>
                Title.Caption = #1057#1087#1086#1089'.'
                Title.Orientation = tohVertical
                Visible = False
                Width = 15
              end>
          end
        end
        inherited alActions: TActionList
          inherited actInclude: TAction
            OnExecute = frProfessionsactIncludeExecute
          end
          inherited actIncludeAll: TAction
            OnExecute = frProfessionsactIncludeAllExecute
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsOAEProfessions
          Left = 60
          Top = 39
        end
        inherited dsExcluded: TDataSource
          DataSet = cdsOAENeededProfessions
          Left = 420
          Top = 39
        end
      end
      object pnlProfessionsTop: TPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblProfessionsStatus: TLabel
          Left = 170
          Top = 5
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1056#1086#1083#1077#1074#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
          FocusControl = edtProfessionsStatus
        end
        object tlbProfessionDocs: TToolBar
          Left = 96
          Top = 0
          Width = 37
          Height = 25
          Align = alLeft
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 0
          object btnProfessionDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1080#1089#1074#1086#1077#1085#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
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
            OnClick = btnProfessionDocsClick
          end
        end
        object navGridData: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 25
          DataSource = frProfessions.dsData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 1
        end
        object tlbNotProfessionDocs: TToolBar
          Left = 652
          Top = 0
          Width = 37
          Height = 25
          Align = alRight
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 2
          object btnNotProfessionDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1053#1077#1086#1073#1093#1086#1076#1080#1084#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
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
            OnClick = btnNotProfessionDocsClick
          end
        end
        object navOtherGridData: TDBColorNavigator
          Left = 689
          Top = 0
          Width = 96
          Height = 25
          DataSource = frProfessions.dsExcluded
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          Flat = True
          TabOrder = 3
        end
        object edtProfessionsStatus: TJvEdit
          Left = 311
          Top = 2
          Width = 58
          Height = 21
          Alignment = taCenter
          Color = clBtnFace
          TabOrder = 4
        end
      end
    end
    object tsAbilities: TTabSheet
      Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080
      ImageIndex = 2
      inline frEmployeeAbilities: TDualGridFrame
        Left = 0
        Top = 25
        Width = 785
        Height = 148
        Align = alClient
        TabOrder = 0
        TabStop = True
        inherited pnlIncluded: TPanel
          Width = 369
          Height = 148
          inherited pnlIncludedNavigator: TPanel
            Width = 295
            Align = alNone
            Visible = False
            inherited navIncluded: TDBColorNavigator
              DataSource = nil
              Hints.Strings = ()
            end
          end
          inherited grdIncluded: TAbmesDBGrid
            Top = 0
            Width = 369
            Height = 148
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            UseMultiTitle = True
            VTitleMargin = 5
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                Width = 54
              end
              item
                Color = 15532031
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = #1047#1072#1103#1074#1077#1085#1080' '#1057#1087#1086#1089#1086#1073#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 252
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 369
          Width = 43
          Height = 148
          DesignSize = (
            43
            148)
          inherited pnlProductButtons: TPanel
            Top = 47
            Width = 43
            inherited btnInclude: TSpeedButton
              Top = 0
              Height = 20
            end
            inherited btnExclude: TSpeedButton
              Top = 24
              Height = 20
            end
            inherited btnIncludeAll: TSpeedButton
              Top = 48
              Height = 20
            end
            inherited btnExcludeAll: TSpeedButton
              Top = 72
              Height = 20
            end
          end
        end
        inherited pnlExcluded: TPanel
          Left = 412
          Width = 373
          Height = 148
          inherited pnlExcludedNavigator: TPanel
            Width = 295
            Align = alNone
            Visible = False
            inherited navExcluded: TDBColorNavigator
              Left = 199
              DataSource = nil
              Hints.Strings = ()
            end
          end
          inherited grdExcluded: TAbmesDBGrid
            Top = 0
            Width = 373
            Height = 148
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            UseMultiTitle = True
            VTitleMargin = 5
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086#1090#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1050#1086#1076
                Width = 54
              end
              item
                Alignment = taCenter
                Color = 15532031
                EditButtons = <>
                FieldName = 'HAS_DOCUMENTATION'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = [fsBold]
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086#1090#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1048#1048#1054
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = 
                  #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1085#1086#1090#1086' '#1055#1088#1077#1076#1087#1088#1080#1103#1090#1080#1077' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072 +
                  #1085#1080#1077
                Width = 256
              end>
          end
        end
        inherited alActions: TActionList
          Top = 56
        end
        inherited dsData: TDataSource
          DataSet = cdsEmployeeAbilities
          Left = 208
          Top = 40
        end
        inherited dsExcluded: TDataSource
          DataSet = cdsEmployeeNotAbilities
          Left = 536
          Top = 40
        end
      end
      object pnlEmployeeAbilitiesTop: TPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object tlbEmployeeAbilitiesDocs: TToolBar
          Left = 96
          Top = 0
          Width = 37
          Height = 25
          Align = alLeft
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 0
          object btnEmployeeAbilitiesDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
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
            OnClick = btnEmployeeAbilitiesDocsClick
          end
        end
        object navEmployeeAbilities: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 25
          DataSource = frEmployeeAbilities.dsData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 1
        end
        object tlbEmployeeNotAbilitiesDocs: TToolBar
          Left = 652
          Top = 0
          Width = 37
          Height = 25
          Align = alRight
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 2
          object btnEmployeeNotAbilitiesDocs: TSpeedButton
            Left = 0
            Top = 0
            Width = 37
            Height = 25
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
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
            OnClick = btnEmployeeNotAbilitiesDocsClick
          end
        end
        object navEmployeeNotAbilities: TDBColorNavigator
          Left = 689
          Top = 0
          Width = 96
          Height = 25
          DataSource = frEmployeeAbilities.dsExcluded
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alRight
          Flat = True
          TabOrder = 3
        end
      end
    end
    object tsDiscplineEvents: TTabSheet
      Caption = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1056#1072#1073#1086#1090#1085#1086' '#1055#1086#1074#1077#1076#1077#1085#1080#1077
      ImageIndex = 1
      inline frEmployeeDisciplineEvents: TfrEmployeeDisciplineEvents
        Left = 0
        Top = 0
        Width = 785
        Height = 173
        Align = alClient
        TabOrder = 0
        TabStop = True
        inherited pnlGrid: TPanel
          Width = 647
          Height = 148
          inherited grdDisciplineEvents: TAbmesDBGrid
            Width = 647
            Height = 148
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = '_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 65
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'DISCIPLINE_EVENT_DATE'
                Footers = <>
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'DISC_EVENT_TYPE_NAME'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Width = 160
              end
              item
                EditButtons = <>
                FieldName = 'RATING'
                Footers = <>
                Title.Caption = #1060#1072#1082#1090'. '#1090#1086#1095#1082#1080
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'DISCIPLINE_EVENT_COMMENT'
                Footers = <>
                Width = 253
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 647
          Height = 148
          inherited pnlSummary: TPanel
            Height = 148
            DesignSize = (
              113
              148)
            inherited lblTotalNegativeRating: TLabel
              Width = 96
            end
            inherited lblTotalPositiveRating: TLabel
              Width = 99
            end
            inherited bvlSummary: TBevel
              Height = 143
            end
          end
          inherited pnlEditButtons: TPanel
            Height = 148
          end
        end
        inherited pnlEmployeeDisciplineEventsNavigator: TPanel
          Width = 785
          inherited ToolBar4: TToolBar
            Left = 748
          end
          inherited navEmployeeDisciplineEvents: TDBColorNavigator
            Hints.Strings = ()
          end
          inherited tlbTopButtons: TToolBar
            inherited pnlDateInterval: TPanel
              inherited frDateInterval: TfrDateIntervalFrame
                inherited dsData: TDataSource
                  DataSet = frEmployeeDisciplineEvents.cdsFilter
                end
              end
            end
          end
        end
        inherited cdsGridData: TAbmesClientDataSet
          DataSetField = cdsDataqryOAEDisciplineEvents
          FieldDefs = <
            item
              Name = 'EMPLOYEE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISCIPLINE_EVENT_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISC_EVENT_TYPE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISC_EVENT_TYPE_NAME'
              DataType = ftWideString
              Size = 100
            end
            item
              Name = 'DISCIPLINE_EVENT_STATE_CODE'
              DataType = ftFloat
            end
            item
              Name = 'DISCIPLINE_EVENT_COMMENT'
              DataType = ftWideString
              Size = 100
            end
            item
              Name = 'DISCIPLINE_EVENT_DATE'
              DataType = ftTimeStamp
            end
            item
              Name = 'AUTHORIZE_EMPLOYEE_CODE'
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
              Name = 'HAS_DOC_ITEMS'
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
              Name = 'STORNO_EMPLOYEE_CODE'
              DataType = ftFloat
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
              Name = 'IS_NOT_STORNO'
              DataType = ftFloat
            end
            item
              Name = 'OLD_DISCIPLINE_EVENT_CODE'
              DataType = ftFloat
            end
            item
              Name = 'RATING'
              DataType = ftFloat
            end
            item
              Name = 'IS_NEGATIVE'
              DataType = ftFloat
            end
            item
              Name = 'IS_POSITIVE'
              DataType = ftFloat
            end
            item
              Name = 'IS_ACTIVE'
              DataType = ftFloat
            end
            item
              Name = 'DIRECT_STORNO'
              DataType = ftFloat
            end
            item
              Name = 'STATUS_CODE'
              DataType = ftFloat
            end
            item
              Name = 'IS_IN_NORMAL_STATE'
              DataType = ftFloat
            end
            item
              Name = 'ACTIVE_DATE_UNIT_CODE'
              DataType = ftFloat
            end
            item
              Name = 'ACTIVE_DATE_UNIT_COUNT'
              DataType = ftFloat
            end
            item
              Name = 'COLOR'
              DataType = ftFloat
            end
            item
              Name = 'BACKGROUND_COLOR'
              DataType = ftFloat
            end>
        end
        inherited cdsDisciplineEventStates: TAbmesClientDataSet
          inherited cdsDisciplineEventStatesDISCIPLINE_EVENT_STATE_NAME: TAbmesWideStringField
            Size = 50
          end
        end
      end
    end
  end
  object gbOccupation: TGroupBox [2]
    Left = 8
    Top = 0
    Width = 793
    Height = 201
    Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' '
    TabOrder = 0
    object gbOccupationDates: TGroupBox
      Left = 530
      Top = 78
      Width = 257
      Height = 49
      Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
      TabOrder = 4
      object lblOccupationDaysLeft: TLabel
        Left = 163
        Top = 18
        Width = 27
        Height = 13
        Caption = #1088#1079#1088#1074'.'
      end
      object lblCalendarDays: TLabel
        Left = 237
        Top = 19
        Width = 18
        Height = 13
        Caption = #1082'.'#1076'.'
      end
      inline frOccupationDateInterval: TfrDateIntervalFrame
        Left = 8
        Top = 16
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
      end
      object edtOccupationDaysLeft: TDBEdit
        Left = 193
        Top = 16
        Width = 40
        Height = 21
        TabStop = False
        Color = 13494472
        DataField = '_DAYS_LEFT'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object pnlOccupationId: TPanel
      Left = 8
      Top = 16
      Width = 513
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object lblOccupationName: TLabel
        Left = 144
        Top = 8
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtOccupationName
      end
      object lblStatus: TLabel
        Left = 8
        Top = 8
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
        FocusControl = edtStatus
      end
      object lblIsMain: TLabel
        Left = 56
        Top = 8
        Width = 75
        Height = 13
        Caption = #1042#1080#1076' '#1044#1083#1098#1078#1085#1086#1089#1090
        FocusControl = edtIsMain
      end
      object btnShowOccupation: TSpeedButton
        Left = 483
        Top = 24
        Width = 23
        Height = 22
        Action = actShowOccupation
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
          000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
          0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
          FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
          FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
          0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
          00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
          0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
          0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
          0000FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
      end
      object edtOccupationName: TDBEdit
        Left = 144
        Top = 24
        Width = 297
        Height = 21
        Color = clBtnFace
        DataField = 'OCCUPATION_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtStatus: TDBEdit
        Left = 8
        Top = 24
        Width = 37
        Height = 21
        DataField = '_STATUS_ABBREV'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object tlbOccupationDocs: TToolBar
        Left = 444
        Top = 24
        Width = 37
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 24
        Images = dmMain.ilActions
        TabOrder = 3
        object btnOccupationDocs: TSpeedButton
          Left = 0
          Top = 0
          Width = 37
          Height = 22
          Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1076#1083#1098#1078#1085#1086#1089#1090#1090#1072
          Flat = True
          Glyph.Data = {
            76010000424D760100000000000076000000280000001D000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDD33333DD
            DDDDDDDDDDDDDDDDD000DDDB0000000DDDDDDDDDDDDDDDDDD000DDBB33000333
            DDDDDDDDDDDDDDDDD000DBB33B000BB33DDDDDDDDDDDDDDDD000BB33BB0003BB
            33DDDDDDDDDDDDDDD000BB33B300033BB33DDDDDDDDDDDDDD000BB3BB3000B33
            BB3DDDDDDDDDDD0DD000BB3BB3000BB3BB33DDDDDDDDD000D000BB33000003B3
            BB33DDDDDDDD00000000BBB3BB333BB3BB33DDDDDDDDDDDDD000DBB33BBBBB33
            BB3DDDDDDDDDDDDDD000DBBB3300033BB33DDDDDDDDDDDDDD000DDBBB300033B
            B3DDDDDDDDDDDDDDD000DDDBBB303BBB33DDDDDDDDDDDDDDD000DDDDDBBBBBB3
            3DDDDDDDDDDDDDDDD000DDDDDDD3333DDDDDDDDDDDDDDDDDD000}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
          OnClick = btnOccupationDocsClick
        end
      end
      object edtIsMain: TDBEdit
        Left = 56
        Top = 24
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = 'IS_MAIN'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object pnlPhase: TPanel
      Left = 530
      Top = 16
      Width = 129
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object lblPhase: TLabel
        Left = 8
        Top = 8
        Width = 29
        Height = 13
        Caption = #1060#1072#1079#1072
        FocusControl = edtPhase
      end
      object edtPhase: TDBEdit
        Left = 8
        Top = 24
        Width = 113
        Height = 21
        Color = clBtnFace
        DataField = 'OCCUPATION_PHASE_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
    end
    object pnlShift: TPanel
      Left = 666
      Top = 16
      Width = 121
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object lblOccupationLevel: TLabel
        Left = 8
        Top = 8
        Width = 40
        Height = 13
        Caption = #1054#1088#1053#1080#1074#1086
        FocusControl = edtOccupationLevel
      end
      object lblShift: TLabel
        Left = 64
        Top = 8
        Width = 33
        Height = 13
        Caption = #1057#1084#1103#1085#1072
        FocusControl = edtShift
      end
      object edtOccupationLevel: TDBEdit
        Left = 8
        Top = 24
        Width = 49
        Height = 21
        Color = 16776176
        DataField = 'OCCUPATION_LEVEL'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtShift: TDBEdit
        Left = 64
        Top = 24
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'SHIFT_IDENTIFIER'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object gbCoefs: TGroupBox
      Left = 472
      Top = 128
      Width = 315
      Height = 65
      Caption = ' '#1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
      TabOrder = 6
      object blSalaryRatioCoefDash: TLabel
        Left = 262
        Top = 38
        Width = 6
        Height = 13
        Caption = #8212
      end
      object lblBaseSalary: TLabel
        Left = 8
        Top = 19
        Width = 118
        Height = 13
        Caption = #1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072
      end
      object txtBaseSalaryCurrency: TDBText
        Left = 109
        Top = 39
        Width = 97
        Height = 13
        DataField = 'BASE_SALARY_DATE_UNIT_NAME'
        DataSource = dsData
        Transparent = False
      end
      object edtCurrentSalaryRatioCoefInterval: TLabel
        Left = 224
        Top = 19
        Width = 36
        Height = 13
        Caption = #1050#1054#1088#1045#1092
      end
      object edtMinSalaryRatioCoef: TDBEdit
        Left = 224
        Top = 35
        Width = 34
        Height = 21
        Color = clBtnFace
        DataField = 'MIN_SALARY_RATIO_COEF'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtMaxSalaryRatioCoef: TDBEdit
        Left = 272
        Top = 35
        Width = 34
        Height = 21
        Color = clBtnFace
        DataField = 'MAX_SALARY_RATIO_COEF'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      object edtBaseSalary: TDBEdit
        Left = 8
        Top = 35
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'BASE_SALARY'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
    end
    object gbCraft: TGroupBox
      Left = 8
      Top = 128
      Width = 457
      Height = 65
      Caption = ' '#1053#1086#1088#1084#1072#1090#1080#1074#1085#1086' '#1050#1083#1072#1089#1080#1092#1080#1094#1080#1088#1072#1085#1077' '
      TabOrder = 5
      inline frCraft: TfrCraftEditFrame
        Left = 8
        Top = 20
        Width = 441
        Height = 37
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        TabOrder = 0
        DesignSize = (
          441
          37)
        inherited lblCraftType: TLabel
          Width = 129
        end
        inherited lblCraftCode: TLabel
          Width = 52
        end
        inherited cbCraft: TJvDBLookupCombo
          Width = 201
        end
      end
    end
    object gbDept: TGroupBox
      Left = 8
      Top = 78
      Width = 513
      Height = 49
      Caption = ' '#1054#1088#1063' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
      TabOrder = 3
      object edtDeptIsExternal: TDBEdit
        Left = 434
        Top = 16
        Width = 33
        Height = 21
        TabStop = False
        Color = 12373173
        DataField = 'DEPT_IS_EXTERNAL'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object edtDeptIsRecurrent: TDBEdit
        Left = 474
        Top = 16
        Width = 33
        Height = 21
        TabStop = False
        Color = 12373173
        DataField = 'DEPT_IS_RECURRENT'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
      inline frDept: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 16
        Width = 417
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          417
          22)
        inherited gbTreeNode: TGroupBox
          Width = 433
          DesignSize = (
            433
            49)
          inherited pnlTreeNode: TPanel
            Width = 417
            inherited pnlTreeNodeName: TPanel
              Width = 270
              DesignSize = (
                270
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 269
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 270
            end
            inherited pnlRightButtons: TPanel
              Left = 381
            end
          end
        end
      end
    end
  end
  object gbOccupationEmployee: TGroupBox [3]
    Left = 8
    Top = 283
    Width = 793
    Height = 62
    Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' '
    TabOrder = 2
    object lblAssignmentDaysLeft: TLabel
      Left = 201
      Top = 16
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
    end
    object lblEmployeeNo: TLabel
      Left = 245
      Top = 35
      Width = 18
      Height = 13
      Caption = #1082'.'#1076'.'
    end
    object lblEmployee: TLabel
      Left = 266
      Top = 16
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
    end
    object lblOERegime: TLabel
      Left = 488
      Top = 16
      Width = 114
      Height = 13
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
    end
    object lblDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 119
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
    end
    object lblSalary: TLabel
      Left = 608
      Top = 16
      Width = 67
      Height = 13
      Caption = #1054#1089#1085'. '#1079#1072#1087#1083#1072#1090#1072
      FocusControl = edtSalary
    end
    object edtSalaryCurrency: TLabel
      Left = 669
      Top = 36
      Width = 21
      Height = 13
      Caption = '%s /'
    end
    object lblSalaryDateUnit: TLabel
      Left = 704
      Top = 16
      Width = 84
      Height = 13
      Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
      FocusControl = cbSalaryDateUnit
    end
    inline frEmployee: TfrEmployeeFieldEditFrameBald
      Left = 266
      Top = 32
      Width = 217
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 3
      TabStop = True
      DesignSize = (
        217
        22)
      inherited gbEmployee: TGroupBox
        Width = 236
        inherited pnlEmployeeName: TPanel
          Width = 161
          inherited pnlRightButtons: TPanel
            Left = 125
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 125
            DesignSize = (
              125
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 123
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 124
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 226
        end
      end
      inherited cdsEmployees: TAbmesClientDataSet
        inherited cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
          ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
        end
      end
    end
    object cbOERegime: TJvDBLookupCombo
      Left = 488
      Top = 32
      Width = 113
      Height = 21
      DeleteKeyClear = False
      DataField = '_OE_REGIME_NAME'
      DataSource = dsOccupationEmployee
      TabOrder = 4
    end
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited dsData: TDataSource
        DataSet = cdsOccupationEmployee
      end
    end
    object edtAssignmentDaysLeft: TDBEdit
      Left = 201
      Top = 32
      Width = 40
      Height = 21
      TabStop = False
      Color = 13494472
      DataField = '_ASSIGNMENT_DAYS_LEFT'
      DataSource = dsOccupationEmployee
      ReadOnly = True
      TabOrder = 2
    end
    object edtSalary: TDBEdit
      Left = 608
      Top = 32
      Width = 57
      Height = 21
      DataField = 'SALARY'
      DataSource = dsOccupationEmployee
      TabOrder = 5
    end
    object cbSalaryDateUnit: TJvDBLookupCombo
      Left = 704
      Top = 32
      Width = 85
      Height = 21
      DeleteKeyClear = False
      DataField = '_SALARY_DATE_UNIT_NAME'
      DataSource = dsOccupationEmployee
      TabOrder = 6
    end
    object tlbDocs: TToolBar
      Left = 159
      Top = 32
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086#1090#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
        ImageIndex = 1
        OnClick = btnDocsClick
      end
    end
  end
  inline frProduct: TfrProductExFieldEditFrame [4]
    Left = 8
    Top = 208
    Width = 793
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 549
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 793
      Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1077#1085' '#1056#1072#1073#1086#1090#1085#1080#1082' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1090#1072' ('#1044#1056#1054#1088') '
      inherited pnlTreeNode: TPanel
        Width = 3
        inherited pnlTreeNodeNo: TPanel
          Left = -179
        end
        inherited pnlRightButtons: TPanel
          Left = -56
        end
        inherited pnlProductLabels: TPanel
          Width = 3
        end
      end
      inherited pnlRight: TPanel
        Left = 21
      end
    end
  end
  inherited alActions: TActionList [5]
    Left = 112
    inherited actForm: TAction
      Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - %s'
    end
    object actReleaseEmployee: TAction
      Caption = #1054#1089#1074#1086#1073#1086#1078#1076#1072#1074#1072#1085#1077'...'
    end
    object actShowOccupation: TAction
      Hint = #1044#1083#1098#1078#1085#1086#1089#1090'...'
      ImageIndex = 18
      OnExecute = actShowOccupationExecute
    end
    object actNotes: TAction
      Caption = #1041#1077#1083#1077#1078#1082#1080'...'
      ImageIndex = 57
      OnExecute = actNotesExecute
      OnUpdate = actNotesUpdate
    end
    object actFilterCoveredDepts: TAction
      Checked = True
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1075#1088#1091#1087#1086#1074#1086' '#1086#1073#1093#1074#1072#1085#1072#1090#1080' '#1058#1055
      ImageIndex = 16
      OnExecute = actFilterCoveredDeptsExecute
    end
  end
  inherited dsData: TDataSource [6]
    Left = 104
    Top = 224
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationAndEmployee'
    BeforeOpen = cdsDataBeforeOpen
    AfterInsert = cdsDataAfterInsert
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 72
    Top = 224
    object cdsDataOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInKey]
    end
    object cdsDataOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = []
    end
    object cdsDataOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataOCCUPATION_LEVEL: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'OCCUPATION_LEVEL'
      ProviderFlags = []
    end
    object cdsDataIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      ProviderFlags = []
      DisplayBoolValues = #1040';'#1055
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = []
      OnChange = cdsDataEMPLOYEE_CODEChange
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = []
    end
    object cdsDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataDEPT_IS_EXTERNAL: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DEPT_IS_EXTERNAL'
      ProviderFlags = []
      DisplayBoolValues = #1042#1085'.;'#1042#1090#1088'.'
      FieldValueType = fvtBoolean
    end
    object cdsDataDEPT_IS_RECURRENT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'DEPT_IS_RECURRENT'
      ProviderFlags = []
      DisplayBoolValues = #1055#1091#1083#1089'.;'#1059#1089#1090'.'
      FieldValueType = fvtBoolean
    end
    object cdsDataSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = []
    end
    object cdsDataSHIFT_IDENTIFIER: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataqryOAEDisciplineEvents: TDataSetField
      FieldName = 'qryOAEDisciplineEvents'
    end
    object cdsDataqryOAEProfessionsDepts: TDataSetField
      FieldName = 'qryOAEProfessionsDepts'
    end
    object cdsData_IS_OCCUPIED: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IS_OCCUPIED'
      DisplayBoolValues = #1047';'#1053
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsData_STATUS_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_STATUS_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsDataOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsDataOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OCCUPATION_END_DATE'
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsDataOCCUPATION_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_BRANCH_CODE'
    end
    object cdsDataOCCUPATION_DOC_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_DOC_CODE'
    end
    object cdsDataqryOccupationEmployee: TDataSetField
      FieldName = 'qryOccupationEmployee'
    end
    object cdsDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDataqryOAENeededProfessions: TDataSetField
      FieldName = 'qryOAENeededProfessions'
    end
    object cdsDataIS_MAIN: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_MAIN'
      ProviderFlags = []
      DisplayBoolValues = #1054#1089#1085#1086#1074#1085#1072';'#1055#1088#1086#1080#1079#1074#1086#1076#1085#1072
      FieldValueType = fvtBoolean
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsData_PROFESSIONS_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_PROFESSIONS_STATUS'
      Calculated = True
    end
    object cdsData_OCCUPATION_PERIOD: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_OCCUPATION_PERIOD'
      Size = 30
      Calculated = True
    end
    object cdsDataOCCUPATION_PHASE_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsData_DAYS_LEFT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DAYS_LEFT'
      Calculated = True
    end
    object cdsDataCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
      ProviderFlags = []
    end
    object cdsDataCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsData_CRAFT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CRAFT_NAME'
      Size = 100
      Calculated = True
    end
    object cdsData_CRAFT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_CRAFT_TYPE_NAME'
      Size = 50
      Calculated = True
    end
    object cdsData_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NAME'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'EMPLOYEE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsData_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NO'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsDataBASE_SALARY: TAbmesFloatField
      FieldName = 'BASE_SALARY'
      ProviderFlags = []
      OnGetText = cdsDataBASE_SALARYGetText
      DisplayFormat = ',0.00'
    end
    object cdsDataMIN_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MIN_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object cdsDataMAX_SALARY_RATIO_COEF: TAbmesFloatField
      FieldName = 'MAX_SALARY_RATIO_COEF'
      ProviderFlags = []
    end
    object cdsDataBASE_SALARY_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'BASE_SALARY_DATE_UNIT_NAME'
      ProviderFlags = []
      OnGetText = cdsDataBASE_SALARY_DATE_UNIT_NAMEGetText
      Size = 50
    end
    object cdsData_SHOW_BASE_SALARY_DATE_UNIT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_BASE_SALARY_DATE_UNIT'
      Size = 50
      Calculated = True
    end
  end
  object cdsOAEProfessions: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsOccupationEmployeeqryOAEProfessions
    IndexFieldNames = 'PROFESSION_FORMATTED_FULL_NO'
    Params = <>
    OnNewRecord = cdsOAEProfessionsNewRecord
    Left = 49
    Top = 384
    object cdsOAEProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOAEProfessionsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOAEProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOAEProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsOAEProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsOAEProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsOAEProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsOAEProfessions_PROFESSIONS_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROFESSIONS_STATUS'
      Calculated = True
    end
    object cdsOAEProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      ProviderFlags = []
      Size = 408
    end
    object cdsOAEProfessionsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      ProviderFlags = []
      Required = True
    end
    object cdsOAEProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
    object cdsOAEProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      Size = 100
    end
  end
  object cdsOAEProfessionsDepts: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryOAEProfessionsDepts
    Params = <>
    OnFilterRecord = cdsOAEProfessionsDeptsFilterRecord
    Left = 72
    Top = 256
    object cdsOAEProfessionsDeptsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOAEProfessionsDeptsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsOAEProfessionsDeptsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsOAEProfessionsDeptsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 45
    end
    object cdsOAEProfessionsDeptsDEPT_IS_EXTERNAL: TAbmesFloatField
      FieldName = 'DEPT_IS_EXTERNAL'
      DisplayBoolValues = #1042#1085'.;'#1042#1090#1088'.'
      FieldValueType = fvtBoolean
    end
    object cdsOAEProfessionsDeptsDEPT_IS_RECURRENT: TAbmesFloatField
      FieldName = 'DEPT_IS_RECURRENT'
      DisplayBoolValues = #1055#1091#1083#1089'.;'#1059#1089#1090'.'
      FieldValueType = fvtBoolean
    end
    object cdsOAEProfessionsDeptsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsOAEProfessionsDeptsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsOAEProfessionsDeptsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object cdsOAEProfessionsDeptsOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
    end
    object cdsOAEProfessionsDeptsOCC_WORK_DEPT_PR_FULL_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PR_FULL_NAME'
      Size = 83
    end
    object cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      OnGetText = cdsOAEProfessionsDeptsDEPT_OWDP_COVER_TYPE_CODEGetText
    end
    object cdsOAEProfessionsDeptsOWDP_IS_CAPACITY_GENERATOR: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'OWDP_IS_CAPACITY_GENERATOR'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsOAEProfessionsDeptsIS_DELEGATED: TAbmesFloatField
      FieldName = 'IS_DELEGATED'
      FieldValueType = fvtBoolean
    end
  end
  object dsOAEProfessionsDepts: TDataSource
    DataSet = cdsOAEProfessionsDepts
    Left = 104
    Top = 256
  end
  object cdsOAENeededProfessions: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryOAENeededProfessions
    IndexFieldNames = 'PROFESSION_FORMATTED_FULL_NO'
    Params = <>
    OnNewRecord = cdsOAENeededProfessionsNewRecord
    Left = 409
    Top = 416
    object cdsOAENeededProfessionsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOAENeededProfessionsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOAENeededProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOAENeededProfessionsPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsOAENeededProfessionsHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsOAENeededProfessionsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsOAENeededProfessionsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsOAENeededProfessionsEMP_HAS_THE_PROFESSION: TAbmesFloatField
      FieldName = 'EMP_HAS_THE_PROFESSION'
      ProviderFlags = []
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsOAENeededProfessionsPROFESSION_KIND_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROFESSION_KIND_IDENTIFIER'
      Size = 408
    end
    object cdsOAENeededProfessionsPROFESSION_KIND_NO: TAbmesFloatField
      FieldName = 'PROFESSION_KIND_NO'
      Required = True
    end
    object cdsOAENeededProfessionsPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOAENeededProfessionsPROFESSION_FORMATTED_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FORMATTED_FULL_NO'
      ProviderFlags = []
      Size = 100
    end
  end
  object cdsEmployeeProfessions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeProfessions'
    Left = 244
    Top = 408
    object cdsEmployeeProfessionsPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
  end
  object cdsEmployeeAbilities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeProfessions'
    Left = 316
    Top = 424
    object cdsEmployeeAbilitiesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeeAbilitiesPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsEmployeeAbilitiesPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object cdsEmployeeAbilitiesHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeAbilitiesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsEmployeeAbilitiesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsEmployeeAbilitiesPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
  end
  object cdsEmployeeNotAbilities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeNotProfessions'
    Left = 692
    Top = 424
    object cdsEmployeeNotAbilitiesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeeNotAbilitiesPROFESSION_CODE: TAbmesFloatField
      FieldName = 'PROFESSION_CODE'
    end
    object cdsEmployeeNotAbilitiesPROFESSION_NAME: TAbmesWideStringField
      FieldName = 'PROFESSION_NAME'
      Size = 100
    end
    object cdsEmployeeNotAbilitiesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeNotAbilitiesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsEmployeeNotAbilitiesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsEmployeeNotAbilitiesPROFESSION_FULL_NO: TAbmesWideStringField
      FieldName = 'PROFESSION_FULL_NO'
      Size = 100
    end
  end
  object cdsOccupationEmployee: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryOccupationEmployee
    Params = <>
    BeforePost = cdsOccupationEmployeeBeforePost
    OnCalcFields = cdsOccupationEmployeeCalcFields
    OnNewRecord = cdsOccupationEmployeeNewRecord
    Left = 144
    Top = 256
    object cdsOccupationEmployeeOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccupationEmployeeOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOccupationEmployeeEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOccupationEmployeeASSIGNMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'ASSIGNMENT_BEGIN_DATE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsOccupationEmployeeASSIGNMENT_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'ASSIGNMENT_END_DATE'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsOccupationEmployeeSALARY: TAbmesFloatField
      DisplayLabel = #1054#1089#1085#1086#1074#1085#1072' '#1047#1072#1087#1083#1072#1090#1072
      FieldName = 'SALARY'
      OnGetText = cdsOccupationEmployeeSALARYGetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsOccupationEmployeeSALARY_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALARY_DATE_UNIT_CODE'
    end
    object cdsOccupationEmployeeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsOccupationEmployeeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsOccupationEmployeeHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsOccupationEmployeeEMPLOYEE_EGN: TAbmesWideStringField
      FieldName = 'EMPLOYEE_EGN'
      ProviderFlags = []
      Size = 10
    end
    object cdsOccupationEmployeeEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsOccupationEmployeeEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
      ProviderFlags = []
    end
    object cdsOccupationEmployeeqryOAEProfessions: TDataSetField
      FieldName = 'qryOAEProfessions'
    end
    object cdsOccupationEmployee_ASSIGNMENT_PERIOD: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ASSIGNMENT_PERIOD'
      Size = 30
      Calculated = True
    end
    object cdsOccupationEmployee_ASSIGNMENT_DAYS_LEFT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ASSIGNMENT_DAYS_LEFT'
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsOccupationEmployeeOE_REGIME_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1078#1080#1084' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'OE_REGIME_CODE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOccupationEmployee_OE_REGIME_NAME: TAbmesWideStringField
      DisplayLabel = #1056#1077#1078#1080#1084' '#1085#1072' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      FieldKind = fkLookup
      FieldName = '_OE_REGIME_NAME'
      LookupDataSet = cdsOERegimes
      LookupKeyFields = 'OE_REGIME_CODE'
      LookupResultField = 'OE_REGIME_NAME'
      KeyFields = 'OE_REGIME_CODE'
      Lookup = True
    end
    object cdsOccupationEmployee_SALARY_DATE_UNIT_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
      FieldKind = fkLookup
      FieldName = '_SALARY_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'SALARY_DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsOccupationEmployee_SHOW_SALARY_DATE_UNIT: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALARY_DATE_UNIT'
      Size = 50
      Calculated = True
    end
    object cdsOccupationEmployeePRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsOccupationEmployeeOCCUPATION_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'OCCUPATION_BEGIN_DATE'
      Calculated = True
    end
    object cdsOccupationEmployeeOCCUPATION_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'OCCUPATION_END_DATE'
      Calculated = True
    end
    object cdsOccupationEmployee_EMPLOYEE_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NO'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NO'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsOccupationEmployee_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NAME'
      LookupDataSet = frEmployee.cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'EMPLOYEE_CODE'
      Size = 50
      Lookup = True
    end
  end
  object dsOccupationEmployee: TDataSource
    DataSet = cdsOccupationEmployee
    Left = 176
    Top = 256
  end
  object cdsOERegimes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOERegimes'
    Left = 312
    Top = 227
    object cdsOERegimesOE_REGIME_CODE: TAbmesFloatField
      FieldName = 'OE_REGIME_CODE'
    end
    object cdsOERegimesOE_REGIME_NAME: TAbmesWideStringField
      FieldName = 'OE_REGIME_NAME'
    end
  end
  object cdsNotes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 496
    object cdsNotesNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
  end
  object cdsEmployeeDisciplineEvents: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'prvOAEDisciplineEvents'
    Left = 492
    Top = 464
    object cdsEmployeeDisciplineEventsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeeDisciplineEventsDISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'DISCIPLINE_EVENT_CODE'
    end
    object cdsEmployeeDisciplineEventsDISC_EVENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DISC_EVENT_TYPE_CODE'
    end
    object cdsEmployeeDisciplineEventsDISCIPLINE_EVENT_COMMENT: TAbmesWideStringField
      FieldName = 'DISCIPLINE_EVENT_COMMENT'
      Size = 100
    end
    object cdsEmployeeDisciplineEventsDISCIPLINE_EVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DISCIPLINE_EVENT_DATE'
    end
    object cdsEmployeeDisciplineEventsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsEmployeeDisciplineEventsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsEmployeeDisciplineEventsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsEmployeeDisciplineEventsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsEmployeeDisciplineEventsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsEmployeeDisciplineEventsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsEmployeeDisciplineEventsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsEmployeeDisciplineEventsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsEmployeeDisciplineEventsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsEmployeeDisciplineEventsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
    end
    object cdsEmployeeDisciplineEventsIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
    end
    object cdsEmployeeDisciplineEventsOLD_DISCIPLINE_EVENT_CODE: TAbmesFloatField
      FieldName = 'OLD_DISCIPLINE_EVENT_CODE'
    end
    object cdsEmployeeDisciplineEventsRATING: TAbmesFloatField
      FieldName = 'RATING'
    end
    object cdsEmployeeDisciplineEventsIS_NEGATIVE: TAbmesFloatField
      FieldName = 'IS_NEGATIVE'
    end
    object cdsEmployeeDisciplineEventsIS_POSITIVE: TAbmesFloatField
      FieldName = 'IS_POSITIVE'
    end
    object cdsEmployeeDisciplineEventsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object cdsEmployeeDisciplineEventsDIRECT_STORNO: TAbmesFloatField
      FieldName = 'DIRECT_STORNO'
    end
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 216
    Top = 256
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
end
