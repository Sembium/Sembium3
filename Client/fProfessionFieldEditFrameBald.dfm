inherited frProfessionFieldEditFrameBald: TfrProfessionFieldEditFrameBald
  Width = 322
  Height = 22
  inherited gbTreeNode: TGroupBox
    Left = -8
    Top = -16
    Width = 338
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    inherited pnlTreeNode: TPanel
      Width = 322
      inherited pnlTreeNodeName: TPanel
        Width = 175
        inherited edtTreeNodeName: TDBEdit
          Width = 174
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = 175
      end
      inherited pnlRightButtons: TPanel
        Left = 286
      end
    end
  end
end
