inherited fmUncoveredModelsFilter: TfmUncoveredModelsFilter
  Left = 313
  Top = 195
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1053'e'#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1085#1072#1095#1072#1083#1072' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
  ClientHeight = 374
  ClientWidth = 753
  OldCreateOrder = False
  ExplicitWidth = 759
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 339
    Width = 753
    TabOrder = 8
    ExplicitTop = 339
    ExplicitWidth = 753
    inherited pnlOKCancel: TPanel
      Left = 485
      ExplicitLeft = 485
    end
    inherited pnlClose: TPanel
      Left = 396
      ExplicitLeft = 396
    end
    inherited pnlApply: TPanel
      Left = 664
      ExplicitLeft = 664
    end
  end
  object rgStatus: TDBRadioGroup [1]
    Left = 400
    Top = 143
    Width = 169
    Height = 61
    Caption = ' '#1055#1083#1072#1085#1086#1074#1086'-'#1054#1090#1095#1077#1090#1077#1085' '#1057#1090#1072#1090#1091#1089' '
    DataField = 'IS_LIMITING_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1040#1082#1090#1080#1074#1080#1088#1072#1085#1080
      #1053#1045#1040#1082#1090#1080#1074#1080#1088#1072#1085#1080)
    ParentBackground = True
    TabOrder = 5
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  inline frMainDept: TfrDeptFieldEditFrame [2]
    Left = 400
    Top = 280
    Width = 345
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 400
    ExplicitTop = 280
    ExplicitWidth = 345
    inherited gbTreeNode: TGroupBox
      Width = 345
      Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
      ExplicitWidth = 345
      inherited pnlTreeNode: TPanel
        Width = 329
        ExplicitWidth = 329
        inherited pnlTreeNodeName: TPanel
          Width = 182
          ExplicitWidth = 182
          inherited edtTreeNodeName: TDBEdit
            Width = 181
            ExplicitWidth = 181
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 182
          ExplicitLeft = 182
        end
        inherited pnlRightButtons: TPanel
          Left = 293
          ExplicitLeft = 293
        end
      end
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [3]
    Left = 8
    Top = 80
    Width = 377
    Height = 249
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 80
    ExplicitHeight = 249
    inherited grpTreeNodeFilter: TGroupBox
      Height = 249
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055#1042' '
      ExplicitHeight = 249
      inherited lblUsedBy: TLabel
        Width = 76
        ExplicitWidth = 76
      end
      inherited lblProvidedBy: TLabel
        Width = 76
        ExplicitWidth = 76
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        ExplicitWidth = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        ExplicitWidth = 45
      end
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
      inherited pnlParams: TPanel
        inherited grdChosenNodeParams: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  object rgIsWasteCompensatorStatus: TDBRadioGroup [4]
    Left = 400
    Top = 8
    Width = 345
    Height = 66
    Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
    DataField = 'IS_WASTE_COMPENSATOR_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1054#1089#1085#1086#1074#1077#1085' ('#1054')'
      #1057#1098#1087#1098#1090#1089#1090#1074#1072#1097' ('#1057')')
    ParentBackground = True
    TabOrder = 3
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object rgHasWasteStatus: TDBRadioGroup [5]
    Left = 400
    Top = 80
    Width = 345
    Height = 57
    Caption = ' '#1053#1072#1083#1080#1095#1080#1077' '#1085#1072' '#1073#1083#1086#1082'. '#1087#1086' ID '#1054#1055#1042' '
    DataField = 'HAS_WASTE_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1042#1089#1080#1095#1082#1080
      #1057' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097' (!)'
      #1041#1077#1079' '#1059#1054#1073' '#1073#1083#1086#1082#1080#1088#1072#1097)
    ParentBackground = True
    TabOrder = 4
    Values.Strings = (
      '1'
      '2'
      '3')
  end
  object gbModelStartDate: TGroupBox [6]
    Left = 400
    Top = 210
    Width = 345
    Height = 67
    Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' '
    TabOrder = 7
    object lblModelStartDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 97
      Height = 13
      Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
      FocusControl = frModelStartDateInterval
    end
    object lblModelStartReserve: TLabel
      Left = 176
      Top = 16
      Width = 64
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074' ('#1082'.'#1076'.)'
      FocusControl = edtModelStartMinReserve
    end
    object lblModelStartReserveDelimiter: TLabel
      Left = 252
      Top = 32
      Width = 9
      Height = 13
      Caption = '...'
    end
    object edtModelStartMinReserve: TDBEdit
      Left = 176
      Top = 32
      Width = 73
      Height = 21
      DataField = 'MODEL_START_MIN_RESERVE'
      DataSource = dsData
      TabOrder = 1
    end
    object edtModelStartMaxReserve: TDBEdit
      Left = 264
      Top = 32
      Width = 73
      Height = 21
      DataField = 'MODEL_START_MAX_RESERVE'
      DataSource = dsData
      TabOrder = 2
    end
    inline frModelStartDateInterval: TfrDateIntervalFrame
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
      ExplicitLeft = 8
      ExplicitTop = 32
    end
  end
  object gbProductionOrder: TGroupBox [7]
    Left = 8
    Top = 8
    Width = 377
    Height = 65
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 0
    object lblSaleBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbSaleBranch
    end
    object lblSaleNo: TLabel
      Left = 136
      Top = 16
      Width = 40
      Height = 13
      Caption = #1054#1055#1042' No'
      FocusControl = edtSaleNo
    end
    object lblSaleTypeAbbrev: TLabel
      Left = 200
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbSaleTypeAbbrev
    end
    object lblPriorityInterval: TLabel
      Left = 272
      Top = 16
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = frPriorityInterval
    end
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object cbSaleBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 1
    end
    object edtSaleNo: TDBEdit
      Left = 136
      Top = 32
      Width = 57
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbSaleTypeAbbrev: TJvDBLookupCombo
      Left = 200
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 3
    end
    inline frPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 272
      Top = 32
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 4
      TabStop = True
      ExplicitLeft = 272
      ExplicitTop = 32
      inherited lblDash: TLabel
        Width = 6
        ExplicitWidth = 6
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
  end
  object rgIsTowardsReserve: TDBRadioGroup [8]
    Left = 575
    Top = 143
    Width = 169
    Height = 61
    Caption = ' '#1053#1077#1086#1073#1077#1079#1087#1077#1095#1077#1085#1086#1089#1090' '
    DataField = 'IS_TOWARDS_RESERVE'
    DataSource = dsData
    Items.Strings = (
      #1089#1087#1088#1103#1084#1086' 0'
      #1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083)
    ParentBackground = True
    TabOrder = 6
    Values.Strings = (
      'False'
      'True')
  end
  inherited alActions: TActionList [9]
    Left = 264
    Top = 328
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1053'e'#1086#1073#1077#1079#1087#1077#1095#1077#1085#1080' '#1085#1072#1095#1072#1083#1072' '#1085#1072' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
    end
  end
  inherited dsData: TDataSource [10]
  end
  inherited cdsData: TAbmesClientDataSet [12]
  end
  inherited dsFilterVariants: TDataSource [13]
    Left = 48
    Top = 328
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 24
    Top = 328
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 344
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    ConnectionBroker = dmMain.conSalesCommon
    Left = 152
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
    Left = 184
  end
end
