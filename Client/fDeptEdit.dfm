inherited fmDeptEdit: TfmDeptEdit
  Left = 526
  Top = 426
  ActiveControl = frDept.edtTreeNodeNo
  Caption = ''
  ClientHeight = 103
  ClientWidth = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 68
    Width = 433
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 165
    end
    inherited pnlClose: TPanel
      Left = 76
    end
    inherited pnlApply: TPanel
      Left = 344
      Visible = False
    end
  end
  inline frDept: TfrDeptFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = ''
    end
  end
  inherited dsData: TDataSource [4]
  end
end
