inherited fmProcessBaseOperation: TfmProcessBaseOperation
  ActiveControl = frProcessBaseOperation.edtTreeNodeNo
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088' - %s'
  ClientHeight = 100
  ClientWidth = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 433
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 165
    end
    inherited pnlClose: TPanel
      Left = 76
    end
    inherited pnlApply: TPanel
      Left = 344
      Visible = False
    end
  end
  inline frProcessBaseOperation: TfrProcessBaseOperationFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1090#1086#1088' - %s'
    end
  end
  inherited dsData: TDataSource [3]
  end
end
