inherited fmShiftCycleBreak: TfmShiftCycleBreak
  Caption = #1055#1086#1095#1080#1074#1082#1072' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072' - %s'
  ClientHeight = 140
  ClientWidth = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 377
    Height = 89
  end
  object lblBeginTime: TLabel [1]
    Left = 24
    Top = 24
    Width = 37
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1086
    FocusControl = edtBeginTime
  end
  object lblEndTime: TLabel [2]
    Left = 136
    Top = 24
    Width = 25
    Height = 13
    Caption = #1050#1088#1072#1081
    FocusControl = edtEndTime
  end
  object lblDurationHoursMeasure: TLabel [3]
    Left = 352
    Top = 44
    Width = 23
    Height = 13
    Caption = #1095#1072#1089#1072
  end
  object lblDurationHours: TLabel [4]
    Left = 248
    Top = 24
    Width = 93
    Height = 13
    Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
    FocusControl = edtDurationHours
  end
  inherited pnlBottomButtons: TPanel
    Top = 105
    Width = 393
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 125
    end
    inherited pnlClose: TPanel
      Left = 36
    end
    inherited pnlApply: TPanel
      Left = 304
      Visible = False
    end
  end
  object edtBeginTime: TDBEdit [6]
    Left = 24
    Top = 40
    Width = 97
    Height = 21
    DataField = 'BREAK_BEGIN_TIME'
    DataSource = dsData
    TabOrder = 0
  end
  object edtEndTime: TDBEdit [7]
    Left = 136
    Top = 40
    Width = 97
    Height = 21
    DataField = 'BREAK_END_TIME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtDurationHours: TDBEdit [8]
    Left = 248
    Top = 40
    Width = 97
    Height = 21
    DataField = 'BREAK_DURATION_HOURS'
    DataSource = dsData
    TabOrder = 2
  end
  object chbIsWorktime: TAbmesDBCheckBox [9]
    Left = 24
    Top = 72
    Width = 105
    Height = 17
    Caption = #1042' '#1088#1072#1073#1086#1090#1085#1086' '#1074#1088#1077#1084#1077
    DataField = 'IS_WORKTIME'
    DataSource = dsData
    TabOrder = 3
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1086#1095#1080#1074#1082#1072' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072' - %s'
    end
  end
end
