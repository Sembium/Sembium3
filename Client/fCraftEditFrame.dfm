inherited frCraftEditFrame: TfrCraftEditFrame
  Width = 384
  Height = 37
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  ExplicitWidth = 384
  ExplicitHeight = 37
  object lblCraftType: TLabel [0]
    Left = 0
    Top = 0
    Width = 128
    Height = 13
    Caption = #1050#1083#1072#1089#1080#1092'. '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
  end
  object lblCraftCode: TLabel [1]
    Left = 168
    Top = 0
    Width = 50
    Height = 13
    Caption = #1055#1088#1086#1092#1077#1089#1080#1103
  end
  object cbCraftType: TJvDBLookupCombo [2]
    Left = 0
    Top = 16
    Width = 153
    Height = 21
    DropDownWidth = 320
    DataField = 'CRAFT_TYPE_CODE'
    DataSource = dsCraft
    DisplayEmpty = ' '
    LookupField = 'CRAFT_TYPE_CODE'
    LookupDisplay = 'CRAFT_TYPE_NAME'
    LookupSource = dsCraftTypes
    TabOrder = 0
  end
  object cbCraft: TJvDBLookupCombo [3]
    Left = 241
    Top = 16
    Width = 144
    Height = 21
    DropDownWidth = 320
    DataField = 'CRAFT_CODE'
    DataSource = dsCraft
    DisplayEmpty = ' '
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'CRAFT_CODE'
    LookupDisplay = 'CRAFT_NAME'
    LookupSource = dsCrafts
    TabOrder = 2
  end
  object edtCraftCode: TDBEdit [4]
    Left = 168
    Top = 16
    Width = 73
    Height = 21
    DataField = 'CRAFT_CODE'
    DataSource = dsCraft
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 8
    Top = 16
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 16
  end
  object cdsCraftTypes: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvCraftTypes'
    ConnectionBroker = dmMain.conHumanResource
    StoreDefs = True
    Left = 120
    Top = 8
    object cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
    object cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsCrafts: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CRAFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvCrafts'
    ConnectionBroker = dmMain.conHumanResource
    StoreDefs = True
    Left = 296
    Top = 8
    object cdsCraftsCRAFT_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_CODE'
      Required = True
    end
    object cdsCraftsCRAFT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_NAME'
      Required = True
      Size = 50
    end
    object cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
  end
  object dsCraftTypes: TDataSource
    DataSet = cdsCraftTypes
    Left = 152
    Top = 8
  end
  object dsCrafts: TDataSource
    DataSet = cdsCrafts
    Left = 328
    Top = 8
  end
  object cdsCraft: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 16
    object cdsCraftCRAFT_TYPE_CODE: TAbmesFloatField
      FieldName = 'CRAFT_TYPE_CODE'
      OnChange = cdsCraftCRAFT_TYPE_CODEChange
    end
    object cdsCraftCRAFT_CODE: TAbmesFloatField
      FieldName = 'CRAFT_CODE'
      OnChange = cdsCraftCRAFT_CODEChange
    end
    object cdsCraft_CRAFT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CRAFT_TYPE_NAME'
      LookupDataSet = cdsCraftTypes
      LookupKeyFields = 'CRAFT_TYPE_CODE'
      LookupResultField = 'CRAFT_TYPE_NAME'
      KeyFields = 'CRAFT_TYPE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsCraft_CRAFT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CRAFT_NAME'
      LookupDataSet = cdsCrafts
      LookupKeyFields = 'CRAFT_CODE'
      LookupResultField = 'CRAFT_NAME'
      KeyFields = 'CRAFT_CODE'
      Size = 50
      Lookup = True
    end
  end
  object dsCraft: TDataSource
    DataSet = cdsCraft
    Left = 40
    Top = 16
  end
end
