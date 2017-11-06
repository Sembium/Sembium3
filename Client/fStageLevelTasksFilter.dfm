inherited fmStageLevelTasksFilter: TfmStageLevelTasksFilter
  Left = 266
  Top = 154
  Caption = '%s '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1047#1072#1076#1072#1085#1080#1103
  ClientHeight = 525
  ClientWidth = 769
  ExplicitWidth = 775
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 490
    Width = 769
    TabOrder = 8
    ExplicitTop = 490
    ExplicitWidth = 769
    inherited pnlOKCancel: TPanel
      Left = 501
      ExplicitLeft = 501
    end
    inherited pnlClose: TPanel
      Left = 412
      ExplicitLeft = 412
    end
    inherited pnlApply: TPanel
      Left = 680
      ExplicitLeft = 680
    end
  end
  object gbProductionOrder: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 369
    Height = 65
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 0
    object lblProductionOrderBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
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
      EscapeClear = False
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
      ExplicitLeft = 264
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
  object gbMaterialListLineNo: TGroupBox [2]
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
      Left = 336
      Top = 16
      Width = 13
      Height = 13
      Caption = #1056#1082
    end
    object edtMllNoAsText: TDBEdit
      Left = 8
      Top = 32
      Width = 321
      Height = 21
      DataField = 'MLL_NO_AS_TEXT'
      DataSource = dsData
      TabOrder = 0
    end
    object edtForkNo: TDBEdit
      Left = 336
      Top = 32
      Width = 25
      Height = 21
      DataField = 'MLL_FORK_NO'
      DataSource = dsData
      TabOrder = 1
    end
  end
  inline frDeptFilter: TfrDeptFilter [3]
    Left = 8
    Top = 88
    Width = 369
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 88
    ExplicitWidth = 369
    inherited grpTreeNodeFilter: TGroupBox
      Width = 369
      Caption = ' '#1045#1090#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077' '
      ExplicitWidth = 369
      inherited pnlNodes: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 231
            end
            item
              EditButtons = <>
              FieldName = 'NODE_IDENTIFIER'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
    end
  end
  object grpPeriod: TGroupBox [4]
    Left = 392
    Top = 88
    Width = 369
    Height = 49
    Caption = ' '#1053#1072#1095#1072#1083#1086' '#1085#1072' '#1045#1090#1072#1087#1085#1086' '#1047#1072#1076#1072#1085#1080#1077
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
      ExplicitLeft = 8
      ExplicitTop = 16
    end
  end
  object rgAvailableQuantityStatus: TDBRadioGroup [5]
    Left = 392
    Top = 192
    Width = 369
    Height = 41
    Caption = ' '#1053#1072#1083#1080#1095#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1045#1090#1058#1055' '#1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1086' '#1047#1072#1076#1072#1085#1080#1077' '
    Columns = 3
    DataField = 'AVAILABLE_QUANTITY_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1048#1084#1072
      #1053#1103#1084#1072
      #1042#1089#1080#1095#1082#1080)
    ParentBackground = True
    TabOrder = 5
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  object rgOperationStatus: TDBRadioGroup [6]
    Left = 392
    Top = 144
    Width = 369
    Height = 41
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    Columns = 3
    DataField = 'OPERATION_STATUS'
    DataSource = dsData
    Items.Strings = (
      #1055#1083'. '#1080' '#1055'/'#1054
      #1054#1090#1095#1077#1090#1077#1085#1080
      #1042#1089#1080#1095#1082#1080)
    ParentBackground = True
    TabOrder = 4
    Values.Strings = (
      '1'
      '2'
      '0')
  end
  inline frResultProduct: TfrParamProductFilter [7]
    Left = 8
    Top = 248
    Width = 369
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 248
    ExplicitWidth = 369
    inherited grpTreeNodeFilter: TGroupBox
      Width = 369
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055#1042' '
      ExplicitWidth = 369
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
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 231
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
      inherited pnlParams: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 199
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 95
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
    end
  end
  inline frDetail: TfrParamProductFilter [8]
    Left = 392
    Top = 248
    Width = 369
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    ExplicitLeft = 392
    ExplicitTop = 248
    ExplicitWidth = 369
    inherited grpTreeNodeFilter: TGroupBox
      Width = 369
      Caption = ' '#1050#1057#1063' '
      ExplicitWidth = 369
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
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodes: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_NAME'
              Footers = <>
              Width = 231
            end
            item
              EditButtons = <>
              FieldName = 'NODE_NO'
              Footers = <>
              Width = 63
            end>
        end
        inherited pnlNodesButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
      inherited pnlParams: TPanel
        Width = 353
        ExplicitWidth = 353
        inherited grdChosenNodeParams: TAbmesDBGrid
          Width = 328
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NODE_PARAM_NAME'
              Footers = <>
              Width = 199
            end
            item
              EditButtons = <>
              FieldName = 'DISPLAY_VALUE'
              Footers = <>
              Width = 95
            end>
        end
        inherited pnlParamsButtons: TPanel
          Left = 328
          ExplicitLeft = 328
        end
      end
    end
  end
  inherited alActions: TActionList [9]
    Left = 696
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1047#1072#1076#1072#1085#1080#1103
    end
  end
  inherited dsData: TDataSource [11]
    Left = 608
  end
  inherited cdsData: TAbmesClientDataSet [12]
    Left = 576
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 480
  end
  inherited dsFilterVariants: TDataSource
    Top = 480
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 480
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    ConnectionBroker = dmMain.conSalesCommon
    OnFilterRecord = cdsProductionOrderTypesFilterRecord
    Left = 584
    Top = 32
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
    Left = 616
    Top = 32
  end
end
