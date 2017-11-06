inherited fmOperationalTasksFilter: TfmOperationalTasksFilter
  Left = 314
  Top = 184
  Caption = ''
  ClientHeight = 484
  ClientWidth = 769
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 449
    Width = 769
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 501
    end
    inherited pnlClose: TPanel
      Left = 412
    end
    inherited pnlApply: TPanel
      Left = 680
    end
  end
  object grpPeriod: TGroupBox [1]
    Left = 392
    Top = 88
    Width = 193
    Height = 49
    Caption = ' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1047#1072#1076#1072#1085#1080#1077' '
    TabOrder = 3
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object rgOperationStatus: TDBRadioGroup [2]
    Left = 392
    Top = 144
    Width = 369
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    Columns = 3
    DataField = 'OPERATION_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1055#1083'. '#1080' '#1055'/'#1054
      #1054#1090#1095#1077#1090#1077#1085#1080
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 5
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  object rgHasSpecialControl: TDBRadioGroup [3]
    Left = 392
    Top = 280
    Width = 369
    Height = 57
    Caption = ' '#1057#1087#1077#1094#1080#1072#1083#1080#1079#1080#1088#1072#1085' '#1050#1086#1085#1090#1088#1086#1083' '
    Columns = 3
    DataField = 'HAS_SPECIAL_CONTROL'
    DataSource = dsData
    Items.Strings = (
      #1048#1084#1072
      #1053#1103#1084#1072
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 8
    Values.Strings = (
      '1'
      '0'
      '2')
  end
  object grpOperationType: TGroupBox [4]
    Left = 8
    Top = 352
    Width = 369
    Height = 89
    Caption = ' '#1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1103' '
    TabOrder = 9
    object chkIsBeginOrgOperation: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 321
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072
      DataField = 'IS_BEGIN_ORG_OPERATION'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsNormalOperation: TAbmesDBCheckBox
      Left = 8
      Top = 40
      Width = 313
      Height = 17
      Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1091#1074#1072#1097#1072' '#1080#1083#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1086#1080#1079#1075#1088#1072#1078#1076#1072#1097#1072
      DataField = 'IS_NORMAL_OPERATION'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsEndOrgOperation: TAbmesDBCheckBox
      Left = 8
      Top = 64
      Width = 329
      Height = 17
      Caption = #1050#1088#1072#1081#1085#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072
      DataField = 'IS_END_ORG_OPERATION'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object grpSetup: TGroupBox [5]
    Left = 8
    Top = 248
    Width = 369
    Height = 89
    Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '
    TabOrder = 7
    object chkNoSetup: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 161
      Height = 17
      Caption = #1041#1077#1079' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      DataField = 'HAS_NO_SETUP'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkSetupNotDone: TAbmesDBCheckBox
      Left = 8
      Top = 40
      Width = 161
      Height = 17
      Caption = #1053#1045#1085#1072#1087#1088#1072#1074#1077#1085#1072' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      DataField = 'IS_SETUP_NOT_DONE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkSetupDone: TAbmesDBCheckBox
      Left = 8
      Top = 64
      Width = 161
      Height = 17
      Caption = #1053#1072#1087#1088#1072#1074#1077#1085#1072' '#1085#1072#1089#1090#1088#1086#1081#1082#1072
      DataField = 'IS_SETUP_DONE'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object rgAvailableQuantityStatus: TDBRadioGroup [6]
    Left = 392
    Top = 208
    Width = 369
    Height = 57
    Caption = ' '#1053#1072#1083#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1054#1087#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077' '
    Columns = 3
    DataField = 'AVAILABLE_QUANTITY_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1048#1084#1072
      #1053#1103#1084#1072
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 6
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  inline frDeptFilter: TfrDeptFilter [7]
    Left = 8
    Top = 88
    Width = 369
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Width = 369
      Caption = ' '#1054#1087#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077' '
      inherited lblsExternal: TLabel
        Width = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
      inherited lblStoreType: TLabel
        Width = 43
      end
      inherited pnlNodes: TPanel
        Width = 353
        inherited pnlNodesButtons: TPanel
          Left = 328
        end
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 328
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 231
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
      end
    end
  end
  object gbMaterialListLineNo: TGroupBox [8]
    Left = 392
    Top = 8
    Width = 369
    Height = 65
    Caption = ' ID '#1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083' '
    TabOrder = 1
    object lblMllNoAsText: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
      FocusControl = edtMllNoAsText
    end
    object lblForkNo: TLabel
      Left = 328
      Top = 16
      Width = 13
      Height = 13
      Caption = #1056#1082
    end
    object edtMllNoAsText: TDBEdit
      Left = 3
      Top = 32
      Width = 318
      Height = 21
      DataField = 'MLL_NO_AS_TEXT'
      DataSource = dsData
      TabOrder = 0
    end
    object edtForkNo: TDBEdit
      Left = 328
      Top = 32
      Width = 25
      Height = 21
      DataField = 'MLL_FORK_NO'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbProductionOrder: TGroupBox [9]
    Left = 8
    Top = 8
    Width = 369
    Height = 65
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 0
    object lblProductionOrderBranch: TLabel
      Left = 72
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbProductionOrderBranch
    end
    object lblProductionOrderNo: TLabel
      Left = 136
      Top = 16
      Width = 40
      Height = 13
      Caption = #1054#1055#1042' No'
      FocusControl = edtProductionOrderNo
    end
    object lblPriority: TLabel
      Left = 264
      Top = 16
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = edtProductionOrderNo
    end
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object lblSaleTypeAbbrev: TLabel
      Left = 192
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbSaleTypeAbbrev
    end
    object cbProductionOrderBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DeleteKeyClear = False
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 1
    end
    object edtProductionOrderNo: TDBEdit
      Left = 136
      Top = 32
      Width = 49
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    inline frPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 264
      Top = 32
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 4
      TabStop = True
      inherited lblDash: TLabel
        Width = 6
      end
    end
    object cbProductionOrderType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownCount = 20
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
    object cbSaleTypeAbbrev: TJvDBLookupCombo
      Left = 192
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 3
    end
  end
  object gbIsActive: TGroupBox [10]
    Left = 592
    Top = 88
    Width = 169
    Height = 49
    Caption = ' '#1040#1082#1090#1080#1074#1085#1086#1089#1090' '
    TabOrder = 4
    object cbIsActive: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      DataField = 'ACTIVE_STATE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1077#1072#1082#1090#1080#1074#1080#1088#1072#1085#1080
        #1040#1082#1090#1080#1074#1080#1088#1072#1085#1080)
      TabOrder = 0
      Values.Strings = (
        '1'
        '2'
        '3')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object grpStageType: TGroupBox [11]
    Left = 392
    Top = 352
    Width = 369
    Height = 89
    Caption = ' '#1058#1080#1087' '#1077#1090#1072#1087' '
    TabOrder = 10
    object chkIsBeginStoreStage: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 225
      Height = 17
      Caption = #1053#1072#1095#1072#1083#1077#1085' '#1079#1072#1076#1098#1088#1078#1072#1097
      DataField = 'IS_BEGIN_STORE_STAGE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsNormalStage: TAbmesDBCheckBox
      Left = 8
      Top = 40
      Width = 225
      Height = 17
      Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1091#1074#1072#1097' '#1080#1083#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1086#1080#1079#1075#1088#1072#1078#1076#1072#1097
      DataField = 'IS_NORMAL_STAGE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsEndStoreStage: TAbmesDBCheckBox
      Left = 8
      Top = 64
      Width = 225
      Height = 17
      Caption = #1050#1088#1072#1077#1085' '#1079#1072#1076#1098#1088#1078#1072#1097
      DataField = 'IS_END_STORE_STAGE'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited alActions: TActionList [12]
    Left = 240
    Top = 8
    inherited actForm: TAction
      Caption = ''
    end
    object actClearBeginDate: TAction
      Hint = #1055#1086#1095#1080#1089#1090#1074#1072#1085#1077
    end
    object actClearEndDate: TAction
      Hint = #1055#1086#1095#1080#1089#1090#1074#1072#1085#1077
    end
  end
  inherited dsData: TDataSource [13]
    Top = 8
  end
  inherited cdsData: TAbmesClientDataSet [14]
    Top = 8
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [15]
    Left = 272
    Top = 424
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 344
    Top = 424
  end
  inherited dsFilterVariants: TDataSource
    Left = 296
    Top = 424
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 112
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object cdsProductionOrderTypesPRODUCTION_ORDER_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 5
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
    Left = 144
  end
end
