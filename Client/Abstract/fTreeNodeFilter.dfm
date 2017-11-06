inherited frTreeNodeFilter: TfrTreeNodeFilter
  Width = 377
  Height = 105
  ParentShowHint = False
  ShowHint = True
  object grpTreeNodeFilter: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 377
    Height = 105
    Align = alClient
    Caption = ' Node '
    TabOrder = 0
    object pnlNodes: TPanel
      Left = 8
      Top = 17
      Width = 361
      Height = 76
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  inherited pnlBaseFilter: TPanel
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 120
  end
  inherited dsData: TDataSource
    Left = 152
  end
  object cdsChosenNodes: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NODE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'NODE_CODE'
        Options = [ixUnique]
      end>
    IndexName = 'idxDefault'
    Params = <>
    StoreDefs = True
    AfterOpen = cdsChosenNodesAfterOpen
    BeforeClose = cdsChosenNodesBeforeClose
    BeforePost = cdsChosenNodesBeforePost
    Left = 184
    Top = 24
  end
  object dsChosenNodes: TDataSource
    DataSet = cdsChosenNodes
    Left = 216
    Top = 24
  end
  object cdsChosenNodesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 56
  end
  object dsChosenNodesParams: TDataSource
    DataSet = cdsChosenNodesParams
    OnDataChange = dsChosenNodesParamsDataChange
    Left = 216
    Top = 56
  end
end
