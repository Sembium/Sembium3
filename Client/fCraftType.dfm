inherited fmCraftType: TfmCraftType
  Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080' - %s'
  ClientHeight = 109
  ClientWidth = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 434
    Height = 58
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
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 450
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 182
    end
    inherited pnlClose: TPanel
      Left = 93
    end
    inherited pnlApply: TPanel
      Left = 361
      Visible = False
    end
  end
  object edtCraftTypeCode: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 73
    Height = 21
    DataField = 'CRAFT_TYPE_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtCraftTypeName: TDBEdit [5]
    Left = 112
    Top = 32
    Width = 313
    Height = 21
    DataField = 'CRAFT_TYPE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080' - %s'
    end
  end
end
