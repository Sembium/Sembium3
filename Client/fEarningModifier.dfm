inherited fmEarningModifier: TfmEarningModifier
  Left = 787
  Top = 235
  Caption = #1050#1086#1088#1077#1082#1090#1080#1074' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076' - %s'
  ClientHeight = 188
  ClientWidth = 289
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 153
    Width = 289
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 21
    end
    inherited pnlClose: TPanel
      Left = -68
    end
    inherited pnlApply: TPanel
      Left = 200
      Visible = False
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 273
    Height = 49
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 0
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 18
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
  object gbLabourCostCoef: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 273
    Height = 81
    TabOrder = 1
    object lblLabourCostCoef: TLabel
      Left = 8
      Top = 14
      Width = 205
      Height = 26
      Caption = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1086#1073#1097#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#13#10#1079#1072' '#1090#1088#1091#1076' ('#1050#1086#1074#1089#1090')'
      FocusControl = edtLabourCostCoef
    end
    object lblOrganizationCostCoef: TLabel
      Left = 8
      Top = 46
      Width = 205
      Height = 26
      Caption = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1086#1073#1097#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#13#10#1079#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1050#1086#1074#1089#1086')'
      FocusControl = edtOrganizationCostCoef
    end
    object edtLabourCostCoef: TDBEdit
      Left = 224
      Top = 16
      Width = 41
      Height = 21
      DataField = 'LABOUR_COST_COEF'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtOrganizationCostCoef: TDBEdit
      Left = 224
      Top = 48
      Width = 41
      Height = 21
      DataField = 'ORGANIZATION_COST_COEF'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  inherited alActions: TActionList
    Left = 64
    Top = 136
    inherited actForm: TAction
      Caption = #1050#1086#1088#1077#1082#1090#1080#1074' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076' - %s'
    end
  end
  inherited dsData: TDataSource
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 136
  end
end
