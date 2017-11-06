inherited fmOccupationSalary: TfmOccupationSalary
  ActiveControl = frDateIntervalFrame.edtInterval
  Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '#1079#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 108
  ClientWidth = 561
  ExplicitWidth = 567
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 545
    Height = 57
    ExplicitWidth = 545
    ExplicitHeight = 57
  end
  object lblDateInterval: TLabel [1]
    Left = 24
    Top = 16
    Width = 40
    Height = 13
    Caption = #1042#1088#1084#1048#1085#1090
    FocusControl = frDateIntervalFrame
  end
  object lblBaseSalary: TLabel [2]
    Left = 184
    Top = 16
    Width = 118
    Height = 13
    Caption = #1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072
    FocusControl = edtBaseSalary
  end
  object edtBaseSalaryCurrency: TLabel [3]
    Left = 312
    Top = 35
    Width = 21
    Height = 13
    Caption = '%s /'
  end
  object lblDateUnit: TLabel [4]
    Left = 352
    Top = 16
    Width = 84
    Height = 13
    Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
    FocusControl = cbDateUnit
  end
  object edtCurrentSalaryRatioCoefInterval: TLabel [5]
    Left = 456
    Top = 16
    Width = 36
    Height = 13
    Caption = #1050#1054#1088#1045#1092
  end
  object lblDash: TLabel [6]
    Left = 494
    Top = 35
    Width = 6
    Height = 13
    Caption = #8212
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 561
    TabOrder = 5
    ExplicitTop = 73
    ExplicitWidth = 561
    inherited pnlOKCancel: TPanel
      Left = 293
      ExplicitLeft = 293
    end
    inherited pnlClose: TPanel
      Left = 204
      ExplicitLeft = 204
    end
    inherited pnlApply: TPanel
      Left = 472
      Visible = False
      ExplicitLeft = 472
    end
  end
  inline frDateIntervalFrame: TfrDateIntervalFrame [8]
    Left = 24
    Top = 32
    Width = 145
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 145
    Constraints.MinHeight = 21
    Constraints.MinWidth = 145
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 24
    ExplicitTop = 32
  end
  object cbDateUnit: TJvDBLookupCombo [9]
    Left = 352
    Top = 32
    Width = 89
    Height = 21
    EscapeClear = False
    DataField = '_DATE_UNIT_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object edtBaseSalary: TDBEdit [10]
    Left = 184
    Top = 32
    Width = 121
    Height = 21
    DataField = 'BASE_SALARY'
    DataSource = dsData
    TabOrder = 1
  end
  object edtCurrentMinSalaryRatioCoef: TDBEdit [11]
    Left = 456
    Top = 32
    Width = 34
    Height = 21
    DataField = 'MIN_SALARY_RATIO_COEF'
    DataSource = dsData
    TabOrder = 3
  end
  object edtCurrentMaxSalaryRatioCoef: TDBEdit [12]
    Left = 504
    Top = 32
    Width = 34
    Height = 21
    DataField = 'MAX_SALARY_RATIO_COEF'
    DataSource = dsData
    TabOrder = 4
  end
  inherited alActions: TActionList [13]
    Left = 128
    inherited actForm: TAction
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090' '#1079#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
  end
  inherited dsData: TDataSource [15]
    Left = 96
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 64
  end
end
