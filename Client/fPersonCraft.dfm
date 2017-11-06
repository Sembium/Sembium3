inherited fmPersonCraft: TfmPersonCraft
  Caption = #1055#1088#1086#1092#1077#1089#1080#1103' '#1085#1072' '#1057#1048#1063#1048' - %s'
  ClientHeight = 180
  ClientWidth = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 145
    Width = 417
    inherited pnlOKCancel: TPanel
      Left = 149
    end
    inherited pnlClose: TPanel
      Left = 60
    end
    inherited pnlApply: TPanel
      Left = 328
      Visible = False
    end
  end
  object gbCraftType: TGroupBox [1]
    Left = 8
    Top = 0
    Width = 401
    Height = 65
    Caption = ' '#1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080' '
    TabOrder = 1
    object lblCraftTypeCode: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblCraftType: TLabel
      Left = 80
      Top = 16
      Width = 180
      Height = 13
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
    end
    object cbCraftType: TJvDBLookupCombo
      Left = 80
      Top = 32
      Width = 313
      Height = 21
      DataField = '_CRAFT_TYPE_NAME'
      DataSource = dsData
      DisplayEmpty = ' '
      TabOrder = 1
    end
    object edtCraftTypeCode: TDBEdit
      Left = 8
      Top = 32
      Width = 71
      Height = 21
      DataField = 'CRAFT_TYPE_CODE'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object gbCraft: TGroupBox [2]
    Left = 8
    Top = 72
    Width = 313
    Height = 65
    Caption = ' '#1055#1088#1086#1092#1077#1089#1080#1103' '
    TabOrder = 2
    object lblCraftCode: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblCraft: TLabel
      Left = 80
      Top = 16
      Width = 146
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1092#1077#1089#1080#1103
    end
    object cbCraft: TJvDBLookupCombo
      Left = 80
      Top = 32
      Width = 225
      Height = 21
      DataField = '_CRAFT_NAME'
      DataSource = dsData
      DisplayEmpty = ' '
      TabOrder = 1
    end
    object edtCraftCode: TDBEdit
      Left = 8
      Top = 32
      Width = 71
      Height = 21
      DataField = 'CRAFT_CODE'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object gbPriority: TGroupBox [3]
    Left = 328
    Top = 72
    Width = 81
    Height = 65
    Caption = ' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '
    TabOrder = 3
    object cbPriority: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DropDownWidth = 180
      DisplayAllFields = True
      DataField = '_PRIORITY_NAME'
      DataSource = dsData
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    Left = 216
    Top = 48
    inherited actForm: TAction
      Caption = #1055#1088#1086#1092#1077#1089#1080#1103' '#1085#1072' '#1057#1048#1063#1048' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 128
    Top = 48
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 96
    Top = 48
  end
end
