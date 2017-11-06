inherited fmShiftRegimeCalendar: TfmShiftRegimeCalendar
  Left = 238
  Top = 158
  Caption = #1050#1072#1083#1077#1085#1076#1072#1088' '#1085#1072' '#1056#1077#1078#1080#1084' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
  ClientHeight = 619
  ClientWidth = 789
  DesignSize = (
    789
    619)
  PixelsPerInch = 96
  TextHeight = 13
  object lblShiftRegimeNo: TLabel [0]
    Left = 8
    Top = 8
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblShiftRegimeName: TLabel [1]
    Left = 56
    Top = 8
    Width = 102
    Height = 13
    Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1089#1084#1077#1085#1085#1086#1089#1090
  end
  object lblYear: TLabel [2]
    Left = 564
    Top = 8
    Width = 36
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1043#1086#1076#1080#1085#1072
  end
  object lblMonth: TLabel [3]
    Left = 636
    Top = 8
    Width = 33
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1052#1077#1089#1077#1094
  end
  object lblShiftCycles: TLabel [4]
    Left = 633
    Top = 416
    Width = 144
    Height = 13
    Caption = #1042#1088#1077#1084#1077#1074#1080' '#1057#1084#1077#1085#1080' '#1079#1072' '#1076#1077#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnShowOneInterval: TSpeedButton [5]
    Left = 488
    Top = 24
    Width = 24
    Height = 21
    Action = actShowOneInterval
    AllowAllUp = True
    GroupIndex = 1
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF00FFFFFF00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD007B7B7B00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000FF000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000FF00000000FF000000FF0000FF00000000FF000000
      FF0000FF000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000FF00000000FF000000FF0000FF00000000FF000000
      FF0000FF000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00FFFFFF0000000000FF00FF0000000000FFFF
      FF007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000FF00FF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00}
    ParentShowHint = False
    ShowHint = True
    Transparent = False
  end
  inherited pnlBottomButtons: TPanel
    Top = 584
    Width = 789
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 521
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 432
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 700
      TabOrder = 3
    end
    object btnPrintCalendar: TBitBtn
      Left = 8
      Top = 2
      Width = 81
      Height = 25
      Action = actPrintCalendar
      Caption = #1055#1077#1095#1072#1090'...'
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
  object edtShiftRegimeNo: TDBEdit [7]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SHIFT_REGIME_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtShiftRegimeName: TDBEdit [8]
    Left = 56
    Top = 24
    Width = 401
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SHIFT_REGIME_NAME'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
  end
  object edtYear: TEdit [9]
    Left = 564
    Top = 24
    Width = 49
    Height = 21
    Anchors = [akTop, akRight]
    ReadOnly = True
    TabOrder = 3
    Text = '0'
    OnChange = edtYearChange
  end
  object udYear: TUpDown [10]
    Left = 613
    Top = 24
    Width = 15
    Height = 21
    Anchors = [akTop, akRight]
    Associate = edtYear
    TabOrder = 4
    Thousands = False
    Wrap = True
  end
  object cbMonth: TComboBox [11]
    Left = 636
    Top = 24
    Width = 97
    Height = 21
    Style = csDropDownList
    Anchors = [akTop, akRight]
    DropDownCount = 12
    TabOrder = 5
    OnSelect = cbMonthSelect
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object grdCalendar: TAbmesDBGrid [12]
    Left = 8
    Top = 48
    Width = 773
    Height = 273
    Anchors = [akLeft, akTop, akRight]
    DataGrouping.GroupLevels = <>
    DataSource = dsCalendar
    DefaultDrawing = False
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Microsoft Sans Serif'
    FooterFont.Style = []
    HorzScrollBar.Visible = False
    Options = [dgTitles, dgColLines, dgRowLines]
    RowDetailPanel.Color = clBtnFace
    RowHeight = 40
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.VisibleMode = sbNeverShowEh
    OnColEnter = grdCalendarColEnter
    OnDrawColumnCell = grdCalendarDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'WEEK_NO'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_1'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_2'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_3'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_4'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_5'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_6'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'WEEK_DAY_7'
        Footers = <>
        Width = 101
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object gbShiftTimedRegime: TGroupBox [13]
    Left = 8
    Top = 328
    Width = 773
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1079#1072' '#1076#1077#1081#1089#1090#1074#1072#1097#1080#1103' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 8
    object lblTimedRegimeBeginDate: TLabel
      Left = 16
      Top = 24
      Width = 72
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1085#1072' '#1044#1072#1090#1072
    end
    object lblTimedRegimeEndDate: TLabel
      Left = 112
      Top = 24
      Width = 66
      Height = 13
      Caption = #1050#1088#1072#1081#1085#1072' '#1044#1072#1090#1072
    end
    object lblTimedRegimeDays: TLabel
      Left = 208
      Top = 24
      Width = 43
      Height = 13
      Caption = #1050#1072#1083'. '#1076#1085#1080
    end
    object lblTimedRegimeWorkdays: TLabel
      Left = 280
      Top = 24
      Width = 43
      Height = 13
      Caption = #1056#1072#1073'. '#1076#1085#1080
    end
    object lblTimedRegimeFollowsDaysOff: TLabel
      Left = 504
      Top = 24
      Width = 159
      Height = 13
      Caption = #1055#1086#1095#1080#1074#1085#1080' '#1044#1085#1080' '#1087#1086' '#1056#1072#1073'. '#1050#1072#1083#1077#1085#1076#1072#1088
    end
    object lblTimedRegimeIsOvertime: TLabel
      Left = 680
      Top = 24
      Width = 75
      Height = 13
      Caption = #1044#1086#1087#1098#1083#1085#1080#1090#1077#1083#1077#1085
    end
    object lblCycleDurationDays: TLabel
      Left = 352
      Top = 24
      Width = 106
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
    end
    object dbtIsCycleOnWorkdaysOnly: TDBText
      Left = 464
      Top = 44
      Width = 33
      Height = 17
      DataField = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      DataSource = dsMonthShiftTimedRegimes
    end
    object edtTimedRegimeBeginDate: TDBEdit
      Left = 16
      Top = 40
      Width = 81
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'BEGIN_DATE'
      DataSource = dsMonthShiftTimedRegimes
      ReadOnly = True
      TabOrder = 0
    end
    object edtTimedRegimeEndDate: TDBEdit
      Left = 112
      Top = 40
      Width = 81
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'END_DATE'
      DataSource = dsMonthShiftTimedRegimes
      ReadOnly = True
      TabOrder = 1
    end
    object edtTimedRegimeDays: TDBEdit
      Left = 208
      Top = 40
      Width = 57
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'CALENDAR_DAYS'
      DataSource = dsMonthShiftTimedRegimes
      ReadOnly = True
      TabOrder = 2
    end
    object edtTimedRegimeWorkdays: TDBEdit
      Left = 280
      Top = 40
      Width = 57
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'WORKDAYS'
      DataSource = dsMonthShiftTimedRegimes
      ReadOnly = True
      TabOrder = 3
    end
    object edtTimedRegimeFollowsDaysOff: TDBEdit
      Left = 504
      Top = 40
      Width = 161
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'FOLLOWS_CALENDAR_OFFDAYS'
      DataSource = dsMonthShiftTimedRegimes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtTimedRegimeIsOvertime: TDBEdit
      Left = 680
      Top = 40
      Width = 81
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'IS_OVERTIME'
      DataSource = dsMonthShiftTimedRegimes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object edtCycleDurationDays: TDBEdit
      Left = 352
      Top = 40
      Width = 105
      Height = 21
      TabStop = False
      Color = clBtnFace
      DataField = 'CYCLE_DURATION_DAYS'
      DataSource = dsMonthShiftTimedRegimes
      ReadOnly = True
      TabOrder = 4
    end
  end
  object grdShiftCycles: TAbmesDBGrid [14]
    Left = 8
    Top = 432
    Width = 773
    Height = 140
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataGrouping.GroupLevels = <>
    DataSource = dsShiftRegimeMonthCalendarData
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
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = grdShiftCyclesDrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SHIFT_CYCLE_NO'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'CYCLE_DURATION_DAYS'
        Footers = <>
        Title.Caption = #1057#1084#1077#1085#1085#1086#1089#1090'|'#1055#1077#1088#1080#1086#1076
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
        Footers = <>
        Title.Caption = #1057#1084#1077#1085#1085#1086#1089#1090'|'#1042#1098#1088#1093#1091
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'IS_WORK_CYCLE'
        Footers = <>
        Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1047#1072#1077#1090#1086#1089#1090
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'WORKDAY_BEGIN_TIME'
        Footers = <>
        Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1053#1072#1095#1072#1083#1086
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'WORKDAY_END_TIME'
        Footers = <>
        Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1050#1088#1072#1081
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'WORKDAY_DURATION_HOURS'
        Footers = <>
        Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095')'
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = 'WORKDAY_DENSITY_PERCENT'
        Footers = <>
        Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1055#1083#1098#1090#1085#1086#1089#1090' (%)'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'SHIFT_ABBREV'
        Footers = <>
        Width = 133
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object btnMonthIncrease: TBitBtn [15]
    Left = 736
    Top = 23
    Width = 41
    Height = 23
    Action = actMonthIncrease
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000000000000000FF00FF00FF00FF00000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
      FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 6
  end
  object btnMonthDecrease: TBitBtn [16]
    Left = 520
    Top = 23
    Width = 41
    Height = 23
    Action = actMonthDecrease
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
      FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    TabOrder = 2
  end
  object pnlNavigator: TPanel [17]
    Left = 8
    Top = 408
    Width = 137
    Height = 24
    BevelOuter = bvNone
    TabOrder = 9
    object navShiftCycles: TDBColorNavigator
      Left = 0
      Top = 0
      Width = 97
      Height = 24
      DataSource = dsShiftRegimeMonthCalendarData
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      Flat = True
      TabOrder = 0
    end
    object tlbShiftCycles: TToolBar
      Left = 97
      Top = 0
      Width = 33
      Height = 24
      Align = alLeft
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'tlbShiftCycles'
      Images = dmMain.ilActions
      TabOrder = 1
      object sepSwitchFilteredShiftCycles: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'sepSwitchFilteredShiftCycles'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object btnSwitchFilteredShiftCycles: TToolButton
        Left = 8
        Top = 0
        Action = actSwitchFilteredShiftCycles
        AllowAllUp = True
        ParentShowHint = False
        ShowHint = True
        Style = tbsCheck
      end
    end
  end
  inherited alActions: TActionList
    object actMonthIncrease: TAction
      Hint = #1052#1077#1089#1077#1094' '#1085#1072#1087#1088#1077#1076
      ImageIndex = 37
      OnExecute = actMonthIncreaseExecute
    end
    object actMonthDecrease: TAction
      Hint = #1052#1077#1089#1077#1094' '#1085#1072#1079#1072#1076
      ImageIndex = 36
      OnExecute = actMonthDecreaseExecute
    end
    object actShowOneInterval: TAction
      GroupIndex = 1
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1076#1072#1090#1080' '#1074' '#1090#1077#1082#1091#1097#1080#1103' / '#1074#1089#1080#1095#1082#1080' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080
      ImageIndex = 48
      OnExecute = actShowOneIntervalExecute
      OnUpdate = actShowOneIntervalUpdate
    end
    object actPrintCalendar: TAction
      Caption = #1055#1077#1095#1072#1090'...'
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintCalendarExecute
    end
    object actSwitchFilteredShiftCycles: TAction
      Caption = #1057#1082#1088#1080#1074#1072'/'#1055#1086#1082#1072#1079#1074#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1057#1084#1077#1085#1080' '#1073#1077#1079' '#1079#1072#1076#1072#1076#1077#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072
      Hint = #1057#1082#1088#1080#1074#1072'/'#1055#1086#1082#1072#1079#1074#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1057#1084#1077#1085#1080' '#1073#1077#1079' '#1079#1072#1076#1072#1076#1077#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072
      ImageIndex = 16
      OnExecute = actSwitchFilteredShiftCyclesExecute
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conShifts
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvShiftRegime'
    object cdsDataSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
    end
    object cdsDataSHIFT_REGIME_NO: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_NO'
    end
    object cdsDataSHIFT_REGIME_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_REGIME_NAME'
      Size = 50
    end
    object cdsDataqryShiftTimedRegime: TDataSetField
      FieldName = 'qryShiftTimedRegime'
    end
  end
  object cdsShiftRegimeCalendar: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'aggGrouping'
        Expression = 'COUNT(THE_DATE)'
        GroupingLevel = 1
        IndexName = 'idxDefault'
        Visible = False
      end>
    AggregatesActive = True
    ConnectionBroker = dmMain.conShifts
    Filter = 'SHIFT_ABBREV is not null'
    FieldDefs = <
      item
        Name = 'THE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_DAY_OFF'
        DataType = ftFloat
      end
      item
        Name = 'FOLLOWS_CALENDAR_OFFDAYS'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_CYCLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_TIMED_REGIME_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CYCLE_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_WORK_CYCLE'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAY_BEGIN_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'WORKDAY_END_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'WORKDAY_DURATION_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAY_DENSITY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_OFFICIAL_DAY_OFF'
        DataType = ftFloat
      end
      item
        Name = 'IS_CYCLE_ON_WORKDAYS_ONLY'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'THE_DATE; SHIFT_CYCLE_NO'
        GroupingLevel = 1
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvShiftRegimeCalendar'
    StoreDefs = True
    BeforeOpen = cdsShiftRegimeCalendarBeforeOpen
    Left = 8
    Top = 424
    object cdsShiftRegimeCalendarTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsShiftRegimeCalendarIS_DAY_OFF: TAbmesFloatField
      FieldName = 'IS_DAY_OFF'
      FieldValueType = fvtBoolean
    end
    object cdsShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
      FieldValueType = fvtBoolean
    end
    object cdsShiftRegimeCalendarSHIFT_CYCLE_NO: TAbmesFloatField
      DisplayLabel = #1055#1086#1088#1077#1076#1077#1085' '#1053#1086#1084#1077#1088' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CYCLE_NO'
    end
    object cdsShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
    end
    object cdsShiftRegimeCalendarCYCLE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090' ('#1082'. '#1076'.)'
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object cdsShiftRegimeCalendarIS_WORK_CYCLE: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1047#1072#1077#1090#1086#1089#1090
      FieldName = 'IS_WORK_CYCLE'
      DisplayBoolValues = #1088#1072#1073#1086#1090#1085#1072';'#1087#1086#1095#1080#1074#1072
      FieldValueType = fvtBoolean
    end
    object cdsShiftRegimeCalendarWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'WORKDAY_BEGIN_TIME'
      DisplayFormat = 'h:nn'
    end
    object cdsShiftRegimeCalendarWORKDAY_END_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081
      FieldName = 'WORKDAY_END_TIME'
      DisplayFormat = 'h:nn'
    end
    object cdsShiftRegimeCalendarWORKDAY_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095')'
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object cdsShiftRegimeCalendarWORKDAY_DENSITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090' (%)'
      FieldName = 'WORKDAY_DENSITY_PERCENT'
      OnGetText = cdsShiftRegimeCalendarWORKDAY_DENSITY_PERCENTGetText
    end
    object cdsShiftRegimeCalendarSHIFT_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object cdsShiftRegimeCalendarIS_OFFICIAL_DAY_OFF: TAbmesFloatField
      FieldName = 'IS_OFFICIAL_DAY_OFF'
      FieldValueType = fvtBoolean
    end
    object cdsShiftRegimeCalendarIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      DisplayBoolValues = #1088'. '#1076'.;'#1082'. '#1076'.'
      FieldValueType = fvtBoolean
    end
  end
  object cdsMonthShiftTimedRegimes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    FieldDefs = <
      item
        Name = 'SHIFT_TIMED_REGIME_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CALENDAR_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'CYCLE_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'FOLLOWS_CALENDAR_OFFDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_OVERTIME'
        DataType = ftFloat
      end
      item
        Name = 'IS_CYCLE_ON_WORKDAYS_ONLY'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'SHIFT_TIMED_REGIME_CODE'
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'MONTH_BEGIN_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMonthShiftTimedRegimes'
    StoreDefs = True
    BeforeOpen = cdsMonthShiftTimedRegimesBeforeOpen
    OnFilterRecord = cdsMonthShiftTimedRegimesFilterRecord
    Left = 8
    Top = 336
    object cdsMonthShiftTimedRegimesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
    end
    object cdsMonthShiftTimedRegimesBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsMonthShiftTimedRegimesEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsMonthShiftTimedRegimesCALENDAR_DAYS: TAbmesFloatField
      FieldName = 'CALENDAR_DAYS'
    end
    object cdsMonthShiftTimedRegimesWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object cdsMonthShiftTimedRegimesCYCLE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object cdsMonthShiftTimedRegimesFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsMonthShiftTimedRegimesIS_OVERTIME: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_OVERTIME'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsMonthShiftTimedRegimesIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      Required = True
      DisplayBoolValues = #1088'. '#1076'.;'#1082'. '#1076'.'
      FieldValueType = fvtBoolean
    end
  end
  object cdsDates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 16
    object cdsDatesTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsDatesDAYS_OFF: TAbmesFloatField
      FieldName = 'DAYS_OFF'
      FieldValueType = fvtBoolean
    end
    object cdsDatesSHIFTS: TAbmesWideStringField
      FieldName = 'SHIFTS'
    end
    object cdsDatesIS_COVERED: TAbmesFloatField
      FieldName = 'IS_COVERED'
      FieldValueType = fvtBoolean
    end
    object cdsDatesSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
    end
  end
  object cdsCalendar: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsCalendarAfterScroll
    Left = 8
    Top = 48
    object cdsCalendarWEEK_NO: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1057#1077#1076#1084'. No'
      FieldName = 'WEEK_NO'
    end
    object cdsCalendarWEEK_DAY_1: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_1'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_2: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_2'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_3: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_3'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_4: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_4'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_5: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_5'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_6: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_6'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_7: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'WEEK_DAY_7'
      DisplayFormat = 'd'
    end
    object cdsCalendarWEEK_DAY_1_IS_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_1_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_1'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_2_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_2_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_2'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_3_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_3_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_3'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_4_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_4_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_4'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_5_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_5_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_5'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_6_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_6_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_6'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_7_DAY_OFF: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_7_DAY_OFF'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'DAYS_OFF'
      KeyFields = 'WEEK_DAY_7'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_1_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_1_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_1'
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_2_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_2_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_2'
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_3_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_3_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_3'
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_4_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_4_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_4'
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_5_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_5_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_5'
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_6_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_6_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_6'
      Lookup = True
    end
    object cdsCalendarWEEK_DAY_7_SHIFTS: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'WEEK_DAY_7_SHIFTS'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'SHIFTS'
      KeyFields = 'WEEK_DAY_7'
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_1_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_1_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_1'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_2_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_2_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_2'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_3_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_3_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_3'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_4_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_4_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_4'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_5_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_5_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_5'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_6_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_6_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_6'
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsCalendarIS_WEEK_DAY_7_COVERED: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = 'IS_WEEK_DAY_7_COVERED'
      LookupDataSet = cdsDates
      LookupKeyFields = 'THE_DATE'
      LookupResultField = 'IS_COVERED'
      KeyFields = 'WEEK_DAY_7'
      FieldValueType = fvtBoolean
      Lookup = True
    end
  end
  object dsCalendar: TDataSource
    DataSet = cdsCalendar
    Left = 40
    Top = 48
  end
  object dsDates: TDataSource
    DataSet = cdsDates
    Left = 408
    Top = 16
  end
  object dsShiftRegimeMonthCalendarData: TDataSource
    DataSet = cdsShiftRegimeCalendar
    Left = 40
    Top = 424
  end
  object dsMonthShiftTimedRegimes: TDataSource
    DataSet = cdsMonthShiftTimedRegimes
    Left = 40
    Top = 336
  end
  object cdsSortedShiftRegimeCalendar: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'aggGrouping'
        Expression = 'COUNT(THE_DATE)'
        GroupingLevel = 1
        IndexName = 'idxDefault'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        DescFields = 'IS_WORK_CYCLE'
        Fields = 
          'THE_DATE; IS_WORK_CYCLE; WORKDAY_BEGIN_TIME; WORKDAY_END_TIME; S' +
          'HIFT_ABBREV'
        Options = [ixDescending]
        GroupingLevel = 1
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    Left = 8
    Top = 456
    object cdsSortedShiftRegimeCalendarTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsSortedShiftRegimeCalendarIS_DAY_OFF: TAbmesFloatField
      FieldName = 'IS_DAY_OFF'
      FieldValueType = fvtBoolean
    end
    object cdsSortedShiftRegimeCalendarFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
      FieldValueType = fvtBoolean
    end
    object cdsSortedShiftRegimeCalendarSHIFT_CYCLE_NO: TAbmesFloatField
      DisplayLabel = #1055#1086#1088#1077#1076#1077#1085' '#1053#1086#1084#1077#1088' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CYCLE_NO'
    end
    object cdsSortedShiftRegimeCalendarSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
    end
    object cdsSortedShiftRegimeCalendarCYCLE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090' ('#1082'. '#1076'.)'
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object cdsSortedShiftRegimeCalendarIS_WORK_CYCLE: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1047#1072#1077#1090#1086#1089#1090
      FieldName = 'IS_WORK_CYCLE'
      DisplayBoolValues = #1088#1072#1073#1086#1090#1085#1072';'#1087#1086#1095#1080#1074#1072
      FieldValueType = fvtBoolean
    end
    object cdsSortedShiftRegimeCalendarWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'WORKDAY_BEGIN_TIME'
      DisplayFormat = 'h:nn'
    end
    object cdsSortedShiftRegimeCalendarWORKDAY_END_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081
      FieldName = 'WORKDAY_END_TIME'
      DisplayFormat = 'h:nn'
    end
    object cdsSortedShiftRegimeCalendarWORKDAY_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095')'
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object cdsSortedShiftRegimeCalendarWORKDAY_DENSITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090' (%)'
      FieldName = 'WORKDAY_DENSITY_PERCENT'
      OnGetText = cdsSortedShiftRegimeCalendarWORKDAY_DENSITY_PERCENTGetText
    end
    object cdsSortedShiftRegimeCalendarSHIFT_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object cdsSortedShiftRegimeCalendarIS_OFFICIAL_DAY_OFF: TAbmesFloatField
      FieldName = 'IS_OFFICIAL_DAY_OFF'
      FieldValueType = fvtBoolean
    end
  end
end
