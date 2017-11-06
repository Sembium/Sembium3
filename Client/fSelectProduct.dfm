inherited fmSelectProduct: TfmSelectProduct
  ActiveControl = frProduct.edtTreeNodeNo
  Caption = #1048#1079#1073#1086#1088' '#1085#1072' %ProductClassName%'
  ClientHeight = 100
  ClientWidth = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 474
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 206
    end
    inherited pnlClose: TPanel
      Left = 117
    end
    inherited pnlApply: TPanel
      Left = 385
      Visible = False
    end
  end
  inline frProduct: TfrProductFieldEditFrame [1]
    Left = 5
    Top = 8
    Width = 460
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Caption = ' %ProductClassName% '
    end
  end
  inherited alActions: TActionList [2]
    inherited actForm: TAction
      Caption = #1048#1079#1073#1086#1088' '#1085#1072' %ProductClassName%'
    end
  end
  inherited dsData: TDataSource [3]
  end
  inherited cdsData: TAbmesClientDataSet
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
  end
end
