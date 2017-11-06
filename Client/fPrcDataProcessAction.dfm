inherited fmPrcDataProcessAction: TfmPrcDataProcessAction
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' - %s'
  ClientHeight = 100
  ClientWidth = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 353
    inherited pnlOKCancel: TPanel
      Left = 85
    end
    inherited pnlClose: TPanel
      Left = -4
    end
    inherited pnlApply: TPanel
      Left = 264
      Visible = False
    end
  end
  inline frProcessAction: TfrProcessActionFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 338
    Height = 49
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 1
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' - %s'
    end
  end
  inherited dsData: TDataSource [3]
  end
end
