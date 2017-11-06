inherited fmRequirementAbstract: TfmRequirementAbstract
  ActiveControl = rgRequirement
  Caption = 'XXX '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090
  ClientHeight = 140
  ClientWidth = 225
  DesignSize = (
    225
    140)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 105
    Width = 225
    TabOrder = 1
    ExplicitTop = 105
    ExplicitWidth = 225
    inherited pnlOKCancel: TPanel
      Left = -43
      ExplicitLeft = -43
    end
    inherited pnlClose: TPanel
      Left = -132
      ExplicitLeft = -132
    end
    inherited pnlApply: TPanel
      Left = 136
      Visible = False
      ExplicitLeft = 136
    end
  end
  object rgRequirement: TDBRadioGroup [1]
    Left = 8
    Top = 8
    Width = 209
    Height = 89
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsData
    ParentBackground = True
    TabOrder = 0
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'XXX '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090
    end
  end
  object cdsRequirements: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 72
  end
end
