inherited EnumFieldEditFrame: TEnumFieldEditFrame
  Width = 338
  Height = 49
  Constraints.MaxHeight = 49
  Constraints.MinHeight = 49
  ExplicitWidth = 338
  ExplicitHeight = 49
  object gbEnumItem: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 338
    Height = 49
    Align = alClient
    Caption = 'EnumItemCaption'
    TabOrder = 0
    DesignSize = (
      338
      49)
    object edtEnumItemName: TDBEdit
      Left = 72
      Top = 20
      Width = 258
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      DataField = '_ENUM_ITEM_NAME'
      DataSource = dsEnumItem
      ReadOnly = True
      TabOrder = 2
    end
    object cbEnumItemName: TJvDBLookupCombo
      Left = 72
      Top = 20
      Width = 258
      Height = 21
      DeleteKeyClear = False
      DataField = 'ENUM_ITEM_CODE'
      DataSource = dsEnumItem
      Anchors = [akLeft, akTop, akRight]
      LookupDisplayIndex = 1
      LookupSource = dsEnumItems
      TabOrder = 1
    end
    object edtEnumItemNo: TDBEdit
      Left = 8
      Top = 20
      Width = 63
      Height = 21
      DataField = 'ENUM_ITEM_NO'
      DataSource = dsEnumItem
      TabOrder = 0
      OnChange = edtEnumItemNoChange
    end
  end
  inherited dsData: TDataSource
    Left = 112
    Top = 16
  end
  object cdsEnumItem: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    object cdsEnumItemENUM_ITEM_CODE: TAbmesFloatField
      FieldName = 'ENUM_ITEM_CODE'
      OnChange = cdsEnumItemENUM_ITEM_CODEChange
    end
    object cdsEnumItemENUM_ITEM_NO: TAbmesFloatField
      FieldName = 'ENUM_ITEM_NO'
      OnChange = cdsEnumItemENUM_ITEM_NOChange
    end
    object cdsEnumItem_ENUM_ITEM_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ENUM_ITEM_NAME'
      LookupDataSet = cdsEnumItems
      KeyFields = 'ENUM_ITEM_CODE'
      OnGetText = cdsEnumItem_ENUM_ITEM_NAMEGetText
      Size = 250
      Lookup = True
    end
  end
  object dsEnumItem: TDataSource
    DataSet = cdsEnumItem
    Left = 168
  end
  object cdsEnumItems: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ReadOnly = True
    Left = 248
  end
  object dsEnumItems: TDataSource
    DataSet = cdsEnumItems
    Left = 280
  end
end
