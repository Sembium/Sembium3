inherited fmSpecMaterial: TfmSpecMaterial
  Left = 233
  Top = 299
  ActiveControl = frDetail.edtTreeNodeNo
  ClientHeight = 356
  ClientWidth = 650
  DesignSize = (
    650
    356)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 634
    Height = 305
  end
  object bvlSeparator: TBevel [6]
    Left = 24
    Top = 183
    Width = 601
    Height = 9
    Anchors = [akLeft, akTop, akRight]
    Shape = bsTopLine
  end
  object lblProductTechQuantity: TLabel [7]
    Left = 24
    Top = 264
    Width = 81
    Height = 13
    Caption = #1047#1072' 1 '#1050#1057#1063' - '#1090#1077#1093#1085'.'
    FocusControl = edtProductTechQuantity
  end
  object txtProductTechMeasure: TDBText [8]
    Left = 229
    Top = 283
    Width = 33
    Height = 17
    DataField = '_PRODUCT_TECH_MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblProductTotalTechQuantity: TLabel [9]
    Left = 144
    Top = 264
    Width = 81
    Height = 13
    Caption = #1054#1073#1097#1086' '#1090#1077#1093#1085'. '#1082'-'#1074#1086
    FocusControl = edtProductTotalTechQuantity
  end
  object lblProductTotalAccountQuantity: TLabel [10]
    Left = 280
    Top = 264
    Width = 81
    Height = 13
    Caption = #1054#1073#1097#1086' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
    FocusControl = edtProductTotalAccountQuantity
  end
  object txtAccountTechMeasure: TDBText [11]
    Left = 365
    Top = 283
    Width = 33
    Height = 17
    DataField = '_PRODUCT_ACCOUNT_MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblSecondaryCurrencyAbbrev: TLabel [12]
    Left = 597
    Top = 283
    Width = 33
    Height = 13
    AutoSize = False
    Caption = 'lblSecondaryCurrencyAbbrev'
  end
  object lblProductSecondarySinglePrice: TLabel [13]
    Left = 416
    Top = 264
    Width = 75
    Height = 13
    Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072
    FocusControl = edtProductSecondarySinglePrice
  end
  object lblProductSecondaryTotalPrice: TLabel [14]
    Left = 512
    Top = 264
    Width = 29
    Height = 13
    Caption = #1054#1073#1097#1086
    FocusControl = edtProductSecondaryTotalPrice
  end
  inherited lblConstructionNotes: TLabel
    Left = 436
  end
  inherited pnlBottomButtons: TPanel
    Top = 321
    Width = 650
    TabOrder = 16
    inherited pnlOKCancel: TPanel
      Left = 382
    end
    inherited pnlClose: TPanel
      Left = 293
    end
    inherited pnlApply: TPanel
      Left = 561
    end
  end
  object edtProductTechQuantity: TJvDBCalcEdit [17]
    Left = 24
    Top = 280
    Width = 113
    Height = 21
    DecimalPlaces = 10
    DisplayFormat = ',0.##########'
    TabOrder = 11
    DecimalPlacesAlwaysShown = False
    DataField = 'PRODUCT_TECH_QUANTITY'
    DataSource = dsData
  end
  object edtProductTotalTechQuantity: TDBEdit [18]
    Left = 144
    Top = 280
    Width = 81
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'TOTAL_PRODUCT_TECH_QUANTITY'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 12
  end
  object edtProductTotalAccountQuantity: TDBEdit [19]
    Left = 280
    Top = 280
    Width = 81
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 13
  end
  object edtProductSecondarySinglePrice: TDBEdit [20]
    Left = 416
    Top = 280
    Width = 81
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'PRODUCT_SECONDARY_SINGLE_PRICE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 14
  end
  object edtProductSecondaryTotalPrice: TDBEdit [21]
    Left = 512
    Top = 280
    Width = 81
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'PRODUCT_SECONDARY_TOTAL_PRICE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 15
  end
  object pnlCopyDetailToProduct: TPanel [25]
    Left = 295
    Top = 173
    Width = 59
    Height = 25
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 9
    DesignSize = (
      59
      25)
    object btnCopyDetailToProduct: TSpeedButton
      Left = 2
      Top = 1
      Width = 55
      Height = 21
      Action = actCopyDetailToProduct
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
        0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000BDBD0000BDBD0000BDBD00000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
  end
  inherited edtNotes: TDBEdit
    Width = 189
  end
  inherited pnlStructChange: TPanel
    Left = 376
  end
  inherited chbIsForSingleUse: TAbmesDBCheckBox
    Left = 536
  end
  inherited frDetail: TfrProductFieldEditFrame [29]
    Width = 504
    inherited gbTreeNode: TGroupBox
      Width = 504
      DesignSize = (
        504
        49)
      inherited pnlTreeNode: TPanel
        Width = 488
        inherited pnlTreeNodeName: TPanel
          Width = 306
          DesignSize = (
            306
            22)
          inherited edtTreeNodeName: TDBEdit
            Width = 305
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 306
        end
        inherited pnlRightButtons: TPanel
          Left = 429
        end
      end
    end
  end
  inherited edtConstructionNotes: TDBEdit [30]
    Left = 436
    Width = 189
  end
  inline frProduct: TfrProductFieldEditFrame [31]
    Left = 24
    Top = 208
    Width = 601
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 10
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 601
      Caption = ' '#1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090' '
      DesignSize = (
        601
        49)
      inherited pnlTreeNode: TPanel
        Width = 585
        inherited pnlTreeNodeName: TPanel
          Width = 403
          DesignSize = (
            403
            22)
          inherited edtTreeNodeName: TDBEdit
            Width = 402
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 403
        end
        inherited pnlRightButtons: TPanel
          Left = 526
        end
      end
    end
  end
  inherited chbIsComplete: TAbmesDBCheckBox [32]
    Visible = False
  end
  inherited alActions: TActionList [33]
    Left = 312
    object actCopyDetailToProduct: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1081' '#1050#1057#1063' '#1082#1072#1090#1086' '#1053#1057#1063
      ImageIndex = 25
      OnExecute = actCopyDetailToProductExecute
      OnUpdate = actCopyDetailToProductUpdate
    end
  end
  inherited dsData: TDataSource [34]
  end
end
