inherited fmResultProductNeedsFilter: TfmResultProductNeedsFilter
  Caption = '%s '#1085#1072' %Needs% '#1086#1090' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
  ClientHeight = 396
  ClientWidth = 785
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 361
    Width = 785
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 517
    end
    inherited pnlClose: TPanel
      Left = 428
    end
    inherited pnlApply: TPanel
      Left = 696
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 377
    Height = 49
    Caption = ' %DateIntervalName% '
    TabOrder = 0
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
  inline frResultProductFilter: TfrParamProductFilter [2]
    Left = 8
    Top = 120
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1088#1086#1076#1072#1074#1072#1085' '
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
  inline frCompanyFilter: TfrCompanyFilter [3]
    Left = 400
    Top = 120
    Width = 377
    Height = 233
    TabOrder = 5
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
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
    end
  end
  object gbParRelProductStatus: TGroupBox [4]
    Left = 400
    Top = 8
    Width = 377
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' '
    TabOrder = 1
    object lblBetweenParRelProductStatuses: TLabel
      Left = 108
      Top = 19
      Width = 9
      Height = 13
      Caption = '---'
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
      Left = 120
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
  object gbProductCommonLevel: TGroupBox [5]
    Left = 8
    Top = 64
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
    TabOrder = 2
    object cbProductCommonLevel: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 361
      Height = 21
      DataField = 'PRODUCT_COMMON_LEVEL'
      DataSource = dsData
      ItemHeight = 13
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
  object gbPartnerCommonLevel: TGroupBox [6]
    Left = 400
    Top = 64
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    TabOrder = 3
    object cbPartnerCommonLevel: TJvDBComboBox
      Left = 8
      Top = 16
      Width = 361
      Height = 21
      DataField = 'PARTNER_COMMON_LEVEL'
      DataSource = dsData
      ItemHeight = 13
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
  inherited alActions: TActionList [7]
    Left = 112
    inherited actForm: TAction
      Caption = '%s '#1085#1072' %Needs% '#1086#1090' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085#1080
    end
  end
  inherited dsData: TDataSource [8]
  end
  inherited cdsData: TAbmesClientDataSet [9]
  end
  inherited dsFilterVariants: TDataSource [10]
    Left = 24
    Top = 360
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 0
    Top = 360
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 360
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 656
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
    Left = 688
  end
end
