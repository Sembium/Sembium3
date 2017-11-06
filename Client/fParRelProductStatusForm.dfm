inherited fmParRelProductStatus: TfmParRelProductStatus
  ActiveControl = cbStatus
  Caption = #1057#1090#1072#1090#1091#1089' - %s'
  ClientHeight = 108
  ClientWidth = 298
  ExplicitWidth = 304
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 282
    Height = 57
    ExplicitWidth = 282
    ExplicitHeight = 57
  end
  object lblStatus: TLabel [1]
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = #1057#1090#1072#1090#1091#1089
    FocusControl = cbStatus
  end
  object lblStatusDate: TLabel [2]
    Left = 168
    Top = 16
    Width = 39
    Height = 13
    Caption = #1054#1090' '#1076#1072#1090#1072
    FocusControl = frStatusDate
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 298
    ExplicitTop = 73
    ExplicitWidth = 298
    inherited pnlOKCancel: TPanel
      Left = 30
      ExplicitLeft = 30
    end
    inherited pnlClose: TPanel
      Left = -59
      ExplicitLeft = -59
    end
    inherited pnlApply: TPanel
      Left = 209
      Visible = False
      ExplicitLeft = 209
    end
  end
  object cbStatus: TJvDBLookupCombo [4]
    Left = 24
    Top = 32
    Width = 129
    Height = 21
    DataField = '_PAR_REL_PRODUCT_STATUS_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inline frStatusDate: TfrDateFieldEditFrame [5]
    Left = 168
    Top = 32
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 168
    ExplicitTop = 32
  end
  inherited alActions: TActionList [6]
    Left = 216
    inherited actForm: TAction
      Caption = #1057#1090#1072#1090#1091#1089' - %s'
    end
  end
  inherited dsData: TDataSource [8]
    Left = 112
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 80
  end
end
