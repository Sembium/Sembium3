inherited fmCraft: TfmCraft
  Caption = #1055#1088#1086#1092#1077#1089#1080#1103' - %s'
  ClientHeight = 157
  ClientWidth = 504
  ExplicitWidth = 510
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 488
    Height = 106
    ExplicitWidth = 377
    ExplicitHeight = 106
  end
  object lblCraftTypeCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblCraftTypeName: TLabel [2]
    Left = 112
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblCraftType: TLabel [3]
    Left = 24
    Top = 64
    Width = 180
    Height = 13
    Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
  end
  inherited pnlBottomButtons: TPanel
    Top = 122
    Width = 504
    TabOrder = 3
    ExplicitTop = 122
    ExplicitWidth = 393
    inherited pnlOKCancel: TPanel
      Left = 236
      ExplicitLeft = 125
    end
    inherited pnlClose: TPanel
      Left = 147
      ExplicitLeft = 36
    end
    inherited pnlApply: TPanel
      Left = 415
      Visible = False
      ExplicitLeft = 304
    end
  end
  object edtCraftTypeCode: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 73
    Height = 21
    DataField = 'CRAFT_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtCraftTypeName: TDBEdit [6]
    Left = 112
    Top = 32
    Width = 368
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'CRAFT_NAME'
    DataSource = dsData
    TabOrder = 1
    ExplicitWidth = 257
  end
  object cbCraftType: TJvDBLookupCombo [7]
    Left = 24
    Top = 80
    Width = 456
    Height = 21
    DataField = '_CRAFT_TYPE_NAME'
    DataSource = dsData
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    ExplicitWidth = 345
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1086#1092#1077#1089#1080#1103' - %s'
    end
  end
end
