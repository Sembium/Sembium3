inherited fmShiftCycleBreaks: TfmShiftCycleBreaks
  Left = 397
  Top = 252
  ClientWidth = 331
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 331
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 63
    end
    inherited pnlClose: TPanel
      Left = -26
    end
    inherited pnlApply: TPanel
      Left = 242
    end
  end
  inherited pnlMain: TPanel
    Width = 331
    BorderWidth = 0
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 331
      Height = 295
      inherited pnlNavigator: TPanel
        Width = 331
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 306
        Height = 271
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'BREAK_BEGIN_TIME'
            Footers = <>
            Title.Caption = #1053#1072#1095#1072#1083#1086' '
            Width = 58
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'BREAK_END_TIME'
            Footers = <>
            Title.Caption = #1050#1088#1072#1081' '
            Width = 58
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'BREAK_DURATION_HOURS'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1098#1083#1078'. ('#1095')'
            Width = 70
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_WORKTIME'
            Footers = <>
            Title.Caption = #1056#1072#1073'. '#1074#1088'.'
            Width = 46
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 306
        Height = 271
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataSHIFT_CYCLE_BREAK_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_BREAK_CODE'
    end
    object cdsGridDataSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
    end
    object cdsGridDataBREAK_BEGIN_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086
      FieldName = 'BREAK_BEGIN_TIME'
      Required = True
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsGridDataBREAK_END_TIME: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081
      FieldName = 'BREAK_END_TIME'
      Required = True
      DisplayFormat = 'h:nn'
      AbmesEditFormat = 'h:nn'
    end
    object cdsGridDataBREAK_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
      FieldName = 'BREAK_DURATION_HOURS'
      Required = True
    end
    object cdsGridDataIS_WORKTIME: TAbmesFloatField
      FieldName = 'IS_WORKTIME'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_SHIFT_CYCLE_BREAK_CODE: TAggregateField
      FieldName = '_MAX_SHIFT_CYCLE_BREAK_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(SHIFT_CYCLE_BREAK_CODE)'
    end
    object cdsGridData_TOTAL_BREAK_DURATION_HOURS: TAggregateField
      FieldName = '_TOTAL_BREAK_DURATION_HOURS'
      Active = True
      DisplayName = ''
      Expression = 'Sum((1 + IS_WORKTIME*(-1))*BREAK_DURATION_HOURS)'
    end
    object cdsGridData_WORKTIME_BREAK_DURATION_HOURS: TAggregateField
      FieldName = '_WORKTIME_BREAK_DURATION_HOURS'
      Active = True
      DisplayName = ''
      Expression = 'Sum(IS_WORKTIME*BREAK_DURATION_HOURS)'
    end
  end
end
