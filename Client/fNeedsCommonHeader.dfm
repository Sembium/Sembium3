inherited frNeedsCommonHeader: TfrNeedsCommonHeader
  Width = 674
  Height = 57
  ExplicitWidth = 674
  ExplicitHeight = 57
  object bvlMain: TBevel [0]
    Left = 0
    Top = 0
    Width = 674
    Height = 57
    Shape = bsFrame
  end
  object lblTreeNodeName: TLabel [1]
    Left = 8
    Top = 8
    Width = 87
    Height = 13
    Caption = '%StructurePart%'
  end
  object lblDateInterval: TLabel [2]
    Left = 480
    Top = 8
    Width = 110
    Height = 13
    Caption = '%DateIntervalName%'
  end
  inline frDateInterval: TfrDateIntervalFrame [3]
    Left = 480
    Top = 24
    Width = 145
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 145
    Constraints.MinHeight = 21
    Constraints.MinWidth = 145
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 480
    ExplicitTop = 24
  end
  inline frProduct: TfrProductFieldEditFrameBald [4]
    Left = 8
    Top = 24
    Width = 454
    Height = 22
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 22
    Constraints.MinHeight = 22
    TabOrder = 1
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 24
  end
end
