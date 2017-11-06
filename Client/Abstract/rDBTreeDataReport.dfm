inherited DBTreeDataReport: TDBTreeDataReport
  AfterPrint = QuickRepAfterPrint
  BeforePrint = QuickRepBeforePrint
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'QRSTRINGSBAND1')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  inherited bndPageFooter: TQRBand
    Top = 58
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    ExplicitTop = 58
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
        58.208333333333330000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
  end
  object bndDetail: TQRBand [1]
    Left = 38
    Top = 38
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = bndDetailAfterPrint
    AlignToBottom = False
    BeforePrint = bndDetailBeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object shpNodeIdentifier: TQRShape
      Left = 18
      Top = 0
      Width = 230
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        47.625000000000000000
        0.000000000000000000
        608.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object imgNodeIcon: TQRImage
      Left = 1
      Top = 2
      Width = 16
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2.645833333333333000
        5.291666666666667000
        42.333333333333330000)
      AutoSize = True
    end
    object dbtNodeIdentifier: TQRDBText
      Left = 20
      Top = 1
      Width = 226
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666670000
        2.645833333333333000
        597.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object shpParentLine1: TQRShape
      Left = 288
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        762.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine2: TQRShape
      Left = 296
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        783.166666666666700000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine3: TQRShape
      Left = 304
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        804.333333333333300000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine4: TQRShape
      Left = 312
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        825.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine5: TQRShape
      Left = 320
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        846.666666666666700000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine6: TQRShape
      Left = 328
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        867.833333333333300000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine7: TQRShape
      Left = 336
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        889.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine8: TQRShape
      Left = 344
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        910.166666666666700000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine50: TQRShape
      Left = 680
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1799.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine49: TQRShape
      Left = 672
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1778.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine48: TQRShape
      Left = 664
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1756.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine47: TQRShape
      Left = 656
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1735.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine46: TQRShape
      Left = 648
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1714.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine45: TQRShape
      Left = 640
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1693.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine44: TQRShape
      Left = 632
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1672.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine43: TQRShape
      Left = 624
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1651.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine41: TQRShape
      Left = 608
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1608.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine40: TQRShape
      Left = 600
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1587.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine22: TQRShape
      Left = 456
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1206.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine19: TQRShape
      Left = 432
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1143.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine10: TQRShape
      Left = 360
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        952.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine9: TQRShape
      Left = 352
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        931.333333333333300000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine11: TQRShape
      Left = 368
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        973.666666666666700000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine12: TQRShape
      Left = 376
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        994.833333333333300000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine13: TQRShape
      Left = 384
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1016.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine14: TQRShape
      Left = 392
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1037.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine15: TQRShape
      Left = 400
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1058.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine16: TQRShape
      Left = 408
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1079.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine17: TQRShape
      Left = 416
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1100.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine18: TQRShape
      Left = 424
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1121.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine20: TQRShape
      Left = 440
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1164.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine21: TQRShape
      Left = 448
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1185.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine23: TQRShape
      Left = 464
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1227.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine24: TQRShape
      Left = 472
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1248.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine25: TQRShape
      Left = 480
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1270.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine26: TQRShape
      Left = 488
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1291.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine29: TQRShape
      Left = 512
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1354.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine31: TQRShape
      Left = 528
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1397.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine33: TQRShape
      Left = 544
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1439.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine35: TQRShape
      Left = 560
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1481.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine37: TQRShape
      Left = 576
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1524.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine39: TQRShape
      Left = 592
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1566.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine38: TQRShape
      Left = 584
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1545.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine36: TQRShape
      Left = 568
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1502.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine42: TQRShape
      Left = 616
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1629.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine34: TQRShape
      Left = 552
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1460.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine32: TQRShape
      Left = 536
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1418.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine30: TQRShape
      Left = 520
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1375.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine28: TQRShape
      Left = 504
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1333.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpParentLine27: TQRShape
      Left = 496
      Top = -1
      Width = 5
      Height = 22
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1312.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpVertLine: TQRShape
      Left = 260
      Top = 0
      Width = 5
      Height = 10
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        26.458333333333330000
        687.916666666666700000
        0.000000000000000000
        13.229166666666670000)
      Pen.Style = psDot
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object shpHorLine: TQRShape
      Left = 267
      Top = 3
      Width = 16
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        706.437500000000000000
        7.937500000000000000
        42.333333333333330000)
      Pen.Style = psDot
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
end
