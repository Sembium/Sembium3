inherited fmGroupDeliveriesFilter: TfmGroupDeliveriesFilter
  Left = 246
  Top = 161
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' %ForOrOf% %Provision' +
    '% - '#1043#1088#1091#1087#1080' '#1054#1055#1044
  ClientHeight = 637
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 602
    Width = 793
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 525
    end
    inherited pnlClose: TPanel
      Left = 436
    end
    inherited pnlApply: TPanel
      Left = 704
    end
  end
  object gbVendor: TGroupBox [1]
    Left = 8
    Top = 248
    Width = 393
    Height = 345
    Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
    TabOrder = 9
    object pnlVendorInfo: TPanel
      Left = 8
      Top = 256
      Width = 377
      Height = 81
      BevelOuter = bvNone
      TabOrder = 1
      object lblCode: TLabel
        Left = 192
        Top = 40
        Width = 76
        Height = 13
        Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1082#1086#1076
      end
      object lblCustomhouse: TLabel
        Left = 0
        Top = 40
        Width = 44
        Height = 13
        Caption = #1052#1080#1090#1085#1080#1094#1072
      end
      object lblDeliveryVendorOffice: TLabel
        Left = 0
        Top = 0
        Width = 152
        Height = 13
        Caption = #1058#1055' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '#1079#1072' '#1045#1082#1089#1087'.'
      end
      object lblCountry: TLabel
        Left = 192
        Top = 0
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
      end
      object cbDeliveryVendorOffice: TJvDBLookupCombo
        Left = 0
        Top = 16
        Width = 185
        Height = 21
        DataField = 'DELIVERY_VENDOR_OFFICE_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        LookupField = 'OFFICE_CODE'
        LookupDisplay = 'OFFICE_NAME'
        LookupSource = dsVendorOffices
        TabOrder = 0
      end
      object cbTradeCode: TJvDBLookupCombo
        Left = 192
        Top = 56
        Width = 185
        Height = 21
        DataField = 'SHIPMENT_TYPE_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        LookupField = 'SHIPMENT_TYPE_CODE'
        LookupDisplay = 'SHIPMENT_TYPE_ABBREV'
        LookupSource = dsTradeCodes
        TabOrder = 3
      end
      object cbCustomhouse: TJvDBLookupCombo
        Left = 0
        Top = 56
        Width = 185
        Height = 21
        DataField = 'CUSTOMHOUSE_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        LookupField = 'CUSTOMHOUSE_CODE'
        LookupDisplay = 'CUSTOMHOUSE_NAME'
        LookupSource = dsCustomHouses
        TabOrder = 2
      end
      object cbCountry: TJvDBLookupCombo
        Left = 192
        Top = 16
        Width = 185
        Height = 21
        DisplayAllFields = True
        DataField = 'COUNTRY_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        LookupField = 'COUNTRY_CODE'
        LookupDisplay = 'COUNTRY_NAME'
        LookupSource = dsCountries
        TabOrder = 1
      end
    end
    inline frVendor: TfrCompanyFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited grpTreeNodeFilter: TGroupBox
        inherited pnlChosenCompanies: TPanel
          inherited grdChosenCompanies: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlNotChosenCompanies: TPanel
          inherited grdNotChosenCompanies: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlBottom: TPanel
          inherited lblCommonStatus: TLabel
            Width = 45
          end
        end
      end
    end
  end
  object gbDates: TGroupBox [2]
    Left = 144
    Top = 8
    Width = 257
    Height = 65
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' '
    TabOrder = 1
    object lblDaysLeft: TLabel
      Left = 160
      Top = 16
      Width = 36
      Height = 13
      Caption = #1088#1077#1079#1077#1088#1074
    end
    object lblDaysLeftDash: TLabel
      Left = 195
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frDeliveryDateInterval: TfrDateIntervalFrame
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
    object edtBeginDaysLeft: TDBEdit
      Left = 160
      Top = 32
      Width = 33
      Height = 21
      DataField = 'BEGIN_DAYS_LEFT'
      DataSource = dsData
      TabOrder = 1
    end
    object edtEndDaysLeft: TDBEdit
      Left = 208
      Top = 32
      Width = 33
      Height = 21
      DataField = 'END_DAYS_LEFT'
      DataSource = dsData
      TabOrder = 2
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [3]
    Left = 408
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' %ProductClassName% '
      inherited lblUsedBy: TLabel
        Width = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
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
  object gbDeliveryDealType: TGroupBox [4]
    Left = 8
    Top = 80
    Width = 97
    Height = 49
    Caption = ' '#1058#1080#1087' '#1054#1055#1044' '
    TabOrder = 2
    object cbDeliveryDealType: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 81
      Height = 21
      DropDownWidth = 350
      DataField = 'DELIVERY_DEAL_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'BORDER_DEAL_TYPE_CODE'
      LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
      LookupSource = dsDeliveryDealTypes
      TabOrder = 0
    end
  end
  object gbLeaseDateUnit: TGroupBox [5]
    Left = 200
    Top = 80
    Width = 201
    Height = 49
    Caption = ' '#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072' '
    TabOrder = 4
    object cbLeaseDateUnit: TJvDBLookupCombo
      Left = 32
      Top = 20
      Width = 137
      Height = 21
      DataField = '_LEASE_DATE_UNIT_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbGroupBy: TGroupBox [6]
    Left = 8
    Top = 136
    Width = 209
    Height = 49
    Caption = ' '#1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086' '
    TabOrder = 5
    object cbGroupBy: TJvDBComboBox
      Left = 8
      Top = 19
      Width = 193
      Height = 21
      DataField = 'GROUP_BY_RECEIVE_DATE'
      DataSource = dsData
      Items.Strings = (
        #1042#1088#1098#1097#1072#1085#1077' '#1085#1072' '#1053#1072#1077#1090#1080' '#1086#1090' '#1048#1055' '#1059#1054#1073
        #1055#1088#1080#1077#1084#1072#1085#1077' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1103#1085#1080' '#1059#1054#1073)
      TabOrder = 0
      Values.Strings = (
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inline frDCDPSDStore: TfrDeptFieldEditFrame [7]
    Left = 8
    Top = 192
    Width = 393
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 7
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 393
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1085#1072' '#1048#1055' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '
      inherited pnlTreeNode: TPanel
        Width = 377
        inherited pnlTreeNodeName: TPanel
          Width = 230
          inherited edtTreeNodeName: TDBEdit
            Width = 229
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 230
        end
        inherited pnlRightButtons: TPanel
          Left = 341
        end
      end
    end
  end
  object gbStatus: TGroupBox [8]
    Left = 8
    Top = 8
    Width = 129
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblStatusDash: TLabel
      Left = 59
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object cbMinStatus: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 400
      DeleteKeyClear = False
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 0
    end
    object cbMaxStatus: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 49
      Height = 21
      DropDownWidth = 400
      DeleteKeyClear = False
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 1
    end
  end
  object gbExceptEventDamages: TGroupBox [9]
    Left = 225
    Top = 136
    Width = 176
    Height = 49
    Caption = ' '#1053#1054' - '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' '
    TabOrder = 6
    object cbDamagesState: TJvDBLookupCombo
      Left = 8
      Top = 19
      Width = 161
      Height = 21
      DropDownWidth = 300
      DataField = 'DAMAGES_STATE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'STATE_CODE'
      LookupDisplay = 'STATE_ABBREV;STATE_NAME'
      LookupSource = dsDamageStates
      TabOrder = 0
    end
  end
  object gbBudgetOrderItem: TGroupBox [10]
    Left = 408
    Top = 248
    Width = 377
    Height = 65
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1088#1076#1077#1088' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1086' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072' '
    TabOrder = 10
    object lblBudgetOrderBranch: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblBudgetOrderCode: TLabel
      Left = 72
      Top = 16
      Width = 39
      Height = 13
      Caption = #1048#1041#1057' No'
    end
    object lblBudgetOrderItemCode: TLabel
      Left = 144
      Top = 16
      Width = 47
      Height = 13
      Caption = #1051#1048#1041#1057' No'
    end
    object lblBOIOrderCode: TLabel
      Left = 216
      Top = 16
      Width = 55
      Height = 13
      Caption = #1054#1051#1048#1041#1057' No'
    end
    object cbBudgetOrderBranch: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DataField = '_BUDGET_ORDER_BRANCH'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 0
    end
    object edtBudgetOrderCode: TDBEdit
      Left = 72
      Top = 32
      Width = 65
      Height = 21
      DataField = 'BUDGET_ORDER_CODE'
      DataSource = dsData
      TabOrder = 1
    end
    object edtBudgetOrderItemCode: TDBEdit
      Left = 144
      Top = 32
      Width = 65
      Height = 21
      DataField = 'BUDGET_ORDER_ITEM_CODE'
      DataSource = dsData
      TabOrder = 2
    end
    object edtBOIOrderCode: TDBEdit
      Left = 216
      Top = 32
      Width = 65
      Height = 21
      DataField = 'BOI_ORDER_CODE'
      DataSource = dsData
      TabOrder = 3
    end
  end
  object gbDCDBranch: TGroupBox [11]
    Left = 112
    Top = 80
    Width = 81
    Height = 49
    Caption = ' '#1058#1055' '#1043#1083'. '
    TabOrder = 3
    object cbDCDBranch: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 65
      Height = 21
      DataField = '_DCD_BRANCH'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [12]
    Left = 344
    Top = 584
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' %ForOrOf% %Provision' +
        '% - '#1043#1088#1091#1087#1080' '#1054#1055#1044
    end
  end
  inherited dsData: TDataSource [13]
    Left = 312
    Top = 584
  end
  inherited cdsData: TAbmesClientDataSet [14]
    Left = 280
    Top = 584
  end
  inherited dsFilterVariants: TDataSource [15]
    Left = 312
    Top = 616
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 280
    Top = 616
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 344
    Top = 616
  end
  object cdsTradeCodes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    Left = 208
    Top = 112
    object cdsTradeCodesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsTradeCodesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 3
    end
  end
  object dsTradeCodes: TDataSource
    DataSet = cdsTradeCodes
    Left = 224
    Top = 112
  end
  object cdsCustomHouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 80
    Top = 112
    object cdsCustomHousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      Required = True
    end
    object cdsCustomHousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object dsCustomHouses: TDataSource
    DataSet = cdsCustomHouses
    Left = 96
    Top = 112
  end
  object cdsVendorOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
        Value = Null
      end>
    ProviderName = 'prvCompanyOffices'
    BeforeOpen = cdsVendorOfficesBeforeOpen
    Left = 144
    Top = 112
    object cdsVendorOfficesCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsVendorOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsVendorOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Size = 50
    end
  end
  object dsVendorOffices: TDataSource
    DataSet = cdsVendorOffices
    Left = 160
    Top = 112
  end
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 32
    Top = 112
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 16
    Top = 112
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsDeliveryDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsDeliveryDealTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsDeliveryDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 280
    Top = 112
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 264
    Top = 112
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 16
    object cdsStatusesSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object cdsStatusesSTATUS_ABBREV: TAbmesWideStringField
      FieldName = 'STATUS_ABBREV'
      Size = 6
    end
    object cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField
      FieldName = 'STATUS_DESCRIPTION'
      Size = 100
    end
  end
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 88
    Top = 16
  end
  object dsDamageStates: TDataSource
    DataSet = cdsDamageStates
    Left = 280
    Top = 152
  end
  object cdsDamageStates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 152
    object cdsDamageStatesSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField
      FieldName = 'STATE_ABBREV'
      Size = 15
    end
    object cdsDamageStatesSTATE_NAME: TAbmesWideStringField
      FieldName = 'STATE_NAME'
      Size = 30
    end
  end
end
