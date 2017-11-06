inherited fmShiftRegimes: TfmShiftRegimes
  Left = 310
  Top = 205
  Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
  ClientHeight = 432
  ClientWidth = 584
  ExplicitWidth = 590
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 397
    Width = 584
    ExplicitTop = 397
    ExplicitWidth = 584
    inherited pnlOKCancel: TPanel
      Left = 316
      Visible = False
      ExplicitLeft = 316
    end
    inherited pnlClose: TPanel
      Left = 227
      Visible = True
      ExplicitLeft = 227
    end
    inherited pnlApply: TPanel
      Left = 495
      Visible = False
      ExplicitLeft = 495
    end
  end
  inherited pnlMain: TPanel
    Width = 584
    Height = 397
    ExplicitWidth = 584
    ExplicitHeight = 397
    inherited sptDetail: TSplitter
      Top = 217
      Width = 568
      ExplicitTop = 217
      ExplicitWidth = 512
    end
    inherited pnlDetailGrid: TPanel
      Top = 220
      Width = 568
      ExplicitTop = 220
      ExplicitWidth = 568
      inherited pnlDetailNavigator: TPanel
        Width = 568
        ExplicitWidth = 568
        object lblShiftTimedRegimes: TLabel [0]
          Left = 368
          Top = 8
          Width = 201
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083#1080' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited navDetail: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
          ExplicitWidth = 120
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 120
          ExplicitLeft = 120
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 568
        UseMultiTitle = True
        VTitleMargin = 6
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1053#1072#1095#1072#1083#1085#1072' '#1044#1072#1090#1072
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'END_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1050#1088#1072#1081#1085#1072' '#1044#1072#1090#1072
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CALENDAR_DAYS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1050#1072#1083#1077#1085#1076#1072#1088#1085#1080' '#1076#1085#1080
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'WORK_DAYS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077'|'#1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080
            Width = 52
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
            Width = 71
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
          end
          item
            EditButtons = <>
            FieldName = 'TIMED_REGIME_SHIFTS'
            Footers = <>
            Width = 90
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 568
      Height = 209
      ExplicitWidth = 568
      ExplicitHeight = 209
      inherited pnlNavigator: TPanel
        Width = 568
        ExplicitWidth = 568
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
        Width = 568
        Height = 185
        UseMultiTitle = True
        VTitleMargin = 6
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SHIFT_REGIME_NO'
            Footers = <>
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'SHIFT_REGIME_NAME'
            Footers = <>
            Width = 247
          end
          item
            EditButtons = <>
            FieldName = 'REGIME_SHIFTS'
            Footers = <>
            Width = 190
          end
          item
            EditButtons = <>
            FieldName = 'RESERVE_DAYS'
            Footers = <>
            Width = 65
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'SHIFT_REGIME_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_REGIME_NO'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_REGIME_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REGIME_SHIFTS'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'RESERVE_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'qryShiftTimedRegimes'
        DataType = ftDataSet
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvShiftRegimes'
    ConnectionBroker = dmMain.conShifts
    object cdsGridDataSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSHIFT_REGIME_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'SHIFT_REGIME_NO'
    end
    object cdsGridDataSHIFT_REGIME_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHIFT_REGIME_NAME'
      Size = 50
    end
    object cdsGridDataREGIME_SHIFTS: TAbmesWideStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1057#1084#1077#1085#1080' '#1074' '#1056#1077#1078#1080#1084#1072
      FieldName = 'REGIME_SHIFTS'
      ProviderFlags = []
      Size = 250
    end
    object cdsGridDataRESERVE_DAYS: TAbmesFloatField
      DisplayLabel = #1056#1079#1088#1074'. ('#1082'. '#1076'.)'
      FieldName = 'RESERVE_DAYS'
      ProviderFlags = []
    end
    object cdsGridDataqryShiftTimedRegimes: TDataSetField
      FieldName = 'qryShiftTimedRegimes'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1077#1092#1080#1085#1080#1094#1080#1103' '#1085#1072' '#1056#1072#1073#1086#1090#1085#1080' '#1062#1080#1082#1083#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsGridDataqryShiftTimedRegimes
    object cdsDetailSHIFT_TIMED_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_TIMED_REGIME_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailSHIFT_REGIME_CODE: TAbmesFloatField
      FieldName = 'SHIFT_REGIME_CODE'
    end
    object cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1044#1072#1090#1072
      FieldName = 'BEGIN_DATE'
    end
    object cdsDetailEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1044#1072#1090#1072
      FieldName = 'END_DATE'
    end
    object cdsDetailFOLLOWS_CALENDAR_OFFDAYS: TAbmesFloatField
      DisplayLabel = #1055#1086#1095#1080#1074#1085#1080' '#1076#1085#1080' '#1087#1086' '#1088#1072#1073#1086#1090#1077#1085' '#1082#1072#1083#1077#1085#1076#1072#1088
      FieldName = 'FOLLOWS_CALENDAR_OFFDAYS'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailCYCLE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1057#1084#1077#1085#1085#1086#1089#1090
      FieldName = 'CYCLE_DURATION_DAYS'
    end
    object cdsDetailCALENDAR_DAYS: TAbmesFloatField
      DisplayLabel = #1050#1072#1083#1077#1085#1076#1072#1088#1085#1080' '#1076#1085#1080
      FieldName = 'CALENDAR_DAYS'
      ProviderFlags = []
    end
    object cdsDetailWORK_DAYS: TAbmesFloatField
      DisplayLabel = #1056#1072#1073#1086#1090#1085#1080' '#1076#1085#1080
      FieldName = 'WORK_DAYS'
      ProviderFlags = []
    end
    object cdsDetailTIMED_REGIME_SHIFTS: TAbmesWideStringField
      DisplayLabel = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1057#1084#1077#1085#1080' '#1074' '#1048#1085#1090#1077#1088#1074#1072#1083#1072
      FieldName = 'TIMED_REGIME_SHIFTS'
      ProviderFlags = []
      Size = 250
    end
    object cdsDetailIS_CYCLE_ON_WORKDAYS_ONLY: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_CYCLE_ON_WORKDAYS_ONLY'
      Required = True
      DisplayBoolValues = #1088'. '#1076'.;'#1082'. '#1076'.'
      FieldValueType = fvtBoolean
    end
  end
end
