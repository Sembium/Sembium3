inherited rptOccupation: TrptOccupation
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
  object QRChildBand4: TQRChildBand [0]
    Tag = 5
    Left = 38
    Top = 512
    Width = 718
    Height = 63
    AlignToBottom = False
    BeforePrint = QRChildBand4BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      166.687500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand3
    PrintOrder = cboAfterParent
    object QRShape11: TQRShape
      Left = 8
      Top = 16
      Width = 702
      Height = 28
      Size.Values = (
        74.083333333333340000
        21.166666666666670000
        42.333333333333340000
        1857.375000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel13: TQRLabel
      Left = 205
      Top = 22
      Width = 285
      Height = 16
      Size.Values = (
        42.333333333333340000
        542.395833333333400000
        58.208333333333340000
        754.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1057#1080#1089#1090#1077#1084#1085#1080' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape12: TQRShape
      Left = 8
      Top = 43
      Width = 105
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        113.770833333333300000
        277.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel14: TQRLabel
      Left = 52
      Top = 45
      Width = 22
      Height = 16
      Size.Values = (
        42.333333333333340000
        137.583333333333300000
        119.062500000000000000
        58.208333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1086#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape13: TQRShape
      Left = 112
      Top = 43
      Width = 598
      Height = 20
      Size.Values = (
        52.916666666666660000
        296.333333333333400000
        113.770833333333300000
        1582.208333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel23: TQRLabel
      Left = 332
      Top = 45
      Width = 88
      Height = 16
      Size.Values = (
        42.333333333333340000
        878.416666666666800000
        119.062500000000000000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape46: TQRShape
      Left = 8
      Top = 0
      Width = 703
      Height = 1
      Size.Values = (
        2.645833333333333000
        21.166666666666670000
        0.000000000000000000
        1860.020833333333000000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
  inherited bndPageFooter: TQRBand
    Top = 758
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    inherited qrsDataAndTime: TQRSysData
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        21.166666666666670000
        568.854166666666700000)
      FontSize = 8
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
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        21.166666666666670000
        26.458333333333330000)
      FontSize = 10
    end
    inherited lblPrintedByApp2: TQRLabel
      Size.Values = (
        47.625000000000000000
        29.104166666666670000
        18.520833333333330000
        29.104166666666670000)
      FontSize = 11
    end
    inherited lblPrintedByApp3: TQRLabel
      Size.Values = (
        44.979166666666670000
        58.208333333333340000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
  end
  object QRBand1: TQRBand [2]
    Left = 38
    Top = 38
    Width = 718
    Height = 28
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      74.083333333333340000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRLabel17: TQRLabel
      Left = 0
      Top = 8
      Width = 721
      Height = 19
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        21.166666666666670000
        1907.645833333333000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = #1044#1083#1098#1078#1085#1086#1089#1090
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
  end
  object QRChildBand0: TQRChildBand [3]
    Tag = 1
    Left = 38
    Top = 66
    Width = 718
    Height = 241
    AlignToBottom = False
    BeforePrint = QRChildBand0BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      637.645833333333400000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = bndDetail
    PrintOrder = cboAfterParent
    object QRShape6: TQRShape
      Left = 648
      Top = 221
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        1714.500000000000000000
        584.729166666666800000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape5: TQRShape
      Left = 680
      Top = 221
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        1799.166666666667000000
        584.729166666666800000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape25: TQRShape
      Left = 7
      Top = 8
      Width = 705
      Height = 188
      Size.Values = (
        497.416666666666700000
        18.520833333333330000
        21.166666666666670000
        1865.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape52: TQRShape
      Left = 424
      Top = 85
      Width = 281
      Height = 38
      Size.Values = (
        100.541666666666700000
        1121.833333333333000000
        224.895833333333300000
        743.479166666666800000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape51: TQRShape
      Left = 15
      Top = 85
      Width = 402
      Height = 38
      Size.Values = (
        100.541666666666700000
        39.687500000000000000
        224.895833333333300000
        1063.625000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape49: TQRShape
      Left = 576
      Top = 21
      Width = 129
      Height = 52
      Size.Values = (
        137.583333333333300000
        1524.000000000000000000
        55.562500000000000000
        341.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape48: TQRShape
      Left = 424
      Top = 21
      Width = 145
      Height = 52
      Size.Values = (
        137.583333333333300000
        1121.833333333333000000
        55.562500000000000000
        383.645833333333400000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape27: TQRShape
      Left = 15
      Top = 21
      Width = 402
      Height = 52
      Size.Values = (
        137.583333333333300000
        39.687500000000000000
        55.562500000000000000
        1063.625000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Left = 9
      Top = 204
      Width = 91
      Height = 16
      Size.Values = (
        42.333333333333340000
        23.812500000000000000
        539.750000000000000000
        240.770833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape3: TQRShape
      Left = 80
      Top = 221
      Width = 291
      Height = 20
      Size.Values = (
        52.916666666666670000
        211.666666666666700000
        584.729166666666800000
        769.937500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel3: TQRLabel
      Left = 82
      Top = 223
      Width = 287
      Height = 16
      Size.Values = (
        42.333333333333330000
        216.958333333333300000
        590.020833333333200000
        759.354166666666800000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape4: TQRShape
      Left = 8
      Top = 221
      Width = 73
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        584.729166666666800000
        193.145833333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel4: TQRLabel
      Left = 32
      Top = 223
      Width = 22
      Height = 16
      Size.Values = (
        42.333333333333340000
        84.666666666666680000
        590.020833333333400000
        58.208333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1086#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape58: TQRShape
      Left = 434
      Top = 221
      Width = 215
      Height = 20
      Size.Values = (
        52.916666666666670000
        1148.291666666667000000
        584.729166666666800000
        568.854166666666700000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel44: TQRLabel
      Left = 436
      Top = 223
      Width = 211
      Height = 16
      Size.Values = (
        42.333333333333330000
        1153.583333333333000000
        590.020833333333200000
        558.270833333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape39: TQRShape
      Left = 370
      Top = 221
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        978.958333333333200000
        584.729166666666800000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel26: TQRLabel
      Left = 373
      Top = 223
      Width = 26
      Height = 16
      Size.Values = (
        42.333333333333340000
        986.895833333333400000
        590.020833333333400000
        68.791666666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1055#1076#1074'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape40: TQRShape
      Left = 402
      Top = 221
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        1063.625000000000000000
        584.729166666666800000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel27: TQRLabel
      Left = 407
      Top = 223
      Width = 23
      Height = 16
      Size.Values = (
        42.333333333333340000
        1076.854166666667000000
        590.020833333333400000
        60.854166666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1042#1080#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel16: TQRLabel
      Left = 16
      Top = 2
      Width = 68
      Height = 16
      Size.Values = (
        42.333333333333340000
        42.333333333333340000
        5.291666666666667000
        179.916666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel18: TQRLabel
      Left = 173
      Top = 26
      Width = 88
      Height = 16
      Size.Values = (
        42.333333333333340000
        457.729166666666700000
        68.791666666666680000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape26: TQRShape
      Left = 173
      Top = 44
      Width = 233
      Height = 21
      Size.Values = (
        55.562500000000000000
        457.729166666666600000
        116.416666666666700000
        616.479166666666800000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel41: TQRLabel
      Left = 25
      Top = 77
      Width = 213
      Height = 16
      Size.Values = (
        42.333333333333340000
        66.145833333333340000
        203.729166666666700000
        563.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1054#1088#1063' '#1087#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape55: TQRShape
      Left = 26
      Top = 97
      Width = 244
      Height = 20
      Size.Values = (
        52.916666666666660000
        68.791666666666680000
        256.645833333333400000
        645.583333333333400000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape56: TQRShape
      Left = 269
      Top = 97
      Width = 64
      Height = 20
      Size.Values = (
        52.916666666666660000
        711.729166666666800000
        256.645833333333400000
        169.333333333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText1: TQRDBText
      Left = 176
      Top = 46
      Width = 228
      Height = 17
      Size.Values = (
        44.979166666666670000
        465.666666666666800000
        121.708333333333300000
        603.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'OCCUPATION_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText26: TQRDBText
      Left = 28
      Top = 99
      Width = 239
      Height = 16
      Size.Values = (
        42.333333333333340000
        74.083333333333340000
        261.937500000000000000
        632.354166666666800000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText27: TQRDBText
      Left = 272
      Top = 99
      Width = 58
      Height = 16
      Size.Values = (
        42.333333333333340000
        719.666666666666800000
        261.937500000000000000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IDENTIFIER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel43: TQRLabel
      Left = 24
      Top = 26
      Width = 38
      Height = 16
      Size.Values = (
        42.333333333333340000
        63.500000000000000000
        68.791666666666680000
        100.541666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape59: TQRShape
      Left = 24
      Top = 44
      Width = 44
      Height = 20
      Size.Values = (
        52.916666666666660000
        63.500000000000000000
        116.416666666666700000
        116.416666666666700000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText13: TQRDBText
      Left = 27
      Top = 46
      Width = 39
      Height = 16
      Size.Values = (
        42.333333333333340000
        71.437500000000000000
        121.708333333333300000
        103.187500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OCCUPATION_STATUS_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel45: TQRLabel
      Left = 76
      Top = 26
      Width = 83
      Height = 16
      Size.Values = (
        42.333333333333340000
        201.083333333333300000
        68.791666666666680000
        219.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1042#1080#1076' '#1044#1083#1098#1078#1085#1086#1089#1090
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape61: TQRShape
      Left = 76
      Top = 44
      Width = 89
      Height = 20
      Size.Values = (
        52.916666666666660000
        201.083333333333300000
        116.416666666666700000
        235.479166666666700000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText25: TQRDBText
      Left = 79
      Top = 46
      Width = 84
      Height = 16
      Size.Values = (
        42.333333333333340000
        209.020833333333300000
        121.708333333333300000
        222.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IS_MAIN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel46: TQRLabel
      Left = 433
      Top = 27
      Width = 30
      Height = 16
      Size.Values = (
        42.333333333333340000
        1145.645833333333000000
        71.437500000000000000
        79.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1060#1072#1079#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape62: TQRShape
      Left = 433
      Top = 44
      Width = 126
      Height = 21
      Size.Values = (
        55.562500000000000000
        1145.645833333333000000
        116.416666666666700000
        333.375000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText41: TQRDBText
      Left = 436
      Top = 46
      Width = 121
      Height = 16
      Size.Values = (
        42.333333333333340000
        1153.583333333333000000
        121.708333333333300000
        320.145833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OCCUPATION_PHASE_SHOW_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel47: TQRLabel
      Left = 583
      Top = 27
      Width = 50
      Height = 16
      Size.Values = (
        42.333333333333340000
        1542.520833333333000000
        71.437500000000000000
        132.291666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1054#1088#1075#1053#1080#1074#1086
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape63: TQRShape
      Left = 583
      Top = 44
      Width = 51
      Height = 20
      Size.Values = (
        52.916666666666660000
        1542.520833333333000000
        116.416666666666700000
        134.937500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText42: TQRDBText
      Left = 586
      Top = 46
      Width = 46
      Height = 16
      Size.Values = (
        42.333333333333340000
        1550.458333333333000000
        121.708333333333300000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'OCCUPATION_LEVEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel48: TQRLabel
      Left = 647
      Top = 27
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333340000
        1711.854166666667000000
        71.437500000000000000
        105.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1057#1084#1103#1085#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape64: TQRShape
      Left = 647
      Top = 44
      Width = 51
      Height = 20
      Size.Values = (
        52.916666666666660000
        1711.854166666667000000
        116.416666666666700000
        134.937500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText43: TQRDBText
      Left = 650
      Top = 46
      Width = 46
      Height = 16
      Size.Values = (
        42.333333333333340000
        1719.791666666667000000
        121.708333333333300000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_SHIFT_IDENTIFIER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape33: TQRShape
      Left = 342
      Top = 97
      Width = 27
      Height = 20
      Size.Values = (
        52.916666666666660000
        904.875000000000000000
        256.645833333333400000
        71.437500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText2: TQRDBText
      Left = 345
      Top = 99
      Width = 21
      Height = 16
      Size.Values = (
        42.333333333333340000
        912.812500000000100000
        261.937500000000000000
        55.562500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IS_EXTERNAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape34: TQRShape
      Left = 379
      Top = 97
      Width = 27
      Height = 20
      Size.Values = (
        52.916666666666660000
        1002.770833333333000000
        256.645833333333400000
        71.437500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText7: TQRDBText
      Left = 382
      Top = 99
      Width = 21
      Height = 16
      Size.Values = (
        42.333333333333340000
        1010.708333333333000000
        261.937500000000000000
        55.562500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IS_RECURRENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel25: TQRLabel
      Left = 438
      Top = 77
      Width = 205
      Height = 16
      Size.Values = (
        42.333333333333340000
        1158.875000000000000000
        203.729166666666700000
        542.395833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape65: TQRShape
      Left = 435
      Top = 97
      Width = 152
      Height = 20
      Size.Values = (
        52.916666666666660000
        1150.937500000000000000
        256.645833333333400000
        402.166666666666600000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText8: TQRDBText
      Left = 438
      Top = 99
      Width = 146
      Height = 16
      Size.Values = (
        42.333333333333340000
        1158.875000000000000000
        261.937500000000000000
        386.291666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OCCUPATION_PERIOD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel36: TQRLabel
      Left = 589
      Top = 99
      Width = 30
      Height = 16
      Size.Values = (
        42.333333333333340000
        1558.395833333333000000
        261.937500000000000000
        79.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1088#1079#1088#1074'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel37: TQRLabel
      Left = 673
      Top = 99
      Width = 20
      Height = 16
      Size.Values = (
        42.333333333333340000
        1780.645833333333000000
        261.937500000000000000
        52.916666666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1082'.'#1076'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape37: TQRShape
      Left = 620
      Top = 97
      Width = 51
      Height = 20
      Size.Values = (
        52.916666666666660000
        1640.416666666667000000
        256.645833333333400000
        134.937500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText3: TQRDBText
      Left = 623
      Top = 99
      Width = 45
      Height = 16
      Size.Values = (
        42.333333333333340000
        1648.354166666667000000
        261.937500000000000000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DAYS_LEFT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape53: TQRShape
      Left = 15
      Top = 134
      Width = 432
      Height = 55
      Size.Values = (
        145.520833333333300000
        39.687500000000000000
        354.541666666666700000
        1143.000000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel19: TQRLabel
      Left = 25
      Top = 126
      Width = 173
      Height = 16
      Size.Values = (
        42.333333333333340000
        66.145833333333340000
        333.375000000000000000
        457.729166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1053#1086#1088#1084#1072#1090#1080#1074#1085#1086' '#1050#1083#1072#1089#1080#1092#1080#1094#1080#1088#1072#1085#1077' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape54: TQRShape
      Left = 453
      Top = 134
      Width = 252
      Height = 55
      Size.Values = (
        145.520833333333300000
        1198.562500000000000000
        354.541666666666700000
        666.750000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel24: TQRLabel
      Left = 463
      Top = 126
      Width = 231
      Height = 16
      Size.Values = (
        42.333333333333340000
        1225.020833333333000000
        333.375000000000000000
        611.187500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1057#1090'-'#1089#1090#1085#1080' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel38: TQRLabel
      Left = 25
      Top = 143
      Width = 145
      Height = 16
      Size.Values = (
        42.333333333333340000
        66.145833333333340000
        378.354166666666700000
        383.645833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1083#1072#1089#1080#1092'. '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape73: TQRShape
      Left = 24
      Top = 160
      Width = 147
      Height = 20
      Size.Values = (
        52.916666666666660000
        63.500000000000000000
        423.333333333333300000
        388.937500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText20: TQRDBText
      Left = 27
      Top = 162
      Width = 142
      Height = 16
      Size.Values = (
        42.333333333333340000
        71.437500000000000000
        428.625000000000000000
        375.708333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_CRAFT_TYPE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel39: TQRLabel
      Left = 180
      Top = 143
      Width = 60
      Height = 16
      Size.Values = (
        42.333333333333340000
        476.250000000000000000
        378.354166666666700000
        158.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1055#1088#1086#1092#1077#1089#1080#1103
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape28: TQRShape
      Left = 180
      Top = 160
      Width = 260
      Height = 20
      Size.Values = (
        52.916666666666660000
        476.250000000000000000
        423.333333333333300000
        687.916666666666800000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText22: TQRDBText
      Left = 183
      Top = 162
      Width = 255
      Height = 16
      Size.Values = (
        42.333333333333340000
        484.187500000000000000
        428.625000000000000000
        674.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_CRAFT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel20: TQRLabel
      Left = 460
      Top = 143
      Width = 132
      Height = 16
      Size.Values = (
        42.333333333333340000
        1217.083333333333000000
        378.354166666666700000
        349.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1041#1072#1079#1086#1074#1072' '#1073#1088#1091#1090#1085#1072' '#1079#1072#1087#1083#1072#1090#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape30: TQRShape
      Left = 460
      Top = 160
      Width = 64
      Height = 20
      Size.Values = (
        52.916666666666660000
        1217.083333333333000000
        423.333333333333300000
        169.333333333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText4: TQRDBText
      Left = 463
      Top = 162
      Width = 58
      Height = 16
      Size.Values = (
        42.333333333333340000
        1225.020833333333000000
        428.625000000000000000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CURRENT_BASE_SALARY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText5: TQRDBText
      Left = 535
      Top = 162
      Width = 78
      Height = 16
      Size.Values = (
        42.333333333333340000
        1415.520833333333000000
        428.625000000000000000
        206.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CURRENT_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape31: TQRShape
      Left = 620
      Top = 160
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666660000
        1640.416666666667000000
        423.333333333333300000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText6: TQRDBText
      Left = 623
      Top = 162
      Width = 27
      Height = 16
      Size.Values = (
        42.333333333333340000
        1648.354166666667000000
        428.625000000000000000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CURRENT_MIN_SALARY_RATIO_COEF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape32: TQRShape
      Left = 665
      Top = 160
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666660000
        1759.479166666667000000
        423.333333333333300000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText9: TQRDBText
      Left = 668
      Top = 162
      Width = 27
      Height = 16
      Size.Values = (
        42.333333333333340000
        1767.416666666667000000
        428.625000000000000000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CURRENT_MAX_SALARY_RATIO_COEF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel21: TQRLabel
      Left = 655
      Top = 164
      Width = 9
      Height = 16
      Size.Values = (
        42.333333333333340000
        1733.020833333333000000
        433.916666666666700000
        23.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #8212
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 6
    end
    object QRLabel22: TQRLabel
      Left = 620
      Top = 143
      Width = 41
      Height = 16
      Size.Values = (
        42.333333333333340000
        1640.416666666667000000
        378.354166666666700000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1054#1088#1045#1092
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel11: TQRLabel
      Left = 684
      Top = 223
      Width = 25
      Height = 16
      Size.Values = (
        42.333333333333340000
        1809.750000000000000000
        590.020833333333400000
        66.145833333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1087#1094'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel12: TQRLabel
      Left = 653
      Top = 223
      Width = 22
      Height = 16
      Size.Values = (
        42.333333333333340000
        1727.729166666667000000
        590.020833333333400000
        58.208333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1054#1090#1075'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
  end
  object bndDetail: TQRBand [4]
    Left = 38
    Top = 66
    Width = 718
    Height = 0
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
  end
  object QRChildBand1: TQRChildBand [5]
    Tag = 2
    Left = 38
    Top = 307
    Width = 718
    Height = 19
    AlignToBottom = False
    BeforePrint = QRChildBand1BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand0
    PrintOrder = cboAfterParent
    object shpDeptOWDPCoverType: TQRShape
      Left = 648
      Top = -1
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        1714.500000000000000000
        -2.645833333333333000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object shpDeptName: TQRShape
      Left = 80
      Top = -1
      Width = 291
      Height = 20
      Size.Values = (
        52.916666666666670000
        211.666666666666700000
        -2.645833333333333000
        769.937500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object shpDeptIdentifier: TQRShape
      Left = 8
      Top = -1
      Width = 73
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        -2.645833333333333000
        193.145833333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtDeptName: TQRDBText
      Left = 83
      Top = 1
      Width = 286
      Height = 16
      Size.Values = (
        42.333333333333330000
        219.604166666666700000
        2.645833333333333000
        756.708333333333200000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object dbtDeptIdentifier: TQRDBText
      Left = 11
      Top = 1
      Width = 67
      Height = 16
      Size.Values = (
        42.333333333333340000
        29.104166666666670000
        2.645833333333333000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IDENTIFIER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object shpOWDPriority: TQRShape
      Left = 434
      Top = -1
      Width = 215
      Height = 20
      Size.Values = (
        52.916666666666670000
        1148.291666666667000000
        -2.645833333333333000
        568.854166666666700000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtOWDPriority: TQRDBText
      Left = 437
      Top = 1
      Width = 210
      Height = 16
      Size.Values = (
        42.333333333333330000
        1156.229166666667000000
        2.645833333333333000
        555.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_OWD_PRIORITY_DISPLAY_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object shpDeptIsExternal: TQRShape
      Left = 370
      Top = -1
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        978.958333333333200000
        -2.645833333333333000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object shpDeptIsRecurrent: TQRShape
      Left = 402
      Top = -1
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        1063.625000000000000000
        -2.645833333333333000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtDeptIsExternal: TQRDBText
      Left = 373
      Top = 1
      Width = 27
      Height = 16
      Size.Values = (
        42.333333333333330000
        986.895833333333200000
        2.645833333333333000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IS_EXTERNAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object dbtDeptIsRecurrent: TQRDBText
      Left = 405
      Top = 1
      Width = 27
      Height = 16
      Size.Values = (
        42.333333333333330000
        1071.562500000000000000
        2.645833333333333000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IS_RECURRENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object shpIsCapacityGenerator: TQRShape
      Left = 680
      Top = -1
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666670000
        1799.166666666667000000
        -2.645833333333333000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtIsCapacityGenerator: TQRDBText
      Left = 683
      Top = 1
      Width = 27
      Height = 16
      Size.Values = (
        42.333333333333330000
        1807.104166666667000000
        2.645833333333333000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IS_CAPACITY_GENERATOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object dbtDeptOWDPCoverType: TQRDBText
      Left = 651
      Top = 1
      Width = 27
      Height = 16
      Size.Values = (
        42.333333333333330000
        1722.437500000000000000
        2.645833333333333000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_OWDP_COVER_TYPE_CODE'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
  end
  object QRChildBand2: TQRChildBand [6]
    Tag = 3
    Left = 38
    Top = 326
    Width = 718
    Height = 167
    AlignToBottom = False
    BeforePrint = QRChildBand2BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      441.854166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand1
    PrintOrder = cboAfterParent
    object QRShape15: TQRShape
      Left = 683
      Top = 128
      Width = 27
      Height = 39
      Size.Values = (
        103.187500000000000000
        1807.104166666667000000
        338.666666666666700000
        71.437500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape10: TQRShape
      Left = 99
      Top = 147
      Width = 585
      Height = 20
      Size.Values = (
        52.916666666666670000
        261.937500000000000000
        388.937500000000000000
        1547.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape9: TQRShape
      Left = 68
      Top = 147
      Width = 32
      Height = 20
      Size.Values = (
        52.916666666666660000
        179.916666666666700000
        388.937500000000000000
        84.666666666666680000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape8: TQRShape
      Left = 8
      Top = 147
      Width = 61
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        388.937500000000000000
        161.395833333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape7: TQRShape
      Left = 8
      Top = 128
      Width = 676
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        338.666666666666700000
        1788.583333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel5: TQRLabel
      Left = 9
      Top = 73
      Width = 52
      Height = 16
      Size.Values = (
        42.333333333333340000
        23.812500000000000000
        193.145833333333300000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1041#1077#1083#1077#1078#1082#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape41: TQRShape
      Left = 8
      Top = 91
      Width = 702
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        240.770833333333300000
        1857.375000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText15: TQRDBText
      Left = 10
      Top = 93
      Width = 698
      Height = 16
      Size.Values = (
        42.333333333333340000
        26.458333333333330000
        246.062500000000000000
        1846.791666666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'NOTES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 229
      Top = 130
      Width = 216
      Height = 16
      Size.Values = (
        42.333333333333340000
        605.895833333333400000
        343.958333333333400000
        571.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1044#1056#1054#1088' '#1055#1088#1086#1094#1077#1089#1085#1080' '#1056#1086#1083#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel8: TQRLabel
      Left = 28
      Top = 149
      Width = 22
      Height = 16
      Size.Values = (
        42.333333333333340000
        74.083333333333340000
        394.229166666666700000
        58.208333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1086#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel9: TQRLabel
      Left = 70
      Top = 149
      Width = 28
      Height = 16
      Size.Values = (
        42.333333333333340000
        185.208333333333300000
        394.229166666666700000
        74.083333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1048#1048#1054
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 340
      Top = 149
      Width = 88
      Height = 16
      Size.Values = (
        42.333333333333340000
        899.583333333333400000
        394.229166666666700000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel15: TQRLabel
      Left = 685
      Top = 131
      Width = 23
      Height = 33
      Size.Values = (
        87.312500000000000000
        1812.395833333333000000
        346.604166666666700000
        60.854166666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #1042#1080#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape47: TQRShape
      Left = 7
      Top = 15
      Width = 490
      Height = 50
      Size.Values = (
        132.291666666666700000
        18.520833333333330000
        39.687500000000000000
        1296.458333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel29: TQRLabel
      Left = 17
      Top = 8
      Width = 285
      Height = 16
      Size.Values = (
        42.333333333333340000
        44.979166666666670000
        21.166666666666670000
        754.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1044#1083#1098#1078#1085#1086#1089#1090#1077#1085' '#1056#1072#1073#1086#1090#1085#1080#1082' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103#1090#1072' ('#1044#1056#1054#1088') '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape71: TQRShape
      Left = 16
      Top = 40
      Width = 385
      Height = 20
      Size.Values = (
        52.916666666666660000
        42.333333333333340000
        105.833333333333300000
        1018.645833333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText10: TQRDBText
      Left = 18
      Top = 42
      Width = 381
      Height = 16
      Size.Values = (
        42.333333333333340000
        47.625000000000000000
        111.125000000000000000
        1008.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape72: TQRShape
      Left = 400
      Top = 40
      Width = 88
      Height = 20
      Size.Values = (
        52.916666666666660000
        1058.333333333333000000
        105.833333333333300000
        232.833333333333400000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText44: TQRDBText
      Left = 402
      Top = 42
      Width = 84
      Height = 16
      Size.Values = (
        42.333333333333340000
        1063.625000000000000000
        111.125000000000000000
        222.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape1: TQRShape
      Left = 509
      Top = 15
      Width = 202
      Height = 50
      Size.Values = (
        132.291666666666700000
        1346.729166666667000000
        39.687500000000000000
        534.458333333333400000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel1: TQRLabel
      Left = 519
      Top = 8
      Width = 180
      Height = 16
      Size.Values = (
        42.333333333333340000
        1373.187500000000000000
        21.166666666666670000
        476.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#1044#1086#1087#1098#1083#1085#1080#1090#1077#1083#1085#1080' '#1076#1072#1085#1085#1080' '#1079#1072' '#1044#1056#1054#1088' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel6: TQRLabel
      Left = 531
      Top = 23
      Width = 67
      Height = 16
      Size.Values = (
        42.333333333333340000
        1404.937500000000000000
        60.854166666666680000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1055#1048#1056' '#1057#1090#1072#1090#1091#1089
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel30: TQRLabel
      Left = 619
      Top = 23
      Width = 23
      Height = 16
      Size.Values = (
        42.333333333333340000
        1637.770833333333000000
        60.854166666666680000
        60.854166666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1055#1079#1094
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRLabel31: TQRLabel
      Left = 652
      Top = 23
      Width = 26
      Height = 16
      Size.Values = (
        42.333333333333340000
        1725.083333333334000000
        60.854166666666680000
        68.791666666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1058#1049#1057
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape2: TQRShape
      Left = 531
      Top = 40
      Width = 68
      Height = 20
      Size.Values = (
        52.916666666666660000
        1404.937500000000000000
        105.833333333333300000
        179.916666666666700000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText19: TQRDBText
      Left = 534
      Top = 42
      Width = 63
      Height = 16
      Size.Values = (
        42.333333333333340000
        1412.875000000000000000
        111.125000000000000000
        166.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SPEC_STATE_CODE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape23: TQRShape
      Left = 619
      Top = 40
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666660000
        1637.770833333333000000
        105.833333333333300000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText21: TQRDBText
      Left = 622
      Top = 42
      Width = 28
      Height = 16
      Size.Values = (
        42.333333333333340000
        1645.708333333333000000
        111.125000000000000000
        74.083333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'COMMON_STATUS_CODE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape24: TQRShape
      Left = 651
      Top = 40
      Width = 33
      Height = 20
      Size.Values = (
        52.916666666666660000
        1722.437500000000000000
        105.833333333333300000
        87.312500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText23: TQRDBText
      Left = 654
      Top = 42
      Width = 28
      Height = 16
      Size.Values = (
        42.333333333333340000
        1730.375000000000000000
        111.125000000000000000
        74.083333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_COMMON_PRODUCTS_LEVELS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRShape60: TQRShape
      Left = 8
      Top = -1
      Width = 706
      Height = 1
      Size.Values = (
        2.645833333333333000
        21.166666666666670000
        -2.645833333333333000
        1867.958333333333000000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
  object QRChildBand3: TQRChildBand [7]
    Tag = 4
    Left = 38
    Top = 493
    Width = 718
    Height = 19
    AlignToBottom = False
    BeforePrint = QRChildBand3BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand2
    PrintOrder = cboAfterParent
    object QRShape19: TQRShape
      Tag = 1
      Left = 683
      Top = -1
      Width = 27
      Height = 20
      Size.Values = (
        52.916666666666670000
        1807.104166666667000000
        -2.645833333333333000
        71.437500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape18: TQRShape
      Tag = 1
      Left = 99
      Top = -1
      Width = 585
      Height = 20
      Size.Values = (
        52.916666666666670000
        261.937500000000000000
        -2.645833333333333000
        1547.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape16: TQRShape
      Tag = 1
      Left = 68
      Top = -1
      Width = 32
      Height = 20
      Size.Values = (
        52.916666666666660000
        179.916666666666700000
        -2.645833333333333000
        84.666666666666680000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape17: TQRShape
      Tag = 1
      Left = 8
      Top = -1
      Width = 61
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        -2.645833333333333000
        161.395833333333300000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText31: TQRDBText
      Tag = 1
      Left = 11
      Top = 1
      Width = 55
      Height = 16
      Size.Values = (
        42.333333333333340000
        29.104166666666670000
        2.645833333333333000
        145.520833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PROFESSION_FULL_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText32: TQRDBText
      Tag = 1
      Left = 70
      Top = 1
      Width = 26
      Height = 17
      Size.Values = (
        44.979166666666670000
        185.208333333333300000
        2.645833333333333000
        68.791666666666680000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'HAS_DOCUMENTATION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText33: TQRDBText
      Tag = 1
      Left = 102
      Top = 1
      Width = 580
      Height = 16
      Size.Values = (
        42.333333333333340000
        269.875000000000000000
        2.645833333333333000
        1534.583333333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PROFESSION_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText34: TQRDBText
      Tag = 1
      Left = 685
      Top = 1
      Width = 23
      Height = 16
      Size.Values = (
        42.333333333333330000
        1812.395833333333000000
        2.645833333333333000
        60.854166666666680000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PROFESSION_KIND_IDENTIFIER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
  end
  object QRChildBand5: TQRChildBand [8]
    Tag = 6
    Left = 38
    Top = 575
    Width = 718
    Height = 19
    AlignToBottom = False
    BeforePrint = QRChildBand5BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand4
    PrintOrder = cboAfterParent
    object QRShape14: TQRShape
      Tag = 1
      Left = 8
      Top = -1
      Width = 105
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        -2.645833333333333000
        277.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape20: TQRShape
      Tag = 1
      Left = 112
      Top = -1
      Width = 598
      Height = 20
      Size.Values = (
        52.916666666666660000
        296.333333333333400000
        -2.645833333333333000
        1582.208333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText11: TQRDBText
      Tag = 1
      Left = 11
      Top = 1
      Width = 99
      Height = 16
      Size.Values = (
        42.333333333333340000
        29.104166666666670000
        2.645833333333333000
        261.937500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SYS_ROLE_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText12: TQRDBText
      Tag = 1
      Left = 116
      Top = 1
      Width = 589
      Height = 16
      Size.Values = (
        42.333333333333340000
        306.916666666666700000
        2.645833333333333000
        1558.395833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SYS_ROLE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
  end
  object QRChildBand6: TQRChildBand [9]
    Tag = 7
    Left = 38
    Top = 594
    Width = 718
    Height = 63
    AlignToBottom = False
    BeforePrint = QRChildBand6BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      166.687500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand5
    PrintOrder = cboAfterParent
    object QRShape21: TQRShape
      Left = 8
      Top = 16
      Width = 702
      Height = 28
      Size.Values = (
        74.083333333333340000
        21.166666666666670000
        42.333333333333340000
        1857.375000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel28: TQRLabel
      Left = 205
      Top = 22
      Width = 285
      Height = 16
      Size.Values = (
        42.333333333333340000
        542.395833333333400000
        58.208333333333340000
        754.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1060#1080#1083#1090#1098#1088#1085#1080' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape22: TQRShape
      Left = 8
      Top = 43
      Width = 105
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        113.770833333333300000
        277.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel32: TQRLabel
      Left = 52
      Top = 45
      Width = 22
      Height = 16
      Size.Values = (
        42.333333333333340000
        137.583333333333300000
        119.062500000000000000
        58.208333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1086#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape29: TQRShape
      Left = 112
      Top = 43
      Width = 598
      Height = 20
      Size.Values = (
        52.916666666666660000
        296.333333333333400000
        113.770833333333300000
        1582.208333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel33: TQRLabel
      Left = 332
      Top = 45
      Width = 88
      Height = 16
      Size.Values = (
        42.333333333333340000
        878.416666666666800000
        119.062500000000000000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape50: TQRShape
      Left = 8
      Top = 0
      Width = 703
      Height = 1
      Size.Values = (
        2.645833333333333000
        21.166666666666670000
        0.000000000000000000
        1860.020833333333000000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
  object QRChildBand7: TQRChildBand [10]
    Tag = 8
    Left = 38
    Top = 657
    Width = 718
    Height = 19
    AlignToBottom = False
    BeforePrint = QRChildBand7BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand6
    PrintOrder = cboAfterParent
    object QRShape35: TQRShape
      Tag = 1
      Left = 8
      Top = -1
      Width = 105
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        -2.645833333333333000
        277.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape36: TQRShape
      Tag = 1
      Left = 112
      Top = -1
      Width = 598
      Height = 20
      Size.Values = (
        52.916666666666660000
        296.333333333333400000
        -2.645833333333333000
        1582.208333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText14: TQRDBText
      Tag = 1
      Left = 11
      Top = 1
      Width = 99
      Height = 16
      Size.Values = (
        42.333333333333340000
        29.104166666666670000
        2.645833333333333000
        261.937500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SYS_ROLE_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText16: TQRDBText
      Tag = 1
      Left = 116
      Top = 1
      Width = 589
      Height = 16
      Size.Values = (
        42.333333333333340000
        306.916666666666700000
        2.645833333333333000
        1558.395833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SYS_ROLE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
  end
  object QRChildBand8: TQRChildBand [11]
    Tag = 9
    Left = 38
    Top = 676
    Width = 718
    Height = 63
    AlignToBottom = False
    BeforePrint = QRChildBand8BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      166.687500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand7
    PrintOrder = cboAfterParent
    object QRShape38: TQRShape
      Left = 8
      Top = 16
      Width = 702
      Height = 28
      Size.Values = (
        74.083333333333340000
        21.166666666666670000
        42.333333333333340000
        1857.375000000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel34: TQRLabel
      Left = 213
      Top = 22
      Width = 264
      Height = 16
      Size.Values = (
        42.333333333333340000
        563.562500000000000000
        58.208333333333340000
        698.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1052#1048#1048#1054' '#1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape42: TQRShape
      Left = 8
      Top = 43
      Width = 105
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        113.770833333333300000
        277.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel35: TQRLabel
      Left = 52
      Top = 45
      Width = 22
      Height = 16
      Size.Values = (
        42.333333333333340000
        137.583333333333300000
        119.062500000000000000
        58.208333333333340000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1050#1086#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape43: TQRShape
      Left = 112
      Top = 43
      Width = 598
      Height = 20
      Size.Values = (
        52.916666666666660000
        296.333333333333400000
        113.770833333333300000
        1582.208333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel40: TQRLabel
      Left = 332
      Top = 45
      Width = 88
      Height = 16
      Size.Values = (
        42.333333333333340000
        878.416666666666800000
        119.062500000000000000
        232.833333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 9
    end
    object QRShape57: TQRShape
      Left = 8
      Top = 0
      Width = 703
      Height = 1
      Size.Values = (
        2.645833333333333000
        21.166666666666670000
        0.000000000000000000
        1860.020833333333000000)
      XLColumn = 0
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
  object QRChildBand9: TQRChildBand [12]
    Tag = 10
    Left = 38
    Top = 739
    Width = 718
    Height = 19
    AlignToBottom = False
    BeforePrint = QRChildBand9BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRChildBand8
    PrintOrder = cboAfterParent
    object QRShape44: TQRShape
      Tag = 1
      Left = 8
      Top = -1
      Width = 105
      Height = 20
      Size.Values = (
        52.916666666666660000
        21.166666666666670000
        -2.645833333333333000
        277.812500000000000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape45: TQRShape
      Tag = 1
      Left = 112
      Top = -1
      Width = 598
      Height = 20
      Size.Values = (
        52.916666666666660000
        296.333333333333400000
        -2.645833333333333000
        1582.208333333333000000)
      XLColumn = 0
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText17: TQRDBText
      Tag = 1
      Left = 11
      Top = 1
      Width = 99
      Height = 16
      Size.Values = (
        42.333333333333340000
        29.104166666666670000
        2.645833333333333000
        261.937500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SYS_ROLE_NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
    object QRDBText18: TQRDBText
      Tag = 1
      Left = 116
      Top = 1
      Width = 589
      Height = 16
      Size.Values = (
        42.333333333333340000
        306.916666666666700000
        2.645833333333333000
        1558.395833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SYS_ROLE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 9
    end
  end
end
