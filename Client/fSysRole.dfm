inherited fmSysRole: TfmSysRole
  ActiveControl = edtSysRoleNo
  Caption = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' - %s'
  ClientHeight = 572
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 537
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 3
      Visible = False
    end
    inherited pnlExcelExportButton: TPanel
      TabOrder = 0
    end
  end
  inherited pnlUser: TPanel
    Top = 8
    Width = 1001
    Height = 17
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 537
    inherited pnlGrid: TPanel
      Top = 65
      Width = 1001
      Height = 464
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 488
        Height = 440
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = 
              #1055#1088#1080#1089#1098#1097#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086 +
              #1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = 
              #1055#1088#1080#1089#1098#1097#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086 +
              #1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 390
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 514
        Width = 487
        Height = 440
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = 
              #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086 +
              #1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = 
              #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086 +
              #1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 389
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 488
        Height = 440
        inherited btnAdd: TSpeedButton
          Top = 160
        end
        inherited btnRemove: TSpeedButton
          Top = 184
        end
        inherited btnAddAll: TSpeedButton
          Top = 224
        end
        inherited btnRemoveAll: TSpeedButton
          Top = 248
        end
      end
    end
    object pnlSysRoleData: TPanel
      Left = 8
      Top = 8
      Width = 1001
      Height = 57
      Align = alTop
      TabOrder = 0
      DesignSize = (
        1001
        57)
      object lblSysRoleName: TLabel
        Left = 104
        Top = 8
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      object lblSysRoleNo: TLabel
        Left = 8
        Top = 8
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblSysRoleType: TLabel
        Left = 712
        Top = 8
        Width = 19
        Height = 13
        Caption = #1058#1080#1087
      end
      object edtSysRoleName: TDBEdit
        Left = 104
        Top = 24
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'SYS_ROLE_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtSysRoleNo: TDBEdit
        Left = 8
        Top = 24
        Width = 81
        Height = 21
        DataField = 'SYS_ROLE_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object btnOccupations: TBitBtn
        Left = 848
        Top = 22
        Width = 145
        Height = 25
        Action = actOccupations
        Caption = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
        TabOrder = 3
      end
      object edtSysRoleType: TDBEdit
        Left = 712
        Top = 23
        Width = 121
        Height = 21
        Color = clBtnFace
        DataField = '_SYS_ROLE_TYPE_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqrySysRoleActivities
    FieldDefs = <
      item
        Name = 'SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NAME'
        DataType = ftWideString
        Size = 150
      end>
    object cdsGridDataSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsGridDataACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsGridDataACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object cdsGridDataACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1053#1072#1073#1086#1088' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' - %s'
    end
    object actOccupations: TAction
      Caption = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
      Hint = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
      OnExecute = actOccupationsExecute
      OnUpdate = actOccupationsUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    Params = <
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSysRole'
    BeforePost = cdsDataBeforePost
    object cdsDataSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataSYS_ROLE_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'SYS_ROLE_NO'
      Required = True
      MaxValue = 999999999.000000000000000000
      MinValue = 101.000000000000000000
    end
    object cdsDataSYS_ROLE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SYS_ROLE_NAME'
      Required = True
      Size = 150
    end
    object cdsDataIS_RESERVED: TAbmesFloatField
      FieldName = 'IS_RESERVED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataqrySysRoleActivities: TDataSetField
      FieldName = 'qrySysRoleActivities'
    end
    object cdsDataSYS_ROLE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
      OnChange = cdsDataSYS_ROLE_TYPE_CODEChange
      OnValidate = cdsDataSYS_ROLE_TYPE_CODEValidate
    end
    object cdsData_SYS_ROLE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SYS_ROLE_TYPE_NAME'
      LookupDataSet = cdsSysRoleTypes
      LookupKeyFields = 'SYS_ROLE_TYPE_CODE'
      LookupResultField = 'SYS_ROLE_TYPE_NAME'
      KeyFields = 'SYS_ROLE_TYPE_CODE'
      Lookup = True
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    Params = <
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SYS_ROLE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSysRoleNotActivties'
    object cdsOtherGridDataSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsOtherGridDataACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
  end
  object cdsSysRoleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filtered = True
    Params = <>
    ProviderName = 'prvSysRoleTypes'
    OnFilterRecord = cdsSysRoleTypesFilterRecord
    Left = 208
    Top = 232
    object cdsSysRoleTypesSYS_ROLE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_TYPE_CODE'
      Required = True
    end
    object cdsSysRoleTypesSYS_ROLE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_NAME'
      Required = True
      Size = 250
    end
    object cdsSysRoleTypesSYS_ROLE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SYS_ROLE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
end
