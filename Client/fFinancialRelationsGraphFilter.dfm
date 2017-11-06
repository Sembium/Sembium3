inherited fmFinancialRelationsGraphFilter: TfmFinancialRelationsGraphFilter
  Caption = '%s '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    TabOrder = 6
  end
  inherited frDateUnitsInterval: TfrDateUnitsIntervalEditFrame
    TabOrder = 5
  end
  inherited frCompanyFilter: TfrCompanyFilter
    TabOrder = 4
  end
  object gbRounder: TGroupBox [6]
    Left = 8
    Top = 160
    Width = 217
    Height = 81
    Caption = ' '#1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' '
    TabOrder = 3
    object rgUseDefaultRounder: TJvDBRadioPanel
      Left = 2
      Top = 19
      Width = 103
      Height = 51
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
    object cbRounder: TJvDBLookupCombo
      Left = 112
      Top = 45
      Width = 97
      Height = 21
      DataField = '_ROUNDER_NAME'
      DataSource = dsData
      TabOrder = 1
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1054#1090#1085#1086#1096#1077#1085#1080#1103' '#1089' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
    end
  end
end
