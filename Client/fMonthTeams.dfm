inherited fmMonthTeams: TfmMonthTeams
  Left = 303
  Top = 182
  Caption = #1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1085#1072' '#1058#1088#1091#1076#1072
  ClientHeight = 520
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 485
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 485
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 469
      inherited pnlNavigator: TPanel
        Width = 1001
        object btnToggleShowHours: TSpeedButton [0]
          Left = 880
          Top = 0
          Width = 120
          Height = 24
          Action = actToggleShowHours
          AllowAllUp = True
          GroupIndex = 123
          Flat = True
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 445
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_NO'
            Footers = <>
            Title.Caption = #1045#1082#1080#1087'|'#1050#1086#1076
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_NAME'
            Footers = <>
            Title.Caption = #1045#1082#1080#1087'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 168
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'THE_MONTH_DATE'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'DEFINED_EMPLOYEE_COUNT'
            Footer.FieldName = '_SUM_DEFINED_EMPLOYEE_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'EMP_WORKDAY_EFFECTIVE_HOURS'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'HAS_EMPLOYEE_WORK_HOURS'
            Footers = <>
            Title.Caption = #1056#1072' '#1079#1087
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_SETUP_HOURS'
            Footer.FieldName = '_SUM_TEAM_SETUP_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1053#1072#1089#1090#1088'.'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_NONWASTE_HOURS'
            Footer.FieldName = '_SUM_TEAM_NONWASTE_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1048#1079#1087#1098#1083#1085'.'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_WASTE_HOURS'
            Footer.FieldName = '_SUM_TEAM_WASTE_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1041#1083#1086#1082'.'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_TOTAL_WORK_HOURS'
            Footer.FieldName = '_SUM_TEAM_TOTAL_WORK_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1054#1073#1097#1086
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_AVG_DAY_HOURS'
            Footer.FieldName = '_AVG_TEAM_AVG_DAY_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095#1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')|'#1057#1088#1077#1076#1085#1086' '#1085#1072' '#1076#1077#1085
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_SETUP_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1053#1072#1089#1090#1088'.'
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_NONWASTE_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1048#1079#1087#1098#1083#1085'.'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_WASTE_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1041#1083#1086#1082'.'
            Visible = False
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_TOTAL_WORK_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1054#1073#1097#1086
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_AVG_DAY_OPHOURS'
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077')|'#1057#1088#1077#1076#1085#1086' '#1085#1072' '#1076#1077#1085
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_WORK_HOUR_DENSITY'
            Footer.FieldName = '_AVG_TEAM_WORK_HOUR_DENSITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'TEAM_EARNINGS'
            Footer.FieldName = '_SUM_TEAM_EARNINGS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' '#1087#1086' '#1056#1048#1056' (XXX)'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'EFFECTIVE_TEAM_EARNING'
            Footer.FieldName = '_SUM_EFFECTIVE_TEAM_EARNING'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1050#1086#1088#1080#1075#1080#1088#1072#1085#1072' '#1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' (XXX)'
            Width = 72
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 72
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'TEAM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'THE_MONTH_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'OVERRIDING_TEAM_EARNING'
        DataType = ftFloat
      end
      item
        Name = 'DEFINED_EMPLOYEE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'EMP_WORKDAY_DURATION_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMP_WORKDAY_DENSITY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'EMP_WORKDAY_EFFECTIVE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NO'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'EMPLOYEE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'HAS_EMPLOYEE_WORK_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_EARNINGS'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_SETUP_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NONWASTE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_WASTE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAY_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TEAM_TOTAL_WORK_HOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_AVG_DAY_HOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_WORK_HOUR_DENSITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EFFECTIVE_TEAM_EARNING'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_SETUP_OPHOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_NONWASTE_OPHOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_WASTE_OPHOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_TOTAL_WORK_OPHOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TEAM_AVG_DAY_OPHOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MONTH_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvMonthTeams'
    Left = 40
    Top = 152
    object cdsGridDataTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsGridDataTHE_MONTH_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1043#1086#1076#1080#1085#1072' '#1080' '#1052#1077#1089#1077#1094
      FieldName = 'THE_MONTH_DATE'
      DisplayFormat = 'yyyy mmmm'
    end
    object cdsGridDataOVERRIDING_TEAM_EARNING: TAbmesFloatField
      FieldName = 'OVERRIDING_TEAM_EARNING'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTEAM_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'TEAM_NO'
    end
    object cdsGridDataTEAM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063
      FieldName = 'DEPT_CODE'
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsGridDataEMPLOYEE_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
      FieldName = 'EMPLOYEE_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataHAS_EMPLOYEE_WORK_HOURS: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1056#1072#1079#1087'.'
      FieldName = 'HAS_EMPLOYEE_WORK_HOURS'
      DisplayBoolValues = #1062
      FieldValueType = fvtBoolean
    end
    object cdsGridDataTEAM_EARNINGS: TAbmesFloatField
      DisplayLabel = #1042#1057'2'
      FieldName = 'TEAM_EARNINGS'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataTEAM_SETUP_HOURS: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077' ('#1095#1072#1089#1086#1074#1077') '#1053#1072#1089#1090#1088#1086#1081#1082#1072
      FieldName = 'TEAM_SETUP_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_NONWASTE_HOURS: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077' ('#1095#1072#1089#1086#1074#1077') '#1048#1079#1087#1098#1083#1085#1077#1085#1080#1077
      FieldName = 'TEAM_NONWASTE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_WASTE_HOURS: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077' ('#1095#1072#1089#1086#1074#1077') '#1041#1083#1086#1082#1080#1088#1072#1085#1077
      FieldName = 'TEAM_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = '"( ",0.0" )"'
    end
    object cdsGridDataWORKDAY_COUNT: TAbmesFloatField
      FieldName = 'WORKDAY_COUNT'
    end
    object cdsGridDataTEAM_TOTAL_WORK_HOURS: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077' ('#1095#1072#1089#1086#1074#1077') '#1054#1073#1097#1086
      FieldName = 'TEAM_TOTAL_WORK_HOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_AVG_DAY_HOURS: TAbmesFloatField
      DisplayLabel = #1042#1088#1077#1084#1077' ('#1095#1072#1089#1086#1074#1077') '#1057#1088#1077#1076#1085#1086' '#1085#1072' '#1076#1077#1085
      FieldName = 'TEAM_AVG_DAY_HOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_WORK_HOUR_DENSITY: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090
      FieldName = 'TEAM_WORK_HOUR_DENSITY'
      ReadOnly = True
      OnGetText = cdsNumericFieldGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataEFFECTIVE_TEAM_EARNING: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1103#1085#1072' '#1047#1072#1088#1072#1073#1086#1090#1082#1072
      FieldName = 'EFFECTIVE_TEAM_EARNING'
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
    object cdsGridDataDEFINED_EMPLOYEE_COUNT: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1085#1072' '#1063#1080#1089#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1045#1082#1080#1087
      FieldName = 'DEFINED_EMPLOYEE_COUNT'
    end
    object cdsGridDataEMP_WORKDAY_DURATION_HOURS: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090' ('#1095')'
      FieldName = 'EMP_WORKDAY_DURATION_HOURS'
    end
    object cdsGridDataEMP_WORKDAY_DENSITY_PERCENT: TAbmesFloatField
      DisplayLabel = #1055#1083#1098#1090#1085#1086#1089#1090' (%)'
      FieldName = 'EMP_WORKDAY_DENSITY_PERCENT'
      OnGetText = cdsGridDataEMP_WORKDAY_DENSITY_PERCENTGetText
    end
    object cdsGridDataEMP_WORKDAY_EFFECTIVE_HOURS: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1095#1077#1090#1085#1072' '#1044#1085#1077#1074#1085#1072' '#1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' '#1085#1072' '#1044#1056#1054#1088' ('#1095')'
      FieldName = 'EMP_WORKDAY_EFFECTIVE_HOURS'
      OnGetText = HoursFieldsGetText
    end
    object cdsGridDataTEAM_SETUP_OPHOURS: TAbmesFloatField
      FieldName = 'TEAM_SETUP_OPHOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_NONWASTE_OPHOURS: TAbmesFloatField
      FieldName = 'TEAM_NONWASTE_OPHOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_WASTE_OPHOURS: TAbmesFloatField
      FieldName = 'TEAM_WASTE_OPHOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = '"( ",0.0" )"'
    end
    object cdsGridDataTEAM_TOTAL_WORK_OPHOURS: TAbmesFloatField
      FieldName = 'TEAM_TOTAL_WORK_OPHOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataTEAM_AVG_DAY_OPHOURS: TAbmesFloatField
      FieldName = 'TEAM_AVG_DAY_OPHOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridData_SUM_EMPLOYEE_COUNT: TAggregateField
      FieldName = '_SUM_EMPLOYEE_COUNT'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(EMPLOYEE_COUNT)'
    end
    object cdsGridData_SUM_TEAM_EARNINGS: TAggregateField
      FieldName = '_SUM_TEAM_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TEAM_EARNINGS)'
    end
    object cdsGridData_SUM_TEAM_SETUP_HOURS: TAggregateField
      FieldName = '_SUM_TEAM_SETUP_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TEAM_SETUP_HOURS)'
    end
    object cdsGridData_SUM_TEAM_NONWASTE_HOURS: TAggregateField
      FieldName = '_SUM_TEAM_NONWASTE_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TEAM_NONWASTE_HOURS)'
    end
    object cdsGridData_SUM_TEAM_WASTE_HOURS: TAggregateField
      FieldName = '_SUM_TEAM_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = '"( ",0" )"'
      Expression = 'Sum(TEAM_WASTE_HOURS)'
    end
    object cdsGridData_SUM_TEAM_TOTAL_WORK_HOURS: TAggregateField
      FieldName = '_SUM_TEAM_TOTAL_WORK_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TEAM_TOTAL_WORK_HOURS)'
    end
    object cdsGridData_AVG_TEAM_AVG_DAY_HOURS: TAggregateField
      FieldName = '_AVG_TEAM_AVG_DAY_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Avg(TEAM_AVG_DAY_HOURS)'
    end
    object cdsGridData_AVG_TEAM_WORK_HOUR_DENSITY: TAggregateField
      FieldName = '_AVG_TEAM_WORK_HOUR_DENSITY'
      OnGetText = cdsNumericFieldGetText
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Avg(TEAM_WORK_HOUR_DENSITY)'
    end
    object cdsGridData_SUM_EFFECTIVE_TEAM_EARNING: TAggregateField
      FieldName = '_SUM_EFFECTIVE_TEAM_EARNING'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(EFFECTIVE_TEAM_EARNING)'
    end
    object cdsGridData_SUM_DEFINED_EMPLOYEE_COUNT: TAggregateField
      FieldName = '_SUM_DEFINED_EMPLOYEE_COUNT'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(DEFINED_EMPLOYEE_COUNT)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1045#1082#1080#1087#1085#1080' '#1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1085#1072' '#1058#1088#1091#1076#1072
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actToggleShowHours: TAction
      Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077
      GroupIndex = 123
      Hint = 
        #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1086#1087#1077#1088#1072#1090#1086#1088#1095#1072#1089#1086#1074#1077') / '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1042#1088#1077#1084#1077' '#1085#1072' '#1054#1087#1077#1088#1072#1090#1086#1088' ('#1095 +
        #1086#1074#1077#1082#1086#1095#1072#1089#1086#1074#1077')'
      OnExecute = actToggleShowHoursExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    BeforeOpen = pdsGridDataParamsBeforeOpen
    AfterClose = pdsGridDataParamsAfterClose
    Left = 40
    Top = 184
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1045#1082#1080#1087
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsTEAM_CODE: TAbmesFloatField
      DisplayLabel = #1045#1082#1080#1087
      FieldName = 'TEAM_CODE'
      OnChange = pdsGridDataParamsTEAM_CODEChange
    end
    object pdsGridDataParamsBEGIN_MONTH_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_MONTH_DATE'
      Required = True
    end
    object pdsGridDataParamsEND_MONTH_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - '#1050#1088#1072#1081
      FieldName = 'END_MONTH_DATE'
      Required = True
    end
    object pdsGridDataParams_TEAM_NO: TAbmesFloatField
      FieldName = '_TEAM_NO'
      ProviderFlags = []
      OnChange = pdsGridDataParams_TEAM_NOChange
    end
    object pdsGridDataParams_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TEAM_NAME'
      LookupDataSet = cdsTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'TEAM_CODE'
      ProviderFlags = []
      OnGetText = pdsGridDataParams_TEAM_NAMEGetText
      Size = 50
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 72
    Top = 184
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
    Top = 120
  end
  object cdsTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'TEAM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvTeams'
    Left = 448
    object cdsTeamsTEAM_CODE: TAbmesFloatField
      FieldName = 'TEAM_CODE'
    end
    object cdsTeamsTEAM_NO: TAbmesFloatField
      FieldName = 'TEAM_NO'
    end
    object cdsTeamsTEAM_NAME: TAbmesWideStringField
      FieldName = 'TEAM_NAME'
      Size = 50
    end
    object cdsTeamsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsTeamsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsTeamsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsTeamsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object cdsTeamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTeamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsTeamsHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
    end
    object cdsTeamsEMPLOYEE_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_COUNT'
    end
    object cdsTeamsTEAM_PROFESSIONS: TAbmesWideStringField
      FieldName = 'TEAM_PROFESSIONS'
      Size = 250
    end
  end
end
