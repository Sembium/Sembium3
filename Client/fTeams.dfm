inherited fmTeams: TfmTeams
  Left = 301
  Top = 153
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1082#1080#1087#1080
  ClientHeight = 471
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 436
    Width = 793
    inherited pnlOKCancel: TPanel
      Left = 525
      TabOrder = 0
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 436
      TabOrder = 5
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 704
      TabOrder = 1
      Visible = False
    end
    object btnAddData: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actInsertRecord
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 2
    end
    object btnDeleteData: TBitBtn
      Left = 120
      Top = 2
      Width = 105
      Height = 25
      Action = actDelRecord
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 3
    end
    object btnEditData: TBitBtn
      Left = 232
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
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
      TabOrder = 4
    end
  end
  inherited pnlMain: TPanel
    Width = 793
    Height = 436
    inherited sptDetail: TSplitter
      Top = 256
      Width = 777
    end
    inherited pnlDetailGrid: TPanel
      Top = 259
      Width = 777
      inherited pnlDetailNavigator: TPanel
        Width = 777
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 96
        end
        object tlbEmployeeDoc: TToolBar
          Left = 128
          Top = 0
          Width = 100
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 2
          object sepBeforeEmployeeDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblEmployeeDoc: TLabel
            Left = 8
            Top = 0
            Width = 55
            Height = 24
            Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
            Layout = tlCenter
          end
          object btnEmployeeDoc: TToolButton
            Left = 63
            Top = 0
            Action = actEmployeeDoc
          end
        end
        object tlbDoc: TToolBar
          Left = 228
          Top = 0
          Width = 82
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeCompanyDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblCompanyDoc: TLabel
            Left = 8
            Top = 0
            Width = 37
            Height = 24
            Caption = ' '#1057#1048#1063#1048' '
            Layout = tlCenter
          end
          object btnCompanyDoc: TToolButton
            Left = 45
            Top = 0
            Action = actCompanyDoc
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 777
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        UseMultiTitle = True
        VTitleMargin = 6
        OnSortMarkingChanged = grdDetailSortMarkingChanged
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 295
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 272
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1054#1088#1063' '#1085#1072' '#1044#1083'. '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
            Width = 71
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1054#1088#1075'. '#1057#1084#1103#1085#1072
            Width = 38
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 777
      Height = 248
      inherited pnlNavigator: TPanel
        Width = 777
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Width = 225
          AutoSize = False
          ButtonWidth = 23
          inherited btnPrintOnNavigator: TToolButton
            Left = 31
          end
          object sepBeforeTeamDoc: TToolButton
            Left = 54
            Top = 0
            Width = 8
            Caption = 'sepBeforeTeamDoc'
            ImageIndex = 84
            Style = tbsSeparator
          end
          object lblTeamDoc: TLabel
            Left = 62
            Top = 0
            Width = 31
            Height = 24
            Caption = ' '#1045#1082#1080#1087' '
            Layout = tlCenter
          end
          object btnTeamDoc: TSpeedButton
            Left = 93
            Top = 0
            Width = 37
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1045#1082#1080#1087
            Action = actTeamDoc
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
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 777
        Height = 224
        UseMultiTitle = True
        VTitleMargin = 6
        Columns = <
          item
            EditButtons = <>
            FieldName = 'IS_ACTIVE'
            Footers = <>
            Title.Caption = #1057#1090#1072' '#1090#1091#1089
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_NO'
            Footers = <>
            Title.Alignment = taRightJustify
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_NAME'
            Footers = <>
            Width = 184
          end
          item
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1048' '#1048' '#1054
            Width = 13
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'DEFINED_EMPLOYEE_COUNT'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'EMP_WORKDAY_EFFECTIVE_HOURS'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_PROFESSIONS'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080' '#1085#1072' '#1045#1082#1080#1087
            Width = 259
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'TEAM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NO'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DEFINED_EMPLOYEE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'EMP_WORKDAY_DURATION_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMP_WORKDAY_DENSITY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'EMP_WORKDAY_EFFECTIVE_HOURS'
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
        Name = 'HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_PROFESSIONS'
        DataType = ftWideString
        Size = 250
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TEAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TEAM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvTeams'
    object cdsGridDataTEAM_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataTEAM_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'TEAM_NO'
      Required = True
    end
    object cdsGridDataTEAM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'TEAM_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1041#1088#1080#1075#1072#1076#1072
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsGridDataIS_ACTIVE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'IS_ACTIVE'
      Required = True
      DisplayBoolValues = #1040#1082#1090'.;'#1055#1072#1089'.'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1085#1072' '#1063#1080#1089#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1045#1082#1080#1087
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object cdsGridDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095')'
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object cdsGridDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090' (%)'
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
      OnGetText = cdsGridDataEMP_WORKDAY_DENSITY_PERCENTGetText
    end
    object cdsGridDataEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1085#1072' '#1044#1085#1077#1074#1085#1072' '#1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1044#1056#1054#1088' ('#1095')'
      FieldName = 'EMP_WORKDAY_EFFECTIVE_HOURS'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1048#1048#1054
      FieldName = 'HAS_DOC'
      DisplayBoolValues = 'i'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEMPLOYEE_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      FieldName = 'EMPLOYEE_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataTEAM_PROFESSIONS: TAbmesWideStringField
      DisplayLabel = #1052#1085#1086#1078#1077#1089#1090#1074#1086' '#1086#1090' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
      FieldName = 'TEAM_PROFESSIONS'
      Size = 250
    end
  end
  inherited alActions: TActionList
    Left = 120
    Top = 0
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1082#1080#1087#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actTeamDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1041#1088#1080#1075#1072#1076#1072
      OnExecute = actTeamDocExecute
      OnUpdate = actTeamDocUpdate
    end
    object actEmployeeDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
      OnExecute = actEmployeeDocExecute
      OnUpdate = actEmployeeDocUpdate
    end
    object actCompanyDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1057#1048#1063#1048' '#1055#1072#1088#1090#1085#1100#1086#1088
      OnExecute = actCompanyDocExecute
      OnUpdate = actCompanyDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsTEAM_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'TEAM_NO'
    end
    object pdsGridDataParamsTEAM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'TEAM_NAME'
      Size = 255
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvTeamMembers'
    BeforeOpen = cdsDetailBeforeOpen
    object cdsDetailTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsDetailEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDetailEMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsDetailEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1048#1048#1054
      FieldName = 'HAS_DOCUMENTATION'
      DisplayFormat = 'i'
      FieldValueType = fvtBoolean
    end
    object cdsDetailOCCUPATION_NAME: TAbmesWideStringField
      DisplayLabel = #1044#1083#1098#1078#1085#1086#1089#1090
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsDetailSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetailCOMPANY_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_BRANCH_CODE'
    end
    object cdsDetailCOMPANY_DOC_CODE: TAbmesFloatField
      FieldName = 'COMPANY_DOC_CODE'
    end
    object cdsDetailCOMPANY_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'COMPANY_HAS_DOCUMENTATION'
    end
  end
  inherited tmrMaster: TTimer
    Left = 400
  end
end
