inherited fmProductEdit: TfmProductEdit
  ActiveControl = frProduct.edtTreeNodeNo
  Caption = ''
  ClientHeight = 100
  ClientWidth = 422
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 422
    TabOrder = 1
    ExplicitTop = 65
    ExplicitWidth = 422
    inherited pnlOKCancel: TPanel
      Left = 154
      ExplicitLeft = 154
    end
    inherited pnlClose: TPanel
      Left = 65
      ExplicitLeft = 65
    end
    inherited pnlApply: TPanel
      Left = 333
      Visible = False
      ExplicitLeft = 333
    end
  end
  inline frProduct: TfrProductFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 409
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    TabStop = True
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 409
    inherited gbTreeNode: TGroupBox
      Width = 409
      ExplicitWidth = 409
      inherited pnlTreeNode: TPanel
        Width = 393
        ExplicitWidth = 393
        inherited pnlTreeNodeName: TPanel
          Width = 223
          ExplicitWidth = 223
          inherited edtTreeNodeName: TDBEdit
            Width = 222
            ExplicitWidth = 222
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 223
          ExplicitLeft = 223
        end
        inherited pnlRightButtons: TPanel
          Left = 334
          ExplicitLeft = 334
        end
      end
    end
  end
  inherited alActions: TActionList [2]
    Left = 0
    Top = 64
    inherited actForm: TAction
      Caption = ''
    end
  end
  inherited dsData: TDataSource [4]
  end
end
