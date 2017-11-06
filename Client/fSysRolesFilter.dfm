inherited fmSysRolesFilter: TfmSysRolesFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
  ClientHeight = 155
  ClientWidth = 593
  DesignSize = (
    593
    155)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 120
    Width = 593
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 325
    end
    inherited pnlClose: TPanel
      Left = 236
    end
    inherited pnlApply: TPanel
      Left = 504
    end
  end
  inline frActivity: TfrActivityFieldEditFrame [1]
    Left = 8
    Top = 56
    Width = 577
    Height = 49
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 1
    inherited gbEnumItem: TGroupBox
      Width = 577
      DesignSize = (
        577
        49)
      inherited edtEnumItemName: TDBEdit
        Width = 497
      end
      inherited cbEnumItemName: TJvDBLookupCombo
        Width = 497
      end
    end
  end
  object rgSysRoleType: TDBRadioGroup [2]
    Left = 8
    Top = 8
    Width = 577
    Height = 41
    Caption = ' '#1058#1080#1087' '
    DataField = 'SYS_ROLE_TYPE_CODE'
    DataSource = dsData
    ParentBackground = True
    TabOrder = 0
  end
  inherited alActions: TActionList [3]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
    end
  end
  inherited dsData: TDataSource [4]
  end
  inherited cdsData: TAbmesClientDataSet [5]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [6]
  end
  inherited dsFilterVariants: TDataSource [7]
  end
  object cdsSysRoleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvSysRoleTypes'
    Left = 184
    Top = 56
    object cdsSysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
    object cdsSysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsSysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
end
