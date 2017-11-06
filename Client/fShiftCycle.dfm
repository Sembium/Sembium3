inherited fmShiftCycle: TfmShiftCycle
  Left = 311
  Top = 186
  Caption = #1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072' - %s'
  ClientHeight = 348
  ClientWidth = 553
  PixelsPerInch = 96
  TextHeight = 13
  object lblArrow: TLabel [0]
    Left = 359
    Top = 86
    Width = 33
    Height = 81
    AutoSize = False
    Caption = #172
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Symbol'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnlBottomButtons: TPanel
    Top = 313
    Width = 553
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 285
    end
    inherited pnlClose: TPanel
      Left = 196
    end
    inherited pnlApply: TPanel
      Left = 464
      Visible = False
    end
  end
  object gbShiftCycle: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 345
    Height = 297
    Caption = ' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072' '
    TabOrder = 0
    object lblShiftNo: TLabel
      Left = 16
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object edtShiftNo: TDBEdit
      Left = 16
      Top = 32
      Width = 97
      Height = 21
      DataField = 'SHIFT_CYCLE_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object grpWorkDescription: TGroupBox
      Left = 8
      Top = 64
      Width = 329
      Height = 225
      Caption = '      '
      TabOrder = 1
      object lblBeginTime: TLabel
        Left = 8
        Top = 24
        Width = 37
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1086
      end
      object lblEndTime: TLabel
        Left = 56
        Top = 24
        Width = 25
        Height = 13
        Caption = #1050#1088#1072#1081
      end
      object lblHours: TLabel
        Left = 219
        Top = 44
        Width = 23
        Height = 13
        Caption = #1095#1072#1089#1072
      end
      object lblPercents: TLabel
        Left = 307
        Top = 44
        Width = 8
        Height = 13
        Caption = '%'
      end
      object lblDurationHours: TLabel
        Left = 112
        Top = 24
        Width = 50
        Height = 13
        Caption = #1055#1088#1086#1076#1098#1083#1078'.'
      end
      object lblDensity: TLabel
        Left = 256
        Top = 24
        Width = 49
        Height = 13
        Caption = #1055#1083#1098#1090#1085#1086#1089#1090
      end
      object lblWorkdayWorktimeHours: TLabel
        Left = 168
        Top = 24
        Width = 41
        Height = 13
        Caption = #1047#1072#1077#1090#1086#1089#1090
      end
      object edtBeginTime: TDBEdit
        Left = 8
        Top = 40
        Width = 41
        Height = 21
        DataField = 'WORKDAY_BEGIN_TIME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtEndTime: TDBEdit
        Left = 56
        Top = 40
        Width = 41
        Height = 21
        DataField = 'WORKDAY_END_TIME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtDurationHours: TDBEdit
        Left = 112
        Top = 40
        Width = 49
        Height = 21
        DataField = 'WORKDAY_DURATION_HOURS'
        DataSource = dsData
        TabOrder = 3
      end
      object edtDensity: TDBEdit
        Left = 256
        Top = 40
        Width = 49
        Height = 21
        DataField = 'WORKDAY_DENSITY_PERCENT'
        DataSource = dsData
        TabOrder = 5
      end
      object chkWorkDay: TAbmesDBCheckBox
        Left = 14
        Top = 0
        Width = 109
        Height = 17
        Caption = #1056#1072#1073#1086#1090#1085#1072' '#1047#1072#1077#1090#1086#1089#1090
        DataField = 'IS_WORK_CYCLE'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object gbBreaks: TGroupBox
        Left = 8
        Top = 72
        Width = 313
        Height = 145
        Caption = ' '#1055#1086#1095#1080#1074#1082#1080' '
        TabOrder = 6
        DesignSize = (
          313
          145)
        object pnlBreaks: TPanel
          Left = 10
          Top = 15
          Width = 293
          Height = 120
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
      object edtWorkdayWorktimeHours: TDBEdit
        Left = 168
        Top = 40
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = '_WORKDAY_WORKTIME_HOURS'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object gbShift: TGroupBox [3]
    Left = 400
    Top = 8
    Width = 145
    Height = 297
    Caption = ' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1057#1084#1103#1085#1072', '
    TabOrder = 1
    object lblShift: TLabel
      Left = 8
      Top = 88
      Width = 33
      Height = 13
      Caption = #1057#1084#1103#1085#1072
    end
    object lblCaption1: TLabel
      Left = 11
      Top = 16
      Width = 95
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1085#1086' '#1055#1086#1077#1084#1072#1097#1072
    end
    object lblCaption2: TLabel
      Left = 11
      Top = 32
      Width = 92
      Height = 13
      Caption = #1042#1088#1077#1084#1077#1074#1072#1090#1072' '#1057#1084#1103#1085#1072
    end
    object cbShift: TJvDBLookupCombo
      Left = 8
      Top = 104
      Width = 129
      Height = 21
      DataField = '_SHIFT_ABBREV'
      DataSource = dsData
      DisplayEmpty = ' '
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072' - %s'
    end
  end
end
