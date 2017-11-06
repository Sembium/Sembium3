inherited fmDeptPeriods: TfmDeptPeriods
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1058#1055' - %s'
  ClientHeight = 488
  ClientWidth = 613
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 453
    Width = 613
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 345
    end
    inherited pnlClose: TPanel
      Left = 256
    end
    inherited pnlApply: TPanel
      Left = 524
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Top = 153
    Width = 613
    Height = 300
    TabOrder = 1
    inherited pnlGrid: TPanel
      Width = 597
      Height = 284
      inherited pnlNavigator: TPanel
        Width = 597
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDocs: TToolBar
          Left = 325
          Top = 0
          Width = 154
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          object sepDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlDocs: TPanel
            Left = 8
            Top = 0
            Width = 110
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = #1059#1052' '#1058#1055' '#1042#1088#1084#1048#1085#1090
            TabOrder = 0
          end
          object btnDocs: TToolButton
            Left = 118
            Top = 0
            Action = actDocs
            ParentShowHint = False
            ShowHint = True
          end
        end
        object tlbPastPresentFuturePeriods: TToolBar
          Left = 248
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbPastPresentFuturePeriods'
          Images = dmMain.ilActions
          TabOrder = 4
          object sepPastPresentFuturePeriods: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPastPresentFuturePeriods'
            Style = tbsSeparator
          end
          object btnPastPeriods: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPastPeriods
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Transparent = False
          end
          object btnPresentPeriods: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentPeriods
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFuturePeriods: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFuturePeriods
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 597
        Height = 260
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1080#1085#1090#1077#1088#1074#1072#1083
            Width = 129
          end
          item
            EditButtons = <>
            FieldName = 'HOUR_PRICE'
            Footers = <>
            Title.Caption = #1042#1045#1062' - '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103' '#1085#1072' '#1054#1087#1052' (%s/'#1095#1072#1089')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'MAINTAINANCE_HOUR_PRICE'
            Footers = <>
            Title.Caption = #1042#1045#1062' - '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077' '#1085#1072' '#1054#1087#1052' (%s/'#1095#1072#1089')'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'EST_CAPACITY_DAY_LIMIT_HOURS'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'PARALLEL_PROCESS_COUNT'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'PARALLEL_OPERATOR_COUNT'
            Footers = <>
            Width = 55
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Width = 39
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 39
          end>
      end
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 613
    Height = 153
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      613
      153)
    object gbDept: TGroupBox
      Left = 8
      Top = 8
      Width = 597
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#1058#1055' '
      TabOrder = 0
      DesignSize = (
        597
        65)
      object lblName: TLabel
        Left = 72
        Top = 16
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtName
      end
      object lblCustomCode: TLabel
        Left = 16
        Top = 16
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
        FocusControl = edtCustomCode
      end
      object edtCustomCode: TDBEdit
        Left = 16
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'SHOW_NO'
        DataSource = dsHeader
        ReadOnly = True
        TabOrder = 0
      end
      inline frDateInterval: TfrDateIntervalFrame
        Left = 440
        Top = 32
        Width = 145
        Height = 21
        Anchors = [akTop, akRight]
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 2
        TabStop = True
        inherited dsData: TDataSource
          DataSet = cdsHeader
        end
      end
      object edtName: TDBEdit
        Left = 72
        Top = 32
        Width = 313
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'NAME'
        DataSource = dsHeader
        ReadOnly = True
        TabOrder = 1
      end
      object tlbDeptDocs: TToolBar
        Left = 392
        Top = 32
        Width = 36
        Height = 22
        Align = alNone
        Anchors = [akTop, akRight]
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbDeptDocs'
        Images = dmMain.ilDocs
        TabOrder = 3
        object btnDeptDocs: TToolButton
          Left = 0
          Top = 0
          ImageIndex = 1
          OnClick = btnDeptDocsClick
        end
      end
    end
    object gbOptions: TGroupBox
      Left = 8
      Top = 80
      Width = 597
      Height = 73
      Anchors = [akLeft, akTop, akRight]
      Caption = ' '#1054#1073#1097#1086' '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055' '
      Enabled = False
      TabOrder = 1
      object lblsExternal: TLabel
        Left = 296
        Top = 19
        Width = 72
        Height = 13
        Caption = #1055#1086#1076#1074#1083#1072#1089#1090#1085#1086#1089#1090
      end
      object lblIsRecurrent: TLabel
        Left = 408
        Top = 19
        Width = 19
        Height = 13
        Caption = #1042#1080#1076
      end
      object chbIsBranch: TAbmesDBCheckBox
        Left = 16
        Top = 32
        Width = 121
        Height = 17
        Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
        DataField = 'IS_BRANCH'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsStore: TAbmesDBCheckBox
        Left = 152
        Top = 16
        Width = 121
        Height = 17
        Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
        DataField = 'IS_STORE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsComputerizedStore: TAbmesDBCheckBox
        Left = 168
        Top = 32
        Width = 111
        Height = 17
        Caption = #1050#1086#1084#1087#1102#1090#1098#1088#1080#1079#1080#1088#1072#1085#1086
        DataField = 'IS_COMPUTERIZED_STORE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object cbIsExternal: TJvDBComboBox
        Left = 296
        Top = 35
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'IS_EXTERNAL'
        DataSource = dsData
        Items.Strings = (
          #1042#1098#1090#1088#1077#1096#1085#1086
          #1042#1098#1085#1096#1085#1086)
        ReadOnly = True
        TabOrder = 4
        Values.Strings = (
          'False'
          'True')
      end
      object cbIsRecurrent: TJvDBComboBox
        Left = 408
        Top = 35
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'IS_RECURRENT'
        DataSource = dsData
        Items.Strings = (
          #1059#1089#1090#1072#1085#1086#1074#1077#1085#1086
          #1055#1091#1083#1089#1080#1088#1072#1097#1086)
        ReadOnly = True
        TabOrder = 5
        Values.Strings = (
          'False'
          'True')
      end
      object chbIsFinStore: TAbmesDBCheckBox
        Left = 168
        Top = 48
        Width = 75
        Height = 17
        Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1086
        DataField = 'IS_FIN_STORE'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 200
    Top = 328
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Filtered = True
    FieldDefs = <
      item
        Name = 'DEPT_PRICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'HOUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'MAINTAINANCE_HOUR_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end>
    IndexFieldNames = 'BEGIN_DATE;DEPT_PERIOD_CODE'
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptPeriods'
    BeforeInsert = cdsGridDataBeforeInsert
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 168
    Top = 328
    object cdsGridDataDEPT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'DEPT_PERIOD_CODE'
      Required = True
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsGridDataHOUR_PRICE: TAbmesFloatField
      DisplayLabel = #1042#1045#1062' - '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103' '#1085#1072' '#1054#1087#1052
      FieldName = 'HOUR_PRICE'
      Required = True
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      MaxValue = 999999999999.000000000000000000
    end
    object cdsGridDataMAINTAINANCE_HOUR_PRICE: TAbmesFloatField
      DisplayLabel = #1042#1045#1062' - '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077' '#1085#1072' '#1054#1087#1052
      FieldName = 'MAINTAINANCE_HOUR_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      MaxValue = 999999999999.000000000000000000
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsGridDataEST_CAPACITY_DAY_LIMIT_HOURS: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1077#1085' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090' ('#1095#1072#1089#1072' / '#1076#1077#1085')'
      FieldName = 'EST_CAPACITY_DAY_LIMIT_HOURS'
      OnGetText = cdsGridDataEST_CAPACITY_DAY_LIMIT_HOURSGetText
      DisplayFormat = ',0.##'
      EditFormat = '0.##'
      MaxValue = 24.000000000000000000
    end
    object cdsGridDataPARALLEL_PROCESS_COUNT: TAbmesFloatField
      DisplayLabel = #1050#1088#1072#1090#1085#1086#1089#1090' '#1085#1072' '#1054#1087#1047#1085
      FieldName = 'PARALLEL_PROCESS_COUNT'
      Required = True
      MaxValue = 999.000000000000000000
      MinValue = 1.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsGridDataPARALLEL_OPERATOR_COUNT: TAbmesFloatField
      DisplayLabel = #1050#1088#1072#1090#1085#1086#1089#1090' '#1085#1072' '#1044#1056#1054#1088
      FieldName = 'PARALLEL_OPERATOR_COUNT'
      Required = True
      DisplayFormat = '0.###'
      EditFormat = '0.###'
      MaxValue = 999.000000000000000000
      MinValue = 0.001000000000000000
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnGetText = cdsGridDataDOC_EMPTINESS_REQUIREMENT_CODEGetText
    end
    object cdsGridDataDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_NODE_TYPE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_NODE_TYPE'
      Calculated = True
    end
    object cdsGridData_MAX_DEPT_PERIOD_CODE: TAggregateField
      FieldName = '_MAX_DEPT_PERIOD_CODE'
      Active = True
      Expression = 'Max(DEPT_PERIOD_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 288
    Top = 296
    inherited actForm: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' '#1058#1055' - %s'
    end
    object actDocs: TAction
      Caption = 'actDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1042#1088#1084#1048#1085#1090
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
    object actPastPeriods: TAction
      Caption = #1052
      GroupIndex = 2
      Hint = #1052#1080#1085#1072#1083#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actPresentPeriods: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 3
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actFuturePeriods: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 4
      Hint = #1041#1098#1076#1077#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 168
    Top = 360
  end
  inherited dsGridDataParams: TDataSource
    Left = 200
    Top = 360
  end
  inherited dsData: TDataSource
    Left = 200
    Top = 296
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 168
    Top = 296
  end
  object cdsHeader: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptPeriodsHeader'
    BeforeOpen = cdsHeaderBeforeOpen
    Left = 288
    Top = 352
    object cdsHeaderDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsHeaderSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 46
    end
    object cdsHeaderNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsHeaderDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsHeaderDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsHeaderBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsHeaderEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsHeaderHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsHeaderIS_BRANCH: TAbmesFloatField
      FieldName = 'IS_BRANCH'
    end
    object cdsHeaderIS_STORE: TAbmesFloatField
      FieldName = 'IS_STORE'
    end
    object cdsHeaderIS_COMPUTERIZED_STORE: TAbmesFloatField
      FieldName = 'IS_COMPUTERIZED_STORE'
    end
    object cdsHeaderIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
    object cdsHeaderIS_RECURRENT: TAbmesFloatField
      FieldName = 'IS_RECURRENT'
    end
  end
  object dsHeader: TDataSource
    DataSet = cdsHeader
    Left = 320
    Top = 352
  end
end
