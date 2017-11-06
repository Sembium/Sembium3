inherited fmSelectSpecReplaceProducts: TfmSelectSpecReplaceProducts
  Caption = #1047#1072#1084#1103#1085#1072
  ClientHeight = 172
  ClientWidth = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 442
    Height = 121
  end
  inherited pnlBottomButtons: TPanel
    Top = 137
    Width = 458
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 190
    end
    inherited pnlClose: TPanel
      Left = 101
    end
    inherited pnlApply: TPanel
      Left = 369
      Visible = False
    end
  end
  inline frOldProduct: TfrProductFieldEditFrame [2]
    Left = 16
    Top = 16
    Width = 425
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 0
    inherited gbTreeNode: TGroupBox
      Width = 425
      Caption = ' '#1057#1090#1072#1088#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1091#1088#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090' '
      inherited pnlTreeNode: TPanel
        Width = 409
        inherited pnlTreeNodeName: TPanel
          Width = 239
          inherited edtTreeNodeName: TDBEdit
            Width = 238
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 239
        end
        inherited pnlRightButtons: TPanel
          Left = 350
        end
      end
    end
  end
  inline frNewProduct: TfrProductFieldEditFrame [3]
    Left = 16
    Top = 72
    Width = 425
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 425
      Caption = ' '#1053#1086#1074#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1091#1088#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090' '
      inherited pnlTreeNode: TPanel
        Width = 409
        inherited pnlTreeNodeName: TPanel
          Width = 239
          inherited edtTreeNodeName: TDBEdit
            Width = 238
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 239
        end
        inherited pnlRightButtons: TPanel
          Left = 350
        end
      end
    end
  end
  inherited alActions: TActionList [4]
    inherited actForm: TAction
      Caption = #1047#1072#1084#1103#1085#1072
    end
  end
  inherited cdsData: TAbmesClientDataSet
    object cdsDataOLD_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1088'a '#1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1091#1088#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
      FieldName = 'OLD_PRODUCT_CODE'
      OnChange = cdsDataOLD_PRODUCT_CODEChange
    end
    object cdsDataOLD_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'OLD_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataOLD_PRODUCT_NO: TAbmesFloatField
      FieldName = 'OLD_PRODUCT_NO'
    end
    object cdsDataOLD_PRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'OLD_PRODUCT_MEASURE_CODE'
    end
    object cdsDataOLD_PRODUCT_ACC_MEASURE_CODE: TAbmesFloatField
      FieldName = 'OLD_PRODUCT_ACC_MEASURE_CODE'
    end
    object cdsDataOLD_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'OLD_PRODUCT_TECH_MEASURE_CODE'
    end
    object cdsDataNEW_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1074'a '#1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1091#1088#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090
      FieldName = 'NEW_PRODUCT_CODE'
      OnChange = cdsDataNEW_PRODUCT_CODEChange
    end
    object cdsDataNEW_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'NEW_PRODUCT_NAME'
      Size = 100
    end
    object cdsDataNEW_PRODUCT_NO: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_NO'
      FieldValueType = fvtInteger
    end
    object cdsDataNEW_PRODUCT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_MEASURE_CODE'
    end
    object cdsDataNEW_PRODUCT_ACC_MEASURE_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_ACC_MEASURE_CODE'
    end
    object cdsDataNEW_PRODUCT_TECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'NEW_PRODUCT_TECH_MEASURE_CODE'
    end
  end
end
