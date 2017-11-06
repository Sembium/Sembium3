inherited frSysRoleFieldEditFrame: TfrSysRoleFieldEditFrame
  Width = 309
  Height = 49
  Constraints.MaxHeight = 49
  Constraints.MinHeight = 49
  object gbSysRole: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 309
    Height = 49
    Align = alClient
    Caption = ' '#1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '
    TabOrder = 0
    DesignSize = (
      309
      49)
    object edtSysRoleName: TDBEdit
      Left = 58
      Top = 20
      Width = 243
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = '_SYS_ROLE_NAME'
      DataSource = dsSysRole
      ReadOnly = True
      TabOrder = 2
    end
    object edtSysRoleNo: TDBEdit
      Left = 8
      Top = 20
      Width = 49
      Height = 21
      DataField = 'SYS_ROLE_NO'
      DataSource = dsSysRole
      TabOrder = 0
    end
    object cbSysRoleName: TJvDBLookupCombo
      Left = 58
      Top = 20
      Width = 243
      Height = 21
      DeleteKeyClear = False
      DataField = '_SYS_ROLE_NAME'
      DataSource = dsSysRole
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
  end
  object cdsSysRoles: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSysRoles'
    ReadOnly = True
    Left = 248
    object cdsSysRolesSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsSysRolesSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsSysRolesSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
  end
  object cdsSysRole: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    BeforeOpen = cdsSysRoleBeforeOpen
    Left = 136
    object cdsSysRoleSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      OnChange = cdsSysRoleSYS_ROLE_CODEChange
    end
    object cdsSysRoleSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
      OnChange = cdsSysRoleSYS_ROLE_NOChange
    end
    object cdsSysRole_SYS_ROLE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SYS_ROLE_NAME'
      LookupDataSet = cdsSysRoles
      LookupKeyFields = 'SYS_ROLE_CODE'
      LookupResultField = 'SYS_ROLE_NAME'
      KeyFields = 'SYS_ROLE_CODE'
      OnGetText = cdsSysRole_SYS_ROLE_NAMEGetText
      Size = 150
      Lookup = True
    end
  end
  object dsSysRole: TDataSource
    DataSet = cdsSysRole
    Left = 168
  end
end
