inherited fmXModelMaterial: TfmXModelMaterial
  Left = 463
  Top = 226
  ActiveControl = frDetail.edtTreeNodeNo
  PixelsPerInch = 96
  TextHeight = 13
  object lblForkNo: TLabel [15]
    Left = 240
    Top = 18
    Width = 13
    Height = 13
    Caption = #1056#1082
    FocusControl = edtForkNo
  end
  inherited pnlBottomButtons: TPanel
    TabOrder = 17
  end
  inherited edtProductTechQuantity: TDBEdit
    TabOrder = 12
  end
  inherited edtProductTotalTechQuantity: TDBEdit
    TabOrder = 13
  end
  inherited edtProductTotalAccountQuantity: TDBEdit
    TabOrder = 14
  end
  inherited edtProductSecondarySinglePrice: TDBEdit
    TabOrder = 16
  end
  inherited edtNoAsText: TDBEdit
    Width = 217
  end
  inherited edtDetailTechQuantity: TDBEdit
    TabOrder = 6
  end
  inherited edtTotalDetailTechQuantity: TDBEdit
    TabOrder = 7
  end
  inherited pnlCopyDetailToProduct: TPanel
    TabOrder = 10
  end
  inherited edtNotes: TDBEdit
    TabOrder = 8
  end
  inherited pnlStructChange: TPanel
    TabOrder = 3
    Visible = False
    inherited pnlStructChangeComboBox: TPanel
      inherited chbStructChange: TAbmesDBCheckBox
        DataSource = nil
      end
    end
    inherited edtStructChangeDate: TDBEdit
      DataSource = nil
      Visible = False
    end
    inherited frStructChangeDate: TfrDateFieldEditFrame
      Visible = False
    end
  end
  inherited chbIsForSingleUse: TAbmesDBCheckBox
    TabOrder = 5
  end
  object edtForkNo: TDBEdit [30]
    Left = 240
    Top = 32
    Width = 25
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'FORK_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
  end
  inherited frDetail: TfrProductFieldEditFrame
    TabOrder = 4
  end
  inherited edtConstructionNotes: TDBEdit
    TabOrder = 9
  end
  inherited frProduct: TfrProductFieldEditFrame
    TabOrder = 11
  end
  inherited chbIsComplete: TAbmesDBCheckBox
    Left = 280
    TabOrder = 2
  end
end
