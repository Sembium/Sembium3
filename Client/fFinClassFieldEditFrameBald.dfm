inherited frFinClassFieldEditFrameBald: TfrFinClassFieldEditFrameBald
  Width = 422
  Height = 22
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  ExplicitWidth = 422
  ExplicitHeight = 22
  inherited gbTreeNode: TGroupBox
    Left = -8
    Top = -16
    Width = 438
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    ExplicitLeft = -8
    ExplicitTop = -16
    ExplicitWidth = 438
    inherited pnlTreeNode: TPanel
      Width = 422
      ExplicitWidth = 396
      inherited pnlTreeNodeName: TPanel
        Width = 275
        ExplicitWidth = 249
        inherited edtTreeNodeName: TDBEdit
          Width = 274
          ExplicitWidth = 248
        end
      end
      inherited pnlTreeNodeNo: TPanel
        Left = 275
        ExplicitLeft = 249
      end
      inherited pnlRightButtons: TPanel
        Left = 386
        ExplicitLeft = 360
      end
    end
  end
end
