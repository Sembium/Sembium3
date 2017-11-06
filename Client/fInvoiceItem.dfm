inherited fmInvoiceItem: TfmInvoiceItem
  Left = 264
  Top = 200
  Caption = #1040#1088#1090#1080#1082#1091#1083
  ClientHeight = 287
  ClientWidth = 505
  DesignSize = (
    505
    287)
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 488
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object pnlItemParameters: TPanel [1]
    Left = 10
    Top = 10
    Width = 479
    Height = 143
    BevelOuter = bvNone
    TabOrder = 0
    object lblAccountQuantity: TLabel
      Left = 8
      Top = 64
      Width = 87
      Height = 13
      Caption = #1057#1095#1077#1090'. '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object lblPrice: TLabel
      Left = 304
      Top = 64
      Width = 43
      Height = 13
      Caption = #1045#1076'. '#1094#1077#1085#1072
    end
    object lblPriceWithDDS: TLabel
      Left = 380
      Top = 64
      Width = 80
      Height = 13
      Caption = #1045#1076'. '#1094#1077#1085#1072' '#1089' '#1044#1044#1057
    end
    object lblTotalPrice: TLabel
      Left = 304
      Top = 104
      Width = 56
      Height = 13
      Caption = #1054#1073#1097#1072' '#1094#1077#1085#1072
    end
    object lblTotalPriceWithDDS: TLabel
      Left = 380
      Top = 104
      Width = 93
      Height = 13
      Caption = #1054#1073#1097#1072' '#1094#1077#1085#1072' '#1089' '#1044#1044#1057
    end
    object lblMarketSinglePrice: TLabel
      Left = 216
      Top = 64
      Width = 74
      Height = 13
      Caption = #1055#1072#1079#1072#1088#1085#1072' '#1094#1077#1085#1072'.'
    end
    object lblDiscountPercent: TLabel
      Left = 216
      Top = 104
      Width = 49
      Height = 13
      Caption = #1054#1090#1089#1090#1098#1087#1082#1072
    end
    object lblPercents: TLabel
      Left = 284
      Top = 124
      Width = 8
      Height = 13
      Caption = '%'
    end
    object lblMeasureIAbbrev: TLabel
      Left = 128
      Top = 104
      Width = 41
      Height = 13
      Caption = 'Measure'
    end
    object lblMeasureAbbrev: TLabel
      Left = 128
      Top = 64
      Width = 78
      Height = 13
      Caption = #1052#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
    end
    object edtAccountQuantity: TDBEdit
      Left = 8
      Top = 80
      Width = 110
      Height = 21
      DataField = 'ACCOUNT_QUANTITY'
      DataSource = dsData
      TabOrder = 1
    end
    object edtPrice: TDBEdit
      Left = 304
      Top = 80
      Width = 73
      Height = 21
      DataField = 'SINGLE_PRICE_WITHOUT_VAT'
      DataSource = dsData
      TabOrder = 4
    end
    object edtPriceWithDDS: TDBEdit
      Left = 380
      Top = 80
      Width = 93
      Height = 21
      DataField = 'SINGLE_PRICE_WITH_VAT'
      DataSource = dsData
      TabOrder = 5
    end
    object edtTotalPrice: TDBEdit
      Left = 304
      Top = 120
      Width = 73
      Height = 21
      DataField = 'TOTAL_PRICE_WITHOUT_VAT'
      DataSource = dsData
      TabOrder = 9
    end
    object edtTotalPriceWithDDS: TDBEdit
      Left = 380
      Top = 120
      Width = 93
      Height = 21
      DataField = 'TOTAL_PRICE_WITH_VAT'
      DataSource = dsData
      TabOrder = 10
    end
    object edtMarketSinglePrice: TDBEdit
      Left = 216
      Top = 80
      Width = 73
      Height = 21
      DataField = 'MARKET_SINGLE_PRICE'
      DataSource = dsData
      TabOrder = 3
    end
    object edtDiscountPercent: TDBEdit
      Left = 216
      Top = 120
      Width = 65
      Height = 21
      DataField = 'DISCOUNT_PERCENT'
      DataSource = dsData
      TabOrder = 8
    end
    object chkIsVatFree: TCheckBox
      Left = 8
      Top = 122
      Width = 114
      Height = 17
      Caption = #1054#1089#1074#1086#1073#1086#1076#1077#1085' '#1086#1090' '#1044#1044#1057
      TabOrder = 6
      Visible = False
      OnClick = chkIsVatFreeClick
    end
    inline frProduct: TfrProductFieldEditFrame
      Left = 11
      Top = 8
      Width = 460
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 0
      inherited gbTreeNode: TGroupBox
        inherited pnlTreeNode: TPanel
          inherited pnlTreeNodeName: TPanel
            inherited edtTreeNodeName: TDBEdit
              DataField = 'ITEM_NAME'
              DataSource = frProduct.dsData
            end
          end
        end
      end
    end
    object cbMeasureIAbbrev: TJvDBLookupEdit
      Left = 128
      Top = 120
      Width = 82
      Height = 21
      LookupDisplay = 'I_MEASURE_ABBREV'
      LookupField = 'MEASURE_CODE'
      LookupSource = dsMeasures
      Color = clInfoBk
      TabOrder = 7
      OnCloseUp = cbMeasureIAbbrevChange
      OnChange = cbMeasureIAbbrevChange
    end
    object cbMeasureAbbrev: TJvDBLookupEdit
      Left = 128
      Top = 80
      Width = 82
      Height = 21
      LookupDisplay = 'MEASURE_ABBREV'
      LookupField = 'MEASURE_CODE'
      LookupSource = dsMeasures
      TabOrder = 2
      OnCloseUp = cbMeasureAbbrevChange
      OnChange = cbMeasureAbbrevChange
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 252
    Width = 505
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 237
    end
    inherited pnlClose: TPanel
      Left = 148
    end
    inherited pnlApply: TPanel
      Left = 416
      Visible = False
    end
  end
  object gbBndProcessObject: TGroupBox [3]
    Left = 19
    Top = 160
    Width = 465
    Height = 73
    Caption = ' '#1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1072' '
    TabOrder = 1
    DesignSize = (
      465
      73)
    object btnClearSaleShipment: TSpeedButton
      Left = 337
      Top = 39
      Width = 21
      Height = 21
      Action = frSaleShipmentProcessObject.actClearFieldValues
      Anchors = [akLeft, akTop, akRight, akBottom]
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 21
      Constraints.MinHeight = 21
      Constraints.MinWidth = 21
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF000000000000000000FF00FF00000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF0000000000FF00FF0000000000000084000000
        840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00000000000000FF000000FF000000
        FF000000840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
        FF000000FF000000840000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF0000000000FF00FF00FF00FF00000000000000FF000000
        FF000000FF00000000000084840000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF0000000000FF00FF00FF00FF00000000000000
        FF000000000000FFFF00000000000084840000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000FFFF000000000000FFFF00000000000084840000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000FFFF000000000000FFFF000084840000848400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000FFFF0000FFFF0000FFFF0000848400FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000FFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF00}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    inline frSaleShipmentProcessObject: TfrSaleShipmentProcessObject
      Left = 16
      Top = 15
      Width = 321
      Height = 50
      TabOrder = 0
      TabStop = True
      Visible = False
      OnExit = frSaleShipmentProcessObjectExit
      inherited lblBranch: TLabel
        Width = 51
      end
      inherited lblPPNo: TLabel
        Width = 41
      end
      inherited lblShipmentNo: TLabel
        Width = 48
      end
      inherited lblSaleDealTypeAbbrev: TLabel
        Width = 19
      end
      inherited lblClientName: TLabel
        Width = 36
      end
    end
  end
  inherited alActions: TActionList
    Left = 0
    Top = 256
    inherited actForm: TAction
      Caption = #1040#1088#1090#1080#1082#1091#1083
    end
    object actEditProduct: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      OnExecute = actEditProductExecute
    end
    object actDebitOrCredit: TAction
      Caption = #1060#1072#1082#1090#1091#1088#1072
      OnExecute = actDebitOrCreditExecute
    end
  end
  inherited dsData: TDataSource
    Left = 104
    Top = 256
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 72
    Top = 256
  end
  object mnuItemKind: TPopupMenu
    Left = 232
    Top = 16
    object miProduct: TMenuItem
      Action = actEditProduct
    end
    object miDebitOrCredit: TMenuItem
      Action = actDebitOrCredit
    end
  end
  object mdsDebitOrCredit: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 16
    object mdsDebitOrCreditSELLER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SELLER_COMPANY_CODE'
    end
    object mdsDebitOrCreditINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 162
    Top = 130
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsMeasuresMEASURE_NAME: TAbmesWideStringField
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
    object cdsMeasuresI_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'I_MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object dsMeasures: TDataSource
    DataSet = cdsMeasures
    Left = 194
    Top = 130
  end
end
