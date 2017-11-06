inherited rptBudget: TrptBudget
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
    Top = 199
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    ExplicitTop = 199
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
  object QRBand1: TQRBand [1]
    Left = 38
    Top = 38
    Width = 718
    Height = 100
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      264.583333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRShape8: TQRShape
      Left = 333
      Top = 43
      Width = 166
      Height = 42
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        111.125000000000000000
        881.062500000000000000
        113.770833333333300000
        439.208333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape10: TQRShape
      Left = 341
      Top = 57
      Width = 136
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        902.229166666666700000
        150.812500000000000000
        359.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape6: TQRShape
      Left = 0
      Top = 43
      Width = 327
      Height = 42
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        111.125000000000000000
        0.000000000000000000
        113.770833333333300000
        865.187500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape5: TQRShape
      Left = 233
      Top = 57
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        616.479166666666700000
        150.812500000000000000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape7: TQRShape
      Left = 8
      Top = 57
      Width = 226
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        21.166666666666670000
        150.812500000000000000
        597.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel1: TQRDBText
      Left = 0
      Top = 1
      Width = 716
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        2.645833333333333000
        1894.416666666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_REPORT_TITLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText2: TQRDBText
      Left = 10
      Top = 59
      Width = 222
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        156.104166666666700000
        587.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BUDGET_PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 235
      Top = 59
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        621.770833333333300000
        156.104166666666700000
        222.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BUDGET_PRODUCT_NO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 8
      Top = 35
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        92.604166666666670000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1058#1055' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 341
      Top = 35
      Width = 122
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        902.229166666666700000
        92.604166666666670000
        322.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 343
      Top = 59
      Width = 132
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        907.520833333333300000
        156.104166666666700000
        349.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_INTERVAL'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand2: TQRBand [2]
    Left = 38
    Top = 138
    Width = 718
    Height = 41
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      108.479166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbColumnHeader
    object QRShape1: TQRShape
      Left = 0
      Top = 0
      Width = 411
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        0.000000000000000000
        0.000000000000000000
        1087.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Left = 410
      Top = 0
      Width = 103
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1084.791666666667000000
        0.000000000000000000
        272.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblPlan: TQRLabel
      Left = 412
      Top = 12
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1090.083333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1051#1080#1084#1080#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 2
      Top = 12
      Width = 407
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        5.291666666666667000
        31.750000000000000000
        1076.854166666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape3: TQRShape
      Left = 512
      Top = 0
      Width = 103
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1354.666666666667000000
        0.000000000000000000
        272.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape4: TQRShape
      Left = 614
      Top = 0
      Width = 103
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1624.541666666667000000
        0.000000000000000000
        272.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblBOIOPlanToPlanDevPercent: TQRLabel
      Left = 514
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1055'-'#1051') %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblBOIOPlanToPlanDev: TQRLabel
      Left = 514
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1055'-'#1051')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblBOIOPlan: TQRLabel
      Left = 514
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblRealToBOIOPlanDevPercent: TQRLabel
      Left = 616
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1055') %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblRealToPlanDevPercent: TQRLabel
      Left = 616
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1051') %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblRealToBOIOPlanDev: TQRLabel
      Left = 616
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1055')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblRealToPlanDev: TQRLabel
      Left = 616
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1051')'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblReal: TQRLabel
      Left = 616
      Top = 12
      Width = 99
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        31.750000000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1095#1077#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited bndDetail: TQRBand
    Top = 179
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    ExplicitTop = 179
    inherited shpNodeIdentifier: TQRShape
      Width = 391
      Enabled = False
      Size.Values = (
        52.916666666666670000
        47.625000000000000000
        0.000000000000000000
        1034.520833333333000000)
      ExplicitWidth = 391
    end
    inherited imgNodeIcon: TQRImage
      Size.Values = (
        42.333333333333330000
        2.645833333333333000
        5.291666666666667000
        42.333333333333330000)
    end
    inherited shpParentLine1: TQRShape [2]
      Size.Values = (
        58.208333333333330000
        762.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine2: TQRShape [3]
      Size.Values = (
        58.208333333333330000
        783.166666666666700000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine3: TQRShape [4]
      Size.Values = (
        58.208333333333330000
        804.333333333333300000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine4: TQRShape [5]
      Size.Values = (
        58.208333333333330000
        825.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine5: TQRShape [6]
      Size.Values = (
        58.208333333333330000
        846.666666666666700000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine6: TQRShape [7]
      Size.Values = (
        58.208333333333330000
        867.833333333333300000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine7: TQRShape [8]
      Size.Values = (
        58.208333333333330000
        889.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine8: TQRShape [9]
      Size.Values = (
        58.208333333333330000
        910.166666666666700000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine50: TQRShape [10]
      Size.Values = (
        58.208333333333330000
        1799.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine49: TQRShape [11]
      Size.Values = (
        58.208333333333330000
        1778.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine48: TQRShape [12]
      Size.Values = (
        58.208333333333330000
        1756.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine47: TQRShape [13]
      Size.Values = (
        58.208333333333330000
        1735.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine46: TQRShape [14]
      Size.Values = (
        58.208333333333330000
        1714.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine45: TQRShape [15]
      Size.Values = (
        58.208333333333330000
        1693.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine44: TQRShape [16]
      Size.Values = (
        58.208333333333330000
        1672.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine43: TQRShape [17]
      Size.Values = (
        58.208333333333330000
        1651.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine41: TQRShape [18]
      Size.Values = (
        58.208333333333330000
        1608.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine40: TQRShape [19]
      Size.Values = (
        58.208333333333330000
        1587.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine22: TQRShape [20]
      Size.Values = (
        58.208333333333330000
        1206.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine19: TQRShape [21]
      Size.Values = (
        58.208333333333330000
        1143.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine10: TQRShape [22]
      Size.Values = (
        58.208333333333330000
        952.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine9: TQRShape [23]
      Size.Values = (
        58.208333333333330000
        931.333333333333300000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine11: TQRShape [24]
      Size.Values = (
        58.208333333333330000
        973.666666666666700000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine12: TQRShape [25]
      Size.Values = (
        58.208333333333330000
        994.833333333333300000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine13: TQRShape [26]
      Size.Values = (
        58.208333333333330000
        1016.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine14: TQRShape [27]
      Size.Values = (
        58.208333333333330000
        1037.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine15: TQRShape [28]
      Size.Values = (
        58.208333333333330000
        1058.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine16: TQRShape [29]
      Size.Values = (
        58.208333333333330000
        1079.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine17: TQRShape [30]
      Size.Values = (
        58.208333333333330000
        1100.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine18: TQRShape [31]
      Size.Values = (
        58.208333333333330000
        1121.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine20: TQRShape [32]
      Size.Values = (
        58.208333333333330000
        1164.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine21: TQRShape [33]
      Size.Values = (
        58.208333333333330000
        1185.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine23: TQRShape [34]
      Size.Values = (
        58.208333333333330000
        1227.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine24: TQRShape [35]
      Size.Values = (
        58.208333333333330000
        1248.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine25: TQRShape [36]
      Size.Values = (
        58.208333333333330000
        1270.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine26: TQRShape [37]
      Size.Values = (
        58.208333333333330000
        1291.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine29: TQRShape [38]
      Size.Values = (
        58.208333333333330000
        1354.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine31: TQRShape [39]
      Size.Values = (
        58.208333333333330000
        1397.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine33: TQRShape [40]
      Size.Values = (
        58.208333333333330000
        1439.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine35: TQRShape [41]
      Size.Values = (
        58.208333333333330000
        1481.666666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine37: TQRShape [42]
      Size.Values = (
        58.208333333333330000
        1524.000000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine39: TQRShape [43]
      Size.Values = (
        58.208333333333330000
        1566.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine38: TQRShape [44]
      Size.Values = (
        58.208333333333330000
        1545.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine36: TQRShape [45]
      Size.Values = (
        58.208333333333330000
        1502.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine42: TQRShape [46]
      Size.Values = (
        58.208333333333330000
        1629.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine34: TQRShape [47]
      Size.Values = (
        58.208333333333330000
        1460.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine32: TQRShape [48]
      Size.Values = (
        58.208333333333330000
        1418.166666666667000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine30: TQRShape [49]
      Size.Values = (
        58.208333333333330000
        1375.833333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine28: TQRShape [50]
      Size.Values = (
        58.208333333333330000
        1333.500000000000000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpParentLine27: TQRShape [51]
      Size.Values = (
        58.208333333333330000
        1312.333333333333000000
        -2.645833333333333000
        13.229166666666670000)
    end
    inherited shpVertLine: TQRShape [52]
      Size.Values = (
        26.458333333333330000
        687.916666666666700000
        0.000000000000000000
        13.229166666666670000)
    end
    inherited shpHorLine: TQRShape [53]
      Size.Values = (
        37.041666666666670000
        706.437500000000000000
        7.937500000000000000
        42.333333333333330000)
    end
    inherited dbtNodeIdentifier: TQRDBText [54]
      Width = 388
      Size.Values = (
        44.979166666666670000
        52.916666666666670000
        2.645833333333333000
        1026.583333333333000000)
      DataField = '_BUDGET_CLASS_TREE_DISPLAY_NAME'
      FontSize = 10
      ExplicitWidth = 388
    end
    object QRShape11: TQRShape
      Left = 410
      Top = -1
      Width = 103
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1084.791666666667000000
        -2.645833333333333000
        272.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtPlan: TQRDBText
      Left = 412
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1090.083333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PLAN_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape12: TQRShape
      Left = 512
      Top = -1
      Width = 103
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1354.666666666667000000
        -2.645833333333333000
        272.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtBOIOPlanToPlanDevPercent: TQRDBText
      Left = 514
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape13: TQRShape
      Left = 614
      Top = -1
      Width = 103
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1624.541666666667000000
        -2.645833333333333000
        272.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtRealToBOIOPlanDevPercent: TQRDBText
      Left = 616
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_REAL_TO_BOIO_PLAN_DEV_P'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object dbtBOIOPlanToPlanDev: TQRDBText
      Left = 514
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object dbtRealToBOIOPlanDev: TQRDBText
      Left = 616
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_REAL_TO_BOIO_PLAN_DEV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object dbtBOIOPlan: TQRDBText
      Left = 514
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_BOIO_PLAN_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object dbtRealToPlanDevPercent: TQRDBText
      Left = 616
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_REAL_TO_PLAN_DEV_P'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object dbtRealToPlanDev: TQRDBText
      Left = 616
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_TOTAL_REAL_TO_PLAN_DEV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object dbtReal: TQRDBText
      Left = 616
      Top = 1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        2.645833333333333000
        261.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_REAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
end
