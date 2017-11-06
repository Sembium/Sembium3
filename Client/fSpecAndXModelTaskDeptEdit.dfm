inherited fmSpecAndXModelTaskDeptEdit: TfmSpecAndXModelTaskDeptEdit
  Caption = '%s'
  ClientHeight = 100
  ClientWidth = 385
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 385
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 117
    end
    inherited pnlClose: TPanel
      Left = 28
    end
    inherited pnlApply: TPanel
      Left = 296
      Visible = False
    end
  end
  inline frDept: TfrDeptFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 369
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 369
      inherited pnlTreeNode: TPanel
        Width = 353
        inherited pnlTreeNodeName: TPanel
          Width = 206
          inherited edtTreeNodeName: TDBEdit
            Width = 205
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 206
        end
        inherited pnlRightButtons: TPanel
          Left = 317
        end
      end
    end
  end
  inherited alActions: TActionList [2]
    Left = 224
    inherited actForm: TAction
      Caption = '%s'
    end
  end
end
