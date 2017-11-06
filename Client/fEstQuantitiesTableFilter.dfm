inherited fmEstQuantitiesTableFilter: TfmEstQuantitiesTableFilter
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductC' +
    'lassAbbrev%'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    TabOrder = 7
  end
  inherited frDateUnitsInterval: TfrDateUnitsIntervalEditFrame
    TabOrder = 5
  end
  object gbQuantities: TGroupBox [3]
    Left = 392
    Top = 120
    Width = 217
    Height = 233
    Caption = ' '#1057#1072#1084#1086' %ProductsClassName%, '#1079#1072' '#1082#1086#1080#1090#1086' '
    TabOrder = 4
    object bvlQuantities1: TBevel
      Left = 8
      Top = 85
      Width = 201
      Height = 9
      Shape = bsTopLine
    end
    object bvlQuantities2: TBevel
      Left = 8
      Top = 157
      Width = 201
      Height = 9
      Shape = bsTopLine
    end
    object rgInQuantities: TJvDBRadioPanel
      Left = 8
      Top = 24
      Width = 193
      Height = 55
      BevelOuter = bvNone
      DataField = 'IN_QUANTITIES'
      DataSource = dsData
      Items.Strings = (
        #1048#1084#1072' '#1087#1088#1086#1075#1085#1086#1079#1085#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
        #1053#1103#1084#1072' '#1087#1088#1086#1075#1085#1086#1079#1085#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
        #1042#1089#1080#1095#1082#1080)
      TabOrder = 0
      Values.Strings = (
        '2'
        '3'
        '1')
    end
    object rgOutQuantities: TJvDBRadioPanel
      Left = 8
      Top = 96
      Width = 193
      Height = 55
      BevelOuter = bvNone
      DataField = 'OUT_QUANTITIES'
      DataSource = dsData
      Items.Strings = (
        #1048#1084#1072' '#1087#1088#1086#1075#1085#1086#1079#1085#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
        #1053#1103#1084#1072' '#1087#1088#1086#1075#1085#1086#1079#1085#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
        #1042#1089#1080#1095#1082#1080)
      TabOrder = 1
      Values.Strings = (
        '2'
        '3'
        '1')
    end
    object rgDeficit: TJvDBRadioPanel
      Left = 8
      Top = 168
      Width = 193
      Height = 55
      BevelOuter = bvNone
      DataField = 'DEFICIT'
      DataSource = dsData
      Items.Strings = (
        #1048#1084#1072' '#1076#1077#1092#1080#1094#1080#1090
        #1053#1103#1084#1072' '#1076#1077#1092#1080#1094#1080#1090
        #1042#1089#1080#1095#1082#1080)
      TabOrder = 2
      Values.Strings = (
        '2'
        '3'
        '1')
    end
  end
  inherited gbBase: TGroupBox
    Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1080'  '
    TabOrder = 6
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductC' +
        'lassAbbrev%'
    end
  end
end
