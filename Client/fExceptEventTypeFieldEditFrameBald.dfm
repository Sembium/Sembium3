inherited frExceptEventTypeFieldEditFrameBald: TfrExceptEventTypeFieldEditFrameBald
  Width = 422
  Height = 22
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  inherited gbTreeNode: TGroupBox
    Left = -8
    Top = -16
    Width = 438
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    inherited pnlTreeNode: TPanel
      Width = 422
      inherited pnlTreeNodeName: TPanel
        Width = 275
        inherited edtTreeNodeName: TDBEdit
          Width = 274
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = 275
      end
      inherited pnlRightButtons: TPanel
        Left = 386
      end
    end
  end
end
