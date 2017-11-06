inherited fmEmployeeDateAvailability: TfmEmployeeDateAvailability
  Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077'/'#1054#1090#1089#1098#1089#1090#1074#1080#1077' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  ClientHeight = 567
  ClientWidth = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 532
    Width = 609
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 341
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 252
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 520
      TabOrder = 3
      Visible = False
    end
    object btnEmployeeDateShiftCycles: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEmployeeDateShiftCycles
      Caption = #1056#1072#1073#1086#1090#1085#1086' '#1074#1088#1077#1084#1077'...'
      TabOrder = 0
    end
  end
  object gbOccupation: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 593
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072' '
    TabOrder = 0
    object lblOccupationDept: TLabel
      Left = 8
      Top = 16
      Width = 186
      Height = 13
      Caption = #1054#1088#1063' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
    end
    object lblOccupationName: TLabel
      Left = 264
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblOccupationLevel: TLabel
      Left = 480
      Top = 16
      Width = 48
      Height = 13
      Caption = #1054#1088#1075' '#1053#1080#1074#1086
    end
    object lblShiftIdentifier: TLabel
      Left = 536
      Top = 16
      Width = 33
      Height = 13
      Caption = #1057#1084#1103#1085#1072
    end
    object edtOccupationDept: TDBEdit
      Left = 8
      Top = 32
      Width = 249
      Height = 21
      Color = clBtnFace
      DataField = 'OCCUPATION_DEPT_IDENTIFIER'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtOccupationName: TDBEdit
      Left = 264
      Top = 32
      Width = 209
      Height = 21
      Color = clBtnFace
      DataField = 'OCCUPATION_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtOccupationLevel: TDBEdit
      Left = 480
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'OCCUPATION_LEVEL'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    object edtShiftIdentifier: TDBEdit
      Left = 536
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'SHIFT_IDENTIFIER'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
  end
  object gbEmployee: TGroupBox [2]
    Left = 8
    Top = 80
    Width = 593
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
    TabOrder = 1
    object lblEmployeeStatus: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblEmployeeCode: TLabel
      Left = 80
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblEmployeeName: TLabel
      Left = 152
      Top = 16
      Width = 22
      Height = 13
      Caption = #1048#1084#1077
    end
    object lblEmployeeAbbrev: TLabel
      Left = 400
      Top = 16
      Width = 34
      Height = 13
      Caption = #1040#1073#1088#1077#1074'.'
    end
    object lblEmployeeEgn: TLabel
      Left = 456
      Top = 16
      Width = 50
      Height = 13
      Caption = #1045#1043#1053'/'#1051#1053#1063
    end
    object edtEmployeeStatus: TDBEdit
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'EMPLOYEE_STATUS_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtEmployeeNo: TDBEdit
      Left = 80
      Top = 32
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'EMPLOYEE_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtEmployeeName: TDBEdit
      Left = 152
      Top = 32
      Width = 241
      Height = 21
      Color = clBtnFace
      DataField = 'EMPLOYEE_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    object edtEmployeeAbbrev: TDBEdit
      Left = 400
      Top = 32
      Width = 49
      Height = 21
      Color = clBtnFace
      DataField = 'EMPLOYEE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object edtEmployeeEgn: TDBEdit
      Left = 456
      Top = 32
      Width = 81
      Height = 21
      Color = clBtnFace
      DataField = 'EMPLOYEE_EGN'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 4
    end
    object tlbEmployeeDocs: TToolBar
      Left = 544
      Top = 31
      Width = 36
      Height = 22
      Align = alNone
      AutoSize = True
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      object btnEmployeeDocs: TToolButton
        Left = 0
        Top = 0
        Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1103
        ImageIndex = 1
        OnClick = btnEmployeeDocsClick
      end
    end
  end
  object gbTimeline: TGroupBox [3]
    Left = 8
    Top = 152
    Width = 593
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077' '#1085#1072' '#1076#1072#1090#1072'                                   '
    TabOrder = 4
    object txtEmpDayAbsenceReason: TDBText
      Left = 24
      Top = 32
      Width = 545
      Height = 13
      Alignment = taCenter
      DataField = '_MAX_EMP_DAY_ABS_REASON_CODE'
      DataSource = dsEmployeeAvailabilityModifiers
    end
    object pnlTimeLine: TPanel
      Left = 8
      Top = 24
      Width = 579
      Height = 45
      BevelOuter = bvNone
      TabOrder = 0
      object shpTheDate: TShape
        Left = 0
        Top = 14
        Width = 1
        Height = 10
      end
      object txtTheDate: TDBText
        Left = 0
        Top = 0
        Width = 65
        Height = 17
        DataField = 'THE_DATE'
        DataSource = dsData
        Transparent = True
      end
      object shpTheNextDate: TShape
        Left = 288
        Top = 14
        Width = 1
        Height = 10
      end
      object txtTheNextDate: TDBText
        Left = 288
        Top = 0
        Width = 65
        Height = 17
        DataField = '_THE_NEXT_DATE'
        DataSource = dsData
        Transparent = True
      end
      object shpTheDate12: TShape
        Left = 144
        Top = 14
        Width = 1
        Height = 10
      end
      object shpTheNextDate12: TShape
        Left = 432
        Top = 14
        Width = 1
        Height = 10
      end
      object shpTheDate6: TShape
        Left = 72
        Top = 14
        Width = 1
        Height = 10
      end
      object shpTheDate18: TShape
        Left = 216
        Top = 14
        Width = 1
        Height = 10
      end
      object shpTheNextDate6: TShape
        Left = 360
        Top = 14
        Width = 1
        Height = 10
      end
      object shpTheNextDate18: TShape
        Left = 504
        Top = 14
        Width = 1
        Height = 10
      end
      object lblTheDate12: TLabel
        Left = 144
        Top = 0
        Width = 27
        Height = 13
        Caption = '12:00'
      end
      object lblTheNextDate12: TLabel
        Left = 432
        Top = 0
        Width = 27
        Height = 13
        Caption = '12:00'
      end
      object lblTheDate0: TLabel
        Left = 0
        Top = 0
        Width = 21
        Height = 13
        Caption = '0:00'
      end
      object shpTheDate1: TShape
        Left = 12
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate2: TShape
        Left = 24
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate3: TShape
        Left = 36
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate4: TShape
        Left = 48
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate5: TShape
        Left = 60
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate7: TShape
        Left = 84
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate8: TShape
        Left = 96
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate9: TShape
        Left = 108
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate10: TShape
        Left = 120
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate11: TShape
        Left = 132
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate13: TShape
        Left = 156
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate14: TShape
        Left = 168
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate15: TShape
        Left = 180
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate16: TShape
        Left = 192
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate17: TShape
        Left = 204
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate19: TShape
        Left = 228
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate20: TShape
        Left = 240
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate21: TShape
        Left = 252
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate22: TShape
        Left = 264
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheDate23: TShape
        Left = 276
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate1: TShape
        Left = 300
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate2: TShape
        Left = 312
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate3: TShape
        Left = 324
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate4: TShape
        Left = 336
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate5: TShape
        Left = 348
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate7: TShape
        Left = 372
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate8: TShape
        Left = 384
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate9: TShape
        Left = 396
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate10: TShape
        Left = 408
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate11: TShape
        Left = 420
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate13: TShape
        Left = 444
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate14: TShape
        Left = 456
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate15: TShape
        Left = 468
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate16: TShape
        Left = 480
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate17: TShape
        Left = 492
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate19: TShape
        Left = 516
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate20: TShape
        Left = 528
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate21: TShape
        Left = 540
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate22: TShape
        Left = 552
        Top = 21
        Width = 1
        Height = 3
      end
      object shpTheNextDate23: TShape
        Left = 564
        Top = 21
        Width = 1
        Height = 3
      end
      object lblTheDate6: TLabel
        Left = 72
        Top = 0
        Width = 21
        Height = 13
        Caption = '6:00'
      end
      object lblTheDate18: TLabel
        Left = 216
        Top = 0
        Width = 27
        Height = 13
        Caption = '18:00'
      end
      object lblTheNextDate6: TLabel
        Left = 360
        Top = 0
        Width = 21
        Height = 13
        Caption = '6:00'
      end
      object lblTheNextDate18: TLabel
        Left = 504
        Top = 0
        Width = 27
        Height = 13
        Caption = '18:00'
      end
      object grdTimeLine: TDrawGrid
        Left = 0
        Top = 24
        Width = 576
        Height = 16
        TabStop = False
        BorderStyle = bsNone
        ColCount = 460
        DefaultColWidth = 1
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        GridLineWidth = 0
        Options = [goFixedVertLine, goVertLine, goHorzLine]
        ParentShowHint = False
        ScrollBars = ssNone
        ShowHint = True
        TabOrder = 0
        OnDrawCell = grdTimeLineDrawCell
        OnMouseMove = grdTimeLineMouseMove
        OnSelectCell = grdTimeLineSelectCell
      end
      object pnlHideRightTimeLine: TPanel
        Left = 288
        Top = 32
        Width = 289
        Height = 41
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pnlEmployeeIsAvailableNow: TPanel
      Left = 322
      Top = 8
      Width = 266
      Height = 13
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object txtEmployeeIsAvailableNow: TDBText
        Left = 0
        Top = 0
        Width = 266
        Height = 13
        Alignment = taRightJustify
        DataField = 'IS_EMPLOYEE_AVAILABLE_NOW'
        DataSource = dsData
      end
    end
  end
  object pnlGrids: TPanel [4]
    Left = 8
    Top = 232
    Width = 593
    Height = 293
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 5
    object gbEmployeeMovements: TGroupBox
      Left = 0
      Top = 0
      Width = 593
      Height = 143
      Align = alTop
      Caption = ' '#1044#1074#1080#1078#1077#1085#1080#1103' '
      TabOrder = 0
      DesignSize = (
        593
        143)
      object pnlEmployeeMovements: TPanel
        Left = 10
        Top = 15
        Width = 573
        Height = 118
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnlResizeMovements: TPanel
        Left = 560
        Top = 0
        Width = 16
        Height = 16
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          16
          16)
        object tlbResizeMovements: TToolBar
          Left = 0
          Top = 0
          Width = 16
          Height = 16
          Align = alNone
          Anchors = [akTop, akRight]
          AutoSize = True
          ButtonHeight = 16
          ButtonWidth = 16
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Marlett'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          object btnMaximizeMovements: TSpeedButton
            Left = 0
            Top = 0
            Width = 16
            Height = 16
            Action = actMaximizeMovements
            Flat = True
            Transparent = False
          end
        end
      end
    end
    object gbEmployeeAvailabilityModifiers: TGroupBox
      Left = 0
      Top = 150
      Width = 593
      Height = 143
      Align = alClient
      Caption = ' '#1052#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088#1080' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077' '
      TabOrder = 2
      DesignSize = (
        593
        143)
      object pnlEmployeeAvailabilityModifiers: TPanel
        Left = 10
        Top = 15
        Width = 573
        Height = 118
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
      end
      object pnlResizeModifiers: TPanel
        Left = 560
        Top = 0
        Width = 16
        Height = 16
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          16
          16)
        object tlbResizeModifiers: TToolBar
          Left = 0
          Top = 0
          Width = 16
          Height = 16
          Align = alNone
          Anchors = [akTop, akRight]
          AutoSize = True
          ButtonHeight = 16
          ButtonWidth = 16
          Caption = 'ToolBar1'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Marlett'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          object btnMaximizeModifiers: TSpeedButton
            Left = 0
            Top = 0
            Width = 16
            Height = 16
            Action = actMaximizeModifiers
            Flat = True
            Transparent = False
          end
        end
      end
    end
    object pnlGridSeparator: TPanel
      Left = 0
      Top = 143
      Width = 593
      Height = 7
      Hint = '7'
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
  object edtTheDate: TDBEdit [5]
    Left = 129
    Top = 150
    Width = 64
    Height = 21
    Color = 14276044
    DataField = 'THE_DATE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 2
  end
  object edtDayAvailabilityStatusAbbrev: TDBEdit [6]
    Left = 197
    Top = 150
    Width = 27
    Height = 21
    Color = clBtnFace
    DataField = 'DAY_AVAIL_STATUS_ABBREV'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 3
  end
  inherited alActions: TActionList
    Left = 376
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1077'/'#1054#1090#1089#1098#1089#1090#1074#1080#1077' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
    end
    inherited actPrint: TAction [1]
    end
    inherited actApplyUpdates: TAction [2]
    end
    inherited actCancelUpdates: TAction [3]
    end
    object actMaximizeMovements: TAction
      Tag = 1
      Caption = '1'
      OnExecute = actMaximizeMovementsExecute
    end
    object actMaximizeModifiers: TAction
      Tag = 1
      Caption = '1'
      OnExecute = actMaximizeModifiersExecute
    end
    object actEmployeeDateShiftCycles: TAction
      Caption = #1056#1072#1073#1086#1090#1085#1086' '#1074#1088#1077#1084#1077'...'
      OnExecute = actEmployeeDateShiftCyclesExecute
    end
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 248
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conEmployeeAvailability
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_DATE_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'WORKDAY_BEGIN_END_TIME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmpDateAvail'
    AfterOpen = cdsDataAfterOpen
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    AfterGetRecords = cdsDataAfterGetRecords
    Left = 16
    Top = 248
    object cdsDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsDataOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDataOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsDataOCCUPATION_LEVEL: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'OCCUPATION_LEVEL'
    end
    object cdsDataSHIFT_IDENTIFIER: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsDataEMPLOYEE_STATUS_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_STATUS_NAME'
      Size = 100
    end
    object cdsDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 62
    end
    object cdsDataEMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'EMPLOYEE_ABBREV'
      Size = 5
    end
    object cdsDataEMPLOYEE_EGN: TAbmesWideStringField
      FieldName = 'EMPLOYEE_EGN'
      Size = 10
    end
    object cdsDataEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object cdsDataEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object cdsDataEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDataTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsDataWORKDAY_BEGIN_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_DATE_TIME'
    end
    object cdsDataWORKDAY_END_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_DATE_TIME'
    end
    object cdsDataDAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'DAY_ABSENCE_REASON_CODE'
    end
    object cdsDataDAY_AVAIL_STATUS_ABBREV: TAbmesWideStringField
      FieldName = 'DAY_AVAIL_STATUS_ABBREV'
      Size = 100
    end
    object cdsDataIS_EMPLOYEE_AVAILABLE_NOW: TAbmesFloatField
      FieldName = 'IS_EMPLOYEE_AVAILABLE_NOW'
      DisplayBoolValues = #1055#1088#1080#1089#1098#1089#1090#1074#1072' '#1074' '#1084#1086#1084#1077#1085#1090#1072';'#1053#1045' '#1087#1088#1080#1089#1098#1089#1090#1074#1072' '#1074' '#1084#1086#1084#1077#1085#1090#1072
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_WORKDATE_NOW: TAbmesFloatField
      FieldName = 'IS_WORKDATE_NOW'
      FieldValueType = fvtBoolean
    end
    object cdsDataqryEmpDateAvailModifiers: TDataSetField
      FieldName = 'qryEmpDateAvailModifiers'
    end
    object cdsDataqryEmpDateAvailMovements: TDataSetField
      FieldName = 'qryEmpDateAvailMovements'
    end
    object cdsData_THE_NEXT_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_THE_NEXT_DATE'
      Calculated = True
    end
    object cdsData_STORNO_MOVEMENT_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STORNO_MOVEMENT_COUNT'
      Calculated = True
    end
    object cdsData_STORNO_EMP_AVAIL_MOD_COUNT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STORNO_EMP_AVAIL_MOD_COUNT'
      Calculated = True
    end
  end
  object cdsEmployeeMovements: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqryEmpDateAvailMovements
    Filtered = True
    Params = <>
    BeforePost = cdsEmployeeMovementsBeforePost
    AfterPost = cdsEmployeeMovementsAfterPost
    OnFilterRecord = cdsEmployeeMovementsFilterRecord
    OnNewRecord = cdsEmployeeMovementsNewRecord
    Left = 16
    Top = 280
    object cdsEmployeeMovementsEMP_MOVEMENT_CODE: TAbmesFloatField
      FieldName = 'EMP_MOVEMENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeeMovementsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeeMovementsIN_OUT: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1042#1080#1076
      FieldName = 'IN_OUT'
      Required = True
      OnGetText = cdsEmployeeMovementsIN_OUTGetText
    end
    object cdsEmployeeMovementsEMP_MOVEMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'EMP_MOVEMENT_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object cdsEmployeeMovementsEMP_MOVEMENT_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1063#1072#1089
      FieldName = 'EMP_MOVEMENT_TIME'
      Required = True
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeMovementsEMP_MOVEMENT_DATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'EMP_MOVEMENT_DATE_TIME'
    end
    object cdsEmployeeMovementsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsEmployeeMovementsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsEmployeeMovementsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeMovementsSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsEmployeeMovementsSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsEmployeeMovementsSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeMovementsRECORD_TYPE: TAbmesFloatField
      FieldName = 'RECORD_TYPE'
      ProviderFlags = []
    end
    object cdsEmployeeMovementsFOR_OTHER_DATE: TAbmesFloatField
      FieldName = 'FOR_OTHER_DATE'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeMovementsIS_UNMATCHED_MOVEMENT: TAbmesFloatField
      FieldName = 'IS_UNMATCHED_MOVEMENT'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeMovementsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object cdsEmployeeMovementsCREATE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_NAME'
      Size = 44
    end
    object cdsEmployeeMovements_STORNO_COUNT: TAggregateField
      FieldName = '_STORNO_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Count(STORNO_EMPLOYEE_CODE)'
    end
  end
  object cdsEmployeeAvailabilityModifiers: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsDataqryEmpDateAvailModifiers
    Filtered = True
    Params = <>
    BeforeEdit = cdsEmployeeAvailabilityModifiersBeforeEdit
    BeforePost = cdsEmployeeAvailabilityModifiersBeforePost
    AfterPost = cdsEmployeeAvailabilityModifiersAfterPost
    OnCalcFields = cdsEmployeeAvailabilityModifiersCalcFields
    OnFilterRecord = cdsEmployeeAvailabilityModifiersFilterRecord
    OnNewRecord = cdsEmployeeAvailabilityModifiersNewRecord
    Left = 16
    Top = 311
    object cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmployeeAvailabilityModifiersEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeeAvailabilityModifiersAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1088#1077#1076#1080#1083
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsEmployeeAvailabilityModifiersBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsEmployeeAvailabilityModifiersEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
      OnChange = cdsEmployeeAvailabilityModifiersEMP_AVAIL_MODIFIER_TYPE_CODEChange
    end
    object cdsEmployeeAvailabilityModifiersEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
    end
    object cdsEmployeeAvailabilityModifiersBEGIN_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_TIME'
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeAvailabilityModifiersEND_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081
      FieldName = 'END_TIME'
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeAvailabilityModifiersDURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'DURATION_HOURS'
      DisplayFormat = '0.###'
      EditFormat = '0.###'
      MaxValue = 1000.000000000000000000
    end
    object cdsEmployeeAvailabilityModifiersIS_PERSONAL_WORKDAYS_ONLY: TAbmesFloatField
      DisplayLabel = #1057#1072#1084#1086' '#1079#1072' '#1083#1080#1095#1085#1080#1090#1077' '#1088#1072#1073#1086#1090#1085#1080' '#1076#1085#1080
      FieldName = 'IS_PERSONAL_WORKDAYS_ONLY'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      OnChange = cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_REASON_CODEChange
    end
    object cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
    end
    object cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_NO: TAbmesWideStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'EMP_DAY_ABSENCE_DOC_NO'
      Size = 50
    end
    object cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077
      FieldName = 'EMP_DAY_ABSENCE_DOC_DATE'
    end
    object cdsEmployeeAvailabilityModifiersEMP_DAY_ABSENCE_DOC_ISSUER: TAbmesWideStringField
      DisplayLabel = #1048#1079#1076#1072#1076#1077#1085' '#1086#1090
      FieldName = 'EMP_DAY_ABSENCE_DOC_ISSUER'
      Size = 100
    end
    object cdsEmployeeAvailabilityModifiersNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsEmployeeAvailabilityModifiersDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsEmployeeAvailabilityModifiersDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsEmployeeAvailabilityModifiersHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeAvailabilityModifiersCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsEmployeeAvailabilityModifiersCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsEmployeeAvailabilityModifiersCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeAvailabilityModifiersSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsEmployeeAvailabilityModifiersSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsEmployeeAvailabilityModifiersSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      OnGetText = TimeGetText
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsEmployeeAvailabilityModifiersIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
    end
    object cdsEmployeeAvailabilityModifiersIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeeAvailabilityModifiersOLD_SHIFT_CODE: TAbmesFloatField
      FieldName = 'OLD_SHIFT_CODE'
    end
    object cdsEmployeeAvailabilityModifiersNEW_SHIFT_CODE: TAbmesFloatField
      FieldName = 'NEW_SHIFT_CODE'
    end
    object cdsEmployeeAvailabilityModifiersAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      Size = 44
    end
    object cdsEmployeeAvailabilityModifiers_EMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076' '#1084#1086#1076#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1077
      FieldKind = fkLookup
      FieldName = '_EMP_AVAIL_MODIFIER_TYPE_NAME'
      LookupDataSet = cdsEmpAvailModifierTypes
      LookupKeyFields = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
      LookupResultField = 'EMP_AVAIL_MODIFIER_TYPE_NAME'
      KeyFields = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072
      FieldKind = fkLookup
      FieldName = '_EMP_DAY_ABSENCE_REASON_NAME'
      LookupDataSet = cdsEmpDayAbsenceReasons
      LookupKeyFields = 'EMP_DAY_ABSENCE_REASON_CODE'
      LookupResultField = 'EMP_DAY_ABSENCE_REASON_NAME'
      KeyFields = 'EMP_DAY_ABSENCE_REASON_CODE'
      Size = 100
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_EMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090
      FieldKind = fkLookup
      FieldName = '_EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      LookupDataSet = cdsEmpDayAbsenceDocTypes
      LookupKeyFields = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
      LookupResultField = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      KeyFields = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_EMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072
      FieldKind = fkLookup
      FieldName = '_EMP_HOUR_AVAIL_MOD_REASON_NAME'
      LookupDataSet = cdsEmpHourAvailModReasons
      LookupKeyFields = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
      LookupResultField = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
      KeyFields = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
      Size = 50
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_SHOW_DATE_PERIOD: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DATE_PERIOD'
      OnGetText = cdsEmployeeAvailabilityModifiers_SHOW_DATE_PERIODGetText
      Calculated = True
    end
    object cdsEmployeeAvailabilityModifiers_SHOW_TIME_PERIOD: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_TIME_PERIOD'
      Calculated = True
    end
    object cdsEmployeeAvailabilityModifiers_REASON_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REASON_NAME'
      Size = 50
      Calculated = True
    end
    object cdsEmployeeAvailabilityModifiers_EMP_AVAIL_MODIFIER_TYPE_A_N: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMP_AVAIL_MODIFIER_TYPE_A_N'
      LookupDataSet = cdsEmpAvailModifierTypes
      LookupKeyFields = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
      LookupResultField = '_ABBREV_AND_NAME'
      KeyFields = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_OLD_SHIFT_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1084#1077#1089#1090#1086' '#1057#1084#1103#1085#1072
      FieldKind = fkLookup
      FieldName = '_OLD_SHIFT_ABBREV'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_ABBREV'
      KeyFields = 'OLD_SHIFT_CODE'
      Size = 5
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_NEW_SHIFT_ABBREV: TAbmesWideStringField
      DisplayLabel = #1053#1086#1074#1072' '#1057#1084#1103#1085#1072
      FieldKind = fkLookup
      FieldName = '_NEW_SHIFT_ABBREV'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_ABBREV'
      KeyFields = 'NEW_SHIFT_CODE'
      Size = 5
      Lookup = True
    end
    object cdsEmployeeAvailabilityModifiers_STORNO_COUNT: TAggregateField
      FieldName = '_STORNO_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Count(STORNO_EMPLOYEE_CODE)'
    end
    object cdsEmployeeAvailabilityModifiers_MAX_EMP_DAY_ABS_REASON_CODE: TAggregateField
      FieldName = '_MAX_EMP_DAY_ABS_REASON_CODE'
      OnGetText = cdsEmployeeAvailabilityModifiers_MAX_EMP_DAY_ABS_REASON_CODEGetText
      Active = True
      DisplayName = ''
      Expression = 'Max(EMP_DAY_ABSENCE_REASON_CODE * IS_NOT_STORNO)'
    end
  end
  object cdsEmpDayAbsenceReasons: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conEmployeeAvailability
    Params = <>
    ProviderName = 'prvEmpDayAbsenceReasons'
    Left = 162
    Top = 247
    object cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object cdsEmpDayAbsenceReasonsqryEmpDayAbsenceDocTypes: TDataSetField
      FieldName = 'qryEmpDayAbsenceDocTypes'
    end
  end
  object cdsEmpDayAbsenceDocTypes: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsEmpDayAbsenceReasonsqryEmpDayAbsenceDocTypes
    Params = <>
    Left = 162
    Top = 279
    object cdsEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpDayAbsenceDocTypesEMP_DAY_ABSENCE_DOC_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_DOC_TYPE_NAME'
      Size = 50
    end
  end
  object cdsEmpAvailModifierTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conEmployeeAvailability
    Params = <>
    ProviderName = 'prvEmpAvailModifierTypes'
    AfterOpen = cdsEmpAvailModifierTypesAfterOpen
    OnCalcFields = cdsEmpAvailModifierTypesCalcFields
    Left = 130
    Top = 247
    object cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_CODE: TAbmesFloatField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_CODE'
    end
    object cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_NAME'
      Size = 100
    end
    object cdsEmpAvailModifierTypesEMP_AVAIL_MODIFIER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EMP_AVAIL_MODIFIER_TYPE_ABBREV'
      Size = 100
    end
    object cdsEmpAvailModifierTypes_ABBREV_AND_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ABBREV_AND_NAME'
      Size = 100
      Calculated = True
    end
  end
  object cdsEmpHourAvailModReasons: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conEmployeeAvailability
    Params = <>
    ProviderName = 'prvEmpHourAvailModReasons'
    Left = 194
    Top = 247
    object cdsEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpHourAvailModReasonsEMP_HOUR_AVAIL_MOD_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_HOUR_AVAIL_MOD_REASON_NAME'
      Size = 50
    end
  end
  object dsEmployeeAvailabilityModifiers: TDataSource
    DataSet = cdsEmployeeAvailabilityModifiers
    Left = 48
    Top = 311
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    Params = <>
    ProviderName = 'prvShifts'
    Left = 226
    Top = 247
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsShiftsSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
  end
end
