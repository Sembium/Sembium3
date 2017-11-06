inherited fmProductParamsFilter: TfmProductParamsFilter
  ActiveControl = frCommonProduct.edtTreeNodeNo
  Caption = '%s '#1085#1072' %ProductsClassName% '#1087#1086' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
  ClientHeight = 311
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Top = 64
    Height = 204
  end
  inherited pnlBottomButtons: TPanel
    Top = 276
    TabOrder = 2
  end
  inherited pnlTreeNodeParamsGrid: TPanel
    Top = 72
    Height = 188
    inherited pnlTreeNodeParamsNavigator: TPanel
      inherited navTreeNodeParams: TDBColorNavigator
        Hints.Strings = ()
      end
    end
    inherited grdTreeNodeParams: TAbmesDBGrid
      Height = 166
    end
  end
  inline frCommonProduct: TfrProductFieldEditFrame [3]
    Left = 8
    Top = 8
    Width = 469
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 469
      Caption = ' '#1054#1073#1086#1073#1097#1072#1074#1072#1097' %ProductClassName% '
      inherited pnlTreeNode: TPanel
        Width = 453
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
          Left = 394
        end
      end
    end
  end
  inherited alActions: TActionList [4]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' %ProductsClassName% '#1087#1086' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
    end
  end
  inherited dsData: TDataSource [5]
  end
  inherited cdsData: TAbmesClientDataSet [6]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [7]
  end
  inherited dsFilterVariants: TDataSource [8]
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet [9]
  end
  inherited cdsTreeNodeParams: TAbmesClientDataSet [10]
    ConnectionBroker = dmMain.conProductsTreeEditor
  end
end
