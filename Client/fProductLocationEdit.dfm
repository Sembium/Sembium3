inherited fmProductLocationEdit: TfmProductLocationEdit
  Left = 312
  Top = 204
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086' '#1054#1090#1085#1086#1096#1077#1085#1080#1077' - %s'
  ClientHeight = 173
  ClientWidth = 402
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 386
    Height = 122
  end
  inherited pnlBottomButtons: TPanel
    Top = 138
    Width = 402
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 134
    end
    inherited pnlClose: TPanel
      Left = 45
    end
    inherited pnlApply: TPanel
      Left = 313
      Visible = False
    end
  end
  inline frStore: TfrDeptFieldEditFrame [2]
    Left = 16
    Top = 72
    Width = 369
    Height = 48
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 369
      Height = 48
      Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '
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
  inline frDept: TfrDeptFieldEditFrame [3]
    Left = 16
    Top = 16
    Width = 369
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 369
      Caption = ' '#1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083' '
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
  inherited alActions: TActionList [4]
    Left = 104
    Top = 72
    inherited actForm: TAction
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1086' '#1054#1090#1085#1086#1096#1077#1085#1080#1077' - %s'
    end
  end
end
