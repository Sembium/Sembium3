inherited fmOperationalTasksFilter: TfmOperationalTasksFilter
  Left = 314
  Top = 184
  Caption = ''
  ClientHeight = 483
  ClientWidth = 769
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 448
    Width = 769
    TabOrder = 15
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
    Top = 80
    Width = 193
    Height = 65
    Caption = ' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1047#1072#1076#1072#1085#1080#1077' '
    TabOrder = 5
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
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
    Top = 152
    Width = 369
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    Columns = 3
    DataField = 'OPERATION_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1053#1077#1086#1090#1095'.'
      #1054#1090#1095'.'
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 8
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  object rgHasSpecialControl: TDBRadioGroup [3]
    Left = 8
    Top = 304
    Width = 369
    Height = 41
    Caption = ' '#1057#1087#1077#1094#1080#1072#1083#1080#1079#1080#1088#1072#1085' '#1050#1086#1085#1090#1088#1086#1083' '
    Columns = 3
    DataField = 'HAS_SPECIAL_CONTROL'
    DataSource = dsData
    Items.Strings = (
      #1048#1084#1072
      #1053#1103#1084#1072
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 11
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
    TabOrder = 13
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
    Left = 392
    Top = 304
    Width = 369
    Height = 41
    Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '
    TabOrder = 12
    object chkNoSetup: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 57
      Height = 17
      Caption = #1041#1077#1079
      DataField = 'HAS_NO_SETUP'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkSetupNotDone: TAbmesDBCheckBox
      Left = 128
      Top = 16
      Width = 97
      Height = 17
      Caption = #1053#1045#1085#1072#1087#1088#1072#1074#1077#1085#1072
      DataField = 'IS_SETUP_NOT_DONE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkSetupDone: TAbmesDBCheckBox
      Left = 248
      Top = 16
      Width = 81
      Height = 17
      Caption = #1053#1072#1087#1088#1072#1074#1077#1085#1072
      DataField = 'IS_SETUP_DONE'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object rgVariantAvailableQuantityStatus: TDBRadioGroup [6]
    Left = 392
    Top = 256
    Width = 369
    Height = 41
    Caption = ' '#1053#1072#1083#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086' '#1054#1087#1077#1088#1072#1094#1080#1103', '#1079#1072#1088#1077#1076#1077#1085#1086' '#1074' '#1054#1087#1047#1085' '
    Columns = 3
    DataField = 'AVAILABLE_QUANTITY_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1048#1084#1072
      #1053#1103#1084#1072
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 10
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  inline frDeptFilter: TfrDeptFilter [7]
    Left = 8
    Top = 152
    Width = 369
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
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
    Left = 200
    Top = 80
    Width = 177
    Height = 65
    Caption = ' ID '#1056#1077#1076' '#1086#1090' '#1056'-'#1052#1054#1044#1045#1083' '
    TabOrder = 4
    object lblMllNoAsText: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1077#1085' '#1085#1086#1084#1077#1088
      FocusControl = edtMllNoAsText
    end
    object lblForkNo: TLabel
      Left = 136
      Top = 16
      Width = 13
      Height = 13
      Caption = #1056#1082
    end
    object edtMllNoAsText: TDBEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      DataField = 'MLL_NO_AS_TEXT'
      DataSource = dsData
      TabOrder = 0
    end
    object edtForkNo: TDBEdit
      Left = 136
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
  object gbModelActiveState: TGroupBox [10]
    Left = 8
    Top = 80
    Width = 177
    Height = 65
    Caption = ' '#1040#1082#1090#1080#1074#1085#1086#1089#1090' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083' '
    TabOrder = 3
    object cbModelActiveState: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 153
      Height = 21
      DataField = 'ACTIVE_STATE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1077#1072#1082#1090#1080#1074#1080#1088#1072#1085
        #1040#1082#1090#1080#1074#1080#1088#1072#1085)
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
    TabOrder = 14
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
  object gbVariantActiveState: TGroupBox [12]
    Left = 600
    Top = 80
    Width = 161
    Height = 65
    Caption = ' '#1040#1082#1090#1080#1074#1085#1086#1089#1090' '#1085#1072' '#1054#1087'. '#1042#1072#1088#1080#1072#1085#1090' '
    TabOrder = 6
    object cbVariantActiveState: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 145
      Height = 21
      DataField = 'VARIANT_ACTIVE_STATE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1053#1077#1072#1082#1090#1080#1074#1077#1085
        #1040#1082#1090#1080#1074#1077#1085)
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
  object rgOperationAvailableQuantityStatus: TDBRadioGroup [13]
    Left = 392
    Top = 208
    Width = 369
    Height = 41
    Caption = ' '#1053#1072#1083#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086' '#1054#1087#1077#1088#1072#1094#1080#1103', '#1085#1077#1079#1072#1088#1077#1076#1077#1085#1086' '#1074' '#1054#1087#1047#1085' '
    Columns = 3
    DataField = 'OP_AVAILABLE_QUANTITY_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1048#1084#1072
      #1053#1103#1084#1072
      #1042#1089#1080#1095#1082#1080)
    TabOrder = 9
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  object gbSaleIdentification: TGroupBox [14]
    Left = 392
    Top = 8
    Width = 369
    Height = 65
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1080'                               '
    TabOrder = 2
    object pnlOwnerEmployeeOrCompany: TPanel
      Left = 7
      Top = 16
      Width = 362
      Height = 89
      BevelOuter = bvNone
      TabOrder = 0
      object pnlOwnerEmployee: TPanel
        Left = 0
        Top = 41
        Width = 362
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblOwnerEmployee: TLabel
          Left = 0
          Top = 3
          Width = 55
          Height = 13
          Caption = #1055#1086#1088#1098#1095#1080#1090#1077#1083
        end
        inline frOwnerEmployee: TfrEmployeeFieldEditFrameBald
          Left = 0
          Top = 18
          Width = 337
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 356
            inherited pnlEmployeeName: TPanel
              Width = 281
              inherited pnlRightButtons: TPanel
                Left = 245
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 245
                inherited edtEmployeeName: TDBEdit
                  Width = 199
                end
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 244
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 346
            end
          end
        end
      end
      object pnlOwnerCompany: TPanel
        Left = 0
        Top = 0
        Width = 362
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblPartner: TLabel
          Left = 0
          Top = 0
          Width = 36
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
        end
        inline frOwnerCompany: TfrPartnerFieldEditFrameBald
          Left = 0
          Top = 16
          Width = 353
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 368
            inherited pnlNameAndButtons: TPanel
              Width = 279
              inherited pnlRightButtons: TPanel
                Left = 243
              end
              inherited pnlPartnerName: TPanel
                Width = 243
                inherited edtPartnerName: TDBEdit
                  Width = 229
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 244
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 360
            end
          end
        end
      end
    end
  end
  object cbSaleState: TJvDBComboBox [15]
    Left = 541
    Top = 4
    Width = 81
    Height = 21
    DataField = 'IS_SALE_STATE'
    DataSource = dsData
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1051#1080#1085#1077#1081#1085#1072
      #1057#1074#1086#1073#1086#1076#1085#1072)
    TabOrder = 1
    Values.Strings = (
      '0'
      '1'
      '2')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
    ListSettings.OutfilteredValueFont.Style = []
    OnChange = cbSaleStateChange
  end
  inherited alActions: TActionList [16]
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
  inherited dsData: TDataSource [17]
    Top = 8
  end
  inherited cdsData: TAbmesClientDataSet [18]
    Top = 8
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [19]
    Left = 272
    Top = 424
  end
  inherited dsFilterVariants: TDataSource [20]
    Left = 296
    Top = 424
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 344
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
