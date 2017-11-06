inherited fmCustomhouse: TfmCustomhouse
  Left = 271
  Top = 220
  ActiveControl = edtCode
  Caption = #1052#1080#1090#1085#1080#1094#1072' - %s'
  ClientHeight = 108
  ClientWidth = 361
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 345
    Height = 57
    Shape = bsFrame
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblName: TLabel [2]
    Left = 112
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 361
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 93
    end
    inherited pnlClose: TPanel
      Left = 4
    end
    inherited pnlApply: TPanel
      Left = 272
      Visible = False
    end
  end
  object edtCode: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 81
    Height = 21
    DataField = 'CUSTOMHOUSE_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [5]
    Left = 112
    Top = 32
    Width = 225
    Height = 21
    DataField = 'CUSTOMHOUSE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Top = 72
    inherited actForm: TAction
      Caption = #1052#1080#1090#1085#1080#1094#1072' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 104
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 72
    Top = 72
  end
end
