inherited fmShiftRegime: TfmShiftRegime
  Left = 375
  Top = 179
  ActiveControl = nil
  Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090' - %s'
  ClientHeight = 494
  ClientWidth = 538
  ExplicitWidth = 544
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 459
    Width = 538
    ExplicitTop = 459
    ExplicitWidth = 538
    inherited pnlOKCancel: TPanel
      Left = 270
      ExplicitLeft = 270
    end
    inherited pnlClose: TPanel
      Left = 181
      ExplicitLeft = 181
    end
    inherited pnlApply: TPanel
      Left = 449
      Visible = False
      ExplicitLeft = 449
    end
  end
  inherited pnlMain: TPanel
    Width = 538
    Height = 459
    ExplicitWidth = 538
    ExplicitHeight = 459
    inherited sptDetail: TSplitter
      Top = 279
      Width = 522
      ExplicitTop = 279
      ExplicitWidth = 466
    end
    inherited pnlDetailGrid: TPanel
      Top = 282
      Width = 522
      TabOrder = 2
      ExplicitTop = 282
      ExplicitWidth = 522
      inherited pnlDetailNavigator: TPanel
        Width = 522
        ExplicitWidth = 522
        object lblShiftCycles: TLabel [0]
          Left = 270
          Top = 8
          Width = 252
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1057#1084#1077#1085#1080' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080#1103' '#1048#1085#1090#1077#1088#1074#1072#1083
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 522
        UseMultiTitle = True
        VTitleMargin = 6
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SHIFT_CYCLE_NO'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = '_CYCLE_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1057#1084#1077#1085#1085#1086#1089#1090'|'#1055#1077#1088#1080#1086#1076
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = '_IS_CYCLE_ON_WORKDAYS_ONLY'
            Footers = <>
            Title.Caption = #1057#1084#1077#1085#1085#1086#1089#1090'|'#1042#1098#1088#1093#1091
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'IS_WORK_CYCLE'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1047#1072#1077#1090#1086#1089#1090
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'WORKDAY_BEGIN_TIME'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1053#1072#1095#1072#1083#1086
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'WORKDAY_END_TIME'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1050#1088#1072#1081
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'WORKDAY_DURATION_HOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1055#1088#1086#1076'. ('#1095')'
            Title.Hint = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'WORKDAY_DENSITY_PERCENT'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072'|'#1055#1083#1098#1090#1085#1086#1089#1090' (%)'
            Width = 56
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_SHIFT_ABBREV'
            Footers = <>
            Width = 100
          end>
      end
    end
    inherited pnlGrid: TPanel
      Top = 57
      Width = 522
      Height = 222
      TabOrder = 1
      ExplicitTop = 57
      ExplicitWidth = 522
      ExplicitHeight = 222
      inherited pnlNavigator: TPanel
        Width = 522
        ExplicitWidth = 522
        object lblShiftTimedRegimes: TLabel [0]
          Left = 310
          Top = 8
          Width = 212
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 522
        Height = 198
        UseMultiTitle = True
        VTitleMargin = 6
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1053#1072#1095#1072#1083#1085#1072' '#1044#1072#1090#1072
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'END_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1050#1088#1072#1081#1085#1072' '#1044#1072#1090#1072
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = '_CALENDAR_DAYS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1050#1072#1083#1077#1085#1076#1072#1088#1085#1080' '#1076#1085#1080
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = '_WORK_DAYS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1056#1072#1073#1086#1090#1085#1080'  '#1076#1085#1080' '
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'CYCLE_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1057#1084#1077#1085#1085#1086#1089#1090'|'#1055#1077#1088#1080#1086#1076
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
            Footers = <>
            Title.Caption = #1057#1084#1077#1085#1085#1086#1089#1090'|'#1042#1098#1088#1093#1091
            Width = 55
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
            Footers = <>
            Width = 82
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_OVERTIME'
            Footers = <>
            Title.Caption = #1044#1086#1087#1098#1083#1085'.'
            Title.Hint = #1044#1086#1087#1098#1083#1085#1080#1090#1077#1083#1077#1085
            Title.Orientation = tohVertical
            Width = 13
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 522
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblShiftRegimeNo: TLabel
        Left = 0
        Top = 0
        Width = 14
        Height = 13
        Caption = 'No'
        FocusControl = edtShiftRegimeNo
      end
      object lblShiftRegimeName: TLabel
        Left = 104
        Top = 0
        Width = 76
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtShiftRegimeName
      end
      object edtShiftRegimeNo: TDBEdit
        Left = 0
        Top = 16
        Width = 97
        Height = 21
        DataField = 'SHIFT_REGIME_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object edtShiftRegimeName: TDBEdit
        Left = 104
        Top = 16
        Width = 321
        Height = 21
        DataField = 'SHIFT_REGIME_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object btnShiftRegimeCalendar: TBitBtn
        Left = 432
        Top = 13
        Width = 89
        Height = 25
        Action = actShiftRegimeCalendar
        Caption = #1050#1072#1083#1077#1085#1076#1072#1088'...'
        TabOrder = 2
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
          0000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
          00007B7B7B0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
          00007B7B7B0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
          0000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryShiftTimedRegime
    FieldDefs = <
      item
        Name = 'SHIFT_TIMED_REGIME_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_REGIME_CODE'
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
        Name = 'FOLLOWS_CALENDAR_OFFDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_OVERTIME'
        DataType = ftFloat
      end
      item
        Name = 'CYCLE_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'IS_CYCLE_ON_WORKDAYS_ONLY'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'qryShiftCycle'
        DataType = ftDataSet
      end>
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
      Required = True
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1044#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1044#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsGridDataCYCLE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
      FieldName = 'CYCLE_DURATION_DAYS'
      Required = True
    end
    object cdsGridDataFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      DisplayLabel = #1055#1086#1095#1080#1074#1085#1080' '#1076#1085#1080' '#1087#1086' '#1088#1072#1073#1086#1090#1077#1085' '#1082#1072#1083#1077#1085#1076#1072#1088
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataqryShiftCycle: TDataSetField
      FieldName = 'qryShiftCycle'
    end
    object cdsGridData_CALENDAR_DAYS: TAbmesFloatField
      DisplayLabel = #1050#1072#1083#1077#1085#1076#1072#1088#1085#1080' '#1076#1085#1080
      FieldKind = fkCalculated
      FieldName = '_CALENDAR_DAYS'
      Calculated = True
    end
    object cdsGridData_WORK_DAYS: TAbmesFloatField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080
      FieldKind = fkCalculated
      FieldName = '_WORK_DAYS'
      Calculated = True
    end
    object cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      Required = True
      OnChange = cdsGridDataIS_CYCLE_ON_WORKDAYS_ONLYChange
      DisplayBoolValues = #1088'. '#1076'.;'#1082'. '#1076'.'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_SHIFT_TIMED_REGIME_CODE: TAggregateField
      FieldName = '_MAX_SHIFT_TIMED_REGIME_CODE'
      Active = True
      Expression = 'Max(SHIFT_TIMED_REGIME_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090' - %s'
    end
    object actShiftRegimeCalendar: TAction
      Caption = #1050#1072#1083#1077#1085#1076#1072#1088'...'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1082#1072#1083#1077#1085#1076#1072#1088' '#1079#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1056#1077#1078#1080#1084' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
      ImageIndex = 79
      OnExecute = actShiftRegimeCalendarExecute
      OnUpdate = actShiftRegimeCalendarUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIFT_REGIME_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvShiftRegime'
    ConnectionBroker = dmMain.conShifts
    object cdsDataSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataSHIFT_REGIME_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'SHIFT_REGIME_NO'
      Required = True
    end
    object cdsDataSHIFT_REGIME_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHIFT_REGIME_NAME'
      Required = True
      Size = 50
    end
    object cdsDataqryShiftTimedRegime: TDataSetField
      FieldName = 'qryShiftTimedRegime'
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    DataSetField = cdsGridDataqryShiftCycle
    BeforePost = cdsDetailBeforePost
    BeforeDelete = cdsDetailBeforeDelete
    OnCalcFields = cdsDetailCalcFields
    OnNewRecord = cdsDetailNewRecord
    Top = 360
    object cdsDetailSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDetailSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
      Required = True
    end
    object cdsDetailSHIFT_CYCLE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'SHIFT_CYCLE_NO'
      Required = True
    end
    object cdsDetailSHIFT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1075'. '#1057#1084#1103#1085#1072', '#1053#1072#1095#1072#1083#1085#1086' '#1055#1086#1077#1084#1072#1097#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CODE'
    end
    object cdsDetailIS_WORK_CYCLE: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1047#1072#1077#1090#1086#1089#1090
      DisplayWidth = 1
      FieldName = 'IS_WORK_CYCLE'
      Required = True
      OnChange = cdsDetailIS_WORK_CYCLEChange
      DisplayBoolValues = #1056#1072#1073#1086#1090#1080';'#1055#1086#1095#1080#1074#1072
      FieldValueType = fvtBoolean
    end
    object cdsDetailWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'WORKDAY_BEGIN_TIME'
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsDetailWORKDAY_END_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081
      FieldName = 'WORKDAY_END_TIME'
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsDetailWORKDAY_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095')'
      FieldName = 'WORKDAY_DURATION_HOURS'
    end
    object cdsDetailWORKDAY_DENSITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090' (%)'
      FieldName = 'WORKDAY_DENSITY_PERCENT'
      OnGetText = cdsDetailWORKDAY_DENSITY_PERCENTGetText
      OnSetText = cdsDetailWORKDAY_DENSITY_PERCENTSetText
    end
    object cdsDetail_SHIFT_ABBREV: TAbmesWideStringField
      DisplayLabel = #1054#1088#1075'. '#1057#1084#1103#1085#1072', '#1053#1072#1095#1072#1083#1085#1086' '#1055#1086#1077#1084#1072#1097#1072' '#1042#1088#1077#1084#1077#1074#1072' '#1057#1084#1103#1085#1072
      FieldKind = fkLookup
      FieldName = '_SHIFT_ABBREV'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_ABBREV'
      KeyFields = 'SHIFT_CODE'
      Lookup = True
    end
    object cdsDetail_CYCLE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
      FieldKind = fkCalculated
      FieldName = '_CYCLE_DURATION_DAYS'
      Calculated = True
    end
    object cdsDetailqryShiftCycleBreak: TDataSetField
      FieldName = 'qryShiftCycleBreak'
    end
    object cdsDetail_IS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldKind = fkCalculated
      FieldName = '_IS_CYCLE_ON_WORKDAYS_ONLY'
      DisplayBoolValues = #1088'. '#1076'.;'#1082'. '#1076'.'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsDetail_WORKDAY_WORKTIME_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_WORKDAY_WORKTIME_HOURS'
      Calculated = True
    end
    object cdsDetailWORKTIME_BREAK_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKTIME_BREAK_DURATION_HOURS'
    end
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvShifts'
    ConnectionBroker = dmMain.conShifts
    Left = 64
    Top = 352
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsShiftsSHIFT_NAME: TAbmesWideStringField
      FieldName = 'SHIFT_NAME'
      Size = 50
    end
    object cdsShiftsSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      ProviderFlags = []
      Size = 5
    end
  end
end
