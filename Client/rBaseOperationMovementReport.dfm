inherited BaseOperationMovementReport: TBaseOperationMovementReport
  Height = 559
  BeforePrint = QuickRepBeforePrint
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Orientation = poLandscape
  Page.PaperSize = A5
  Page.Values = (
    100.000000000000000000
    1480.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  ExplicitHeight = 559
  object QRBand1: TQRBand [0]
    Left = 38
    Top = 38
    Width = 718
    Height = 411
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      1087.437500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRShape9: TQRShape
      Left = 453
      Top = 64
      Width = 265
      Height = 260
      Size.Values = (
        687.916666666666800000
        1198.562500000000000000
        169.333333333333300000
        701.145833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape27: TQRShape
      Left = 270
      Top = 253
      Width = 178
      Height = 24
      Size.Values = (
        63.500000000000000000
        714.375000000000000000
        669.395833333333400000
        470.958333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel1: TQRLabel
      Left = 3
      Top = 2
      Width = 713
      Height = 20
      Size.Values = (
        52.916666666666660000
        7.937500000000000000
        5.291666666666667000
        1886.479166666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1079#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1087#1086' '#1056'-'#1052#1054#1044#1045#1083
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 12
    end
    object QRShape1: TQRShape
      Left = 96
      Top = 24
      Width = 81
      Height = 21
      Size.Values = (
        55.562500000000000000
        254.000000000000000000
        63.500000000000000000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText1: TQRDBText
      Left = 98
      Top = 28
      Width = 77
      Height = 15
      Size.Values = (
        39.687500000000000000
        259.291666666666700000
        74.083333333333340000
        203.729166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'OM_DATE'
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
    object QRShape2: TQRShape
      Left = 176
      Top = 24
      Width = 49
      Height = 21
      Size.Values = (
        55.562500000000000000
        465.666666666666800000
        63.500000000000000000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText2: TQRDBText
      Left = 178
      Top = 28
      Width = 45
      Height = 15
      Size.Values = (
        39.687500000000000000
        470.958333333333400000
        74.083333333333340000
        119.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'OM_TIME'
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
    object QRShape3: TQRShape
      Left = 0
      Top = 24
      Width = 25
      Height = 21
      Size.Values = (
        55.562500000000000000
        0.000000000000000000
        63.500000000000000000
        66.145833333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText3: TQRDBText
      Left = 2
      Top = 28
      Width = 21
      Height = 15
      Size.Values = (
        39.687500000000000000
        5.291666666666667000
        74.083333333333340000
        55.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OM_BRANCH_NO'
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
    object QRShape4: TQRShape
      Left = 580
      Top = 24
      Width = 90
      Height = 21
      Size.Values = (
        55.562500000000000000
        1534.583333333333000000
        63.500000000000000000
        238.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText4: TQRDBText
      Left = 582
      Top = 28
      Width = 86
      Height = 15
      Size.Values = (
        39.687500000000000000
        1539.875000000000000000
        74.083333333333340000
        227.541666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_PRINT_SALE_IDENTIFIER'
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
    object QRShape5: TQRShape
      Left = 669
      Top = 24
      Width = 25
      Height = 21
      Size.Values = (
        55.562500000000000000
        1770.062500000000000000
        63.500000000000000000
        66.145833333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText5: TQRDBText
      Left = 671
      Top = 28
      Width = 21
      Height = 15
      Size.Values = (
        39.687500000000000000
        1775.354166666667000000
        74.083333333333340000
        55.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_PRIORITY_NO'
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
    object QRLabel2: TQRLabel
      Left = 539
      Top = 28
      Width = 38
      Height = 17
      Size.Values = (
        44.979166666666670000
        1426.104166666667000000
        74.083333333333330000
        100.541666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ID '#1054#1055#1042':'
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
    object QRShape6: TQRShape
      Left = 260
      Top = 24
      Width = 33
      Height = 21
      Size.Values = (
        55.562500000000000000
        687.916666666666800000
        63.500000000000000000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText6: TQRDBText
      Left = 262
      Top = 28
      Width = 29
      Height = 15
      Size.Values = (
        39.687500000000000000
        693.208333333333400000
        74.083333333333340000
        76.729166666666680000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MODEL_OPERATIONS_STATUS_CODE'
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
    object QRShape7: TQRShape
      Left = 292
      Top = 24
      Width = 238
      Height = 21
      Size.Values = (
        55.562500000000000000
        772.583333333333400000
        63.500000000000000000
        629.708333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText7: TQRDBText
      Left = 294
      Top = 28
      Width = 234
      Height = 15
      Size.Values = (
        39.687500000000000000
        777.875000000000000000
        74.083333333333340000
        619.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OMT_TYPE_AND_NAME'
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
    object QRLabel3: TQRLabel
      Left = 236
      Top = 28
      Width = 23
      Height = 17
      Size.Values = (
        44.979166666666670000
        624.416666666666700000
        74.083333333333330000
        60.854166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1042#1080#1076':'
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
    object QRShape8: TQRShape
      Left = 0
      Top = 64
      Width = 265
      Height = 260
      Size.Values = (
        687.916666666666800000
        0.000000000000000000
        169.333333333333300000
        701.145833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape10: TQRShape
      Left = 270
      Top = 91
      Width = 178
      Height = 113
      Size.Values = (
        298.979166666666700000
        714.375000000000000000
        240.770833333333300000
        470.958333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel4: TQRLabel
      Left = 280
      Top = 83
      Width = 136
      Height = 17
      Size.Values = (
        44.979166666666670000
        740.833333333333300000
        219.604166666666700000
        359.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1050'-'#1074#1086' '#1087#1088#1080' '#1044#1074#1080#1078#1077#1085#1080#1077' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 273
      Top = 120
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        722.312500000000000000
        317.500000000000000000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'WORK_DETAIL_TECH_QUANTITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 331
      Top = 120
      Width = 56
      Height = 17
      Size.Values = (
        44.979166666666670000
        875.770833333333400000
        317.500000000000000000
        148.166666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_DETAIL_TECH_QUANTITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 390
      Top = 120
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        1031.875000000000000000
        317.500000000000000000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QA_DETAIL_TECH_QUANTITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 273
      Top = 136
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        722.312500000000000000
        359.833333333333400000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'WORK_PRODUCT_TECH_QUANTITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 331
      Top = 136
      Width = 56
      Height = 17
      Size.Values = (
        44.979166666666670000
        875.770833333333400000
        359.833333333333400000
        148.166666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRODUCT_TECH_QUANTITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 390
      Top = 136
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        1031.875000000000000000
        359.833333333333400000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QA_PRODUCT_TECH_QUANTITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRShape11: TQRShape
      Left = 276
      Top = 163
      Width = 166
      Height = 28
      Size.Values = (
        74.083333333333340000
        730.250000000000000000
        431.270833333333400000
        439.208333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel11: TQRLabel
      Left = 284
      Top = 157
      Width = 59
      Height = 17
      Size.Values = (
        44.979166666666670000
        751.416666666666700000
        415.395833333333300000
        156.104166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1054#1076#1080#1090#1080#1088#1072#1097' '
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
      Left = 278
      Top = 171
      Width = 162
      Height = 17
      Size.Values = (
        44.979166666666670000
        735.541666666666800000
        452.437500000000000000
        428.625000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_QA_EMPLOYEE_NAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 8
      Top = 56
      Width = 27
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        148.166666666666700000
        71.437500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' OT '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape12: TQRShape
      Left = 3
      Top = 72
      Width = 97
      Height = 21
      Size.Values = (
        55.562500000000000000
        7.937500000000000000
        190.500000000000000000
        256.645833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText15: TQRDBText
      Left = 5
      Top = 76
      Width = 93
      Height = 15
      Size.Values = (
        39.687500000000000000
        13.229166666666670000
        201.083333333333300000
        246.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_MLL_NO_AS_TEXT'
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
    object QRShape13: TQRShape
      Left = 99
      Top = 72
      Width = 22
      Height = 21
      Size.Values = (
        55.562500000000000000
        261.937500000000000000
        190.500000000000000000
        58.208333333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText16: TQRDBText
      Left = 101
      Top = 76
      Width = 18
      Height = 15
      Size.Values = (
        39.687500000000000000
        267.229166666666700000
        201.083333333333300000
        47.625000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_MLL_FORK_NO'
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
    object QRShape14: TQRShape
      Left = 128
      Top = 72
      Height = 21
      Size.Values = (
        55.562500000000000000
        338.666666666666700000
        190.500000000000000000
        171.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText17: TQRDBText
      Left = 130
      Top = 76
      Width = 61
      Height = 15
      Size.Values = (
        39.687500000000000000
        343.958333333333400000
        201.083333333333300000
        161.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_STAGE_IDENTIFIER'
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
      Left = 229
      Top = 72
      Width = 33
      Height = 21
      Size.Values = (
        55.562500000000000000
        605.895833333333400000
        190.500000000000000000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText18: TQRDBText
      Left = 231
      Top = 76
      Width = 29
      Height = 15
      Size.Values = (
        39.687500000000000000
        611.187500000000000000
        201.083333333333300000
        76.729166666666680000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_MLMS_REMAINING_WORKDAYS'
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
    object QRLabel9: TQRLabel
      Left = 197
      Top = 76
      Width = 28
      Height = 17
      Size.Values = (
        44.979166666666670000
        521.229166666666700000
        201.083333333333300000
        74.083333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1088#1079#1088#1074':'
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
    object QRLabel10: TQRLabel
      Left = 4
      Top = 101
      Width = 74
      Height = 17
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        267.229166666666700000
        195.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ID '#1050#1057#1063' / ID '#1053#1057#1063
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
    object QRLabel12: TQRLabel
      Left = 168
      Top = 101
      Width = 94
      Height = 17
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        267.229166666666700000
        248.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = #1089#1090#1088#1091#1082#1090#1091#1088#1085#1086' '#1082'-'#1074#1086
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
    object QRDBText19: TQRDBText
      Left = 3
      Top = 121
      Width = 165
      Height = 17
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        320.145833333333400000
        436.562499999999900000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_DETAIL_NAME'
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
    object QRDBText20: TQRDBText
      Left = 170
      Top = 121
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        449.791666666666700000
        320.145833333333400000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_LINE_DETAIL_TECH_QUANTITY'
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
    object QRDBText21: TQRDBText
      Left = 3
      Top = 137
      Width = 165
      Height = 17
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        362.479166666666700000
        436.562499999999900000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_PRODUCT_NAME'
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
    object QRDBText22: TQRDBText
      Left = 170
      Top = 137
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        449.791666666666700000
        362.479166666666700000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_TOTAL_PRODUCT_TECH_QTY'
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
    object QRShape17: TQRShape
      Left = 273
      Top = 112
      Width = 172
      Height = 9
      Size.Values = (
        23.812500000000000000
        722.312500000000000000
        296.333333333333400000
        455.083333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel5: TQRLabel
      Left = 273
      Top = 99
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        722.312500000000000000
        261.937500000000000000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #1048#1079#1088#1072#1073'.'
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
    object QRLabel6: TQRLabel
      Left = 331
      Top = 99
      Width = 56
      Height = 17
      Size.Values = (
        44.979166666666670000
        875.770833333333400000
        261.937500000000000000
        148.166666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #1054#1073#1097#1086
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
    object QRLabel7: TQRLabel
      Left = 390
      Top = 99
      Width = 55
      Height = 17
      Size.Values = (
        44.979166666666670000
        1031.875000000000000000
        261.937500000000000000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #1054#1076#1080#1090'.'
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
    object QRShape18: TQRShape
      Left = 4
      Top = 163
      Width = 256
      Height = 28
      Size.Values = (
        74.083333333333340000
        10.583333333333330000
        431.270833333333400000
        677.333333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText23: TQRDBText
      Left = 6
      Top = 172
      Width = 250
      Height = 17
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        455.083333333333300000
        661.458333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_MLMS_OPERATION_IDENTIFIER'
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
    object QRLabel13: TQRLabel
      Left = 12
      Top = 157
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        415.395833333333300000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' ID '#1054#1087#1077#1088#1072#1094#1080#1103' '
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
    object QRShape19: TQRShape
      Left = 4
      Top = 203
      Width = 256
      Height = 74
      Size.Values = (
        195.791666666666700000
        10.583333333333330000
        537.104166666666800000
        677.333333333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText24: TQRDBText
      Left = 12
      Top = 197
      Width = 135
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        521.229166666666700000
        357.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_PROFESSION_NAME'
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
    object QRLabel14: TQRLabel
      Left = 8
      Top = 211
      Width = 63
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        558.270833333333300000
        166.687500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ID '#1054#1087#1077#1088#1072#1090#1086#1088
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
    object QRDBText25: TQRDBText
      Left = 8
      Top = 224
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        592.666666666666800000
        142.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_FROM_EMPLOYEE_NO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText26: TQRDBText
      Left = 64
      Top = 224
      Width = 193
      Height = 17
      Size.Values = (
        44.979166666666670000
        169.333333333333300000
        592.666666666666800000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_FROM_EMPLOYEE_NAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 8
      Top = 243
      Width = 36
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        642.937500000000000000
        95.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ID '#1045#1082#1080#1087
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
      Left = 8
      Top = 256
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        677.333333333333400000
        142.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'FROM_TEAM_CODE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText28: TQRDBText
      Left = 64
      Top = 256
      Width = 193
      Height = 17
      Size.Values = (
        44.979166666666670000
        169.333333333333300000
        677.333333333333400000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'FROM_TEAM_NAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel16: TQRLabel
      Left = 4
      Top = 278
      Width = 62
      Height = 17
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        735.541666666666700000
        164.041666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1086#1084#1077#1085#1090#1072#1088':'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText29: TQRDBText
      Left = 67
      Top = 280
      Width = 192
      Height = 42
      Size.Values = (
        111.125000000000000000
        177.270833333333300000
        740.833333333333400000
        508.000000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_NOTES'
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
    object QRLabel17: TQRLabel
      Left = 461
      Top = 56
      Width = 39
      Height = 17
      Size.Values = (
        44.979166666666670000
        1219.729166666667000000
        148.166666666666700000
        103.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1050#1066#1052' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object txtMovementLevel: TQRLabel
      Left = 272
      Top = 255
      Width = 174
      Height = 20
      Size.Values = (
        52.916666666666660000
        719.666666666666800000
        674.687500000000000000
        460.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = 'txtMovementLevel'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 12
    end
    object QRShape28: TQRShape
      Left = 24
      Top = 24
      Height = 21
      Size.Values = (
        55.562500000000000000
        63.500000000000000000
        63.500000000000000000
        171.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText45: TQRDBText
      Left = 26
      Top = 28
      Width = 61
      Height = 15
      Size.Values = (
        39.687500000000000000
        68.791666666666680000
        74.083333333333340000
        161.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'OM_NO'
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
    object QRDBText46: TQRDBText
      Left = 227
      Top = 121
      Width = 35
      Height = 17
      Size.Values = (
        44.979166666666670000
        600.604166666666800000
        320.145833333333400000
        92.604166666666680000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_DETAIL_TECH_MEASURE_ABB'
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
    object QRDBText47: TQRDBText
      Left = 227
      Top = 137
      Width = 35
      Height = 17
      Size.Values = (
        44.979166666666670000
        600.604166666666800000
        362.479166666666700000
        92.604166666666680000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'FROM_PRODUCT_TECH_MEASURE_ABB'
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
    object QRShape16: TQRShape
      Left = 3
      Top = 112
      Width = 259
      Height = 9
      Size.Values = (
        23.812500000000000000
        7.937500000000000000
        296.333333333333400000
        685.270833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object lblStorno: TQRLabel
      Left = 271
      Top = 224
      Width = 175
      Height = 20
      Size.Values = (
        52.916666666666660000
        717.020833333333400000
        592.666666666666800000
        463.020833333333400000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 12
    end
    object QRShape201: TQRShape
      Left = 693
      Top = 24
      Width = 25
      Height = 21
      Size.Values = (
        55.562500000000000000
        1833.562500000000000000
        63.500000000000000000
        66.145833333333340000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText301: TQRDBText
      Left = 695
      Top = 28
      Width = 21
      Height = 15
      Size.Values = (
        39.687500000000000000
        1838.854166666667000000
        74.083333333333340000
        55.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_WORK_PRIORITY_NO'
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
    object QRDBText303: TQRDBText
      Left = 104
      Top = 332
      Width = 609
      Height = 77
      Size.Values = (
        203.729166666666700000
        275.166666666666700000
        878.416666666666700000
        1611.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRINT_NOTES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel181: TQRLabel
      Left = 0
      Top = 334
      Width = 96
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        883.708333333333300000
        254.000000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1056'-'#1052#1054#1044#1045#1083' '#1073#1077#1083#1077#1078#1082#1080':'
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
  inherited bndPageFooter: TQRBand
    Top = 449
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    ExplicitTop = 449
    inherited qrsDataAndTime: TQRSysData
      Left = 80
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        21.166666666666670000
        198.437500000000000000)
      FontSize = 8
      ExplicitLeft = 80
    end
    inherited qrsPageNum: TQRSysData
      Size.Values = (
        44.979166666666670000
        1717.145833333333000000
        21.166666666666670000
        182.562500000000000000)
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
      FontSize = 10
      ExplicitLeft = 3
      ExplicitTop = 8
    end
    inherited lblPrintedByApp2: TQRLabel
      Left = 11
      Top = 7
      Size.Values = (
        47.625000000000000000
        29.104166666666670000
        18.520833333333330000
        29.104166666666670000)
      FontSize = 11
      ExplicitLeft = 11
      ExplicitTop = 7
    end
    inherited lblPrintedByApp3: TQRLabel
      Left = 22
      Top = 8
      Size.Values = (
        44.979166666666670000
        58.208333333333330000
        21.166666666666670000
        108.479166666666700000)
      FontSize = 10
      ExplicitLeft = 22
      ExplicitTop = 8
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
end
