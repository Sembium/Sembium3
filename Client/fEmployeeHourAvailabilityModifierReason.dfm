inherited fmEmployeeHourAvailabilityModifierReason: TfmEmployeeHourAvailabilityModifierReason
  Left = 328
  Top = 192
  ActiveControl = edtName
  Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072' '#1052#1086#1076#1080#1092#1080#1094#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' - %s'
  ClientHeight = 108
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 377
    Height = 57
    ExplicitWidth = 377
    ExplicitHeight = 57
  end
  object lblName: TLabel [1]
    Left = 24
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 393
    TabOrder = 1
    ExplicitTop = 73
    ExplicitWidth = 393
    inherited pnlOKCancel: TPanel
      Left = 125
      ExplicitLeft = 125
    end
    inherited pnlClose: TPanel
      Left = 36
      ExplicitLeft = 36
    end
    inherited pnlApply: TPanel
      Left = 304
      Visible = False
      ExplicitLeft = 304
    end
  end
  object edtName: TDBEdit [3]
    Left = 24
    Top = 32
    Width = 345
    Height = 21
    DataField = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList
    Left = 216
    inherited actForm: TAction
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1079#1072' '#1052#1086#1076#1080#1092#1080#1094#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 152
  end
end
