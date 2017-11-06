inherited fmDocItemSysRole: TfmDocItemSysRole
  Left = 240
  Top = 146
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085'a '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1048#1048#1054' - %s'
  ClientHeight = 161
  ClientWidth = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 425
    Height = 110
  end
  object lblSysRole: TLabel [1]
    Left = 24
    Top = 24
    Width = 193
    Height = 13
    Caption = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
  end
  object lblDocItemAccessLevel: TLabel [2]
    Left = 24
    Top = 67
    Width = 122
    Height = 13
    Caption = #1053#1080#1074#1086' '#1085#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1048#1048#1054
  end
  inherited pnlBottomButtons: TPanel
    Top = 126
    Width = 441
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 173
    end
    inherited pnlClose: TPanel
      Left = 84
    end
    inherited pnlApply: TPanel
      Left = 352
      Visible = False
    end
  end
  object cbDocItemAccessLevel: TJvDBLookupCombo [4]
    Left = 24
    Top = 83
    Width = 393
    Height = 21
    DeleteKeyClear = False
    DataField = '_DOC_ITEM_ACCESS_LEVEL_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inline frSysRole: TfrSysRoleFieldEditFrameBald [5]
    Left = 24
    Top = 40
    Width = 393
    Height = 22
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 0
    inherited gbSysRole: TGroupBox
      Width = 409
      inherited edtSysRoleName: TDBEdit
        Width = 343
      end
      inherited cbSysRoleName: TJvDBLookupCombo
        Width = 343
      end
    end
  end
  inherited alActions: TActionList [6]
    inherited actForm: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085'a '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1048#1048#1054' - %s'
    end
  end
end
