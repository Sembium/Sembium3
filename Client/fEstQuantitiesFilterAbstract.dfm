inherited fmEstQuantitiesFilterAbstract: TfmEstQuantitiesFilterAbstract
  ActiveControl = cbMinParRelProductStatus
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - XXX '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassA' +
    'bbrev%'
  ClientHeight = 603
  ClientWidth = 617
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 568
    Width = 617
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 349
    end
    inherited pnlClose: TPanel
      Left = 260
    end
    inherited pnlApply: TPanel
      Left = 528
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [1]
    Left = 8
    Top = 120
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
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
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [2]
    Left = 8
    Top = 360
    Width = 601
    Height = 136
    TabOrder = 4
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Width = 111
      end
    end
  end
  object gbParRelProductStatus: TGroupBox [3]
    Left = 392
    Top = 8
    Width = 217
    Height = 49
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056'/'#1048#1044' '
    TabOrder = 1
    object lblBetweenParRelProductStatuses: TLabel
      Left = 106
      Top = 20
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinParRelProductStatus: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 89
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
      Width = 89
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
  object gbProductCommonLevel: TGroupBox [4]
    Left = 8
    Top = 8
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056'/'#1048#1044' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
    TabOrder = 0
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
  object gbPartnerCommonLevel: TGroupBox [5]
    Left = 8
    Top = 64
    Width = 377
    Height = 49
    Caption = ' '#1053#1080#1074#1086' '#1048#1048#1056'/'#1048#1044' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    TabOrder = 2
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
  object gbBase: TGroupBox [6]
    Left = 8
    Top = 503
    Width = 601
    Height = 57
    Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1080' '
    TabOrder = 5
    object lblBaseDate: TLabel
      Left = 16
      Top = 27
      Width = 48
      Height = 13
      Caption = #1050#1098#1084' '#1076#1072#1090#1072
      FocusControl = frBaseDate
    end
    inline frBaseDate: TfrDateFieldEditFrame
      Left = 72
      Top = 24
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
    end
    object rgIncludeProjectQuantities: TJvDBRadioPanel
      Left = 208
      Top = 17
      Width = 169
      Height = 33
      BevelOuter = bvNone
      Columns = 2
      DataField = 'INCLUDE_PROJECT_QUANTITIES'
      DataSource = dsData
      Items.Strings = (
        #1055#1083#1072#1085#1086#1074#1080
        #1055#1088#1086#1077#1082#1090#1085#1080)
      TabOrder = 1
      Values.Strings = (
        '0'
        '1')
    end
  end
  inherited alActions: TActionList [7]
    Left = 440
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - XXX '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassA' +
        'bbrev%'
    end
  end
  inherited dsData: TDataSource [8]
    Left = 400
  end
  inherited cdsData: TAbmesClientDataSet [9]
    Left = 368
  end
  inherited dsFilterVariants: TDataSource [10]
    Left = 272
    Top = 456
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 248
    Top = 456
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 296
    Top = 472
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 448
    Top = 64
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
    Left = 480
    Top = 64
  end
end
