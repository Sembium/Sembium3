inherited frDeptFieldEditFrameLabeled: TfrDeptFieldEditFrameLabeled
  Height = 65
  Constraints.MaxHeight = 65
  inherited gbTreeNode: TGroupBox
    Height = 65
    DesignSize = (
      417
      65)
    object lblTreeNodeName: TLabel [0]
      Left = 8
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtTreeNodeName
    end
    object lblTreeNodeNo: TLabel [1]
      Left = 240
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
      FocusControl = edtTreeNodeNo
    end
    inherited pnlTreeNode: TPanel
      Top = 32
    end
  end
end
