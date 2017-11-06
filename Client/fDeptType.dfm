inherited fmDeptType: TfmDeptType
  Left = 365
  Top = 236
  Caption = #1042#1080#1076' '#1058#1055' - %s'
  ClientHeight = 109
  ClientWidth = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 434
    Height = 58
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblAbbrev: TLabel [2]
    Left = 96
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
  end
  object lblName: TLabel [3]
    Left = 184
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 450
    inherited pnlOKCancel: TPanel
      Left = 182
    end
    inherited pnlClose: TPanel
      Left = 93
    end
    inherited pnlApply: TPanel
      Left = 361
      Visible = False
    end
  end
  object edtCode: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'DEPT_TYPE_CODE'
    DataSource = dsData
    TabOrder = 1
  end
  object edtAbbrev: TDBEdit [6]
    Left = 96
    Top = 32
    Width = 73
    Height = 21
    DataField = 'DEPT_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 2
  end
  object edtName: TDBEdit [7]
    Left = 184
    Top = 32
    Width = 241
    Height = 21
    DataField = 'DEPT_TYPE_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    Left = 64
    Top = 56
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1058#1055' - %s'
    end
  end
  inherited dsData: TDataSource
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 56
  end
end
