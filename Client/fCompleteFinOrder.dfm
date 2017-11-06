inherited fmCompleteFinOrder: TfmCompleteFinOrder
  ActiveControl = frDate.edtDate
  Caption = #1054#1090#1095#1080#1090#1072#1085#1077
  ClientHeight = 109
  ClientWidth = 281
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 265
    Height = 58
  end
  object lblDate: TLabel [1]
    Left = 24
    Top = 16
    Width = 67
    Height = 13
    Caption = #1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 281
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 13
    end
    inherited pnlClose: TPanel
      Left = -76
    end
    inherited pnlApply: TPanel
      Left = 192
      Visible = False
    end
  end
  inline frDate: TfrDateFieldEditFrame [3]
    Left = 24
    Top = 32
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 0
  end
  inherited alActions: TActionList [4]
    Left = 144
    Top = 72
    inherited actForm: TAction
      Caption = #1054#1090#1095#1080#1090#1072#1085#1077
    end
  end
  inherited dsData: TDataSource [5]
    Left = 56
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 72
  end
end
