inherited fmEmployeeDateShiftCycles: TfmEmployeeDateShiftCycles
  Left = 419
  Top = 221
  Caption = #1056#1072#1073#1086#1090#1085#1086' '#1074#1088#1077#1084#1077
  ClientHeight = 169
  ClientWidth = 346
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 134
    Width = 346
    inherited pnlOKCancel: TPanel
      Left = 78
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = -11
    end
    inherited pnlApply: TPanel
      Left = 257
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 346
    Height = 134
    inherited pnlGrid: TPanel
      Width = 330
      Height = 118
      inherited pnlNavigator: TPanel
        Width = 330
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 330
        Height = 94
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_ABBREV'
            Footers = <>
            Title.Caption = #1057#1084#1103#1085#1072
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = '_SHOW_HOURS'
            Footers = <>
            Title.Caption = #1063#1072#1089#1086#1074#1077
            Width = 100
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'AFFECTS_EMP_AVAILABILITY'
            Footers = <>
            Title.Caption = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077
            Width = 76
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_OVERTIME'
            Footers = <>
            Title.Caption = #1044#1086#1087#1098#1083#1085#1080#1090#1077#1083#1085#1086
            Width = 80
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 88
  end
  inherited cdsGridData: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'SHIFT_CYCLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAY_BEGIN_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'WORKDAY_END_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'WORKDAY_DURATION_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'AFFECTS_EMP_AVAILABILITY'
        DataType = ftFloat
      end
      item
        Name = 'SHIFT_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_OVERTIME'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
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
      end>
    ProviderName = 'prvEmployeeDateShiftCycles'
    ConnectionBroker = dmMain.conEmployeeAvailability
    OnCalcFields = cdsGridDataCalcFields
    Left = 32
    Top = 88
    object cdsGridDataSHIFT_CYCLE_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CYCLE_CODE'
    end
    object cdsGridDataWORKDAY_BEGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_BEGIN_TIME'
      DisplayFormat = 'h:nn'
    end
    object cdsGridDataWORKDAY_END_TIME: TAbmesSQLTimeStampField
      FieldName = 'WORKDAY_END_TIME'
      DisplayFormat = 'h:nn'
    end
    object cdsGridDataWORKDAY_DURATION_HOURS: TAbmesFloatField
      FieldName = 'WORKDAY_DURATION_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataAFFECTS_EMP_AVAILABILITY: TAbmesFloatField
      FieldName = 'AFFECTS_EMP_AVAILABILITY'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSHIFT_ABBREV: TAbmesWideStringField
      FieldName = 'SHIFT_ABBREV'
      Size = 5
    end
    object cdsGridDataIS_OVERTIME: TAbmesFloatField
      FieldName = 'IS_OVERTIME'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_SHOW_HOURS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_HOURS'
      Size = 50
      Calculated = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1072#1073#1086#1090#1085#1086' '#1074#1088#1077#1084#1077
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 32
    Top = 120
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 120
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 56
  end
end
