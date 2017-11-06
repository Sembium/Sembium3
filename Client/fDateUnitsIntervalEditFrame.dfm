inherited frDateUnitsIntervalEditFrame: TfrDateUnitsIntervalEditFrame
  Width = 601
  Height = 136
  DesignSize = (
    601
    136)
  object gbTimeUnits: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 601
    Height = 81
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object lblTimeUnit: TLabel
      Left = 8
      Top = 16
      Width = 81
      Height = 13
      Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
    end
    object lblTimeUnitCount: TLabel
      Left = 184
      Top = 16
      Width = 108
      Height = 13
      Caption = #1041#1088#1086#1081' '#1074#1088#1077#1084#1077#1074#1080' '#1089#1090#1098#1087#1082#1080
    end
    object lblTUStart: TLabel
      Left = 174
      Top = 63
      Width = 29
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '1'
    end
    object lblTUEnd: TLabel
      Left = 526
      Top = 62
      Width = 48
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '1'
    end
    object cbTimeUnit: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 161
      Height = 21
      DeleteKeyClear = False
      DataField = '_TIME_UNIT_NAME'
      DataSource = dsLocal
      TabOrder = 0
    end
    object tbTimeUnitCount: TTrackBar
      Left = 176
      Top = 32
      Width = 385
      Height = 29
      Max = 50
      TabOrder = 1
      OnChange = tbTimeUnitCountChange
    end
    object pnlTimeUnitsNum: TPanel
      Left = 566
      Top = 32
      Width = 27
      Height = 21
      BevelOuter = bvLowered
      TabOrder = 2
    end
  end
  object gbDates: TGroupBox [1]
    Left = 0
    Top = 87
    Width = 601
    Height = 49
    Anchors = [akLeft, akRight, akBottom]
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1080#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    object deBeginDate: TAbmesDBDateEdit
      Left = 8
      Top = 19
      Width = 89
      Height = 21
      TabStop = False
      BeepOnError = False
      DataField = 'BEGIN_DATE'
      DataSource = dsLocal
      ReadOnly = True
      Color = 16115403
      DirectInput = False
      TabOrder = 0
    end
    object edtBeginDate: TDBEdit
      Left = 96
      Top = 19
      Width = 73
      Height = 21
      TabStop = False
      Color = 16115403
      DataField = 'BEGIN_DATE'
      DataSource = dsLocal
      TabOrder = 1
    end
    object deEndDate: TAbmesDBDateEdit
      Left = 432
      Top = 19
      Width = 89
      Height = 21
      TabStop = False
      BeepOnError = False
      DataField = '_END_DATE'
      DataSource = dsLocal
      ReadOnly = True
      Color = 16115403
      DirectInput = False
      TabOrder = 6
    end
    object edtEndDate: TDBEdit
      Left = 520
      Top = 19
      Width = 73
      Height = 21
      TabStop = False
      Color = 16115403
      DataField = '_END_DATE'
      DataSource = dsLocal
      TabOrder = 7
    end
    object btnPrev: TBitBtn
      Left = 192
      Top = 17
      Width = 57
      Height = 25
      Action = actPrev
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000000000000000FF000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000FF00
        00FF0000FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        0000000000000000FF0000FF0000FF0000FF0000FF0000000000000000000000
        000000000000000000000000000000000000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FF00FFFF00FF
        0000000000000000FF0000FF0000FF0000FF0000FF0000000000000000000000
        00000000000000000000FF00FFFF00FFFF00FFFF00FF0000000000000000FF00
        00FF0000FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000000000000000FF000000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object btnFinePrev: TBitBtn
      Left = 264
      Top = 17
      Width = 33
      Height = 25
      Action = actPrevFine
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object btnFineNext: TBitBtn
      Left = 307
      Top = 17
      Width = 33
      Height = 25
      Action = actNextFine
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object btnNext: TBitBtn
      Left = 355
      Top = 17
      Width = 57
      Height = 25
      Action = actNext
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
        00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000000000FF0000FF0000FF000000000000FF00
        FFFF00FFFF00FFFF00FF00000000000000000000000000000000000000000000
        00FF0000FF0000FF0000FF0000FF000000000000FF00FFFF00FF0000000000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF00000000000000000000000000000000000000000000000000000000
        00FF0000FF0000FF0000FF0000FF000000000000FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF0000000000FF0000FF0000FF000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
        00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
  end
  inherited alActions: TActionList
    Left = 80
    Top = 56
    object actPrev: TAction
      Hint = '-n/2'
      ImageIndex = 36
      OnExecute = actPrevExecute
    end
    object actNext: TAction
      Hint = '+n/2'
      ImageIndex = 37
      OnExecute = actNextExecute
    end
    object actPrevFine: TAction
      Caption = '<'
      Hint = '-1'
      OnExecute = actPrevFineExecute
    end
    object actNextFine: TAction
      Caption = '>'
      Hint = '+1'
      OnExecute = actNextFineExecute
    end
  end
  inherited dsData: TDataSource
    Left = 112
    Top = 56
  end
  object cdsLocal: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsLocalCalcFields
    Left = 264
    Top = 64
    object cdsLocalTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object cdsLocalTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object cdsLocalBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsLocal_TIME_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_NAME'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'TIME_UNIT_CODE'
      Size = 30
      Lookup = True
    end
    object cdsLocal_TIME_UNIT_DEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_DEFAULT_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'DEFAULT_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object cdsLocal_TIME_UNIT_MIN_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_MIN_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'MIN_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object cdsLocal_TIME_UNIT_MAX_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_MAX_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'MAX_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object cdsLocal_CENTER_DATE: TAbmesSQLTimeStampField
      FieldName = '_CENTER_DATE'
      ProviderFlags = []
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsLocal_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
      Calculated = True
    end
  end
  object dsLocal: TDataSource
    DataSet = cdsLocal
    OnDataChange = dsLocalDataChange
    Left = 296
    Top = 64
  end
  object cdsTimeUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvTimeUnits'
    StoreDefs = True
    Left = 360
    Top = 64
    object cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsTimeUnitsTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
    object cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
    object cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DEFAULT_UNIT_COUNT'
    end
    object cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MIN_UNIT_COUNT'
    end
    object cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MAX_UNIT_COUNT'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME_PLURAL'
      Size = 50
    end
  end
end
