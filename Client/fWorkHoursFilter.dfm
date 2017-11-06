inherited fmWorkHoursFilter: TfmWorkHoursFilter
  Left = 456
  Top = 170
  ActiveControl = frDept.edtTreeNodeNo
  Caption = '%s '#1085#1072' '#1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
  ClientHeight = 412
  ClientWidth = 401
  ExplicitWidth = 407
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 377
    Width = 401
    TabOrder = 7
    ExplicitTop = 377
    ExplicitWidth = 401
    inherited pnlOKCancel: TPanel
      Left = 133
      ExplicitLeft = 133
    end
    inherited pnlClose: TPanel
      Left = 44
      ExplicitLeft = 44
    end
    inherited pnlApply: TPanel
      Left = 312
      ExplicitLeft = 312
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 96
    Top = 240
    Width = 161
    Height = 57
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 4
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 24
    end
  end
  object gbSale: TGroupBox [2]
    Left = 8
    Top = 304
    Width = 385
    Height = 65
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 6
    object lblSaleType: TLabel
      Left = 256
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbSaleType
    end
    object lblSaleBranch: TLabel
      Left = 72
      Top = 16
      Width = 72
      Height = 13
      Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FocusControl = cbSaleBranch
    end
    object lblSaleNo: TLabel
      Left = 160
      Top = 16
      Width = 40
      Height = 13
      Caption = #1054#1055#1042' No'
      FocusControl = edtSaleNo
    end
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object lblPriority: TLabel
      Left = 320
      Top = 16
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = cbPriority
    end
    object cbSaleBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 81
      Height = 21
      EscapeClear = False
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    object edtSaleNo: TDBEdit
      Left = 160
      Top = 32
      Width = 89
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbPriority: TJvDBLookupCombo
      Left = 320
      Top = 32
      Width = 57
      Height = 21
      EscapeClear = False
      DataField = '_PRIORITY_NO'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      TabOrder = 4
    end
    object cbProductionOrderType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 240
      DisplayAllFields = True
      DataField = 'PRODUCTION_ORDER_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'PRODUCTION_ORDER_TYPE_CODE'
      LookupDisplay = 'PRODUCTION_ORDER_TYPE_ABBREV;PRODUCTION_ORDER_TYPE_NAME'
      LookupSource = dsProductionOrderTypes
      TabOrder = 0
    end
    object cbSaleType: TJvDBLookupCombo
      Left = 256
      Top = 32
      Width = 41
      Height = 21
      DropDownWidth = 150
      DisplayAllFields = True
      DataField = 'SALE_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'SALE_TYPE_CODE'
      LookupDisplay = 'SALE_TYPE_ABBREV;SALE_TYPE_NAME'
      LookupSource = dsSaleTypes
      TabOrder = 3
    end
  end
  object gbOperationType: TGroupBox [3]
    Left = 264
    Top = 240
    Width = 129
    Height = 57
    Caption = ' '#1057#1063' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103' '
    TabOrder = 5
    object chbIsSetup: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 77
      Height = 17
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      DataField = 'IS_SETUP'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chbIsNotSetup: TAbmesDBCheckBox
      Left = 8
      Top = 32
      Width = 86
      Height = 17
      Caption = #1048#1079#1087#1098#1083#1085#1077#1085#1080#1077
      DataField = 'IS_WORK'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inline frDept: TfrDeptFieldEditFrame [4]
    Left = 8
    Top = 8
    Width = 385
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 385
    inherited gbTreeNode: TGroupBox
      Width = 385
      Caption = ' '#1054#1087#1058#1055' '
      ExplicitWidth = 385
      inherited pnlTreeNode: TPanel
        Width = 369
        ExplicitWidth = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          ExplicitWidth = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
            ExplicitWidth = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
          ExplicitLeft = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
          ExplicitLeft = 333
        end
      end
    end
  end
  object gbShift: TGroupBox [5]
    Left = 8
    Top = 240
    Width = 81
    Height = 57
    Caption = ' '#1054#1088#1075'. '#1057#1084#1103#1085#1072' '
    TabOrder = 3
    DesignSize = (
      81
      57)
    object cbShift: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      EscapeClear = False
      DataField = '_SHIFT_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbTeamAndEmployee: TGroupBox [6]
    Left = 8
    Top = 120
    Width = 385
    Height = 113
    Caption = ' '#1054#1087#1077#1088#1072#1090#1086#1088' '
    TabOrder = 2
    object lblBaseTeam: TLabel
      Left = 8
      Top = 16
      Width = 25
      Height = 13
      Caption = #1045#1082#1080#1087
      FocusControl = edtTeamNo
    end
    object lblEmployee: TLabel
      Left = 8
      Top = 64
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
    end
    object edtTeamNo: TDBEdit
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DataField = '_TEAM_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object cbTeamName: TJvDBLookupCombo
      Left = 64
      Top = 32
      Width = 313
      Height = 21
      EscapeClear = False
      DataField = '_TEAM_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    inline frEmployee: TfrEmployeeFieldEditFrameBald
      Left = 8
      Top = 80
      Width = 369
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 80
      ExplicitWidth = 369
      inherited gbEmployee: TGroupBox
        Width = 388
        ExplicitWidth = 388
        inherited pnlEmployeeName: TPanel
          Width = 313
          ExplicitWidth = 313
          inherited pnlRightButtons: TPanel
            Left = 277
            ExplicitLeft = 277
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 277
            ExplicitWidth = 277
            inherited edtEmployeeName: TDBEdit
              Width = 231
              ExplicitWidth = 231
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 276
              ExplicitWidth = 276
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 378
          ExplicitLeft = 378
        end
      end
    end
  end
  inline frOccupationDept: TfrDeptFieldEditFrame [7]
    Left = 8
    Top = 64
    Width = 385
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 64
    ExplicitWidth = 385
    inherited gbTreeNode: TGroupBox
      Width = 385
      Caption = ' '#1054#1088#1063' '#1085#1072' '#1054#1089#1085#1086#1074#1085#1086' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' / '#1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087' '
      ExplicitWidth = 385
      inherited pnlTreeNode: TPanel
        Width = 369
        ExplicitWidth = 369
        inherited pnlTreeNodeName: TPanel
          Width = 222
          ExplicitWidth = 222
          inherited edtTreeNodeName: TDBEdit
            Width = 221
            ExplicitWidth = 221
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 222
          ExplicitLeft = 222
        end
        inherited pnlRightButtons: TPanel
          Left = 333
          ExplicitLeft = 333
        end
      end
    end
  end
  inherited alActions: TActionList [8]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1058#1088#1091#1076' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088#1080
    end
  end
  inherited dsData: TDataSource [10]
  end
  inherited cdsData: TAbmesClientDataSet [11]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [12]
    Left = 16
    Top = 464
  end
  inherited dsFilterVariants: TDataSource
    Left = 48
    Top = 464
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 120
    Top = 456
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    ConnectionBroker = dmMain.conSalesCommon
    Left = 240
    Top = 64
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_NAME'
      Size = 100
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'PRODUCTION_ORDER_TYPE_TEXT'
      Size = 108
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_CODE'
    end
    object cdsProductionOrderTypesPROD_ORDER_BASE_ROLE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_ROLE_NO'
    end
    object cdsProductionOrderTypesIS_REVERSIBLE: TAbmesFloatField
      FieldName = 'IS_REVERSIBLE'
    end
  end
  object dsProductionOrderTypes: TDataSource
    DataSet = cdsProductionOrderTypes
    Left = 272
    Top = 64
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvSaleTypes'
    ConnectionBroker = dmMain.conSalesCommon
    Left = 304
    Top = 64
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object dsSaleTypes: TDataSource
    DataSet = cdsSaleTypes
    Left = 336
    Top = 64
  end
end
