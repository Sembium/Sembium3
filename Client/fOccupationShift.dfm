inherited fmOccupationShift: TfmOccupationShift
  Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' - %s'
  ClientHeight = 108
  ClientWidth = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 361
    Height = 57
  end
  object lblDateInterval: TLabel [1]
    Left = 24
    Top = 16
    Width = 40
    Height = 13
    Caption = #1042#1088#1084#1048#1085#1090
    FocusControl = frDateIntervalFrame
  end
  object lblShift: TLabel [2]
    Left = 184
    Top = 16
    Width = 33
    Height = 13
    Caption = #1057#1084#1103#1085#1072
    FocusControl = cbShift
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 377
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 109
    end
    inherited pnlClose: TPanel
      Left = 20
    end
    inherited pnlApply: TPanel
      Left = 288
      Visible = False
    end
  end
  inline frDateIntervalFrame: TfrDateIntervalFrame [4]
    Left = 24
    Top = 32
    Width = 145
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 145
    Constraints.MinHeight = 21
    Constraints.MinWidth = 145
    TabOrder = 0
  end
  object cbShift: TJvDBLookupCombo [5]
    Left = 184
    Top = 32
    Width = 65
    Height = 21
    DataField = '_SHIFT_IDENTIFIER'
    DataSource = dsData
    TabOrder = 1
  end
  object chbAffectsEmployeeAvailability: TAbmesDBCheckBox [6]
    Left = 264
    Top = 34
    Width = 92
    Height = 17
    Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
    DataField = 'AFFECTS_EMP_AVAILABILITY'
    DataSource = dsData
    TabOrder = 2
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  inherited alActions: TActionList [7]
    Left = 128
    inherited actForm: TAction
      Caption = #1057#1084#1103#1085#1072' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' - %s'
    end
  end
  inherited dsData: TDataSource [9]
    Left = 96
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 64
  end
end
