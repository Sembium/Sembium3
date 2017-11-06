inherited fmAccessRule: TfmAccessRule
  ActiveControl = edtAccessRuleName
  Caption = #1055#1088#1072#1074#1080#1083#1086' '#1079#1072' '#1089#1080#1089#1090#1077#1084#1077#1085' '#1076#1086#1089#1090#1098#1087' - %s'
  ClientHeight = 380
  ClientWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 481
    Height = 329
  end
  object lblAccessRuleName: TLabel [1]
    Left = 24
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtAccessRuleName
  end
  inherited pnlBottomButtons: TPanel
    Top = 345
    Width = 497
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 229
    end
    inherited pnlClose: TPanel
      Left = 140
    end
    inherited pnlApply: TPanel
      Left = 408
      Visible = False
    end
  end
  object edtAccessRuleName: TDBEdit [3]
    Left = 24
    Top = 32
    Width = 369
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'ACCESS_RULE_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  object gbCondition: TGroupBox [4]
    Left = 24
    Top = 64
    Width = 449
    Height = 209
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1059#1089#1083#1086#1074#1080#1103' '
    TabOrder = 2
    DesignSize = (
      449
      209)
    object lblUser: TLabel
      Left = 16
      Top = 24
      Width = 60
      Height = 13
      Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
      FocusControl = frUser.edtEmployeeNo
    end
    object lblDept: TLabel
      Left = 16
      Top = 72
      Width = 15
      Height = 13
      Caption = #1058#1055
    end
    object lblIPAddressPattern: TLabel
      Left = 16
      Top = 144
      Width = 97
      Height = 13
      Caption = 'IP address or subnet'
      FocusControl = edtIPAddressPattern
    end
    object lblIPAddressPatternExamples1: TLabel
      Left = 16
      Top = 184
      Width = 49
      Height = 13
      Caption = #1055#1088#1080#1084#1077#1088#1080':'
    end
    object Label1: TLabel
      Left = 80
      Top = 184
      Width = 155
      Height = 13
      Caption = '215.22.162.7      29.185.11.0/24'
    end
    inline frUser: TfrEmployeeFieldEditFrameBald
      Left = 16
      Top = 40
      Width = 417
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      inherited gbEmployee: TGroupBox
        Width = 436
        inherited pnlEmployeeName: TPanel
          Width = 361
          inherited pnlRightButtons: TPanel
            Left = 325
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 325
            inherited edtEmployeeName: TDBEdit
              Width = 279
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 324
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 426
        end
      end
    end
    inline frDept: TfrDeptFieldEditFrameBald
      Left = 16
      Top = 88
      Width = 417
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      inherited gbTreeNode: TGroupBox
        Width = 433
        inherited pnlTreeNode: TPanel
          Width = 417
          inherited pnlTreeNodeName: TPanel
            Width = 270
            inherited edtTreeNodeName: TDBEdit
              Width = 269
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 270
          end
          inherited pnlRightButtons: TPanel
            Left = 381
          end
        end
      end
    end
    object edtIPAddressPattern: TDBEdit
      Left = 16
      Top = 160
      Width = 417
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'IP_ADDRESS_PATTERN'
      DataSource = dsData
      TabOrder = 2
    end
    object chbIncludeDeptDescendants: TDBCheckBox
      Left = 16
      Top = 112
      Width = 201
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1042#1082#1083#1102#1095#1080#1090#1077#1083#1085#1086' '#1058#1055' - '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1095#1072#1089#1090#1080
      DataField = 'INCLUDE_DEPT_DESCENDANTS'
      DataSource = dsData
      TabOrder = 3
    end
  end
  object rgAccessType: TDBRadioGroup [5]
    Left = 24
    Top = 280
    Width = 449
    Height = 41
    Caption = ' '#1044#1086#1089#1090#1098#1087' '
    Columns = 2
    DataField = 'ACCESS_TYPE_CODE'
    DataSource = dsData
    TabOrder = 3
  end
  object chbIsEnabled: TDBCheckBox [6]
    Left = 408
    Top = 34
    Width = 65
    Height = 17
    Anchors = [akTop, akRight]
    Caption = #1040#1082#1090#1080#1074#1085#1086
    DataField = 'IS_ACTIVE'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 360
    inherited actForm: TAction
      Caption = #1055#1088#1072#1074#1080#1083#1086' '#1079#1072' '#1089#1080#1089#1090#1077#1084#1077#1085' '#1076#1086#1089#1090#1098#1087' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 240
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conLogin
    Params = <
      item
        DataType = ftFloat
        Name = 'ACCESS_RULE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvAccessRule'
    BeforePost = cdsDataBeforePost
    Left = 208
    object cdsDataACCESS_RULE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_RULE_CODE'
      Required = True
    end
    object cdsDataACCESS_RULE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACCESS_RULE_NAME'
      Required = True
      Size = 100
    end
    object cdsDataIS_ACTIVE: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074#1085#1086
      FieldName = 'IS_ACTIVE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      OnChange = cdsDataDEPT_CODEChange
    end
    object cdsDataINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField
      FieldName = 'INCLUDE_DEPT_DESCENDANTS'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataIP_ADDRESS_PATTERN: TAbmesWideStringField
      DisplayLabel = 'IP address or subnet'
      FieldName = 'IP_ADDRESS_PATTERN'
      Size = 100
    end
    object cdsDataACCESS_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1044#1086#1089#1090#1098#1087
      FieldName = 'ACCESS_TYPE_CODE'
      Required = True
    end
  end
  object cdsAccessTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conLogin
    Params = <>
    ProviderName = 'prvAccessTypes'
    Left = 296
    object cdsAccessTypesACCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_TYPE_CODE'
      Required = True
    end
    object cdsAccessTypesACCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
end
