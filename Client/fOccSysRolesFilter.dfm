inherited fmOccSysRolesFilter: TfmOccSysRolesFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1057#1080#1089#1090#1077#1084#1085#1080' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
  ClientHeight = 101
  ClientWidth = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 66
    Width = 569
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 301
    end
    inherited pnlClose: TPanel
      Left = 212
    end
    inherited pnlApply: TPanel
      Left = 480
    end
  end
  inline frActivity: TfrActivityFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 553
    Height = 49
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 0
    inherited gbEnumItem: TGroupBox
      Width = 553
      DesignSize = (
        553
        49)
      inherited edtEnumItemName: TDBEdit
        Width = 473
      end
      inherited cbEnumItemName: TJvDBLookupCombo
        Width = 473
      end
    end
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1057#1080#1089#1090#1077#1084#1085#1080' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
    end
  end
  inherited dsData: TDataSource [3]
  end
  inherited cdsData: TAbmesClientDataSet [4]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [5]
    Top = 56
  end
  inherited dsFilterVariants: TDataSource [6]
    Top = 56
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 72
  end
end
