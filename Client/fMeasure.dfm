inherited fmMeasure: TfmMeasure
  Left = 287
  Top = 409
  Caption = #1052#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072' '#1085#1072' %ProductClassAbbrev% - %s'
  ClientHeight = 148
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Height = 97
  end
  object lblName: TLabel [1]
    Left = 96
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object lblAbbrev: TLabel [2]
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = #1040#1073#1088#1077#1074'.'
    FocusControl = edtAbbrev
  end
  object lblExportNo: TLabel [3]
    Left = 456
    Top = 16
    Width = 56
    Height = 13
    Caption = #1045#1082#1089#1087#1086#1088#1090' '#8470
  end
  object lblRounder: TLabel [4]
    Left = 384
    Top = 15
    Width = 41
    Height = 13
    Caption = #1058#1086#1095#1085#1086#1089#1090
    FocusControl = cbRounder
  end
  object lblIName: TLabel [5]
    Left = 96
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Name'
    FocusControl = edtIName
  end
  object lblIMeasureAbbrev: TLabel [6]
    Left = 24
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Abbrev.'
    FocusControl = edtIMeasureAbbrev
  end
  object edtName: TDBEdit [7]
    Left = 96
    Top = 32
    Width = 273
    Height = 21
    DataField = 'MEASURE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtAbbrev: TDBEdit [8]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'MEASURE_ABBREV'
    DataSource = dsData
    TabOrder = 0
  end
  inherited pnlBottomButtons: TPanel
    Top = 113
    TabOrder = 6
    inherited pnlApply: TPanel
      Visible = False
    end
  end
  object edtExportNo: TDBEdit [10]
    Left = 456
    Top = 32
    Width = 57
    Height = 21
    DataField = 'EXPORT_NO'
    DataSource = dsData
    TabOrder = 3
  end
  object cbRounder: TJvDBLookupCombo [11]
    Left = 384
    Top = 32
    Width = 57
    Height = 21
    DropDownCount = 9
    DeleteKeyClear = False
    DataField = '_ROUNDER_TEXT'
    DataSource = dsData
    TabOrder = 2
  end
  object edtIName: TDBEdit [12]
    Left = 96
    Top = 72
    Width = 273
    Height = 21
    Color = clInfoBk
    DataField = 'I_MEASURE_NAME'
    DataSource = dsData
    TabOrder = 5
  end
  object edtIMeasureAbbrev: TDBEdit [13]
    Left = 24
    Top = 72
    Width = 57
    Height = 21
    Color = clInfoBk
    DataField = 'I_MEASURE_ABBREV'
    DataSource = dsData
    TabOrder = 4
  end
  inherited alActions: TActionList
    Left = 72
    Top = 64
    inherited actForm: TAction
      Caption = #1052#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072' '#1085#1072' %ProductClassAbbrev% - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 8
    Top = 64
  end
end
