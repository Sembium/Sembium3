inherited frSysRoleFieldEditFrameBald: TfrSysRoleFieldEditFrameBald
  Width = 293
  Height = 22
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  ExplicitWidth = 293
  ExplicitHeight = 22
  DesignSize = (
    293
    22)
  inherited gbSysRole: TGroupBox
    Left = -9
    Top = -16
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    ExplicitLeft = -9
    ExplicitTop = -16
    ExplicitWidth = 309
    ExplicitHeight = 49
    inherited edtSysRoleName: TDBEdit
      Top = 16
      ExplicitTop = 16
    end
    inherited cbSysRoleName: TJvDBLookupCombo [1]
      Left = 59
      Top = 16
      ExplicitLeft = 59
      ExplicitTop = 16
    end
    inherited edtSysRoleNo: TDBEdit [2]
      Left = 9
      Top = 16
      ExplicitLeft = 9
      ExplicitTop = 16
    end
  end
  inherited alActions: TActionList
    Left = 24
  end
end
