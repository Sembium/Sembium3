inherited fmMonthTeam: TfmMonthTeam
  Left = 273
  Top = 205
  ActiveControl = cbTeam
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1045#1082#1080#1087#1085#1086' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1058#1088#1091#1076#1072' - %s'
  ClientHeight = 499
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 464
    Width = 793
    inherited pnlOKCancel: TPanel
      Left = 525
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 436
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 704
      TabOrder = 3
      Visible = False
    end
    object btnEditMonthTeamEmployee: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEditMonthTeamEmployee
      Caption = #1059#1095#1072#1089#1090#1080#1077'...'
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
  end
  object pnlStuff: TPanel [1]
    Left = 8
    Top = 8
    Width = 777
    Height = 113
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    object lblYear: TLabel
      Left = 312
      Top = 16
      Width = 36
      Height = 13
      Caption = #1043#1086#1076#1080#1085#1072
    end
    object lblBaseTeam: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 13
      Caption = #1041#1072#1079#1086#1074' '#1045#1082#1080#1087
      FocusControl = edtTeamNo
    end
    object lblMonthWorkdayCount: TLabel
      Left = 488
      Top = 16
      Width = 43
      Height = 13
      Caption = #1056#1072#1073'. '#1076#1085#1080
      FocusControl = edtMonthWorkdayCount
    end
    object lblBaseCurrencyAbbrev1: TLabel
      Left = 629
      Top = 35
      Width = 22
      Height = 13
      AutoSize = False
      Caption = 'lblBaseCurrencyAbbrev1'
    end
    object lblMonthTeamEarnings: TLabel
      Left = 552
      Top = 3
      Width = 63
      Height = 26
      Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072#13#10#1058#1088#1091#1076#1072' '#1087#1086' '#1048#1056
    end
    object lblOverridingTeamEarning: TLabel
      Left = 664
      Top = 3
      Width = 101
      Height = 26
      Caption = #1050#1086#1088#1080#1075#1080#1088#1072#1085#1072' '#1054#1094#1077#1085#1082#1072#13#10#1085#1072' '#1058#1088#1091#1076#1072
    end
    object lblBaseCurrencyAbbrev2: TLabel
      Left = 741
      Top = 35
      Width = 22
      Height = 13
      AutoSize = False
      Caption = 'lblBaseCurrencyAbbrev2'
    end
    object lblEmpWorkdayDurationHours: TLabel
      Left = 144
      Top = 64
      Width = 120
      Height = 13
      Caption = #1055#1088#1086#1076#1098#1083#1078'. '#1085#1072' '#1042#1088'. '#1057#1084#1103#1085#1072
      FocusControl = edtEmpWorkdayDurationHours
    end
    object lblHours: TLabel
      Left = 243
      Top = 84
      Width = 23
      Height = 13
      Caption = #1095#1072#1089#1072
    end
    object lblEmpWorkdayDensity: TLabel
      Left = 280
      Top = 64
      Width = 119
      Height = 13
      Caption = #1055#1083#1098#1090#1085#1086#1089#1090' '#1085#1072' '#1042#1088'. '#1057#1084#1103#1085#1072
      FocusControl = edtEmpWorkdayDensity
    end
    object lblPercents: TLabel
      Left = 395
      Top = 84
      Width = 8
      Height = 13
      Caption = '%'
    end
    object lblDefinedEmployeeCount: TLabel
      Left = 16
      Top = 64
      Width = 105
      Height = 13
      Caption = #1056#1072#1079#1095#1077#1090#1085#1072' '#1063#1080#1089#1083#1077#1085#1086#1089#1090
      FocusControl = edtDefinedEmployeeCount
    end
    object lblEmpWorkdayEffectiveHours: TLabel
      Left = 416
      Top = 64
      Width = 150
      Height = 13
      Caption = #1056#1072#1079#1095'. '#1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1044#1056#1054#1088
      FocusControl = edtEmpWorkdayEffectiveHours
    end
    object lblHoursADay: TLabel
      Left = 515
      Top = 84
      Width = 46
      Height = 13
      Caption = #1095#1072#1089#1072'/'#1076#1077#1085
    end
    object lblEffectiveEarning: TLabel
      Left = 616
      Top = 64
      Width = 150
      Height = 13
      Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1103#1085' '#1058#1088#1091#1076
    end
    object lblBaseCurrencyAbbrev3: TLabel
      Left = 741
      Top = 84
      Width = 22
      Height = 13
      AutoSize = False
      Caption = 'lblBaseCurrencyAbbrev3'
    end
    object cbTeam: TJvDBLookupCombo
      Left = 56
      Top = 32
      Width = 201
      Height = 21
      DeleteKeyClear = False
      DataField = 'TEAM_CODE'
      DataSource = dsData
      LookupField = 'TEAM_CODE'
      LookupDisplay = 'TEAM_NAME'
      LookupSource = dsTeams
      TabOrder = 1
    end
    inline frMonth: TfrMonth
      Left = 376
      Top = 16
      Width = 105
      Height = 37
      TabOrder = 4
      TabStop = True
      inherited lblMonth: TLabel
        Width = 33
      end
    end
    object edtYear: TDBNumberEditEh
      Left = 312
      Top = 32
      Width = 57
      Height = 21
      DataField = 'YEAR'
      DataSource = dsData
      DecimalPlaces = 0
      EditButton.Style = ebsUpDownEh
      EditButton.Visible = True
      EditButtons = <>
      TabOrder = 3
      Visible = True
    end
    object tlbTeamDocs: TToolBar
      Left = 257
      Top = 31
      Width = 37
      Height = 24
      Align = alNone
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'tlbTopGridButtons'
      Images = dmMain.ilActions
      TabOrder = 2
      object btnTeamDocs: TSpeedButton
        Left = 0
        Top = 0
        Width = 37
        Height = 24
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1041#1072#1079#1086#1074#1080#1103' '#1045#1082#1080#1087
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
        OnClick = btnTeamDocsClick
      end
    end
    object edtMonthWorkdayCount: TDBEdit
      Left = 488
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = '_MONTH_WORKDAY_COUNT'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 5
    end
    object edtTeamNo: TDBEdit
      Left = 16
      Top = 32
      Width = 41
      Height = 21
      DataField = 'TEAM_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtMonthTeamEarnings: TDBEdit
      Left = 552
      Top = 32
      Width = 73
      Height = 21
      Color = clBtnFace
      DataField = 'MONTH_TEAM_EARNINGS'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 6
    end
    object edtOverridingTeamEarning: TDBEdit
      Left = 664
      Top = 32
      Width = 73
      Height = 21
      DataField = 'OVERRIDING_TEAM_EARNING'
      DataSource = dsData
      TabOrder = 7
    end
    object edtEmpWorkdayDurationHours: TDBEdit
      Left = 144
      Top = 80
      Width = 97
      Height = 21
      DataField = 'EMP_WORKDAY_DURATION_HOURS'
      DataSource = dsData
      TabOrder = 9
    end
    object edtEmpWorkdayDensity: TDBEdit
      Left = 280
      Top = 80
      Width = 113
      Height = 21
      DataField = 'EMP_WORKDAY_DENSITY_PERCENT'
      DataSource = dsData
      TabOrder = 10
    end
    object edtDefinedEmployeeCount: TDBEdit
      Left = 16
      Top = 80
      Width = 105
      Height = 21
      DataField = 'DEFINED_EMPLOYEE_COUNT'
      DataSource = dsData
      TabOrder = 8
    end
    object edtEmpWorkdayEffectiveHours: TDBEdit
      Left = 416
      Top = 80
      Width = 97
      Height = 21
      Color = clBtnFace
      DataField = '_EMP_WORKDAY_EFFECTIVE_HOURS'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 11
    end
    object edtEffectiveTeamEarning: TDBEdit
      Left = 616
      Top = 80
      Width = 121
      Height = 21
      Color = clBtnFace
      DataField = '_EFFECTIVE_TEAM_EARNING'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 12
    end
  end
  inline frMonthTeamEmployees: TDualGridFrame [2]
    Left = 8
    Top = 128
    Width = 777
    Height = 329
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 2
    TabStop = True
    inherited pnlIncluded: TPanel
      Width = 432
      Height = 329
      inherited pnlIncludedNavigator: TPanel
        Width = 432
        inherited navIncluded: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdIncluded: TAbmesDBGrid
        Width = 432
        Height = 305
        FooterFont.Name = 'Microsoft Sans Serif'
        TitleFont.Name = 'Microsoft Sans Serif'
        UseMultiTitle = True
        VTitleMargin = 5
        OnDblClick = frMonthTeamEmployeesgrdIncludedDblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1050#1086#1076
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1048#1084#1077
            Width = 111
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
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1048#1048#1054
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1044#1083#1098#1078#1085#1086#1089#1090' '#1054#1089#1085#1086#1074#1085#1072
            Width = 92
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1057#1084'.'
            Title.Hint = #1057#1084#1103#1085#1072
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            Color = 15329769
            EditButtons = <>
            FieldName = 'EFFICIENCY_COEF'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1050#1086#1077#1092'. '#1085#1072' '#1091#1095'.'
            Title.Hint = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1091#1095#1072#1089#1090#1080#1077
            Width = 32
          end
          item
            Color = 15329769
            EditButtons = <>
            FieldName = 'WORKDAY_COUNT'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1056#1072#1073'. '#1076#1085#1080
            Title.Hint = #1056#1072#1073#1086#1090#1085#1080' '#1095#1072#1089#1086#1074#1077
            Width = 25
          end
          item
            Color = 15329769
            EditButtons = <>
            FieldName = '_EMPLOYEE_EARNINGS'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090#1072#1074' '#1085#1072' '#1045#1082#1080#1087'|'#1048#1085#1076#1080#1074'. '#1058#1088#1091#1076
            Title.Hint = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1085#1072' '#1079#1072#1088#1072#1073#1086#1090#1082#1072
            Width = 52
          end>
      end
    end
    inherited pnlButtons: TPanel
      Left = 432
      Width = 24
      Height = 329
      inherited pnlProductButtons: TPanel
        Top = 88
        Width = 24
        inherited btnInclude: TSpeedButton
          Left = 0
        end
        inherited btnExclude: TSpeedButton
          Left = 0
        end
        inherited btnIncludeAll: TSpeedButton
          Left = 0
        end
        inherited btnExcludeAll: TSpeedButton
          Left = 0
        end
      end
    end
    inherited pnlExcluded: TPanel
      Left = 456
      Width = 321
      Height = 329
      inherited pnlExcludedNavigator: TPanel
        Width = 321
        inherited navExcluded: TDBColorNavigator
          Left = 225
          Hints.Strings = ()
        end
      end
      inherited grdExcluded: TAbmesDBGrid
        Width = 321
        Height = 305
        FooterFont.Name = 'Microsoft Sans Serif'
        TitleFont.Name = 'Microsoft Sans Serif'
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1050#1086#1076
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1048#1084#1077
            Width = 111
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
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1048#1048#1054
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1044#1083#1098#1078#1085#1086#1089#1090' '#1054#1089#1085#1086#1074#1085#1072
            Width = 93
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083#1080'|'#1057#1084'.'
            Title.Hint = #1057#1084#1103#1085#1072
            Title.Orientation = tohVertical
            Width = 14
          end>
      end
    end
    inherited alActions: TActionList
      Top = 232
    end
    inherited dsData: TDataSource
      DataSet = cdsMonthTeamEmployees
      Left = 64
      Top = 232
    end
    inherited dsExcluded: TDataSource
      DataSet = cdsMonthTeamNotEmployees
      Left = 512
      Top = 233
    end
  end
  object tlbMonthTeamEmployeeDocs: TToolBar [3]
    Left = 104
    Top = 128
    Width = 129
    Height = 24
    Align = alNone
    ButtonHeight = 24
    ButtonWidth = 24
    Caption = 'tlbTopGridButtons'
    Images = dmMain.ilActions
    TabOrder = 3
    object sepBeforeTeamDoc: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'sepBeforeTeamDoc'
      Style = tbsSeparator
    end
    object lblTeamDoc: TLabel
      Left = 8
      Top = 0
      Width = 55
      Height = 24
      Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
      Layout = tlCenter
    end
    object btnMonthTeamEmployeeDocs: TSpeedButton
      Left = 63
      Top = 0
      Width = 37
      Height = 24
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103#1090' '#1089#1083#1091#1078#1080#1090#1077#1083
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
      OnClick = btnMonthTeamEmployeeDocsClick
    end
  end
  object tlbMonthTeamNotEmployeeDocs: TToolBar [4]
    Left = 589
    Top = 128
    Width = 100
    Height = 24
    Align = alNone
    AutoSize = True
    ButtonHeight = 24
    ButtonWidth = 24
    Caption = 'tlbTopGridButtons'
    Images = dmMain.ilActions
    TabOrder = 4
    object lblMonthTeamNotEmployeeDocs: TLabel
      Left = 0
      Top = 0
      Width = 55
      Height = 24
      Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
      Layout = tlCenter
    end
    object btnMonthTeamNotEmployeeDocs: TSpeedButton
      Left = 55
      Top = 0
      Width = 37
      Height = 24
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103#1090' '#1089#1083#1091#1078#1080#1090#1077#1083
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
      OnClick = btnMonthTeamNotEmployeeDocsClick
    end
    object sepBeforeExcluded: TToolButton
      Left = 92
      Top = 0
      Width = 8
      Caption = 'sepBeforeExcluded'
      Style = tbsSeparator
    end
  end
  inherited alActions: TActionList [5]
    Left = 184
    inherited actForm: TAction
      Caption = #1045#1082#1080#1087#1085#1086' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1058#1088#1091#1076#1072' - %s'
    end
    object actEditMonthTeamEmployee: TAction
      Caption = #1059#1095#1072#1089#1090#1080#1077'...'
      ImageIndex = 6
      OnExecute = actEditMonthTeamEmployeeExecute
      OnUpdate = actEditMonthTeamEmployeeUpdate
    end
  end
  inherited dsData: TDataSource [6]
    Left = 152
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMonthTeam'
    OnCalcFields = cdsDataCalcFields
    Left = 120
    object cdsDataTEAM_CODE: TAbmesFloatField
      DisplayLabel = #1041#1072#1079#1086#1074' '#1077#1082#1080#1087
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsDataTEAM_CODEChange
    end
    object cdsDataTHE_MONTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_MONTH_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsDataTHE_MONTH_DATEChange
    end
    object cdsDataOVERRIDING_TEAM_EARNING: TAbmesFloatField
      FieldName = 'OVERRIDING_TEAM_EARNING'
      OnChange = cdsDataOVERRIDING_TEAM_EARNINGChange
      DisplayFormat = ',0.00'
    end
    object cdsDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1085#1072' '#1063#1080#1089#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1045#1082#1080#1087
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object cdsDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078'. '#1085#1072' '#1042#1088'. '#1057#1084#1103#1085#1072
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object cdsDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090' '#1085#1072' '#1042#1088'. '#1057#1084#1103#1085#1072
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
      OnGetText = cdsDataEMP_WORKDAY_DENSITY_PERCENTGetText
      OnSetText = cdsDataEMP_WORKDAY_DENSITY_PERCENTSetText
    end
    object cdsDataTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
      ProviderFlags = []
      OnChange = cdsDataTEAM_NOChange
      OnValidate = cdsDataTEAM_NOValidate
    end
    object cdsDataYEAR: TAbmesFloatField
      DisplayLabel = #1043#1086#1076#1080#1085#1072
      FieldName = 'YEAR'
      ProviderFlags = []
      Required = True
      OnChange = DateChange
    end
    object cdsDataMONTH: TAbmesFloatField
      DisplayLabel = #1052#1077#1089#1077#1094
      FieldName = 'MONTH'
      ProviderFlags = []
      Required = True
      OnChange = DateChange
    end
    object cdsDataMONTH_TEAM_EARNINGS: TAbmesFloatField
      FieldName = 'MONTH_TEAM_EARNINGS'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object cdsDataqryMonthTeamEmployees: TDataSetField
      FieldName = 'qryMonthTeamEmployees'
    end
    object cdsData_DOC_BRANCH_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_BRANCH_CODE'
      LookupDataSet = cdsTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'DOC_BRANCH_CODE'
      KeyFields = 'TEAM_CODE'
      Lookup = True
    end
    object cdsData_DOC_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_CODE'
      LookupDataSet = cdsTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'DOC_CODE'
      KeyFields = 'TEAM_CODE'
      Lookup = True
    end
    object cdsData_MONTH_WORKDAY_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_MONTH_WORKDAY_COUNT'
      Calculated = True
    end
    object cdsData_EFFECTIVE_TEAM_EARNING: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EFFECTIVE_TEAM_EARNING'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsData_EMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1085#1072' '#1044#1085#1077#1074#1085#1072' '#1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1044#1056#1054#1088
      FieldKind = fkCalculated
      FieldName = '_EMP_WORKDAY_EFFECTIVE_HOURS'
      Calculated = True
    end
  end
  object cdsTeamMembers: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'TEAM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'EMPLOYEE_NO'
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
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SHIFT_IDENTIFIER'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'COMPANY_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_HAS_DOCUMENTATION'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvTeamMembers'
    StoreDefs = True
    Left = 40
    Top = 336
    object cdsTeamMembersTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTeamMembersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTeamMembersEMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083#1080', '#1074#1082#1083#1102#1095#1077#1085#1080' '#1074' '#1090#1086#1079#1080' '#1077#1082#1080#1087
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
    object cdsTeamMembersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsTeamMembersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTeamMembersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsTeamMembersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsTeamMembersOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsTeamMembersSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsTeamMembersDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
  end
  object cdsTeamNotMembers: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvTeamNotMembers'
    Left = 488
    Top = 336
    object cdsTeamNotMembersTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsTeamNotMembersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsTeamNotMembersEMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083#1080', '#1085#1077#1074#1082#1083#1102#1095#1077#1085#1080' '#1074' '#1090#1086#1079#1080' '#1077#1082#1080#1087
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsTeamNotMembersEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsTeamNotMembersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTeamNotMembersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsTeamNotMembersHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsTeamNotMembersSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsTeamNotMembersOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
  end
  object cdsTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvTeams'
    Left = 112
    Top = 40
    object cdsTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTeamsTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
    end
    object cdsTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object cdsTeamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTeamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
  object dsTeams: TDataSource
    DataSet = cdsTeams
    Left = 144
    Top = 40
  end
  object cdsMonthTeamEmployees: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqryMonthTeamEmployees
    Params = <>
    OnCalcFields = cdsMonthTeamEmployeesCalcFields
    OnNewRecord = cdsMonthTeamEmployeesNewRecord
    Left = 40
    Top = 304
    object cdsMonthTeamEmployeesTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMonthTeamEmployeesTHE_MONTH_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_MONTH_DATE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMonthTeamEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMonthTeamEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 44
    end
    object cdsMonthTeamEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsMonthTeamEmployeesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsMonthTeamEmployeesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = []
    end
    object cdsMonthTeamEmployeesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsMonthTeamEmployeesEFFICIENCY_COEF: TAbmesFloatField
      DisplayLabel = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1091#1095#1072#1089#1090#1080#1077
      FieldName = 'EFFICIENCY_COEF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsMonthTeamEmployeesWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMonthTeamEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsMonthTeamEmployeesOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsMonthTeamEmployees_EMPLOYEE_EARNINGS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EMPLOYEE_EARNINGS'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsMonthTeamEmployees_SUM_EMPLOYEE_PART: TAggregateField
      FieldName = '_SUM_EMPLOYEE_PART'
      Active = True
      Expression = 'Sum(EFFICIENCY_COEF * WORKDAY_COUNT)'
    end
  end
  object cdsMonthTeamNotEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_MONTH_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMonthTeamNotEmployees'
    BeforeOpen = cdsMonthTeamNotEmployeesBeforeOpen
    Left = 488
    Top = 305
    object cdsMonthTeamNotEmployeesTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsMonthTeamNotEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsMonthTeamNotEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsMonthTeamNotEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsMonthTeamNotEmployeesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsMonthTeamNotEmployeesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsMonthTeamNotEmployeesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsMonthTeamNotEmployeesSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsMonthTeamNotEmployeesOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
  end
end
