inherited fmSysRoles: TfmSysRoles
  Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
  ClientHeight = 390
  ClientWidth = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 355
    Width = 706
    inherited pnlOKCancel: TPanel
      Left = 438
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 349
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 617
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 473
      inherited btnAddData: TBitBtn
        Action = actInsertRecord
      end
      inherited btnDeleteData: TBitBtn
        Left = 250
        TabOrder = 2
      end
      inherited btnEditData: TBitBtn
        Left = 364
        TabOrder = 3
      end
      object btnInsertLike: TBitBtn
        Left = 122
        Top = 2
        Width = 119
        Height = 25
        Action = actInsertLike
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
        TabOrder = 1
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 706
    Height = 355
    inherited pnlGrid: TPanel
      Width = 690
      Height = 339
      inherited pnlNavigator: TPanel
        Width = 690
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object edtSysRoleType: TDBEdit
          Left = 537
          Top = 0
          Width = 153
          Height = 21
          Color = clBtnFace
          DataField = '_SYS_ROLE_TYPE_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 3
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 690
        Height = 315
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SYS_ROLE_NO'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'SYS_ROLE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 484
          end
          item
            EditButtons = <>
            FieldName = 'IS_RESERVED'
            Footers = <>
            Title.Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1077#1085
            Width = 80
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    FieldDefs = <
      item
        Name = 'SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NAME'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'IS_RESERVED'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_TYPE_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end>
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
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSysRoles'
    object cdsGridDataSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsGridDataSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsGridDataSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
    object cdsGridDataIS_RESERVED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_RESERVED'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
    object cdsGridDataSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object pdsGridDataParamsSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
    end
    object pdsGridDataParams_SYS_ROLE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SYS_ROLE_TYPE_NAME'
      LookupDataSet = cdsSysRoleTypes
      LookupKeyFields = 'SYS_ROLE_TYPE_CODE'
      LookupResultField = 'SYS_ROLE_TYPE_NAME'
      KeyFields = 'SYS_ROLE_TYPE_CODE'
      Lookup = True
    end
  end
  object cdsSysRoleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvSysRoleTypes'
    Left = 552
    Top = 72
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
