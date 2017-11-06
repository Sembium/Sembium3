inherited fmPrcActionLearningStatus: TfmPrcActionLearningStatus
  ActiveControl = cbStatusName
  Caption = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1091#1089#1074#1086#1103#1074#1072#1085#1077' - %s'
  ClientHeight = 122
  ClientWidth = 385
  ExplicitWidth = 391
  ExplicitHeight = 147
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 87
    Width = 385
    TabOrder = 1
    ExplicitTop = 87
    ExplicitWidth = 385
    inherited pnlOKCancel: TPanel
      Left = 117
      ExplicitLeft = 117
    end
    inherited pnlClose: TPanel
      Left = 28
      ExplicitLeft = 28
    end
    inherited pnlApply: TPanel
      Left = 296
      Visible = False
      ExplicitLeft = 296
    end
  end
  object pnlMain: TPanel [1]
    Left = 8
    Top = 8
    Width = 369
    Height = 70
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object lblStatusName: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblStatusDate: TLabel
      Left = 248
      Top = 16
      Width = 39
      Height = 13
      Caption = #1054#1090' '#1076#1072#1090#1072
    end
    inline frStatusDate: TfrDateFieldEditFrame
      Left = 248
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 1
      ExplicitLeft = 248
      ExplicitTop = 32
    end
    object cbStatusName: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 217
      Height = 21
      EscapeClear = False
      DataField = '_PRC_LEARNING_STATUS_NAME'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1091#1089#1074#1086#1103#1074#1072#1085#1077' - %s'
    end
  end
end
