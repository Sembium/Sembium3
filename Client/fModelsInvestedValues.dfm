inherited fmModelsInvestedValues: TfmModelsInvestedValues
  Left = 254
  Top = 218
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1040#1085#1072#1083#1080#1079#1080' '#1087#1086' '#1054#1055#1042
  ClientHeight = 587
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 552
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 3
      Visible = False
    end
    object btnModelInvestedValues: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actModelInvestedValues
      Caption = #1048#1085#1078#1054#1088#1057#1040#1085'...'
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
      Spacing = -1
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 552
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 536
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
        end
        object tlbTopButtons: TToolBar
          Left = 176
          Top = 0
          Width = 97
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbTopButtons'
          EdgeInner = esNone
          Images = dmMain.ilActions
          TabOrder = 3
          object sepDocumentation: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDocumentation'
            Style = tbsSeparator
          end
          object pnlProductDocsCaption: TPanel
            Left = 8
            Top = 0
            Width = 28
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1059#1054#1073
            TabOrder = 0
          end
          object btnDocumentation: TSpeedButton
            Left = 36
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1054#1055#1042
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
            Transparent = False
            OnClick = btnDocumentationClick
          end
        end
        object tlbToggleButtons: TToolBar
          Left = 809
          Top = 0
          Width = 192
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbToggleButtons'
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          object btnToggleTreeView: TSpeedButton
            Left = 0
            Top = 0
            Width = 113
            Height = 24
            Action = actToggleTreeView
            AllowAllUp = True
            GroupIndex = 6
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF000000000000000000000000000000000000000000FF00
              FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF000000
              000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF000000000000FFFF0000FFFF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF000000000000000000000000000000000000000000FF00
              FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF000000
              000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF000000000000FFFF0000FFFF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              0000000000000000000000000000FF00FF000000000000000000FF00FF000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
              FF0000FFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
              FF0000FFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Transparent = False
          end
          object btnShowInactive: TToolButton
            Left = 113
            Top = 0
            Action = actShowInactive
          end
          object sepToggleTreeView: TToolButton
            Left = 137
            Top = 0
            Width = 8
            Style = tbsSeparator
          end
          object btnToggleOwnerConsumer: TSpeedButton
            Tag = 2
            Left = 145
            Top = 0
            Width = 23
            Height = 24
            Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1055#1086#1088#1098#1095#1080#1090#1077#1083' / '#1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
            AllowAllUp = True
            GroupIndex = 4
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00000000000000000000000000FF00FF000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000000000000000FFFFFF00FFFFFF000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              00000000000000000000000000000000000000000000FF00FF0000000000FFFF
              FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
              0000FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF0000000000FFFF
              FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
              FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
              00000000000000000000000000000000000000000000FF00FF0084848400FFFF
              FF000000000000000000000000000000000000000000FFFFFF00000000000000
              00000000000000000000000000000000000000000000FF00FF0084848400FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FF00FF0084848400FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FF00FF0000000000FFFF
              FF0084848400FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000000000000FF00FF0000000000FF00FF0084848400FFFF
              FF0084848400FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF008484
              840084848400FFFFFF00000000000000000000000000FF00FF0084848400FFFF
              FF0084848400FFFFFF008484840084848400FFFFFF0000000000FFFFFF00FFFF
              FF0000000000FFFFFF0000000000FF00FF0000000000FF00FF00848484008484
              840084848400FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
              FF0084848400848484008484840084848400FF00FF00FF00FF00FF00FF008484
              8400848484008484840084848400FF00FF00FF00FF00FF00FF00}
            Transparent = False
          end
          object btnToggleProductDisplay: TSpeedButton
            Tag = 4
            Left = 168
            Top = 0
            Width = 24
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
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 512
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        OnGetFooterParams = grdDataGetFooterParams
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'ML_STATE_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089'           '
            Title.Orientation = tohVertical
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'IS_SALE'
            Footers = <>
            Title.Caption = #1054#1073#1074'. '#1089' '#1054#1055#1055
            Title.Hint = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1087#1088#1086#1076#1072#1078#1073#1080
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = '_PRODUCTION_ORDER_POSITION'
            Footers = <>
            Title.Caption = #1055#1086#1079'. '#1085#1072' '#1054#1055#1042
            Title.Orientation = tohVertical
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'SALE_IDENTIFICATION'
            Footers = <>
            Title.Caption = 'ID '#1054#1055#1042
            Width = 164
          end
          item
            EditButtons = <>
            FieldName = 'PRIORITY_FULL_NAME'
            Footers = <>
            Title.Caption = #1054#1089#1085'. '#1055#1088'.'
            Title.Hint = #1054#1089#1085#1086#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            Color = clBtnFace
            EditButtons = <>
            FieldName = 'WORK_PRIORITY_FULL_NAME'
            Footers = <>
            Title.Caption = #1054#1087'. '#1055#1088'.'
            Title.Hint = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090
            Title.Orientation = tohVertical
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'OWNER_NAME'
            Footers = <>
            Tag = 2
            Title.Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'CONSUMER_DEPT_IDENTIFIER'
            Footers = <>
            Tag = 3
            Title.Caption = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
            Visible = False
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Tag = 4
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Width = 253
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_OTHER_NAME'
            Footers = <>
            Tag = 5
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1054#1073
            Visible = False
            Width = 253
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footer.FieldName = '_TOTAL_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.FieldName = '_TOTAL_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1052'.'#1077#1076'.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1042#1088#1084#1048#1085#1090
            Width = 116
          end
          item
            Color = 16707742
            EditButtons = <>
            FieldName = 'INVESTED_VALUE'
            Footer.FieldName = '_TOTAL_INVESTED_VALUE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1042#1057' (CRNCY)'
            Width = 116
          end>
      end
      object pnlTreeView: TPanel
        Left = 0
        Top = 24
        Width = 1001
        Height = 512
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object grdModelsInvestedValuesTree: TAbmesDBGrid
          Left = 0
          Top = 0
          Width = 1001
          Height = 512
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
          HorzScrollBar.Visible = False
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
          UseMultiTitle = True
          VTitleMargin = 25
          OnDblClick = grdDataDblClick
          OnDrawColumnCell = grdModelsInvestedValuesTreeDrawColumnCell
          OnGetCellParams = grdDataGetCellParams
          OnGetFooterParams = grdDataGetFooterParams
          OnSortMarkingChanged = grdDataSortMarkingChanged
          Columns = <
            item
              EditButtons = <>
              FieldName = 'SALE_IDENTIFICATION'
              Footers = <>
              Title.Caption = 'ID '#1054#1055#1042
              Width = 184
            end
            item
              EditButtons = <>
              FieldName = 'ML_STATE_CODE'
              Footers = <>
              Title.Caption = #1057#1090#1072#1090#1091#1089
              Title.Orientation = tohVertical
              Width = 26
            end
            item
              EditButtons = <>
              FieldName = 'IS_SALE'
              Footers = <>
              Title.Caption = #1054#1073#1074'. '#1089' '#1054#1055#1055
              Title.Hint = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1087#1088#1086#1076#1072#1078#1073#1080
              Title.Orientation = tohVertical
              Width = 13
            end
            item
              EditButtons = <>
              FieldName = 'PRIORITY_FULL_NAME'
              Footers = <>
              Title.Caption = #1054#1089#1085'. '#1055#1088'.'
              Title.Hint = #1054#1089#1085#1086#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090
              Title.Orientation = tohVertical
              Width = 16
            end
            item
              EditButtons = <>
              FieldName = 'WORK_PRIORITY_FULL_NAME'
              Footers = <>
              Title.Caption = #1054#1087'. '#1055#1088'.'
              Title.Hint = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1055#1088#1080#1086#1088#1080#1090#1077#1090
              Title.Orientation = tohVertical
              Width = 24
            end
            item
              EditButtons = <>
              FieldName = 'OWNER_NAME'
              Footers = <>
              Tag = 2
              Title.Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'CONSUMER_DEPT_IDENTIFIER'
              Footers = <>
              Tag = 3
              Title.Caption = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
              Visible = False
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'PRODUCT_NAME'
              Footers = <>
              Tag = 4
              Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
              Width = 253
            end
            item
              EditButtons = <>
              FieldName = 'PRODUCT_OTHER_NAME'
              Footers = <>
              Tag = 5
              Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1044#1088#1091#1075#1080' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1059#1054#1073
              Visible = False
              Width = 253
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY'
              Footer.FieldName = '_TOTAL_QUANTITY'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1050'-'#1074#1086
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'MEASURE_ABBREV'
              Footer.FieldName = '_TOTAL_MEASURE_ABBREV'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1052'.'#1077#1076'.'
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
              Footers = <>
              Title.Caption = #1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042'|'#1042#1088#1084#1048#1085#1090
              Width = 116
            end
            item
              Color = 16707742
              EditButtons = <>
              FieldName = 'INVESTED_VALUE'
              Footer.FieldName = '_TOTAL_INVESTED_VALUE'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Title.Caption = #1042#1057' (CRNCY)'
              Width = 116
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 176
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conMfgReports
    Filtered = True
    FieldDefs = <
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_SALE'
        DataType = ftFloat
      end
      item
        Name = 'ML_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_IDENTIFICATION'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'WORK_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'OWNER_NAME'
        DataType = ftWideString
        Size = 41
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
        Name = 'PRODUCT_OTHER_NAME'
        DataType = ftWideString
        Size = 250
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
        Name = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENTER_SH_STORE_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'INVESTED_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTED_VALUE_IS_INCOMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'IS_WASTE_COMPENSATOR'
        DataType = ftFloat
      end
      item
        Name = 'HAS_WASTE'
        DataType = ftFloat
      end
      item
        Name = 'CONSUMER_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'HAS_WASTE_COMPENSATORS'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_PK'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'WASTING_SALE_OBJ_PK'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'SALE_OBJECT_BRANCH_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'ENTER_SH_STORE_PLAN_BEGIN_DATE;PRIORITY_CODE;SALE_IDENTIFICATION'
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_SINGLE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TREE_SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_SUM'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'INVESTED_VALUE_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'CURRENCY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PROD_START_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'MIN_ML_STATE_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ML_STATE_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENTER_SH_STORE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_WASTE_COMPENSATOR_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WASTING_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_WASTE_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'SALE_SHIPMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OWNER_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MODEL_DEVELOPMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OKIDU_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GET_SALE_OBJECT_TREE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvModelsInvestedValues'
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    Top = 176
    object cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsGridDataML_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'ML_STATE_CODE'
      OnGetText = cdsGridDataML_STATE_CODEGetText
    end
    object cdsGridDataSALE_IDENTIFICATION: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFICATION'
      Size = 81
    end
    object cdsGridDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object cdsGridDataWORK_PRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'WORK_PRIORITY_FULL_NAME'
      Size = 93
    end
    object cdsGridDataOWNER_NAME: TAbmesWideStringField
      FieldName = 'OWNER_NAME'
      Size = 41
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
    object cdsGridDataPRODUCT_OTHER_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_OTHER_NAME'
      Size = 250
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_BEGIN_DATE'
      OnGetText = cdsGridDataENTER_SH_STORE_PLAN_BEGIN_DATEGetText
    end
    object cdsGridDataENTER_SH_STORE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENTER_SH_STORE_PLAN_END_DATE'
    end
    object cdsGridDataINVESTED_VALUE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTED_VALUE_IS_INCOMPLETE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_IS_INCOMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_WASTE: TAbmesFloatField
      FieldName = 'HAS_WASTE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataIS_SALE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_SALE'
      DisplayFormat = '#'
      DisplayBoolValues = #1051';'#1057
      FieldValueType = fvtBoolean
    end
    object cdsGridData_PRIORITY_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridData_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRIORITY_BACKGROUND_COLOR'
      LookupDataSet = cdsPriorities
      LookupKeyFields = 'PRIORITY_CODE'
      LookupResultField = 'PRIORITY_BACKGROUND_COLOR'
      KeyFields = 'PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridData_TOTAL_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_QUANTITY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_TOTAL_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object cdsGridDataHAS_WASTE_COMPENSATORS: TAbmesFloatField
      FieldName = 'HAS_WASTE_COMPENSATORS'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_PRODUCTION_ORDER_POSITION: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRODUCTION_ORDER_POSITION'
      Size = 50
      Calculated = True
    end
    object cdsGridDataSALE_OBJECT_PK: TAbmesWideStringField
      FieldName = 'SALE_OBJECT_PK'
      Size = 81
    end
    object cdsGridDataWASTING_SALE_OBJ_PK: TAbmesWideStringField
      FieldName = 'WASTING_SALE_OBJ_PK'
      Size = 81
    end
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      Required = True
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      Required = True
    end
    object cdsGridData_TOTAL_QUANTITY_RAW: TAggregateField
      FieldName = '_TOTAL_QUANTITY_RAW'
      Active = True
      Expression = 'Sum(QUANTITY)'
    end
    object cdsGridData_TOTAL_MEASURE_DIFF: TAggregateField
      FieldName = '_TOTAL_MEASURE_DIFF'
      Active = True
      Expression = 'Max(MEASURE_CODE) - Min(MEASURE_CODE)'
    end
    object cdsGridData_TOTAL_INVESTED_VALUE: TAggregateField
      FieldName = '_TOTAL_INVESTED_VALUE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(INVESTED_VALUE)'
    end
    object cdsGridData_MAX_INVESTED_VALUE_IS_INCOMPLETE: TAggregateField
      FieldName = '_MAX_INVESTED_VALUE_IS_INCOMPLETE'
      Active = True
      Expression = 'Max(INVESTED_VALUE_IS_INCOMPLETE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1048#1085#1078#1077#1085#1077#1088#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086'-'#1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1040#1085#1072#1083#1080#1079#1080' '#1087#1086' '#1054#1055#1042
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actModelInvestedValues: TAction
      Caption = #1048#1085#1078#1054#1088#1057#1040#1085'...'
      ImageIndex = 18
      OnExecute = actModelInvestedValuesExecute
      OnUpdate = actModelInvestedValuesUpdate
    end
    object actToggleTreeView: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1080#1088#1072#1085#1080
      GroupIndex = 6
      Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1080#1088#1072#1085#1080'/'#1045#1076#1080#1085#1080#1095#1085#1080
      ImageIndex = 8
      OnExecute = actToggleTreeViewExecute
      OnUpdate = actToggleTreeViewUpdate
    end
    object actShowInactive: TAction
      GroupIndex = 7
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1055#1088#1080#1082#1083#1102#1095#1077#1085#1080'/'#1040#1085#1091#1083#1080#1088#1072#1085#1080
      ImageIndex = 16
      OnExecute = actShowInactiveExecute
      OnUpdate = actShowInactiveUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Top = 208
    object pdsGridDataParamsMIN_ML_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_ML_STATE_CODE'
    end
    object pdsGridDataParamsMAX_ML_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MAX_ML_STATE_CODE'
    end
    object pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = #8470
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_PRIORITY_CODE'
    end
    object pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1080
      FieldName = 'IS_SALE_STATE'
    end
    object pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'OWNER_COMPANY_CODE'
    end
    object pdsGridDataParamsSALE_SHIPMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'SALE_SHIPMENT_BEGIN_DATE'
    end
    object pdsGridDataParamsSALE_SHIPMENT_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080' - '#1050#1088#1072#1081
      FieldName = 'SALE_SHIPMENT_END_DATE'
    end
    object pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1088#1098#1095#1080#1090#1077#1083
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsIS_WASTE_COMPENSATOR_STATUS: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042
      FieldName = 'IS_WASTE_COMPENSATOR_STATUS'
    end
    object pdsGridDataParamsWASTING_SALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'. '#1085#1072' '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      FieldName = 'WASTING_SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsWASTING_SALE_NO: TAbmesFloatField
      DisplayLabel = 'No '#1085#1072' '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      FieldName = 'WASTING_SALE_NO'
    end
    object pdsGridDataParamsHAS_WASTE_STATUS: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1073#1083#1086#1082'. '#1087#1086' ID '#1054#1055#1042
      FieldName = 'HAS_WASTE_STATUS'
    end
    object pdsGridDataParamsMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
    end
    object pdsGridDataParamsOKIDU_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      FieldName = 'OKIDU_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsPROD_START_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'PROD_START_PLAN_BEGIN_DATE'
    end
    object pdsGridDataParamsPROD_START_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' - '#1050#1088#1072#1081
      FieldName = 'PROD_START_PLAN_END_DATE'
    end
    object pdsGridDataParamsINVESTED_VALUE_LEVEL: TAbmesFloatField
      DisplayLabel = #1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'INVESTED_VALUE_LEVEL'
    end
    object pdsGridDataParamsINVESTED_VALUE_SINGLE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_SINGLE'
      DisplayBoolValues = '1;'#1055
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsINVESTED_VALUE_TYPE: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_TYPE'
    end
    object pdsGridDataParamsINVESTED_VALUE_SUM: TAbmesFloatField
      FieldName = 'INVESTED_VALUE_SUM'
    end
    object pdsGridDataParamsINVESTED_VALUE_ABBREV: TAbmesWideStringField
      FieldName = 'INVESTED_VALUE_ABBREV'
    end
    object pdsGridDataParamsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsENTER_SH_STORE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'ENTER_SH_STORE_BEGIN_DATE'
    end
    object pdsGridDataParamsENTER_SH_STORE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1079#1072' '#1085#1072#1095'. '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'ENTER_SH_STORE_END_DATE'
    end
    object pdsGridDataParams_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object pdsGridDataParams_SHOW_INVESTED_VALUE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTED_VALUE'
      Size = 50
      Calculated = True
    end
    object pdsGridDataParams_SHOW_INVESTED_VALUE_AND_CRNCY: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTED_VALUE_AND_CRNCY'
      Size = 50
      Calculated = True
    end
    object pdsGridDataParams_MODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MODEL_DEVELOPMENT_TYPE_ABBREV'
      LookupDataSet = cdsModelDevelopmentTypes
      LookupKeyFields = 'MODEL_DEVELOPMENT_TYPE_CODE'
      LookupResultField = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      KeyFields = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
  end
  inherited dsGridDataParams: TDataSource
    Top = 208
  end
  inherited dsData: TDataSource
    Top = 144
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 144
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 128
    Top = 152
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 96
    Top = 152
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object cdsModelDevelopmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSales
    Params = <>
    ProviderName = 'prvModelDevelopmentTypes'
    Left = 160
    Top = 152
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_CODE'
      Required = True
    end
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_ABBREV'
      Size = 100
    end
    object prvModelDevelopmentTypesMODEL_DEVELOPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'MODEL_DEVELOPMENT_TYPE_NAME'
      Size = 100
    end
  end
end
