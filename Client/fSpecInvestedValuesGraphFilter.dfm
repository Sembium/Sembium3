inherited fmSpecInvestedValuesGraphFilter: TfmSpecInvestedValuesGraphFilter
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1073#1097#1077#1085' '#1048#1085#1078#1054#1088#1057#1040#1085
  ClientHeight = 252
  ClientWidth = 361
  ExplicitWidth = 367
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 345
    Height = 201
    ExplicitWidth = 345
    ExplicitHeight = 106
  end
  object lblMainDept: TLabel [1]
    Left = 24
    Top = 16
    Width = 96
    Height = 13
    Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
    FocusControl = cbMainDept
  end
  object lblCurrency: TLabel [2]
    Left = 152
    Top = 16
    Width = 35
    Height = 13
    Caption = #1042#1072#1083#1091#1090#1072
    FocusControl = cbCurrency
  end
  object lblDate: TLabel [3]
    Left = 232
    Top = 16
    Width = 51
    Height = 13
    Caption = #1050#1098#1084' '#1044#1072#1090#1072
  end
  object lblMeasureType: TLabel [4]
    Left = 24
    Top = 64
    Width = 99
    Height = 13
    Caption = #1042#1080#1076' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
    FocusControl = cbMeasureType
  end
  object lblMaxQuantity: TLabel [5]
    Left = 152
    Top = 64
    Width = 54
    Height = 13
    Caption = #1052#1072#1082#1089'. '#1082'-'#1074#1086
    FocusControl = edtMaxQuantity
  end
  object txtMeasureAbbrev: TDBText [6]
    Left = 309
    Top = 83
    Width = 36
    Height = 17
    DataField = '_MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblQuantityStep: TLabel [7]
    Left = 232
    Top = 64
    Width = 37
    Height = 13
    Caption = #1057#1090#1098#1087#1082#1072
    FocusControl = edtQuantityStep
  end
  object lblRootLineStageIncludeLevel: TLabel [8]
    Left = 24
    Top = 112
    Width = 98
    Height = 13
    Caption = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1091#1083#1077#1074' '#1088#1077#1076
    FocusControl = cbRootLineStageIncludeLevel
  end
  object lblNonRootLineStageIncludeLevel: TLabel [9]
    Left = 24
    Top = 160
    Width = 110
    Height = 13
    Caption = #1045#1090#1072#1087#1080' '#1085#1072' '#1085#1077#1085#1091#1083#1077#1074' '#1088#1077#1076
    FocusControl = cbNonRootLineStageIncludeLevel
  end
  inherited pnlBottomButtons: TPanel
    Top = 217
    Width = 361
    TabOrder = 8
    ExplicitTop = 217
    ExplicitWidth = 361
    inherited pnlOKCancel: TPanel
      Left = 93
      ExplicitLeft = 93
    end
    inherited pnlClose: TPanel
      Left = 4
      ExplicitLeft = 4
    end
    inherited pnlApply: TPanel
      Left = 272
      ExplicitLeft = 272
    end
  end
  object cbMainDept: TJvDBLookupCombo [11]
    Left = 24
    Top = 32
    Width = 113
    Height = 21
    EscapeClear = False
    DataField = '_MAIN_DEPT_IDENTIFIER'
    DataSource = dsData
    TabOrder = 0
  end
  object cbCurrency: TJvDBLookupCombo [12]
    Left = 152
    Top = 32
    Width = 65
    Height = 21
    EscapeClear = False
    DataField = '_CURRENCY_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  inline frDate: TfrDateFieldEditFrame [13]
    Left = 232
    Top = 32
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 2
    TabStop = True
    ExplicitLeft = 232
    ExplicitTop = 32
  end
  object edtMaxQuantity: TDBEdit [14]
    Left = 152
    Top = 80
    Width = 65
    Height = 21
    DataField = 'MAX_QUANTITY'
    DataSource = dsData
    TabOrder = 4
  end
  object cbMeasureType: TJvDBLookupCombo [15]
    Left = 24
    Top = 80
    Width = 113
    Height = 21
    EscapeClear = False
    DataField = '_MEASURE_TYPE_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  object edtQuantityStep: TDBEdit [16]
    Left = 232
    Top = 80
    Width = 65
    Height = 21
    DataField = 'QUANTITY_STEP'
    DataSource = dsData
    TabOrder = 5
  end
  object cbRootLineStageIncludeLevel: TJvDBComboBox [17]
    Left = 24
    Top = 128
    Width = 313
    Height = 21
    DataField = 'ROOT_LINE_STAGE_INCLUDE_LEVEL'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      #1041#1077#1079' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
      #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
      #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1057' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080)
    TabOrder = 6
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object cbNonRootLineStageIncludeLevel: TJvDBComboBox [18]
    Left = 24
    Top = 176
    Width = 313
    Height = 21
    DataField = 'NON_ROOT_LINE_STAGE_INCLUDE_LEVEL'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      #1041#1077#1079' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1041#1077#1079' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080
      #1057' '#1050#1088#1072#1081#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080', '#1057' '#1053#1072#1095#1072#1083#1085#1086'-'#1076#1086#1073#1072#1074#1103#1085#1080)
    TabOrder = 7
    Values.Strings = (
      '0'
      '1')
  end
  inherited alActions: TActionList [19]
    Left = 176
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1054#1073#1086#1073#1097#1077#1085' '#1048#1085#1078#1054#1088#1057#1040#1085
    end
  end
  inherited dsData: TDataSource [21]
    Left = 136
  end
  inherited cdsData: TAbmesClientDataSet [22]
    Left = 104
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [23]
  end
  inherited dsFilterVariants: TDataSource [24]
  end
end
