inherited fmOrgWorkActivities: TfmOrgWorkActivities
  Caption = #1044#1077#1081#1085#1086#1089#1090#1080' '#1087#1086' '#1056#1077#1078#1080#1084#1080
  ClientHeight = 303
  ClientWidth = 514
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 268
    Width = 514
    inherited pnlOKCancel: TPanel
      Left = 246
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 157
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 425
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 514
    Height = 268
    inherited pnlGrid: TPanel
      Width = 498
      Height = 252
      inherited pnlNavigator: TPanel
        Width = 498
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 498
        Height = 228
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ORG_WORK_ACTIVITY_NO'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'ORG_WORK_ACTIVITY_NAME'
            Footers = <>
            Width = 316
          end
          item
            EditButtons = <>
            FieldName = '_ORG_WORK_MODE_NAME'
            Footers = <>
            Title.Caption = #1058#1080#1087
            Width = 112
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'ORG_WORK_ACTIVITY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ORG_WORK_ACTIVITY_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ORG_WORK_ACTIVITY_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ORG_WORK_MODE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    ProviderName = 'prvOrgWorkActivities'
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
      Required = True
    end
    object cdsGridDataORG_WORK_ACTIVITY_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'ORG_WORK_ACTIVITY_NO'
      Required = True
    end
    object cdsGridDataORG_WORK_ACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ORG_WORK_ACTIVITY_NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataORG_WORK_MODE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
    object cdsGridData_ORG_WORK_MODE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_MODE_NAME'
      LookupDataSet = cdsOrgWorkModes
      LookupKeyFields = 'ORG_WORK_MODE_CODE'
      LookupResultField = 'ORG_WORK_MODE_NAME'
      KeyFields = 'ORG_WORK_MODE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_MAX_ORG_WORK_ACTIVITY_CODE: TAggregateField
      FieldName = '_MAX_ORG_WORK_ACTIVITY_CODE'
      Active = True
      Expression = 'Max(ORG_WORK_ACTIVITY_CODE)'
    end
    object cdsGridData_MAX_ORG_WORK_ACTIVITY_NO: TAggregateField
      FieldName = '_MAX_ORG_WORK_ACTIVITY_NO'
      Active = True
      Expression = 'Max(ORG_WORK_ACTIVITY_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1077#1081#1085#1086#1089#1090#1080' '#1087#1086' '#1056#1077#1078#1080#1084#1080
    end
  end
  object cdsOrgWorkModes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOrgWorkModes'
    Top = 136
    object cdsOrgWorkModesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
    object cdsOrgWorkModesORG_WORK_MODE_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_NO'
      Required = True
    end
    object cdsOrgWorkModesORG_WORK_MODE_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_MODE_NAME'
      Required = True
      Size = 100
    end
    object cdsOrgWorkModesORG_WORK_MODE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_WORK_MODE_ABBREV'
      Required = True
      Size = 100
    end
  end
end
