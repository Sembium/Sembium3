inherited rptIInvoice: TrptIInvoice
  BeforePrint = QuickRepBeforePrint
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  object bntSummary: TQRBand [0]
    Left = 38
    Top = 413
    Width = 718
    Height = 82
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      216.958333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRShape8: TQRShape
      Left = 0
      Top = -1
      Width = 718
      Height = 3
      Size.Values = (
        7.937500000000000000
        0.000000000000000000
        -2.645833333333333000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel27: TQRLabel
      Left = 457
      Top = 11
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        1209.145833333333000000
        29.104166666666670000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = 'Sub Total'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRShape17: TQRShape
      Left = 572
      Top = 9
      Width = 106
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1513.416666666667000000
        23.812500000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape19: TQRShape
      Left = 572
      Top = 27
      Width = 106
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1513.416666666667000000
        71.437500000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape20: TQRShape
      Left = 572
      Top = 45
      Width = 106
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1513.416666666667000000
        119.062500000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText24: TQRDBText
      Left = 575
      Top = 11
      Width = 100
      Height = 15
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        29.104166666666670000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OVERALL_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel26: TQRLabel
      Left = 8
      Top = 3
      Width = 139
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        7.937500000000000000
        367.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Payment Amount (in words):'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText31: TQRDBText
      Left = 8
      Top = 22
      Width = 449
      Height = 38
      Size.Values = (
        100.541666666666700000
        21.166666666666670000
        58.208333333333320000
        1187.979166666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_TO_PAY_I_TEXT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel12: TQRLabel
      Left = 457
      Top = 29
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        1209.145833333333000000
        76.729166666666670000
        142.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = 'VAT Value'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel16: TQRLabel
      Left = 457
      Top = 47
      Width = 44
      Height = 17
      Size.Values = (
        44.979166666666670000
        1209.145833333333000000
        124.354166666666700000
        116.416666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = 'Tax Rate'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText13: TQRDBText
      Left = 575
      Top = 29
      Width = 100
      Height = 15
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        76.729166666666680000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_PRICE_FOR_VAT_BC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText18: TQRDBText
      Left = 575
      Top = 47
      Width = 100
      Height = 15
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        124.354166666666700000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_INVOICE_VAT_TYPE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText26: TQRDBText
      Left = 679
      Top = 11
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        1796.520833333334000000
        29.104166666666670000
        89.958333333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText28: TQRDBText
      Left = 679
      Top = 29
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        1796.520833333333000000
        76.729166666666680000
        89.958333333333320000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_BASE_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRShape15: TQRShape
      Left = 572
      Top = 63
      Width = 106
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1513.416666666667000000
        166.687500000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel21: TQRLabel
      Left = 457
      Top = 65
      Width = 19
      Height = 17
      Size.Values = (
        44.979166666666670000
        1209.145833333333000000
        171.979166666666700000
        50.270833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = 'Tax'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText27: TQRDBText
      Left = 575
      Top = 65
      Width = 100
      Height = 15
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        171.979166666666700000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_VAT_BC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText32: TQRDBText
      Left = 679
      Top = 65
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        1796.520833333333000000
        171.979166666666700000
        89.958333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_BASE_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
  end
  object QRBand1: TQRBand [1]
    Left = 38
    Top = 38
    Width = 718
    Height = 339
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      896.937500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRDBText38: TQRDBText
      Left = 0
      Top = 8
      Width = 721
      Height = 20
      Size.Values = (
        52.916666666666660000
        0.000000000000000000
        21.166666666666670000
        1907.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_INVOICE_TYPE_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 12
    end
    object lblProform: TQRDBText
      Left = 0
      Top = 11
      Width = 246
      Height = 24
      Size.Values = (
        63.500000000000000000
        0.000000000000000000
        29.104166666666670000
        650.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_PRINT_INVOICE_STATUS_I_TEXT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 11
    end
    object lblOriginal: TQRDBText
      Left = 560
      Top = 11
      Width = 153
      Height = 24
      Size.Values = (
        63.500000000000000000
        1481.666666666667000000
        29.104166666666670000
        404.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_IS_ORIGINAL_I_TEXT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 11
    end
    object QRShape4: TQRShape
      Left = 424
      Top = 228
      Width = 289
      Height = 104
      Size.Values = (
        275.166666666666700000
        1121.833333333333000000
        603.250000000000000000
        764.645833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape1: TQRShape
      Left = 424
      Top = 37
      Width = 289
      Height = 185
      Size.Values = (
        489.479166666666700000
        1121.833333333333000000
        97.895833333333340000
        764.645833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel4: TQRLabel
      Left = 432
      Top = 56
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        148.166666666666700000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Company:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 512
      Top = 56
      Width = 193
      Height = 33
      Size.Values = (
        87.312500000000000000
        1354.666666666667000000
        148.166666666666700000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SELLER_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText20: TQRDBText
      Left = 512
      Top = 96
      Width = 193
      Height = 17
      Size.Values = (
        44.979166666666670000
        1354.666666666667000000
        254.000000000000000000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SELLER_I_CITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel23: TQRLabel
      Left = 432
      Top = 96
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        254.000000000000000000
        119.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Location:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 432
      Top = 120
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        317.500000000000000000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Address:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 512
      Top = 120
      Width = 193
      Height = 41
      Size.Values = (
        108.479166666666700000
        1354.666666666667000000
        317.500000000000000000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SELLER_I_ADDRESS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText1: TQRDBText
      Left = 512
      Top = 200
      Width = 193
      Height = 17
      Size.Values = (
        44.979166666666670000
        1354.666666666667000000
        529.166666666666800000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_SELLER_BULSTAT_OR_EGN_VALUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel14: TQRLabel
      Left = 300
      Top = 40
      Width = 17
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        105.833333333333300000
        44.979166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'No:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText11: TQRDBText
      Left = 300
      Top = 56
      Width = 113
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        148.166666666666700000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'INVOICE_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel15: TQRLabel
      Left = 300
      Top = 74
      Width = 55
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        195.791666666666700000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Issue Date:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText12: TQRDBText
      Left = 300
      Top = 90
      Width = 113
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        238.125000000000000000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'INVOICE_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRShape2: TQRShape
      Left = 4
      Top = 37
      Width = 285
      Height = 185
      Size.Values = (
        489.479166666666700000
        10.583333333333330000
        97.895833333333340000
        754.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel24: TQRLabel
      Left = 16
      Top = 56
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        148.166666666666700000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Company:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText21: TQRDBText
      Left = 96
      Top = 56
      Width = 185
      Height = 33
      Size.Values = (
        87.312500000000000000
        254.000000000000000000
        148.166666666666700000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BUYER_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel9: TQRLabel
      Left = 16
      Top = 96
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        254.000000000000000000
        119.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Location:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 96
      Top = 96
      Width = 185
      Height = 17
      Size.Values = (
        44.979166666666670000
        254.000000000000000000
        254.000000000000000000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BUYER_I_CITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel10: TQRLabel
      Left = 16
      Top = 120
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        317.500000000000000000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Address:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 96
      Top = 120
      Width = 185
      Height = 41
      Size.Values = (
        108.479166666666700000
        254.000000000000000000
        317.500000000000000000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BUYER_I_ADDRESS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText9: TQRDBText
      Left = 96
      Top = 200
      Width = 185
      Height = 17
      Size.Values = (
        44.979166666666670000
        254.000000000000000000
        529.166666666666800000
        489.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_BUYER_BULSTAT_OR_EGN_VALUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Left = 432
      Top = 40
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        105.833333333333300000
        89.958333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' Seller '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 12
      Top = 40
      Width = 36
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        105.833333333333300000
        95.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' Buyer '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel35: TQRLabel
      Left = 300
      Top = 156
      Width = 67
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        412.750000000000000000
        177.270833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Invoice Place:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText35: TQRDBText
      Left = 300
      Top = 172
      Width = 113
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        455.083333333333300000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'INVOICE_I_PLACE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 16
      Top = 176
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        465.666666666666700000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'VAT No:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText14: TQRDBText
      Left = 96
      Top = 176
      Width = 175
      Height = 17
      Size.Values = (
        44.979166666666670000
        254.000000000000000000
        465.666666666666800000
        463.020833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BUYER_VAT_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 432
      Top = 176
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        465.666666666666700000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'VAT No:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText15: TQRDBText
      Left = 512
      Top = 176
      Width = 183
      Height = 17
      Size.Values = (
        44.979166666666670000
        1354.666666666667000000
        465.666666666666800000
        484.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SELLER_VAT_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel32: TQRLabel
      Left = 300
      Top = 189
      Width = 49
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        500.062500000000000000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = 'Currency:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText16: TQRDBText
      Left = 300
      Top = 205
      Width = 113
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        542.395833333333400000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel11: TQRLabel
      Left = 300
      Top = 107
      Width = 111
      Height = 30
      Size.Values = (
        79.375000000000000000
        793.750000000000000000
        283.104166666666700000
        293.687500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Event or Advance Payment Date:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText17: TQRDBText
      Left = 300
      Top = 139
      Width = 113
      Height = 15
      Size.Values = (
        39.687500000000000000
        793.750000000000000000
        367.770833333333400000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'EVENT_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRShape3: TQRShape
      Left = 4
      Top = 228
      Width = 285
      Height = 104
      Size.Values = (
        275.166666666666700000
        10.583333333333330000
        603.250000000000000000
        754.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText2: TQRDBText
      Left = 96
      Top = 248
      Width = 185
      Height = 33
      Size.Values = (
        87.312500000000000000
        254.000000000000000000
        656.166666666666800000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'RECEIVER_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel8: TQRLabel
      Left = 16
      Top = 248
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        656.166666666666700000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Company:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel13: TQRLabel
      Left = 12
      Top = 232
      Width = 58
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        613.833333333333300000
        153.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' Consignee '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText36: TQRDBText
      Left = 516
      Top = 248
      Width = 185
      Height = 33
      Size.Values = (
        87.312500000000000000
        1365.250000000000000000
        656.166666666666800000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SENDER_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel17: TQRLabel
      Left = 436
      Top = 248
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        1153.583333333333000000
        656.166666666666700000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Company:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel18: TQRLabel
      Left = 432
      Top = 232
      Width = 56
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        613.833333333333300000
        148.166666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' Consignor '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText10: TQRDBText
      Left = 96
      Top = 288
      Width = 185
      Height = 41
      Size.Values = (
        108.479166666666700000
        254.000000000000000000
        762.000000000000000000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'RECEIVER_I_ADDRESS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel1: TQRLabel
      Left = 16
      Top = 288
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        762.000000000000000000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Address:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText37: TQRDBText
      Left = 516
      Top = 288
      Width = 185
      Height = 41
      Size.Values = (
        108.479166666666700000
        1365.250000000000000000
        762.000000000000000000
        489.479166666666600000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SENDER_I_ADDRESS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel19: TQRLabel
      Left = 436
      Top = 288
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        1153.583333333333000000
        762.000000000000000000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Address:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel22: TQRLabel
      Left = 16
      Top = 200
      Width = 29
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        529.166666666666700000
        76.729166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ID No:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel28: TQRLabel
      Left = 432
      Top = 200
      Width = 29
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        529.166666666666700000
        76.729166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ID No:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  object QRBand2: TQRBand [2]
    Left = 38
    Top = 377
    Width = 718
    Height = 19
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbColumnHeader
    object qrsPriceHeader: TQRShape
      Left = 604
      Top = 0
      Width = 74
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1598.083333333333000000
        0.000000000000000000
        195.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsSinglePriceHeader: TQRShape
      Left = 532
      Top = 0
      Width = 73
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1407.583333333333000000
        0.000000000000000000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsMeasureHeader: TQRShape
      Left = 492
      Top = 0
      Width = 42
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1301.750000000000000000
        0.000000000000000000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsQuantityHeader: TQRShape
      Left = 426
      Top = 0
      Width = 67
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1127.125000000000000000
        0.000000000000000000
        177.270833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsItemNameHeader: TQRShape
      Left = 0
      Top = 0
      Width = 427
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        0.000000000000000000
        1129.770833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsDiscountPercentHeader: TQRShape
      Left = 677
      Top = 0
      Width = 41
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1791.229166666667000000
        0.000000000000000000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblItemName: TQRLabel
      Left = 203
      Top = 2
      Width = 54
      Height = 15
      Size.Values = (
        39.687500000000000000
        537.104166666666700000
        5.291666666666667000
        142.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Article'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblQuantity: TQRLabel
      Left = 438
      Top = 2
      Width = 43
      Height = 15
      Size.Values = (
        39.687500000000000000
        1158.875000000000000000
        5.291666666666667000
        113.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Quantity'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblMeasure: TQRLabel
      Left = 495
      Top = 2
      Width = 36
      Height = 15
      Size.Values = (
        39.687500000000000000
        1309.687500000000000000
        5.291666666666667000
        95.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Meas.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblSinglePrice: TQRLabel
      Left = 538
      Top = 2
      Width = 61
      Height = 15
      Size.Values = (
        39.687500000000000000
        1423.458333333333000000
        5.291666666666667000
        161.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Single Price'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblPrice: TQRLabel
      Left = 623
      Top = 2
      Width = 34
      Height = 15
      Size.Values = (
        39.687500000000000000
        1648.354166666667000000
        5.291666666666667000
        89.958333333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Total Price'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblDiscountPercent: TQRLabel
      Left = 687
      Top = 2
      Width = 20
      Height = 15
      Size.Values = (
        39.687500000000000000
        1817.687500000000000000
        5.291666666666667000
        52.916666666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = '-%'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object qrsCurrencyHeader: TQRShape
      Left = 677
      Top = 0
      Width = 41
      Height = 19
      Enabled = False
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1791.229166666667000000
        0.000000000000000000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblCurrency: TQRLabel
      Left = 683
      Top = 2
      Width = 25
      Height = 15
      Enabled = False
      Size.Values = (
        39.687500000000000000
        1807.104166666667000000
        5.291666666666667000
        66.145833333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Curr.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  object bndDetail: TQRBand [3]
    Left = 38
    Top = 396
    Width = 718
    Height = 17
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.979166666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object qrsPrice: TQRShape
      Left = 604
      Top = -1
      Width = 74
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1598.083333333333000000
        -2.645833333333333000
        195.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsSinglePrice: TQRShape
      Left = 532
      Top = -1
      Width = 73
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1407.583333333333000000
        -2.645833333333333000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsMeasure: TQRShape
      Left = 492
      Top = -1
      Width = 42
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1301.750000000000000000
        -2.645833333333333000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsQuantity: TQRShape
      Left = 426
      Top = -1
      Width = 67
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1127.125000000000000000
        -2.645833333333333000
        177.270833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsItemName: TQRShape
      Left = 0
      Top = -1
      Width = 427
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        -2.645833333333333000
        1129.770833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object qrsDiscountPercent: TQRShape
      Left = 677
      Top = -1
      Width = 41
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1791.229166666667000000
        -2.645833333333333000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape10: TQRShape
      Left = 0
      Top = 0
      Width = 1
      Height = 21
      Size.Values = (
        55.562500000000000000
        0.000000000000000000
        0.000000000000000000
        2.645833333333333000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object dbtItemName: TQRDBText
      Left = 4
      Top = 1
      Width = 421
      Height = 15
      Size.Values = (
        39.687500000000000000
        10.583333333333330000
        2.645833333333333000
        1113.895833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ITEM_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object dbtQuantity: TQRDBText
      Left = 430
      Top = 1
      Width = 60
      Height = 15
      Size.Values = (
        39.687500000000000000
        1137.708333333333000000
        2.645833333333333000
        158.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACCOUNT_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object dbtMeasure: TQRDBText
      Left = 496
      Top = 1
      Width = 33
      Height = 15
      Size.Values = (
        39.687500000000000000
        1312.333333333333000000
        2.645833333333333000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACCOUNT_MEASURE_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object dbtSinglePrice: TQRDBText
      Left = 536
      Top = 1
      Width = 65
      Height = 15
      Size.Values = (
        39.687500000000000000
        1418.166666666667000000
        2.645833333333333000
        171.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SINGLE_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object dbtPrice: TQRDBText
      Left = 608
      Top = 1
      Width = 67
      Height = 15
      Size.Values = (
        39.687500000000000000
        1608.666666666667000000
        2.645833333333333000
        177.270833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object dbtDiscountPercent: TQRDBText
      Left = 679
      Top = 1
      Width = 37
      Height = 15
      Size.Values = (
        39.687500000000000000
        1796.520833333334000000
        2.645833333333333000
        97.895833333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DISCOUNT_PERCENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object qrsCurrency: TQRShape
      Left = 677
      Top = -1
      Width = 41
      Height = 19
      Enabled = False
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1791.229166666667000000
        -2.645833333333333000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtCurrency: TQRDBText
      Left = 679
      Top = 1
      Width = 36
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1796.520833333334000000
        2.645833333333333000
        95.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
  end
  inherited bndPageFooter: TQRBand
    Top = 689
    Height = 56
    Size.Values = (
      148.166666666666700000
      1899.708333333333000000)
    inherited qrsDataAndTime: TQRSysData
      Left = 80
      Width = 155
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        21.166666666666670000
        410.104166666666700000)
      Text = 'Print date and time:'
      FontSize = 8
    end
    inherited qrsPageNum: TQRSysData
      Left = 650
      Width = 68
      Size.Values = (
        44.979166666666670000
        1719.791666666667000000
        21.166666666666670000
        179.916666666666700000)
      Text = 'Page '
      FontSize = 8
    end
    inherited lblPrintedByApp1: TQRLabel
      Left = 3
      Top = 8
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        21.166666666666670000
        26.458333333333330000)
      Caption = 'S'
      FontSize = 10
    end
    inherited lblPrintedByApp2: TQRLabel
      Left = 11
      Top = 7
      Size.Values = (
        47.625000000000000000
        29.104166666666670000
        18.520833333333330000
        29.104166666666670000)
      Caption = 'E'
      FontSize = 11
    end
    inherited lblPrintedByApp3: TQRLabel
      Left = 22
      Top = 8
      Width = 30
      Size.Values = (
        44.979166666666670000
        58.208333333333330000
        21.166666666666670000
        79.375000000000000000)
      Caption = 'MBA'
      FontSize = 10
    end
    inherited lblPrintedByApp4: TQRLabel
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        21.166666666666670000
        240.770833333333300000)
      FontSize = 8
    end
    inherited lblCompanyName: TQRLabel
      Size.Values = (
        44.979166666666670000
        931.333333333333300000
        15.875000000000000000
        320.145833333333300000)
      FontSize = 10
    end
  end
  object bndSummaryCurrencyVAT: TQRChildBand [5]
    Left = 38
    Top = 495
    Width = 718
    Height = 18
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = bntSummary
    PrintOrder = cboAfterParent
    object QRShape160: TQRShape
      Left = 572
      Top = -1
      Width = 106
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1513.416666666667000000
        -2.645833333333333000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText33: TQRDBText
      Left = 679
      Top = 1
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        1796.520833333333000000
        2.645833333333333000
        89.958333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText19: TQRDBText
      Left = 575
      Top = 1
      Width = 100
      Height = 15
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        2.645833333333333000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_VAT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
  end
  object bntSummaryFooter: TQRChildBand [6]
    Left = 38
    Top = 513
    Width = 718
    Height = 176
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      465.666666666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = bndSummaryCurrencyVAT
    PrintOrder = cboAfterParent
    object lblSellerPersonEmptyName: TQRLabel
      Left = 466
      Top = 138
      Width = 244
      Height = 17
      Size.Values = (
        44.979166666666670000
        1232.958333333333000000
        365.125000000000000000
        645.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        '/                                                               ' +
        '                /'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblBuyerPersonEmptyName: TQRLabel
      Left = 75
      Top = 138
      Width = 244
      Height = 17
      Size.Values = (
        44.979166666666670000
        198.437500000000000000
        365.125000000000000000
        645.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        '/                                                               ' +
        '                /'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel30: TQRLabel
      Left = 457
      Top = 1
      Width = 60
      Height = 17
      Size.Values = (
        44.979166666666670000
        1209.145833333333000000
        2.645833333333333000
        158.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = 'Amount Due'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel33: TQRLabel
      Left = 423
      Top = 123
      Width = 237
      Height = 17
      Size.Values = (
        44.979166666666670000
        1119.187500000000000000
        325.437500000000000000
        627.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        'Issued by: .....................................................' +
        '........'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel34: TQRLabel
      Left = 8
      Top = 123
      Width = 256
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        325.437500000000000000
        677.333333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        'Received by: ...................................................' +
        '............'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object dbtSellerPersonIName: TQRDBText
      Left = 482
      Top = 140
      Width = 234
      Height = 15
      Size.Values = (
        39.687500000000000000
        1275.291666666667000000
        370.416666666666700000
        619.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_SELLER_PERSON_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object dbtBuyerPersonIName: TQRDBText
      Left = 86
      Top = 140
      Width = 241
      Height = 15
      Size.Values = (
        39.687500000000000000
        227.541666666666700000
        370.416666666666700000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_BUYER_PERSON_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText30: TQRDBText
      Left = 80
      Top = 45
      Width = 640
      Height = 15
      Size.Values = (
        39.687500000000000000
        211.666666666666700000
        119.062500000000000000
        1693.333333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_PAYMENT_TYPE_I_TEXT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel38: TQRLabel
      Left = 8
      Top = 44
      Width = 72
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        116.416666666666700000
        190.500000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Payment Type:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRShape21: TQRShape
      Left = 572
      Top = -1
      Width = 106
      Height = 19
      Frame.Width = 5
      Size.Values = (
        50.270833333333330000
        1513.416666666667000000
        -2.645833333333333000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText25: TQRDBText
      Left = 575
      Top = 1
      Width = 100
      Height = 15
      Size.Values = (
        39.687500000000000000
        1521.354166666667000000
        2.645833333333333000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_PRICE_FOR_PAYMENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText34: TQRDBText
      Left = 679
      Top = 1
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        1796.520833333333000000
        2.645833333333333000
        89.958333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRDBText39: TQRDBText
      Left = 80
      Top = 21
      Width = 633
      Height = 15
      Size.Values = (
        39.687500000000000000
        211.666666666666700000
        55.562500000000000000
        1674.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_VAT_REASON_I_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
    object QRLabel20: TQRLabel
      Left = 8
      Top = 20
      Width = 62
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        52.916666666666670000
        164.041666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Tax Reason:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object dbtNotes: TQRDBText
      Left = 8
      Top = 69
      Width = 705
      Height = 48
      Size.Values = (
        127.000000000000000000
        21.166666666666670000
        182.562500000000000000
        1865.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'NOTES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 8
    end
  end
  object mdsReportFixedRowCount: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Top = 32
  end
end
