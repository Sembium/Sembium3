inherited fmStageLevelTasks: TfmStageLevelTasks
  Left = 302
  Top = 204
  Caption = #1045#1090#1072#1087#1085#1080' '#1047#1072#1076#1072#1085#1080#1103
  ClientHeight = 490
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 455
    Width = 793
    inherited pnlOKCancel: TPanel
      Left = 525
      TabOrder = 5
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 436
      TabOrder = 4
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 704
      TabOrder = 6
      Visible = False
    end
    object btnModelStatus: TBitBtn
      Left = 8
      Top = 2
      Width = 89
      Height = 25
      Action = actModelStatus
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
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
      Spacing = -1
      TabOrder = 0
    end
    object btnOperations: TButton
      Left = 240
      Top = 2
      Width = 137
      Height = 25
      Action = actOperations
      TabOrder = 2
    end
    object btnNewMovement: TBitBtn
      Left = 104
      Top = 2
      Width = 129
      Height = 25
      Action = actNewMovement
      Caption = #1053#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
      Spacing = -1
      TabOrder = 1
    end
    object btnInputOutput: TBitBtn
      Left = 384
      Top = 2
      Width = 105
      Height = 25
      Action = actInputOutput
      Caption = #1042#1061#1054#1044' '#1080' '#1048#1047#1061#1054#1044'...'
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 793
    Height = 455
    inherited pnlGrid: TPanel
      Width = 777
      Height = 439
      inherited pnlNavigator: TPanel
        Top = 49
        Width = 777
        object btnToggleClientData: TSpeedButton [0]
          Left = 752
          Top = 0
          Width = 24
          Height = 24
          Action = actToggleClientData
          AllowAllUp = True
          GroupIndex = 9
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
          Width = 345
          AutoSize = False
          object sepBeforeDoc: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepBeforeDoc'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object lblDetailDoc: TLabel
            Left = 64
            Top = 0
            Width = 28
            Height = 24
            Caption = ' '#1050#1057#1063' '
            Layout = tlCenter
          end
          object btnDetailDoc: TSpeedButton
            Left = 92
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1050#1057#1063
            Flat = True
            Glyph.Data = {
              76070000424D760700000000000036000000280000001D000000100000000100
              2000000000004007000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF000060A0000060A0000060A0000060A0000060
              A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A000000000000000
              0000000000000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
              FF000060A0000060A00000FFFF0000000000000000000000000000FFFF0000FF
              FF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FF
              FF000000000000000000000000000060A00000FFFF0000FFFF000060A0000060
              A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
              FF0000FFFF000060A0000060A00000FFFF000060A00000000000000000000000
              00000060A0000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF000060A00000FF
              FF0000FFFF000060A00000000000000000000000000000FFFF000060A0000060
              A00000FFFF0000FFFF000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
              FF00FF00FF0000FFFF0000FFFF000060A00000FFFF0000FFFF000060A0000000
              0000000000000000000000FFFF0000FFFF000060A00000FFFF0000FFFF000060
              A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000FFFF0000FF
              FF000060A0000060A00000000000000000000000000000000000000000000060
              A00000FFFF000060A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              000000000000000000000000000000FFFF0000FFFF0000FFFF000060A00000FF
              FF0000FFFF000060A0000060A0000060A00000FFFF0000FFFF000060A00000FF
              FF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF0000FF
              FF0000FFFF0000FFFF000060A0000060A00000FFFF0000FFFF000060A000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FF
              FF0000FFFF000060A0000060A0000000000000000000000000000060A0000060
              A00000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060
              A0000000000000000000000000000060A0000060A00000FFFF0000FFFF000060
              A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF0000FFFF000060A000000000000060
              A00000FFFF0000FFFF0000FFFF000060A0000060A000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000060
              A0000060A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000060A0000060A0000060A0000060A000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnDetailDocClick
          end
          object sepBeforeStageDoc: TToolButton
            Left = 129
            Top = 0
            Width = 8
            Caption = 'sepBeforeStageDoc'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object lblStageDoc: TLabel
            Left = 137
            Top = 0
            Width = 30
            Height = 24
            Caption = ' '#1045#1090#1072#1087' '
            Layout = tlCenter
          end
          object btnStageDoc: TSpeedButton
            Left = 167
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1045#1090#1072#1087
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
            OnClick = btnStageDocClick
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 73
        Width = 777
        Height = 366
        TitleParams.MultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_STATUS'
            Footers = <>
            Title.Caption = #1057#1090' '#1072#1090' '#1091#1089
            Width = 20
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EFFECTIVE_TREATMENT_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090'|'#1053#1072#1095'.'
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EFFECTIVE_TREATMENT_WORKDAYS'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090'|'#1088'.'#1076'.'
            Width = 22
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1055#1042'|ID '#1054#1055#1042
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIORITY_NO'
            Footers = <>
            Title.Caption = #1054#1055#1042'|'#1054#1089#1085'. '#1055#1088'.'
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            CellButtons = <>
            Color = 15461355
            DynProps = <>
            EditButtons = <>
            FieldName = 'WORK_PRIORITY_NO'
            Footers = <>
            Title.Caption = #1054#1055#1042'|'#1054#1087'.   '#1055#1088'.'
            Title.Orientation = tohVertical
            Width = 24
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_WASTE_COMPENSATOR'
            Footers = <>
            Title.Caption = #1054#1055#1042'|'#1055#1086#1079'.'
            Title.Orientation = tohVertical
            Width = 13
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO_AS_TEXT'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
            Width = 86
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FORK_NO'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1056#1082
            Width = 18
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1050#1057#1063
            Width = 124
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT_DETAIL_NAME'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083'|'#1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1050#1057#1063' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
            Visible = False
            Width = 124
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ML_MODEL_STAGE_NO'
            Footers = <>
            Title.Caption = #1045#1090#1072#1087'|No'
            Width = 19
          end
          item
            CellButtons = <>
            Color = 15532031
            DynProps = <>
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1045#1090#1072#1087'|'#1048' '#1048' '#1054
            Width = 13
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STAGE_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1045#1090#1072#1087'|'#1045#1090#1058#1055
            Width = 52
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TO_ENTER_DETAIL_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072' '#1042#1093#1086#1076
            Width = 44
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AVAILABLE_DETAIL_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1053#1072#1083#1080#1095'- '#1085#1086
            Width = 44
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OUT_WASTE_DETAIL_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1041#1083#1086#1082'.'
            Width = 36
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TO_LEAVE_DETAIL_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1047#1072' '#1048#1079#1093#1086#1076
            Width = 44
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1058#1077#1093'. '#1084'.'#1077#1076'.'
            Width = 28
          end>
      end
      object pnlHeader: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object grpPeriod: TGroupBox
          Left = 0
          Top = 0
          Width = 177
          Height = 49
          Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1080#1085#1090#1077#1088#1074#1072#1083' '
          TabOrder = 0
          inline frDateInterval: TfrDateIntervalFrame
            Left = 16
            Top = 16
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            TabStop = True
            inherited dsData: TDataSource
              DataSet = pdsGridDataParams
            end
          end
        end
        object gbDept: TGroupBox
          Left = 184
          Top = 0
          Width = 361
          Height = 49
          Caption = ' '#1045#1090#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077' '
          TabOrder = 1
          object edtChosenDeptName: TDBEdit
            Left = 8
            Top = 16
            Width = 249
            Height = 21
            Color = clBtnFace
            DataField = '_CHOSEN_NODE_NAME'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 0
          end
          object edtChosenDeptNo: TDBEdit
            Left = 264
            Top = 16
            Width = 89
            Height = 21
            Color = clBtnFace
            DataField = '_CHOSEN_NODE_NO'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conModelReports
    FieldDefs = <
      item
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLMS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_MODEL_STAGE_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_AUTO_MOVEMENT'
        DataType = ftFloat
      end
      item
        Name = 'IS_AUTO_RECEIVING_STAGE'
        DataType = ftFloat
      end
      item
        Name = 'TREATMENT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'TREATMENT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'EFFECTIVE_TREATMENT_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EFFECTIVE_TREATMENT_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EFFECTIVE_TREATMENT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_LATE'
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
        Name = 'NO_AS_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NO_AS_FORMATED_TEXT'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NO_AS_FORMATED_TEXT_EX'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FORK_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CLIENT_DETAIL_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'LINE_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTION_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'SALE_BRANCH_NO'
        DataType = ftFloat
      end
      item
        Name = 'IS_WASTE_COMPENSATOR'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'STAGE_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STAGE_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'STAGE_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
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
        Name = 'HAS_DOCUMENTATION'
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
        Name = 'IS_FIRST_STAGE_IN_MLL'
        DataType = ftFloat
      end
      item
        Name = 'IS_LAST_STAGE_IN_MLL'
        DataType = ftFloat
      end
      item
        Name = 'MLMSO_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLMSO_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NEXT_OPERATION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WASTED_BEFORE_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'IN_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OUT_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OUT_WASTE_DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'IS_RECORD_CHANGED'
        DataType = ftFloat
      end
      item
        Name = 'TO_ENTER_DETAIL_TECH_QUANTITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'AVAILABLE_DETAIL_TECH_QUANTITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TO_LEAVE_DETAIL_TECH_QUANTITY'
        Attributes = [faReadonly]
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
        Name = 'END_DATE'
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
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
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
        DataType = ftWideString
        Name = 'MLL_NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
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
        DataType = ftFloat
        Name = 'IS_SALE_STATE'
        ParamType = ptInput
        Value = '0'
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
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OPERATION_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AVAILABLE_QUANTITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AVAILABLE_QUANTITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AVAILABLE_QUANTITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AVAILABLE_QUANTITY_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'RESULT_PRODUCT_CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DETAIL_CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvStageLevelTasks'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object cdsGridDataML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsGridDataIS_AUTO_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_AUTO_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_AUTO_RECEIVING_STAGE: TAbmesFloatField
      FieldName = 'IS_AUTO_RECEIVING_STAGE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataTREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_BEGIN_DATE'
    end
    object cdsGridDataTREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'TREATMENT_END_DATE'
    end
    object cdsGridDataTREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'TREATMENT_WORKDAYS'
    end
    object cdsGridDataEFFECTIVE_TREATMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'EFFECTIVE_TREATMENT_BEGIN_DATE'
    end
    object cdsGridDataEFFECTIVE_TREATMENT_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'EFFECTIVE_TREATMENT_END_DATE'
    end
    object cdsGridDataEFFECTIVE_TREATMENT_WORKDAYS: TAbmesFloatField
      FieldName = 'EFFECTIVE_TREATMENT_WORKDAYS'
    end
    object cdsGridDataIS_LATE: TAbmesFloatField
      FieldName = 'IS_LATE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsGridDataNO_AS_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_TEXT'
      Size = 100
    end
    object cdsGridDataNO_AS_FORMATED_TEXT: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT'
      Size = 100
    end
    object cdsGridDataNO_AS_FORMATED_TEXT_EX: TAbmesWideStringField
      FieldName = 'NO_AS_FORMATED_TEXT_EX'
      Size = 100
    end
    object cdsGridDataFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsGridDataDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsGridDataDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsGridDataDETAIL_TECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataCLIENT_DETAIL_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_DETAIL_NAME'
      Size = 250
    end
    object cdsGridDataLINE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'LINE_DETAIL_TECH_QUANTITY'
    end
    object cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsGridDataPRODUCTION_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_IDENTIFIER'
      Size = 188
    end
    object cdsGridDataSALE_BRANCH_NO: TAbmesFloatField
      FieldName = 'SALE_BRANCH_NO'
    end
    object cdsGridDataIS_WASTE_COMPENSATOR: TAbmesFloatField
      FieldName = 'IS_WASTE_COMPENSATOR'
      DisplayBoolValues = #1057';'#1054
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsGridDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsGridDataSTAGE_DEPT_CODE: TAbmesFloatField
      FieldName = 'STAGE_DEPT_CODE'
    end
    object cdsGridDataSTAGE_DEPT_NAME: TAbmesWideStringField
      FieldName = 'STAGE_DEPT_NAME'
      Size = 100
    end
    object cdsGridDataSTAGE_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STAGE_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object cdsGridDataIS_FIRST_STAGE_IN_MLL: TAbmesFloatField
      FieldName = 'IS_FIRST_STAGE_IN_MLL'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_LAST_STAGE_IN_MLL: TAbmesFloatField
      FieldName = 'IS_LAST_STAGE_IN_MLL'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMLMSO_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataMLMSO_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMSO_OBJECT_CODE'
    end
    object cdsGridDataOPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'OPERATION_TYPE_CODE'
    end
    object cdsGridDataNEXT_OPERATION_TYPE_CODE: TAbmesFloatField
      FieldName = 'NEXT_OPERATION_TYPE_CODE'
    end
    object cdsGridDataWASTED_BEFORE_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'WASTED_BEFORE_TECH_QUANTITY'
    end
    object cdsGridDataIN_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'IN_DETAIL_TECH_QUANTITY'
    end
    object cdsGridDataOUT_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_DETAIL_TECH_QUANTITY'
    end
    object cdsGridDataOUT_WASTE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_WASTE_DETAIL_TECH_QUANTITY'
    end
    object cdsGridDataIS_RECORD_CHANGED: TAbmesFloatField
      FieldName = 'IS_RECORD_CHANGED'
    end
    object cdsGridDataTO_ENTER_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TO_ENTER_DETAIL_TECH_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.###'
    end
    object cdsGridDataAVAILABLE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'AVAILABLE_DETAIL_TECH_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.###'
    end
    object cdsGridDataTO_LEAVE_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TO_LEAVE_DETAIL_TECH_QUANTITY'
      ReadOnly = True
      DisplayFormat = ',0.###'
    end
    object cdsGridData_STATUS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_STATUS'
      Size = 5
      Calculated = True
    end
    object cdsGridData_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1045#1090#1072#1087#1085#1080' '#1047#1072#1076#1072#1085#1080#1103
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actToggleClientData: TAction
      GroupIndex = 9
      Hint = #1050#1057#1063' / '#1054#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072' '#1050#1057#1063' '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 24
      OnExecute = actToggleClientDataExecute
      OnUpdate = actToggleClientDataUpdate
    end
    object actModelStatus: TAction
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      Hint = #1057#1083#1077#1076#1077#1085#1077' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083
      ImageIndex = 18
      OnExecute = actModelStatusExecute
      OnUpdate = actModelStatusUpdate
    end
    object actOperations: TAction
      Caption = #1055'/'#1054' '#1056#1077#1076' '#1086#1090' '#1054#1087#1077#1088#1072#1094#1080#1080'...'
      Hint = #1055#1083#1072#1085#1086#1074#1086'-'#1054#1090#1095#1077#1090#1077#1085' '#1056#1077#1076' '#1086#1090' '#1054#1087#1077#1088#1072#1094#1080#1080
      OnExecute = actOperationsExecute
      OnUpdate = actOperationsUpdate
    end
    object actInputOutput: TAction
      Caption = #1042#1061#1054#1044' '#1080' '#1048#1047#1061#1054#1044'...'
      Hint = #1042#1061#1054#1044' '#1080' '#1048#1047#1061#1054#1044' '#1085#1072' '#1045#1090#1072#1087
      OnExecute = actInputOutputExecute
      OnUpdate = actInputOutputUpdate
    end
    object actNewOrganizationMovement: TAction
      Caption = #1082#1098#1084' '#1057#1083#1077#1076#1074#1072#1097' '#1045#1090#1072#1087'...'
      OnExecute = actNewOrganizationMovementExecute
      OnUpdate = actNewOrganizationMovementUpdate
    end
    object actNewWasteMovement: TAction
      Caption = #1082#1098#1084' '#1041#1083#1086#1082#1080#1088#1072#1085#1077'...'
      OnExecute = actNewWasteMovementExecute
      OnUpdate = actNewWasteMovementUpdate
    end
    object actNewMovement: TAction
      Caption = #1053#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
      OnExecute = actNewMovementExecute
      OnUpdate = actNewMovementUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    object pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
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
    object pdsGridDataParamsMLL_NO_AS_TEXT: TAbmesWideStringField
      DisplayLabel = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
      FieldName = 'MLL_NO_AS_TEXT'
      Size = 250
    end
    object pdsGridDataParamsMLL_FORK_NO: TAbmesFloatField
      DisplayLabel = #1056#1082
      FieldName = 'MLL_FORK_NO'
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1045#1090#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077
      FieldName = 'CHOSEN_DEPTS'
      Required = True
      OnChange = pdsGridDataParamsCHOSEN_DEPTSChange
      Size = 4000
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1045#1090#1072#1087#1085#1086' '#1047#1072#1076#1072#1085#1080#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1045#1090#1072#1087#1085#1086' '#1047#1072#1076#1072#1085#1080#1077' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      Required = True
    end
    object pdsGridDataParamsOPERATION_STATUS: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'OPERATION_STATUS'
    end
    object pdsGridDataParamsAVAILABLE_QUANTITY_STATUS: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1045#1090#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077
      FieldName = 'AVAILABLE_QUANTITY_STATUS'
    end
    object pdsGridDataParamsRESULT_PRODUCT_CHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055#1042
      FieldName = 'RESULT_PRODUCT_CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsDETAIL_CHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1050#1057#1063
      FieldName = 'DETAIL_CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'SALE_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'SALE_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_CHOSEN_NODE_CODE: TAbmesFloatField
      FieldName = '_CHOSEN_NODE_CODE'
      ProviderFlags = [pfInWhere]
    end
    object pdsGridDataParams_CHOSEN_NODE_NAME: TAbmesWideStringField
      FieldName = '_CHOSEN_NODE_NAME'
      ProviderFlags = [pfInWhere]
      Size = 50
    end
    object pdsGridDataParams_CHOSEN_NODE_NO: TAbmesWideStringField
      FieldName = '_CHOSEN_NODE_NO'
      ProviderFlags = [pfInWhere]
    end
    object pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Calculated = True
    end
    object pdsGridDataParamsIS_SALE_STATE: TAbmesFloatField
      FieldName = 'IS_SALE_STATE'
    end
    object pdsGridDataParamsOWNER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'OWNER_COMPANY_CODE'
    end
    object pdsGridDataParamsOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 176
    Top = 184
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 208
    Top = 184
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object pmNewMovement: TPopupMenu
    Left = 240
    Top = 352
    object miNewOrganizationMovement: TMenuItem
      Action = actNewOrganizationMovement
    end
    object miNewWasteMovement: TMenuItem
      Action = actNewWasteMovement
    end
  end
end
