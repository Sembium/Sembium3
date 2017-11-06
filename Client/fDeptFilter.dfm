inherited frDeptFilter: TfrDeptFilter
  Height = 145
  inherited grpTreeNodeFilter: TGroupBox
    Height = 145
    Caption = ' '#1058#1055' '
    object lblsExternal: TLabel [0]
      Left = 72
      Top = 99
      Width = 53
      Height = 13
      Caption = #1055#1086#1076#1074#1083#1072#1089#1090'.'
    end
    object lblIsRecurrent: TLabel [1]
      Left = 136
      Top = 99
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblIsActive: TLabel [2]
      Left = 8
      Top = 99
      Width = 54
      Height = 13
      Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090
    end
    object lblStoreType: TLabel [3]
      Left = 200
      Top = 99
      Width = 55
      Height = 13
      Caption = #1047#1072#1076#1098#1088#1078'.'
    end
    object lblDepth: TLabel [4]
      Left = 264
      Top = 99
      Width = 57
      Height = 13
      Caption = #1044#1098#1083#1073#1086#1095#1080#1085#1072
    end
    inherited pnlNodes: TPanel
      inherited grdChosenNodes: TAbmesDBGrid
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_NAME'
            Footers = <>
            Width = 238
          end
          item
            EditButtons = <>
            FieldName = 'NODE_IDENTIFIER'
            Footers = <>
            Width = 63
          end>
      end
    end
    object cbIsExternal: TJvDBLookupCombo
      Left = 72
      Top = 115
      Width = 57
      Height = 21
      DropDownWidth = 300
      DataField = 'EXTERNAL'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'VALUE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsIsExternal
      TabOrder = 2
    end
    object cbIsRecurrent: TJvDBLookupCombo
      Left = 136
      Top = 115
      Width = 57
      Height = 21
      DropDownWidth = 300
      DataField = 'RECURRENT'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'VALUE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsIsRecurrent
      TabOrder = 3
    end
    object cbIsActive: TJvDBLookupCombo
      Left = 8
      Top = 115
      Width = 57
      Height = 21
      DropDownWidth = 300
      DataField = 'ACTIVE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'VALUE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsIsActive
      TabOrder = 1
    end
    object cbStoreType: TJvDBLookupCombo
      Left = 200
      Top = 115
      Width = 57
      Height = 21
      DropDownWidth = 300
      DataField = 'STORE_TYPE_CODE'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'STORE_TYPE_CODE'
      LookupDisplay = 'STORE_TYPE_ABBREV;STORE_TYPE_NAME'
      LookupSource = dsStoreTypes
      TabOrder = 4
    end
    object cbDepth: TJvDBLookupCombo
      Left = 264
      Top = 115
      Width = 57
      Height = 21
      DropDownWidth = 300
      DataField = 'DEPTH'
      DataSource = dsChosenNodesParams
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'VALUE'
      LookupDisplay = 'ABBREV;NAME'
      LookupSource = dsDepth
      TabOrder = 5
    end
  end
  inherited cdsBaseFilter: TAbmesClientDataSet
    Left = 312
    Top = 40
  end
  inherited cdsChosenNodes: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'NODE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NODE_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end>
  end
  inherited cdsChosenNodesParams: TAbmesClientDataSet
    object cdsChosenNodesParamsEXTERNAL: TAbmesFloatField
      FieldName = 'EXTERNAL'
    end
    object cdsChosenNodesParamsACTIVE: TAbmesFloatField
      FieldName = 'ACTIVE'
    end
    object cdsChosenNodesParamsRECURRENT: TAbmesFloatField
      FieldName = 'RECURRENT'
    end
    object cdsChosenNodesParamsSTORE_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_TYPE_CODE'
    end
    object cdsChosenNodesParamsDEPTH: TAbmesFloatField
      FieldName = 'DEPTH'
    end
  end
  object cdsIsExternal: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 128
    object cdsIsExternalVALUE: TAbmesFloatField
      FieldName = 'VALUE'
    end
    object cdsIsExternalABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 10
    end
    object cdsIsExternalNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dsIsExternal: TDataSource
    DataSet = cdsIsExternal
    Left = 104
    Top = 128
  end
  object dsIsRecurrent: TDataSource
    DataSet = cdsIsRecurrent
    Left = 168
    Top = 128
  end
  object cdsIsRecurrent: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 128
    object cbIsRecurrentVALUE: TAbmesFloatField
      FieldName = 'VALUE'
    end
    object cbIsRecurrentABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 10
    end
    object cbIsRecurrentNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dsIsActive: TDataSource
    DataSet = cdsIsActive
    Left = 40
    Top = 128
  end
  object cdsIsActive: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 128
    object cdsIsActiveVALUE: TAbmesFloatField
      FieldName = 'VALUE'
    end
    object cdsIsActiveABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 10
    end
    object cdsIsActiveNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object cdsStoreTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <>
    ProviderName = 'prvStoreTypes'
    Left = 199
    Top = 128
    object cdsStoreTypesSTORE_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_TYPE_CODE'
      Required = True
    end
    object cdsStoreTypesSTORE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STORE_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsStoreTypesSTORE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object dsStoreTypes: TDataSource
    DataSet = cdsStoreTypes
    Left = 232
    Top = 128
  end
  object cdsDepth: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 128
    object cdsDepthVALUE: TAbmesFloatField
      FieldName = 'VALUE'
    end
    object cdsDepthABBREV: TAbmesWideStringField
      FieldName = 'ABBREV'
      Size = 10
    end
    object cdsDepthNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dsDepth: TDataSource
    DataSet = cdsDepth
    Left = 296
    Top = 128
  end
end
