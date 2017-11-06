inherited fmEarningModifiersFilter: TfmEarningModifiersFilter
  Left = 392
  Top = 263
  Caption = '%s '#1085#1072' '#1050#1086#1088#1077#1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
  ClientHeight = 100
  ClientWidth = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 273
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 5
    end
    inherited pnlClose: TPanel
      Left = -84
    end
    inherited pnlApply: TPanel
      Left = 184
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 257
    Height = 49
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 0
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 20
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1050#1086#1088#1077#1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
    end
  end
end
