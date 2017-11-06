inherited fmNewParRelProductFilter: TfmNewParRelProductFilter
  ActiveControl = frPartner.edtPartnerCode
  Caption = '%ParRelProduct% - '#1044#1086#1073#1072#1074#1103#1085#1077
  ClientHeight = 156
  ClientWidth = 472
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 121
    Width = 472
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 204
    end
    inherited pnlClose: TPanel
      Left = 115
    end
    inherited pnlApply: TPanel
      Left = 383
    end
  end
  inline frPartner: TfrPartnerFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 457
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 0
    TabStop = True
    inherited gbPartner: TGroupBox
      Width = 457
      inherited pnlNameAndButtons: TPanel
        Width = 368
        inherited pnlRightButtons: TPanel
          Left = 332
          inherited tlbDocButton: TToolBar
            Height = 32
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 332
          inherited edtPartnerName: TDBEdit
            Width = 333
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 333
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 449
      end
    end
  end
  inline frProduct: TfrProductFieldEditFrame [2]
    Left = 8
    Top = 64
    Width = 457
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 457
      inherited pnlTreeNode: TPanel
        Width = 441
        inherited pnlTreeNodeName: TPanel
          Width = 271
          inherited edtTreeNodeName: TDBEdit
            Width = 270
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 271
        end
        inherited pnlRightButtons: TPanel
          Left = 382
        end
      end
    end
  end
  inherited alActions: TActionList [3]
    Left = 304
    inherited actForm: TAction
      Caption = '%ParRelProduct% - '#1044#1086#1073#1072#1074#1103#1085#1077
    end
  end
  inherited dsData: TDataSource [4]
    Left = 256
  end
  inherited cdsData: TAbmesClientDataSet [5]
    Left = 224
  end
  inherited dsFilterVariants: TDataSource [6]
  end
end
