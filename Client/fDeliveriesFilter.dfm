inherited fmDeliveriesFilter: TfmDeliveriesFilter
  Left = 359
  Top = 145
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' %ForOrOf% %Provision' +
    '% - '#1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1044
  ClientHeight = 596
  ClientWidth = 841
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 561
    Width = 841
    TabOrder = 12
    inherited pnlOKCancel: TPanel
      Left = 573
    end
    inherited pnlClose: TPanel
      Left = 484
    end
    inherited pnlApply: TPanel
      Left = 752
    end
  end
  object gbID: TGroupBox [1]
    Left = 144
    Top = 8
    Width = 305
    Height = 65
    Caption = ' ID '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' ('#1054#1055#1044') '
    TabOrder = 1
    object lblBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbBranch
    end
    object lblDeficitCoverDecisionNo: TLabel
      Left = 136
      Top = 16
      Width = 43
      Height = 13
      Caption = #1055#1044#1044' No'
      FocusControl = edtDeficitCoverDecisionNo
    end
    object lblType: TLabel
      Left = 240
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbType
    end
    object lblNo: TLabel
      Left = 200
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtNo
    end
    object lblDeliveryDealType: TLabel
      Left = 8
      Top = 16
      Width = 47
      Height = 13
      Caption = #1058#1080#1087' '#1054#1055#1044
      FocusControl = cbBranch
    end
    object edtDeficitCoverDecisionNo: TDBEdit
      Left = 136
      Top = 32
      Width = 57
      Height = 21
      DataField = 'DCD_CODE'
      DataSource = dsData
      TabOrder = 2
    end
    object cbType: TJvDBLookupCombo
      Left = 240
      Top = 32
      Width = 57
      Height = 21
      DataField = 'DELIVERY_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'DELIVERY_TYPE_CODE'
      LookupDisplay = 'DELIVERY_TYPE_ABBREV'
      LookupSource = dsDeliveryTypes
      TabOrder = 4
    end
    object cbBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DataField = 'DCD_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtNo: TDBEdit
      Left = 200
      Top = 32
      Width = 33
      Height = 21
      DataField = 'DELIVERY_PROJECT_CODE'
      DataSource = dsData
      TabOrder = 3
    end
    object cbDeliveryDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 350
      DeleteKeyClear = False
      DataField = 'DELIVERY_DEAL_TYPE_CODE'
      DataSource = dsData
      LookupField = 'BORDER_DEAL_TYPE_CODE'
      LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
      LookupSource = dsDeliveryDealTypes
      TabOrder = 0
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [2]
    Left = 456
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
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
  object gbLeaseDateUnit: TGroupBox [3]
    Left = 8
    Top = 80
    Width = 193
    Height = 65
    Caption = ' '#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072' '
    TabOrder = 2
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 24
      Top = 32
      Width = 145
      Height = 21
      DataField = '_LEASE_DATE_UNIT_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbSale: TGroupBox [4]
    Left = 208
    Top = 80
    Width = 241
    Height = 65
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1055' '
    TabOrder = 3
    object lblSaleBranch: TLabel
      Left = 112
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
      FocusControl = cbSaleBranch
    end
    object lblSaleNo: TLabel
      Left = 176
      Top = 16
      Width = 41
      Height = 13
      Caption = #1054#1055#1055' No'
      FocusControl = edtSaleNo
    end
    object cbHasSale: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      DataField = 'HAS_SALE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1080#1084#1072
        #1085#1103#1084#1072)
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbSaleBranch: TJvDBLookupCombo
      Left = 112
      Top = 32
      Width = 57
      Height = 21
      DataField = 'SALE_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_CODE_AND_NAME'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtSaleNo: TDBEdit
      Left = 176
      Top = 32
      Width = 57
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbDates: TGroupBox [5]
    Left = 8
    Top = 152
    Width = 313
    Height = 89
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1086#1089#1090#1072#1074#1082#1072' '
    TabOrder = 4
    object lblDeliveryDaysRsv: TLabel
      Left = 165
      Top = 46
      Width = 37
      Height = 13
      Caption = #1056#1077#1079#1077#1088#1074
    end
    object lblDash2: TLabel
      Left = 251
      Top = 46
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frDeliveryDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 43
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
    object edtBeginDeliveryDateDaysRsv: TDBEdit
      Left = 208
      Top = 43
      Width = 41
      Height = 21
      DataField = 'BEGIN_DELIVERY_DAYS_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtEndDeliveryDateDaysRsv: TDBEdit
      Left = 264
      Top = 43
      Width = 41
      Height = 21
      DataField = 'END_DELIVERY_DAYS_RSV'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbSinglePriceDeviation: TGroupBox [6]
    Left = 336
    Top = 152
    Width = 113
    Height = 89
    Caption = ' '#1054#1090#1082#1083'. '#1085#1072' '#1045#1076'. '#1094#1077#1085#1072' '
    TabOrder = 6
    Visible = False
  end
  object gbVendor: TGroupBox [7]
    Left = 8
    Top = 248
    Width = 393
    Height = 305
    Caption = ' '#1044#1086#1089#1090#1072#1074#1095#1080#1082' '
    TabOrder = 8
    object pnlVendorInfo: TPanel
      Left = 8
      Top = 256
      Width = 377
      Height = 41
      BevelOuter = bvNone
      TabOrder = 1
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
  object gbShipmentTypeCode: TGroupBox [8]
    Left = 616
    Top = 248
    Width = 217
    Height = 65
    Caption = ' '#1058#1098#1088#1075'. '#1082#1086#1076' '#1085#1072' '#1044#1089#1090'. '
    TabOrder = 10
    object cbTradeCode: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 201
      Height = 21
      DataField = 'SHIPMENT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'SHIPMENT_TYPE_CODE'
      LookupDisplay = 'SHIPMENT_TYPE_ABBREV'
      LookupSource = dsTradeCodes
      TabOrder = 0
    end
  end
  object gbTransportBy: TGroupBox [9]
    Left = 408
    Top = 248
    Width = 201
    Height = 65
    Caption = ' '#1054#1088#1075'. '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090' '
    TabOrder = 9
    object cbIsTransportFromVendor: TJvDBComboBox
      Left = 8
      Top = 32
      Width = 185
      Height = 21
      DataField = 'IS_TRANSPORT_FROM_VENDOR_CODE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1048#1055
        #1044#1086#1089#1090#1072#1074#1095#1080#1082)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbStatus: TGroupBox [10]
    Left = 8
    Top = 8
    Width = 129
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblDash: TLabel
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
  object gbExceptEventDamages: TGroupBox [11]
    Left = 328
    Top = 152
    Width = 121
    Height = 89
    Caption = ' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083'. '
    TabOrder = 5
    object lblDamagesState: TLabel
      Left = 8
      Top = 24
      Width = 106
      Height = 13
      Caption = #1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
    end
    object cbDamagesState: TJvDBLookupCombo
      Left = 8
      Top = 43
      Width = 105
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
  object gbBudgetOrderItem: TGroupBox [12]
    Left = 408
    Top = 320
    Width = 425
    Height = 65
    Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1088#1076#1077#1088' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1086' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072' '
    TabOrder = 11
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
  inherited alActions: TActionList [13]
    Left = 88
    Top = 120
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1080' %ForOrOf% %Provision' +
        '% - '#1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1044
    end
  end
  inherited dsData: TDataSource [14]
    DataSet = nil
    Left = 136
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet [15]
    Left = 120
    Top = 120
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [16]
    Left = 272
    Top = 552
  end
  inherited dsFilterVariants: TDataSource [17]
    Left = 304
    Top = 552
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 336
    Top = 552
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 183
    Top = 120
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      ProviderFlags = []
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 194
    Top = 120
  end
  object cdsDeliveryTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryTypes'
    Left = 232
    Top = 120
    object cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object dsDeliveryTypes: TDataSource
    DataSet = cdsDeliveryTypes
    Left = 248
    Top = 120
  end
  object cdsDeliveryDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDealTypes'
    Left = 288
    Top = 120
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
  object dsDeliveryDealTypes: TDataSource
    DataSet = cdsDeliveryDealTypes
    Left = 304
    Top = 120
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
    Left = 344
    Top = 120
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
    Left = 360
    Top = 120
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 416
    Top = 144
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 400
    Top = 144
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
  object cdsTradeCodes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    Left = 320
    Top = 152
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
    Left = 336
    Top = 152
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
  object cdsDamageStates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 192
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
  object dsDamageStates: TDataSource
    DataSet = cdsDamageStates
    Left = 376
    Top = 192
  end
end
