inherited fmProfessionKind: TfmProfessionKind
  Left = 424
  Top = 348
  ActiveControl = edtProfessionKindNo
  Caption = #1042#1080#1076' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' - %s'
  ClientHeight = 110
  ClientWidth = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 482
    Height = 58
  end
  object lblProfessionKindNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblProfessionKindName: TLabel [2]
    Left = 96
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblProfessionType: TLabel [3]
    Left = 336
    Top = 16
    Width = 19
    Height = 13
    Caption = #1058#1080#1087
  end
  inherited pnlBottomButtons: TPanel
    Top = 75
    Width = 498
    inherited pnlOKCancel: TPanel
      Left = 230
    end
    inherited pnlClose: TPanel
      Left = 141
    end
    inherited pnlApply: TPanel
      Left = 409
      Visible = False
    end
  end
  object edtProfessionKindNo: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'PROFESSION_KIND_NO'
    DataSource = dsData
    TabOrder = 1
  end
  object edtProfessionKindName: TDBEdit [6]
    Left = 96
    Top = 32
    Width = 225
    Height = 21
    DataField = 'PROFESSION_KIND_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object cbProfessionType: TJvDBLookupCombo [7]
    Left = 336
    Top = 32
    Width = 137
    Height = 21
    DataField = '_PROFESSION_TYPE_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    Top = 56
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103' - %s'
    end
  end
  inherited dsData: TDataSource
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 56
  end
end
