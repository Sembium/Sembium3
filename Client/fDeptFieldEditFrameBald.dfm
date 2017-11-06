inherited frDeptFieldEditFrameBald: TfrDeptFieldEditFrameBald
  Width = 350
  Height = 22
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  DesignSize = (
    350
    22)
  inherited gbTreeNode: TGroupBox
    Left = -8
    Top = -16
    Width = 366
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    Caption = ''
    DesignSize = (
      366
      49)
    inherited pnlTreeNode: TPanel
      Width = 350
      inherited pnlTreeNodeName: TPanel
        Width = 203
        DesignSize = (
          203
          22)
        inherited edtTreeNodeName: TDBEdit
          Width = 202
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = 203
      end
      inherited pnlRightButtons: TPanel
        Left = 314
      end
    end
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    Left = 224
  end
  inherited dsTreeNode: TDataSource
    Left = 256
  end
end
