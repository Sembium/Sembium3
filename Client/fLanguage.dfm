inherited fmLanguage: TfmLanguage
  Left = 231
  Top = 177
  Caption = #1045#1079#1080#1082' - %s'
  ClientHeight = 108
  ClientWidth = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 417
    Height = 57
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
    FocusControl = edtCode
  end
  object lblName: TLabel [2]
    Left = 136
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object edtCode: TDBEdit [3]
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    DataField = 'LANGUAGE_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [4]
    Left = 136
    Top = 32
    Width = 273
    Height = 21
    DataField = 'LANGUAGE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 433
    TabOrder = 2
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
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1045#1079#1080#1082' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 72
  end
end
