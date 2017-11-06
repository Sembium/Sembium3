inherited fmEmployeeEarnings: TfmEmployeeEarnings
  Left = 267
  Top = 229
  Caption = #1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 515
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 480
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
    Height = 480
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 464
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
        object pnlPeriod: TPanel
          Left = 615
          Top = 0
          Width = 386
          Height = 24
          Align = alRight
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 3
          object lblPeriod: TLabel
            Left = 0
            Top = 4
            Width = 95
            Height = 13
            Caption = #1042#1088#1077#1084#1077#1074#1080' '#1080#1085#1090#1077#1088#1074#1072#1083
          end
          object lblEmployeeCount: TLabel
            Left = 268
            Top = 3
            Width = 83
            Height = 13
            Caption = #1041#1088#1086#1081' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
            FocusControl = edtEmployeeCount
          end
          object edtEmployeeCount: TDBEdit
            Left = 355
            Top = 0
            Width = 31
            Height = 21
            Color = clBtnFace
            DataField = '_EMPLOYEE_COUNT'
            DataSource = dsGridData
            TabOrder = 0
          end
          inline frDateInterval: TfrDateIntervalFrame
            Left = 100
            Top = 0
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 1
            TabStop = True
            inherited dsData: TDataSource
              DataSet = pdsGridDataParams
            end
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 440
        FooterColor = 15258325
        FooterRowCount = 1
        UseMultiTitle = True
        VTitleMargin = 6
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = '   '#1054#1088#1063'        '#1085#1072'     '#1053#1072#1079#1085#1072#1095'.'
            Title.Hint = #1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1072#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'OCCUPATION_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 170
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'SHIFT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1044#1083#1098#1078#1085#1086#1089#1090' - '#1054#1089#1085#1086#1074#1085#1072'|'#1057#1084'.'
            Title.Hint = #1057#1084#1103#1085#1072
            Width = 20
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'EARNING_TYPE'
            Footers = <>
            Title.Caption = #1042#1080#1076' '#1085#1072#1090'.'
            Title.Hint = #1042#1080#1076' '#1085#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_SETUP_HOURS'
            Footer.FieldName = '_SUM_EMPLOYEE_SETUP_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')|'#1053#1072#1089#1090#1088'.'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NONWASTE_HOURS'
            Footer.FieldName = '_SUM_EMPLOYEE_NONWASTE_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')|'#1048#1079#1087#1098#1083#1085'.'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_WASTE_HOURS'
            Footer.FieldName = '_SUM_EMPLOYEE_WASTE_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')|'#1041#1083#1086#1082'.'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_TEAM_HOURS'
            Footer.FieldName = '_SUM_EMPLOYEE_TEAM_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')|'#1045#1082#1080#1087'.'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_TOTAL_WORK_HOURS'
            Footer.FieldName = '_SUM_EMPLOYEE_TOTAL_WORK_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')|'#1054#1073#1097#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_AVG_DAY_HOURS'
            Footer.FieldName = '_AVG_EMPLOYEE_AVG_DAY_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1053#1072#1090#1086#1074#1072#1088#1077#1085#1086#1089#1090' ('#1095#1072#1089#1086#1074#1077')|'#1057#1088#1077#1076#1085#1086' '#1085#1072' '#1076#1077#1085
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_WORK_HOUR_DENSITY'
            Footer.FieldName = '_AVG_EMPLOYEE_WORK_HOUR_DENSITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1083#1098#1090#1085#1086#1089#1090
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_PERSONAL_EARNINGS'
            Footer.FieldName = '_SUM_EMPLOYEE_PERSONAL_EARNINGS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' (xxx)|'#1048#1085#1076#1080#1074'.'
            Title.Hint = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1085#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_TEAM_EARNINGS'
            Footer.FieldName = '_SUM_EMPLOYEE_TEAM_EARNINGS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' (xxx)|'#1045#1082#1080#1087'.'
            Title.Hint = #1045#1082#1080#1087#1085#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_TOTAL_EARNINGS'
            Footer.FieldName = '_SUM_EMPLOYEE_TOTAL_EARNINGS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1054#1094#1077#1085#1082#1072' '#1085#1072' '#1058#1088#1091#1076#1072' (xxx)|'#1054#1073#1097#1086
            Width = 58
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 88
    Top = 208
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'EMPLOYEE_NO'
        DataType = ftFloat
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
        Name = 'EMPLOYEE_PERSONAL_EARNINGS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_TEAM_EARNINGS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_TOTAL_EARNINGS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EARNING_TYPE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_SETUP_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NONWASTE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_WASTE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_TEAM_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_TOTAL_WORK_HOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_AVG_DAY_HOURS'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_WORK_HOUR_DENSITY'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SHIFT_IDENTIFIER'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'EMP_MAIN_SHIFT_WORKDAY_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'EMP_MAIN_SHIFT_EFF_WORKHOURS'
        DataType = ftFloat
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
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TEAM_CODE'
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
        DataType = ftFloat
        Name = 'TEAM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_OCCUPATION'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_OCCUPATION'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_OCCUPATION_WORK_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeEarnings'
    Left = 56
    Top = 208
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsGridDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataEMPLOYEE_PERSONAL_EARNINGS: TAbmesFloatField
      FieldName = 'EMPLOYEE_PERSONAL_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataEMPLOYEE_TEAM_EARNINGS: TAbmesFloatField
      FieldName = 'EMPLOYEE_TEAM_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataEMPLOYEE_TOTAL_EARNINGS: TAbmesFloatField
      FieldName = 'EMPLOYEE_TOTAL_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataEARNING_TYPE: TAbmesFloatField
      FieldName = 'EARNING_TYPE'
      ReadOnly = True
      OnGetText = cdsGridDataEARNING_TYPEGetText
    end
    object cdsGridDataEMPLOYEE_SETUP_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_SETUP_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataEMPLOYEE_NONWASTE_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_NONWASTE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataEMPLOYEE_WASTE_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = '"( ",0.0" )"'
    end
    object cdsGridDataEMPLOYEE_TEAM_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_TEAM_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataEMPLOYEE_TOTAL_WORK_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_TOTAL_WORK_HOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataEMPLOYEE_AVG_DAY_HOURS: TAbmesFloatField
      FieldName = 'EMPLOYEE_AVG_DAY_HOURS'
      ReadOnly = True
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.0'
    end
    object cdsGridDataEMPLOYEE_WORK_HOUR_DENSITY: TAbmesFloatField
      FieldName = 'EMPLOYEE_WORK_HOUR_DENSITY'
      ReadOnly = True
      OnGetText = cdsNumericFieldGetText
      DisplayFormat = ',0.00'
    end
    object cdsGridDataOCCUPATION_NAME: TAbmesWideStringField
      FieldName = 'OCCUPATION_NAME'
      Size = 50
    end
    object cdsGridDataSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsGridDataEMP_MAIN_SHIFT_WORKDAY_COUNT: TAbmesFloatField
      FieldName = 'EMP_MAIN_SHIFT_WORKDAY_COUNT'
    end
    object cdsGridDataEMP_MAIN_SHIFT_EFF_WORKHOURS: TAbmesFloatField
      FieldName = 'EMP_MAIN_SHIFT_EFF_WORKHOURS'
    end
    object cdsGridData_SUM_EMPLOYEE_PERSONAL_EARNINGS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_PERSONAL_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(EMPLOYEE_PERSONAL_EARNINGS)'
    end
    object cdsGridData_SUM_EMPLOYEE_TEAM_EARNINGS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_TEAM_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(EMPLOYEE_TEAM_EARNINGS)'
    end
    object cdsGridData_SUM_EMPLOYEE_TOTAL_EARNINGS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_TOTAL_EARNINGS'
      OnGetText = cdsNumericFieldGetText
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(EMPLOYEE_TOTAL_EARNINGS)'
    end
    object cdsGridData_SUM_EMPLOYEE_SETUP_HOURS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_SETUP_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(EMPLOYEE_SETUP_HOURS)'
    end
    object cdsGridData_SUM_EMPLOYEE_NONWASTE_HOURS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_NONWASTE_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(EMPLOYEE_NONWASTE_HOURS)'
    end
    object cdsGridData_SUM_EMPLOYEE_WASTE_HOURS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_WASTE_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = '"( ",0.0" )"'
      Expression = 'Sum(EMPLOYEE_WASTE_HOURS)'
    end
    object cdsGridData_SUM_EMPLOYEE_TEAM_HOURS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_TEAM_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(EMPLOYEE_TEAM_HOURS)'
    end
    object cdsGridData_SUM_EMPLOYEE_TOTAL_WORK_HOURS: TAggregateField
      FieldName = '_SUM_EMPLOYEE_TOTAL_WORK_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Sum(EMPLOYEE_TOTAL_WORK_HOURS)'
    end
    object cdsGridData_AVG_EMPLOYEE_AVG_DAY_HOURS: TAggregateField
      FieldName = '_AVG_EMPLOYEE_AVG_DAY_HOURS'
      OnGetText = HoursFieldsGetText
      Active = True
      DisplayFormat = ',0.0'
      Expression = 'Avg(EMPLOYEE_AVG_DAY_HOURS)'
    end
    object cdsGridData_AVG_EMPLOYEE_WORK_HOUR_DENSITY: TAggregateField
      FieldName = '_AVG_EMPLOYEE_WORK_HOUR_DENSITY'
      OnGetText = cdsNumericFieldGetText
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Avg(EMPLOYEE_WORK_HOUR_DENSITY)'
    end
    object cdsGridData_EMPLOYEE_COUNT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_EMPLOYEE_COUNT'
      Active = True
      Expression = 'Count(EMPLOYEE_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1058#1088#1091#1076' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 56
    Top = 240
    object pdsGridDataParamsTEAM_CODE: TAbmesFloatField
      DisplayLabel = #1045#1082#1080#1087
      FieldName = 'TEAM_CODE'
      OnChange = pdsGridDataParamsTEAM_CODEChange
    end
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParamsHAS_OCCUPATION: TAbmesFloatField
      DisplayLabel = #1053#1072#1079#1085#1072#1095#1077#1085#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
      FieldName = 'HAS_OCCUPATION'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = pdsGridDataParamsBEGIN_DATEGetText
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'END_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1054#1089#1085#1086#1074#1085#1086' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'DEPT_CODE'
      OnChange = pdsGridDataParamsDEPT_CODEChange
    end
    object pdsGridDataParamsDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      ProviderFlags = []
      OnGetText = pdsGridDataParamsGetText
      Size = 50
    end
    object pdsGridDataParamsDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      OnGetText = pdsGridDataParamsDEPT_IDENTIFIERGetText
    end
    object pdsGridDataParamsCHOSEN_OCCUPATION_WORK_DEPTS: TAbmesWideStringField
      DisplayLabel = #1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
      FieldName = 'CHOSEN_OCCUPATION_WORK_DEPTS'
      Size = 2000
    end
    object pdsGridDataParams_TEAM_NO: TAbmesFloatField
      FieldName = '_TEAM_NO'
      ProviderFlags = []
      OnChange = pdsGridDataParams_TEAM_NOChange
      OnValidate = pdsGridDataParams_TEAM_NOValidate
    end
    object pdsGridDataParams_TEAM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TEAM_NAME'
      LookupDataSet = cdsTeams
      LookupKeyFields = 'TEAM_CODE'
      LookupResultField = 'TEAM_NAME'
      KeyFields = 'TEAM_CODE'
      ProviderFlags = []
      OnGetText = pdsGridDataParamsGetText
      Size = 50
      Lookup = True
    end
    object pdsGridDataParams_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_BEGIN_DATE'
      Calculated = True
    end
    object pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 88
    Top = 240
  end
  inherited dsData: TDataSource
    Left = 88
    Top = 176
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 56
    Top = 176
  end
  object cdsTeams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvTeams'
    Left = 112
    Top = 120
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
  end
end
