inherited fmProfessionIntervalEdit: TfmProfessionIntervalEdit
  Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 132
  ClientWidth = 305
  ExplicitWidth = 311
  ExplicitHeight = 157
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 289
    Height = 81
    ExplicitWidth = 289
    ExplicitHeight = 57
  end
  object lblDateInterval: TLabel [1]
    Left = 24
    Top = 16
    Width = 40
    Height = 13
    Caption = #1042#1088#1084#1048#1085#1090
    FocusControl = frDateInterval
  end
  object lblHourPrice: TLabel [2]
    Left = 184
    Top = 16
    Width = 57
    Height = 13
    Caption = 'lblHourPrice'
    FocusControl = edtHourPrice
  end
  inherited pnlBottomButtons: TPanel
    Top = 97
    Width = 305
    TabOrder = 4
    ExplicitTop = 97
    ExplicitWidth = 305
    inherited pnlOKCancel: TPanel
      Left = 37
      ExplicitLeft = 37
    end
    inherited pnlClose: TPanel
      Left = -52
      ExplicitLeft = -52
    end
    inherited pnlApply: TPanel
      Left = 216
      Visible = False
      ExplicitLeft = 216
    end
  end
  inline frDateInterval: TfrDateIntervalFrame [4]
    Left = 24
    Top = 32
    Width = 145
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 145
    Constraints.MinHeight = 21
    Constraints.MinWidth = 145
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 32
  end
  object edtHourPrice: TDBEdit [5]
    Left = 184
    Top = 32
    Width = 97
    Height = 21
    DataField = 'HOUR_PRICE'
    DataSource = dsData
    TabOrder = 1
  end
  object chkUsedByEmployees: TAbmesDBCheckBox [6]
    Left = 24
    Top = 64
    Width = 137
    Height = 17
    Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1086#1090' '#1057#1083#1091#1078#1080#1090#1077#1083
    DataField = 'USED_BY_EMPLOYEES'
    DataSource = dsData
    TabOrder = 2
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object chkUsedByTeams: TAbmesDBCheckBox [7]
    Left = 172
    Top = 64
    Width = 113
    Height = 17
    Caption = #1054#1090#1095#1080#1090#1072#1085#1077' '#1086#1090' '#1045#1082#1080#1087
    DataField = 'USED_BY_TEAMS'
    DataSource = dsData
    TabOrder = 3
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  inherited alActions: TActionList [8]
    Left = 64
    Top = 88
    inherited actForm: TAction
      Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
  end
  inherited dsData: TDataSource [10]
    Top = 88
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 88
  end
end
