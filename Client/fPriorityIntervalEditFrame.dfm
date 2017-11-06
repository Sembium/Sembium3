inherited frPriorityIntervalEditFrame: TfrPriorityIntervalEditFrame
  Width = 97
  Height = 21
  Constraints.MaxHeight = 21
  Constraints.MaxWidth = 97
  Constraints.MinHeight = 21
  Constraints.MinWidth = 97
  object lblDash: TLabel [0]
    Left = 45
    Top = 3
    Width = 6
    Height = 13
    Caption = #8212
  end
  object cbBeginPriorityCode: TJvDBLookupCombo [1]
    Left = 0
    Top = 0
    Width = 41
    Height = 21
    DropDownCount = 9
    DropDownWidth = 200
    DataSource = dsData
    LookupField = 'PRIORITY_CODE'
    LookupDisplay = 'PRIORITY_NO;PRIORITY_NAME'
    LookupSource = dsPriorities
    TabOrder = 0
  end
  object cbEndPriorityCode: TJvDBLookupCombo [2]
    Left = 56
    Top = 0
    Width = 41
    Height = 21
    DropDownCount = 9
    DropDownWidth = 200
    DataSource = dsData
    LookupField = 'PRIORITY_CODE'
    LookupDisplay = 'PRIORITY_NO;PRIORITY_NAME'
    LookupSource = dsPriorities
    TabOrder = 1
  end
  inherited alActions: TActionList
    Top = 8
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 8
    Top = 8
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'prvPriorities'
    ConnectionBroker = dmMain.conCommon
    Left = 56
    Top = 8
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      DisplayWidth = 2
      FieldName = 'PRIORITY_NO'
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 64
    Top = 8
  end
end
