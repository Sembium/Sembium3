inherited fmEstQuantitiesGraphFilter: TfmEstQuantitiesGraphFilter
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductC' +
    'lassAbbrev%'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    TabOrder = 7
  end
  inherited frDateUnitsInterval: TfrDateUnitsIntervalEditFrame
    TabOrder = 5
  end
  object gbRounders: TGroupBox [3]
    Left = 392
    Top = 120
    Width = 217
    Height = 233
    Caption = ' '#1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' '
    TabOrder = 4
    object lblQuantityRounder: TLabel
      Left = 64
      Top = 72
      Width = 61
      Height = 13
      Caption = #1047#1072' '#1088#1072#1073'. '#1082'-'#1074#1086
    end
    object lblPriceRounder: TLabel
      Left = 64
      Top = 152
      Width = 37
      Height = 13
      Caption = #1047#1072' '#1042#1057'1'
    end
    object lblAccountQuantityRounder: TLabel
      Left = 64
      Top = 112
      Width = 65
      Height = 13
      Caption = #1047#1072' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
    end
    object cbQuantityRounder: TJvDBLookupCombo
      Left = 64
      Top = 88
      Width = 97
      Height = 21
      DataField = '_QUANTITY_ROUNDER_NAME'
      DataSource = dsData
      TabOrder = 0
    end
    object cbPriceRounder: TJvDBLookupCombo
      Left = 64
      Top = 168
      Width = 97
      Height = 21
      DataField = '_PRICE_ROUNDER_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object rgUseDefaultRounders: TJvDBRadioPanel
      Left = 2
      Top = 24
      Width = 161
      Height = 49
      BevelOuter = bvNone
      DataField = 'USE_DEFAULT_ROUNDERS'
      DataSource = dsData
      Items.Strings = (
        #1040#1074#1090#1086#1084#1072#1090#1080#1095#1085#1086
        #1056#1098#1095#1085#1086)
      TabOrder = 2
      Values.Strings = (
        'True'
        'False')
      OnChange = rgUseDefaultRoundersChange
    end
    object cbAccountQuantityRounder: TJvDBLookupCombo
      Left = 64
      Top = 128
      Width = 97
      Height = 21
      DataField = '_ACCOUNT_QUANTITY_ROUNDER_NAME'
      DataSource = dsData
      TabOrder = 3
    end
  end
  inherited gbBase: TGroupBox
    TabOrder = 6
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductC' +
        'lassAbbrev%'
    end
  end
end
