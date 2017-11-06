inherited fmEstPricesCompareGraphFilter: TfmEstPricesCompareGraphFilter
  ClientHeight = 539
  ClientWidth = 777
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 504
    Width = 777
    TabOrder = 10
    inherited pnlOKCancel: TPanel
      Left = 509
    end
    inherited pnlClose: TPanel
      Left = 420
    end
    inherited pnlApply: TPanel
      Left = 688
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [1]
    Left = 8
    Top = 120
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
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
  inline frCompanyFilter: TfrCompanyFilter [2]
    Left = 392
    Top = 120
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' %Partner% '
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
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [3]
    Left = 8
    Top = 360
    Width = 601
    Height = 136
    TabOrder = 8
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Width = 111
      end
    end
    inherited cdsTimeUnits: TAbmesClientDataSet
      AfterOpen = frDateUnitsIntervalcdsTimeUnitsAfterOpen
    end
  end
  object gbRounder: TGroupBox [4]
    Left = 616
    Top = 360
    Width = 153
    Height = 137
    Caption = ' '#1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' '
    TabOrder = 9
    object cbRounder: TJvDBLookupCombo
      Left = 48
      Top = 80
      Width = 97
      Height = 21
      DataField = '_ROUNDER_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object rgUseDefaultRounder: TJvDBRadioPanel
      Left = 2
      Top = 24
      Width = 131
      Height = 41
      BevelOuter = bvNone
      DataField = 'USE_DEFAULT_ROUNDER'
      DataSource = dsData
      Items.Strings = (
        #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086
        #1056#1098#1095#1085#1086)
      TabOrder = 0
      Values.Strings = (
        'True'
        'False')
      OnChange = rgUseDefaultRounderChange
    end
  end
  object gbParRelProductStatus: TGroupBox [5]
    Left = 272
    Top = 8
    Width = 233
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %ParRelProductAbbrev% '
    TabOrder = 2
    object lblBetweenParRelProductStatuses: TLabel
      Left = 114
      Top = 20
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinParRelProductStatus: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 97
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MIN_PRP_STATUS_CODE'
      DataSource = dsData
      LookupField = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupDisplay = 'PAR_REL_PRODUCT_STATUS_NAME'
      LookupSource = dsParRelProductStatuses
      TabOrder = 0
    end
    object cbMaxParRelProductStatus: TJvDBLookupCombo
      Left = 128
      Top = 16
      Width = 97
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MAX_PRP_STATUS_CODE'
      DataSource = dsData
      LookupField = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupDisplay = 'PAR_REL_PRODUCT_STATUS_NAME'
      LookupSource = dsParRelProductStatuses
      TabOrder = 1
    end
  end
  object gbProductCommonLevel: TGroupBox [6]
    Left = 8
    Top = 64
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
    TabOrder = 4
    object cbProductCommonLevel: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 361
      Height = 21
      DataField = 'PRODUCT_COMMON_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1057#1090#1088#1072#1090#1077#1075#1080#1095#1077#1089#1082#1086' ('#1054#1057#1090#1088')'
        #1055#1086#1090#1077#1085#1094#1080#1072#1083#1085#1086' '#1054#1073#1086#1073#1097#1077#1085#1086' ('#1054#1055#1090#1094'+'#1045')'
        #1055#1086#1090#1077#1085#1094#1080#1072#1083#1085#1086' '#1050#1086#1085#1082#1088#1077#1090#1080#1079#1080#1088#1072#1085#1086' ('#1055'+'#1045')')
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
  end
  object gbPartnerCommonLevel: TGroupBox [7]
    Left = 392
    Top = 64
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    TabOrder = 5
    object cbPartnerCommonLevel: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 361
      Height = 21
      DataField = 'PARTNER_COMMON_LEVEL'
      DataSource = dsData
      Items.Strings = (
        #1054#1073#1086#1073#1097#1077#1085#1086' ('#1054'+'#1045')'
        #1050#1086#1085#1082#1088#1077#1090#1080#1079#1080#1088#1072#1085#1086' ('#1055'+'#1045')')
      TabOrder = 0
      Values.Strings = (
        '1'
        '2')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbValuesOrigin: TGroupBox [8]
    Left = 8
    Top = 8
    Width = 137
    Height = 49
    Caption = ' '#1042#1048#1052' '
    TabOrder = 0
    object cbValuesOrigin: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      DataField = 'VALUES_ORIGIN'
      DataSource = dsData
      Items.Strings = (
        #1057#1088#1072#1074#1085#1080#1090#1077#1083#1077#1085
        #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085
        #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1077#1085)
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
  object gbObtainmentType: TGroupBox [9]
    Left = 152
    Top = 8
    Width = 113
    Height = 49
    Caption = ' '#1058#1080#1087' %BorderRelTypeAction% '
    TabOrder = 1
    object cbObtainmentType: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 97
      Height = 21
      DropDownWidth = 300
      DeleteKeyClear = False
      DataField = 'OBTAINMENT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'OBTAINMENT_TYPE_CODE'
      LookupDisplay = 'BORDER_DEAL_TYPE_ABBREV;BORDER_DEAL_TYPE_NAME'
      LookupSource = dsBorderDealTypes
      TabOrder = 0
    end
  end
  object gbBranch: TGroupBox [10]
    Left = 272
    Top = 8
    Width = 113
    Height = 49
    Caption = ' '#1058#1055' '#1043#1083#1072#1074#1085#1086' '
    TabOrder = 3
    object cbBranch: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 97
      Height = 21
      DeleteKeyClear = False
      DataField = 'BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [11]
    Left = 288
  end
  inherited dsData: TDataSource [12]
    Left = 152
    Top = 288
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [13]
    Left = 240
    Top = 496
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 120
    Top = 288
  end
  inherited dsFilterVariants: TDataSource
    Left = 264
    Top = 496
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 288
    Top = 496
  end
  object dsBorderDealTypes: TDataSource
    Left = 208
    Top = 96
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 320
    Top = 104
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
  object dsParRelProductStatuses: TDataSource
    DataSet = cdsParRelProductStatuses
    Left = 352
    Top = 104
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 584
    Top = 8
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 616
    Top = 8
  end
end
