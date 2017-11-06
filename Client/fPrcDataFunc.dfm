inherited fmPrcDataFunc: TfmPrcDataFunc
  Caption = #1060#1091#1085#1082#1094#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' - %s'
  ClientHeight = 100
  ClientWidth = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 434
    inherited pnlOKCancel: TPanel
      Left = 166
    end
    inherited pnlClose: TPanel
      Left = 77
    end
    inherited pnlApply: TPanel
      Left = 345
      Visible = False
    end
  end
  inline frProcessFunction: TfrProcessFunctionFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = #1060#1091#1085#1082#1094#1080#1103' '#1079#1072' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074' '#1044#1091#1093#1072' '#1085#1072' '#1057#1098#1079#1080#1076#1072#1085#1080#1077' - %s'
    end
  end
  inherited dsData: TDataSource [3]
  end
end
