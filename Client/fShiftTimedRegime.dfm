inherited fmShiftTimedRegime: TfmShiftTimedRegime
  Left = 427
  Top = 287
  Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1056#1077#1078#1080#1084' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090' - %s'
  ClientHeight = 204
  ClientWidth = 305
  ExplicitWidth = 311
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Top = 56
    Width = 289
    Height = 105
    ExplicitTop = 56
    ExplicitWidth = 321
    ExplicitHeight = 105
  end
  object lblDateIntervalFrame: TLabel [1]
    Left = 16
    Top = 64
    Width = 108
    Height = 13
    Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077
  end
  object lblCycleDurationDays: TLabel [2]
    Left = 176
    Top = 64
    Width = 106
    Height = 13
    Caption = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
  end
  object lblShiftRegimeNo: TLabel [3]
    Left = 8
    Top = 8
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object lblShiftRegimeName: TLabel [4]
    Left = 80
    Top = 8
    Width = 35
    Height = 13
    Caption = #1056#1077#1078#1080#1084
  end
  inherited pnlBottomButtons: TPanel
    Top = 169
    Width = 305
    TabOrder = 7
    ExplicitTop = 169
    ExplicitWidth = 337
    inherited pnlOKCancel: TPanel
      Left = 37
      ExplicitLeft = 69
    end
    inherited pnlClose: TPanel
      Left = -52
      ExplicitLeft = -20
    end
    inherited pnlApply: TPanel
      Left = 216
      Visible = False
      ExplicitLeft = 248
    end
  end
  object chkCalendarOffDays: TAbmesDBCheckBox [6]
    Left = 16
    Top = 112
    Width = 233
    Height = 17
    Caption = #1055#1086#1083#1079#1074#1072' '#1055#1086#1095#1080#1074#1085#1080' '#1076#1085#1080' '#1087#1086' '#1088#1072#1073#1086#1090#1077#1085' '#1082#1072#1083#1077#1085#1076#1072#1088
    DataField = 'FOLLOWS_CALENDAR_OFFDAYS'
    DataSource = dsData
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  inline frDateIntervalFrame: TfrDateIntervalFrame [7]
    Left = 16
    Top = 80
    Width = 145
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 145
    Constraints.MinHeight = 21
    Constraints.MinWidth = 145
    TabOrder = 2
    ExplicitLeft = 16
    ExplicitTop = 80
  end
  object edtCycleDurationDays: TDBEdit [8]
    Left = 176
    Top = 80
    Width = 65
    Height = 21
    DataField = 'CYCLE_DURATION_DAYS'
    DataSource = dsData
    TabOrder = 3
  end
  object edtShiftRegimeNo: TDBEdit [9]
    Left = 8
    Top = 24
    Width = 65
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SHIFT_REGIME_NO'
    DataSource = dsMaster
    ReadOnly = True
    TabOrder = 0
  end
  object edtShiftRegimeName: TDBEdit [10]
    Left = 80
    Top = 24
    Width = 217
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'SHIFT_REGIME_NAME'
    DataSource = dsMaster
    ReadOnly = True
    TabOrder = 1
  end
  object chkIsOvertime: TAbmesDBCheckBox [11]
    Left = 16
    Top = 136
    Width = 97
    Height = 17
    Caption = #1044#1086#1087#1098#1083#1085#1080#1090#1077#1083#1077#1085
    DataField = 'IS_OVERTIME'
    DataSource = dsData
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object cbIsCycleOnWorkdaysOnly: TDBComboBox [12]
    Left = 240
    Top = 80
    Width = 49
    Height = 21
    Style = csDropDownList
    DataField = 'IS_CYCLE_ON_WORKDAYS_ONLY'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      #1082'. '#1076'.'
      #1088'. '#1076'.')
    TabOrder = 4
    OnChange = cbIsCycleOnWorkdaysOnlyChange
  end
  inherited alActions: TActionList [13]
    inherited actForm: TAction
      Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1056#1077#1078#1080#1084' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090' - %s'
    end
  end
  inherited dsData: TDataSource [15]
  end
  object dsMaster: TDataSource
    Left = 216
    Top = 32
  end
end
