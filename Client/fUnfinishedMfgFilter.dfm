inherited fmUnfinishedMfgFilter: TfmUnfinishedMfgFilter
  Left = 307
  Top = 150
  ActiveControl = frDeptFilter.grdChosenNodes
  Caption = '%s '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
  ClientHeight = 338
  ClientWidth = 777
  ExplicitWidth = 783
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 303
    Width = 777
    TabOrder = 4
    ExplicitTop = 303
    ExplicitWidth = 777
    inherited pnlOKCancel: TPanel
      Left = 509
      ExplicitLeft = 509
    end
    inherited pnlClose: TPanel
      Left = 420
      ExplicitLeft = 420
    end
    inherited pnlApply: TPanel
      Left = 688
      ExplicitLeft = 688
    end
  end
  object gbToDate: TGroupBox [1]
    Left = 8
    Top = 247
    Width = 121
    Height = 49
    Caption = ' '#1050#1098#1084' '#1076#1072#1090#1072' '
    TabOrder = 3
    inline frToDate: TfrDateFieldEditFrame
      Left = 8
      Top = 20
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 20
    end
  end
  inline frDeptFilter: TfrDeptFilter [2]
    Left = 8
    Top = 8
    Width = 377
    Height = 145
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 8
    inherited grpTreeNodeFilter: TGroupBox
      inherited lblsExternal: TLabel
        Width = 52
        ExplicitWidth = 52
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
      end
      inherited pnlNodes: TPanel
        inherited grdChosenNodes: TAbmesDBGrid
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
        end
      end
    end
  end
  inline frChosenProducts: TfrParamProductFilter [3]
    Left = 392
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 392
    ExplicitTop = 8
    inherited grpTreeNodeFilter: TGroupBox
      inherited lblUsedBy: TLabel
        Width = 61
        ExplicitWidth = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
        ExplicitWidth = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
        ExplicitWidth = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
        ExplicitWidth = 53
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
  object gbProductionOrder: TGroupBox [4]
    Left = 9
    Top = 159
    Width = 377
    Height = 82
    Caption = ' ID '#1054#1055#1042' '
    TabOrder = 2
    object lblSaleBranch: TLabel
      Left = 72
      Top = 24
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbSaleBranch
    end
    object lblSaleNo: TLabel
      Left = 136
      Top = 24
      Width = 40
      Height = 13
      Caption = #1054#1055#1042' No'
      FocusControl = edtSaleNo
    end
    object lblSaleTypeAbbrev: TLabel
      Left = 200
      Top = 24
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbSaleTypeAbbrev
    end
    object lblPriorityInterval: TLabel
      Left = 272
      Top = 24
      Width = 80
      Height = 13
      Caption = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090
      FocusControl = frPriorityInterval
    end
    object lblProductionOrderType: TLabel
      Left = 8
      Top = 24
      Width = 38
      Height = 13
      Caption = #1055#1088#1086#1094#1077#1089
      FocusControl = cbProductionOrderType
    end
    object cbSaleBranch: TJvDBLookupCombo
      Left = 72
      Top = 40
      Width = 57
      Height = 21
      DataField = '_SALE_BRANCH_IDENTIFIER'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 1
    end
    object edtSaleNo: TDBEdit
      Left = 136
      Top = 40
      Width = 57
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbSaleTypeAbbrev: TJvDBLookupCombo
      Left = 200
      Top = 40
      Width = 57
      Height = 21
      DataField = '_SALE_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 3
    end
    inline frPriorityInterval: TfrPriorityIntervalEditFrame
      Left = 272
      Top = 40
      Width = 97
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 97
      Constraints.MinHeight = 21
      Constraints.MinWidth = 97
      TabOrder = 4
      TabStop = True
      ExplicitLeft = 272
      ExplicitTop = 40
      inherited lblDash: TLabel
        Width = 6
        ExplicitWidth = 6
      end
    end
    object cbProductionOrderType: TJvDBLookupCombo
      Left = 8
      Top = 40
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
  inherited alActions: TActionList [5]
    Top = 241
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083'-'#1080
    end
  end
  inherited dsData: TDataSource [6]
  end
  inherited cdsData: TAbmesClientDataSet [8]
  end
  inherited dsFilterVariants: TDataSource [9]
    Left = 184
    Top = 256
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 160
    Top = 256
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 208
    Top = 272
  end
  object cdsProductionOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderTypes'
    ConnectionBroker = dmMain.conSalesCommon
    Left = 272
    Top = 264
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
    Left = 304
    Top = 264
  end
end
