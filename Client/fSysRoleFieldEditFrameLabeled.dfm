inherited frSysRoleFieldEditFrameLabeled: TfrSysRoleFieldEditFrameLabeled
  Height = 65
  Constraints.MaxHeight = 65
  Constraints.MinHeight = 65
  ExplicitHeight = 65
  inherited gbSysRole: TGroupBox
    Height = 65
    object lblSysRoleNo: TLabel [0]
      Left = 8
      Top = 16
      Width = 20
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblSysRoleName: TLabel [1]
      Left = 58
      Top = 16
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    inherited edtSysRoleName: TDBEdit
      Top = 32
      ExplicitTop = 32
    end
    inherited edtSysRoleNo: TDBEdit
      Top = 32
      ExplicitTop = 32
    end
    inherited cbSysRoleName: TJvDBLookupCombo
      Top = 32
      ExplicitTop = 32
    end
  end
end
