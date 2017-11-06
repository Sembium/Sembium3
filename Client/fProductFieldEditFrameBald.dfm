inherited frProductFieldEditFrameBald: TfrProductFieldEditFrameBald
  Width = 454
  Height = 22
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  DesignSize = (
    454
    22)
  inherited gbTreeNode: TGroupBox
    Left = -8
    Top = -16
    Width = 470
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    Caption = ''
    inherited pnlTreeNode: TPanel
      Width = 454
      inherited pnlTreeNodeName: TPanel
        Width = 284
        inherited edtTreeNodeName: TDBEdit
          Width = 283
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = 284
      end
      inherited pnlRightButtons: TPanel
        Left = 395
      end
    end
  end
end
