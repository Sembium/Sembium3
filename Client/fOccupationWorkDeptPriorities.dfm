inherited fmOccupationWorkDeptPriorities: TfmOccupationWorkDeptPriorities
  Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055
  ClientHeight = 295
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 260
    Width = 804
    inherited pnlOKCancel: TPanel
      Left = 536
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 447
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 715
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 804
    Height = 260
    inherited pnlGrid: TPanel
      Width = 788
      Height = 244
      inherited pnlNavigator: TPanel
        Width = 788
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDoc: TToolBar
          Left = 248
          Top = 0
          Width = 44
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Style = tbsSeparator
          end
          object btnDoc: TToolButton
            Left = 8
            Top = 0
            Action = actDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 788
        Height = 220
        Columns = <
          item
            EditButtons = <>
            FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
            Footers = <>
            Title.Alignment = taCenter
          end
          item
            EditButtons = <>
            FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 262
          end
          item
            EditButtons = <>
            FieldName = '_OWD_PRIORITY_TYPE'
            Footers = <>
            Title.Alignment = taCenter
            Width = 185
          end
          item
            EditButtons = <>
            FieldName = 'IS_CAPACITY_GENERATOR'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = '_IS_PROCESS_GENERATOR'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Width = 120
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_CAPACITY_GENERATOR'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'ORG_WORK_LEVEL_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ORG_WORK_ACTIVITY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ORG_WORK_MODE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    ProviderName = 'prvOccupationWorkDeptPriorities'
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    BeforeApplyUpdates = cdsGridDataBeforeApplyUpdates
    object cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object cdsGridDataOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      Required = True
    end
    object cdsGridDataOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataIS_CAPACITY_GENERATOR: TAbmesFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      DisplayLabel = #1050#1072#1087#1072#1094#1080#1090#1077#1090#1086#1086#1073#1088#1072#1079#1091#1074#1072#1097
      FieldName = 'IS_CAPACITY_GENERATOR'
      DisplayBoolValues = #1062
      FieldValueType = fvtBoolean
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
    object cdsGridDataORG_WORK_LEVEL_CODE: TAbmesFloatField
      DisplayLabel = #1044#1077#1081#1089#1090#1074#1080#1077' '#1087#1086' '#1044#1077#1081#1085#1086#1089#1090
      FieldName = 'ORG_WORK_LEVEL_CODE'
      Required = True
      OnChange = cdsGridDataORG_WORK_LEVEL_CODEChange
    end
    object cdsGridDataORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1044#1077#1081#1085#1086#1089#1090' '#1087#1086' '#1056#1077#1078#1080#1084
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
      Required = True
      OnChange = cdsGridDataORG_WORK_ACTIVITY_CODEChange
    end
    object cdsGridData_ORG_WORK_LEVEL_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_LEVEL_NAME'
      LookupDataSet = cdsOrgWorkLevels
      LookupKeyFields = 'ORG_WORK_LEVEL_CODE'
      LookupResultField = 'ORG_WORK_LEVEL_NAME'
      KeyFields = 'ORG_WORK_LEVEL_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_ORG_WORK_ACTIVITY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_ACTIVITY_NAME'
      LookupDataSet = cdsOrgWorkActivities
      LookupKeyFields = 'ORG_WORK_ACTIVITY_CODE'
      LookupResultField = 'ORG_WORK_ACTIVITY_NAME'
      KeyFields = 'ORG_WORK_ACTIVITY_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_ORG_WORK_MODE_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_MODE_CODE'
      LookupDataSet = cdsOrgWorkActivities
      LookupKeyFields = 'ORG_WORK_ACTIVITY_CODE'
      LookupResultField = 'ORG_WORK_MODE_CODE'
      KeyFields = 'ORG_WORK_ACTIVITY_CODE'
      Lookup = True
    end
    object cdsGridData_OWD_PRIORITY_TYPE: TAbmesWideStringField
      DisplayLabel = #1058#1080#1087' '#1056#1077#1078#1080#1084
      FieldKind = fkCalculated
      FieldName = '_OWD_PRIORITY_TYPE'
      Size = 70
      Calculated = True
    end
    object cdsGridData_IS_PROCESS_GENERATOR: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1086#1086#1073#1088#1072#1079#1091#1074#1072#1097
      FieldKind = fkLookup
      FieldName = '_IS_PROCESS_GENERATOR'
      LookupDataSet = cdsOrgWorkTypes
      LookupKeyFields = 'ORG_WORK_LEVEL_CODE;ORG_WORK_MODE_CODE'
      LookupResultField = 'IS_PROCESS_GENERATOR'
      KeyFields = 'ORG_WORK_LEVEL_CODE;ORG_WORK_MODE_CODE'
      DisplayBoolValues = #1062
      FieldValueType = fvtBoolean
      Lookup = True
    end
    object cdsGridDataORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
    object cdsGridData_MAX_OCC_W_DEPT_PRIORITY_CODE: TAggregateField
      FieldName = '_MAX_OCC_W_DEPT_PRIORITY_CODE'
      Active = True
      Expression = 'Max(OCC_WORK_DEPT_PRIORITY_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055
    end
    object actDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1056#1077#1078#1080#1084
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  object cdsOrgWorkLevels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOrgWorkLevels'
    Top = 120
    object cdsOrgWorkLevelsORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      Required = True
    end
    object cdsOrgWorkLevelsORG_WORK_LEVEL_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_NO'
      Required = True
    end
    object cdsOrgWorkLevelsORG_WORK_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_LEVEL_NAME'
      Required = True
      Size = 100
    end
    object cdsOrgWorkLevelsORG_WORK_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_WORK_LEVEL_ABBREV'
      Required = True
      Size = 100
    end
  end
  object cdsOrgWorkActivities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOrgWorkActivities'
    Left = 32
    Top = 120
    object cdsOrgWorkActivitiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
      Required = True
    end
    object cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_NO'
      Required = True
    end
    object cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_ACTIVITY_NAME'
      Required = True
      Size = 100
    end
    object cdsOrgWorkActivitiesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
  end
  object cdsOrgWorkTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOrgWorkTypes'
    Left = 64
    Top = 120
    object cdsOrgWorkTypesORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      Required = True
    end
    object cdsOrgWorkTypesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
    object cdsOrgWorkTypesIS_PROCESS_GENERATOR: TAbmesFloatField
      FieldName = 'IS_PROCESS_GENERATOR'
      Required = True
      FieldValueType = fvtBoolean
    end
  end
end
