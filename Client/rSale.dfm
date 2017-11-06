inherited rptSale: TrptSale
  Width = 1123
  Height = 1495
  BeforePrint = QuickRepBeforePrint
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Orientation = poLandscape
  Page.Values = (
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  inherited bndPageFooter: TQRBand
    Top = 1313
    Width = 1047
    Size.Values = (
      71.437500000000000000
      2770.187500000000000000)
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
      Height = 18
      Size.Values = (
        47.625000000000000000
        7.937500000000000000
        21.166666666666670000
        26.458333333333330000)
      FontSize = 10
    end
    inherited lblPrintedByApp2: TQRLabel
      Left = 14
      Width = 12
      Height = 24
      Size.Values = (
        63.500000000000000000
        37.041666666666670000
        18.520833333333330000
        31.750000000000000000)
      Font.Height = -16
      FontSize = 12
    end
    inherited lblPrintedByApp3: TQRLabel
      Left = 27
      Height = 18
      Size.Values = (
        47.625000000000000000
        71.437500000000000000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
  end
  object bndTitle: TQRBand [1]
    Left = 38
    Top = 38
    Width = 1047
    Height = 739
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
      1955.270833333333000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRLabel1: TQRLabel
      Left = 0
      Top = 3
      Width = 1049
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        7.937500000000000000
        2775.479166666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 12
    end
    object QRShape1: TQRShape
      Tag = 666
      Left = 1
      Top = 352
      Width = 273
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        2.645833333333333000
        931.333333333333200000
        722.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Tag = 666
      Left = 9
      Top = 344
      Width = 218
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        910.166666666666700000
        576.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042') '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Tag = 666
      Left = 9
      Top = 362
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        957.791666666666700000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Tag = 666
      Left = 57
      Top = 362
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        150.812500000000000000
        957.791666666666700000
        119.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1094#1077#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Tag = 666
      Left = 112
      Top = 362
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        296.333333333333300000
        957.791666666666700000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1043#1083'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Tag = 666
      Left = 182
      Top = 362
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        481.541666666666700000
        957.791666666666700000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1055#1042' No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Tag = 666
      Left = 239
      Top = 362
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        632.354166666666700000
        957.791666666666700000
        66.145833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape2: TQRShape
      Tag = 666
      Left = 9
      Top = 381
      Width = 42
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        23.812500000000000000
        1008.062500000000000000
        111.125000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText1: TQRDBText
      Tag = 666
      Left = 11
      Top = 383
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        29.104166666666670000
        1013.354166666667000000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ML_STATE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape3: TQRShape
      Tag = 666
      Left = 57
      Top = 381
      Width = 47
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        150.812500000000000000
        1008.062500000000000000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText2: TQRDBText
      Tag = 666
      Left = 59
      Top = 383
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        156.104166666666700000
        1013.354166666667000000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCTION_ORDER_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape4: TQRShape
      Tag = 666
      Left = 111
      Top = 381
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        293.687500000000000000
        1008.062500000000000000
        164.041666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText3: TQRDBText
      Tag = 666
      Left = 113
      Top = 383
      Width = 58
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        298.979166666666700000
        1013.354166666667000000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_SALE_BRANCH_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape5: TQRShape
      Tag = 666
      Left = 181
      Top = 381
      Width = 52
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        478.895833333333300000
        1008.062500000000000000
        137.583333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText4: TQRDBText
      Tag = 666
      Left = 183
      Top = 383
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        484.187500000000000000
        1013.354166666667000000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape6: TQRShape
      Tag = 666
      Left = 239
      Top = 381
      Width = 27
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        632.354166666666800000
        1008.062500000000000000
        71.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText5: TQRDBText
      Tag = 666
      Left = 241
      Top = 383
      Width = 23
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        637.645833333333200000
        1013.354166666667000000
        60.854166666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape7: TQRShape
      Tag = 666
      Left = 281
      Top = 352
      Width = 295
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        743.479166666666800000
        931.333333333333200000
        780.520833333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel8: TQRLabel
      Tag = 666
      Left = 289
      Top = 344
      Width = 174
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        764.645833333333300000
        910.166666666666700000
        460.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1055#1086#1088#1098#1095#1080#1090#1077#1083' / '#1042#1086#1076#1077#1097' '#1044#1080#1072#1083#1086#1075' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape8: TQRShape
      Tag = 666
      Left = 288
      Top = 381
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        762.000000000000000000
        1008.062500000000000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText6: TQRDBText
      Tag = 666
      Left = 290
      Top = 383
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        767.291666666666800000
        1013.354166666667000000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MANAGER_OKIDU_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape9: TQRShape
      Tag = 666
      Left = 368
      Top = 381
      Width = 201
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        973.666666666666800000
        1008.062500000000000000
        531.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText7: TQRDBText
      Tag = 666
      Left = 370
      Top = 383
      Width = 197
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        978.958333333333200000
        1013.354166666667000000
        521.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MANAGER_OKIDU_NAME'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape10: TQRShape
      Tag = 666
      Left = 583
      Top = 352
      Width = 154
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1542.520833333333000000
        931.333333333333200000
        407.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel9: TQRLabel
      Tag = 666
      Left = 595
      Top = 344
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1574.270833333333000000
        910.166666666666700000
        285.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1057#1090#1072#1088#1090' '#1085#1072' ID '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape11: TQRShape
      Tag = 666
      Left = 591
      Top = 381
      Width = 69
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1563.687500000000000000
        1008.062500000000000000
        182.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText8: TQRDBText
      Tag = 666
      Left = 593
      Top = 383
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1568.979166666667000000
        1013.354166666667000000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCTION_START_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Tag = 666
      Left = 591
      Top = 362
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1563.687500000000000000
        957.791666666666700000
        76.729166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape12: TQRShape
      Tag = 666
      Left = 665
      Top = 381
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1759.479166666667000000
        1008.062500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText9: TQRDBText
      Tag = 666
      Left = 667
      Top = 383
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1764.770833333333000000
        1013.354166666667000000
        66.145833333333320000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_PRODUCTION_START_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Tag = 666
      Left = 665
      Top = 362
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1759.479166666667000000
        957.791666666666700000
        74.083333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1088#1079#1088#1074
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape13: TQRShape
      Tag = 666
      Left = 700
      Top = 381
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1852.083333333333000000
        1008.062500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText10: TQRDBText
      Tag = 666
      Left = 702
      Top = 383
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1857.375000000000000000
        1013.354166666667000000
        66.145833333333320000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'START_STAGE_COEF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Tag = 666
      Left = 700
      Top = 362
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1852.083333333333000000
        957.791666666666700000
        76.729166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1092#1094'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape14: TQRShape
      Tag = 666
      Left = 744
      Top = 352
      Width = 294
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1968.500000000000000000
        931.333333333333200000
        777.875000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel13: TQRLabel
      Tag = 666
      Left = 755
      Top = 344
      Width = 146
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1997.604166666667000000
        910.166666666666700000
        386.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel14: TQRLabel
      Tag = 666
      Left = 751
      Top = 362
      Width = 111
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1987.020833333333000000
        957.791666666666700000
        293.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape15: TQRShape
      Tag = 666
      Left = 751
      Top = 381
      Width = 112
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1987.020833333333000000
        1008.062500000000000000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText11: TQRDBText
      Tag = 666
      Left = 753
      Top = 383
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1992.312500000000000000
        1013.354166666667000000
        285.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCTION_DEPT_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Tag = 666
      Left = 899
      Top = 354
      Width = 44
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2378.604166666667000000
        936.625000000000000000
        116.416666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1077#1088#1080#1086#1076#1080
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRShape16: TQRShape
      Tag = 666
      Left = 877
      Top = 381
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2320.395833333333000000
        1008.062500000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText12: TQRDBText
      Tag = 666
      Left = 879
      Top = 383
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2325.687500000000000000
        1013.354166666667000000
        68.791666666666680000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'START_AFTER_LIMITING_DAYS'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape17: TQRShape
      Tag = 666
      Left = 906
      Top = 381
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2397.125000000000000000
        1008.062500000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText13: TQRDBText
      Tag = 666
      Left = 908
      Top = 383
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2402.416666666667000000
        1013.354166666667000000
        68.791666666666680000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'INITIAL_TREATMENT_WORKDAYS'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape18: TQRShape
      Tag = 666
      Left = 972
      Top = 381
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2571.750000000000000000
        1008.062500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText14: TQRDBText
      Tag = 666
      Left = 974
      Top = 383
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2577.041666666667000000
        1013.354166666667000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MAX_OP_DATE_POSITIVE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape19: TQRShape
      Tag = 666
      Left = 1001
      Top = 381
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2648.479166666667000000
        1008.062500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText15: TQRDBText
      Tag = 666
      Left = 1003
      Top = 383
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2653.770833333333000000
        1013.354166666667000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MIN_OP_DATE_NEGATIVE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel16: TQRLabel
      Tag = 666
      Left = 917
      Top = 366
      Width = 8
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2426.229166666667000000
        968.375000000000000000
        21.166666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRLabel17: TQRLabel
      Tag = 666
      Left = 946
      Top = 366
      Width = 7
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2502.958333333333000000
        968.375000000000000000
        18.520833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRLabel18: TQRLabel
      Tag = 666
      Left = 976
      Top = 354
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2582.333333333333000000
        936.625000000000000000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083' '#1042#1088#1084
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRLabel19: TQRLabel
      Tag = 666
      Left = 983
      Top = 366
      Width = 7
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2600.854166666667000000
        968.375000000000000000
        18.520833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '+'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRLabel20: TQRLabel
      Tag = 666
      Left = 1012
      Top = 366
      Width = 5
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2677.583333333333000000
        968.375000000000000000
        13.229166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '-'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRShape20: TQRShape
      Tag = 666
      Left = 1
      Top = 418
      Width = 1037
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        2.645833333333333000
        1105.958333333333000000
        2743.729166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel21: TQRLabel
      Tag = 666
      Left = 9
      Top = 411
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1087.437500000000000000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel22: TQRLabel
      Tag = 666
      Left = 9
      Top = 429
      Width = 137
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1135.062500000000000000
        362.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '%ProductClassName%'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape21: TQRShape
      Tag = 666
      Left = 9
      Top = 447
      Width = 268
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        23.812500000000000000
        1182.687500000000000000
        709.083333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText16: TQRDBText
      Tag = 666
      Left = 11
      Top = 449
      Width = 264
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        29.104166666666670000
        1187.979166666667000000
        698.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape22: TQRShape
      Tag = 666
      Left = 276
      Top = 447
      Width = 98
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        730.250000000000000000
        1182.687500000000000000
        259.291666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText17: TQRDBText
      Tag = 666
      Left = 278
      Top = 449
      Width = 94
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        735.541666666666800000
        1187.979166666667000000
        248.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel23: TQRLabel
      Tag = 666
      Left = 404
      Top = 429
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1068.916666666667000000
        1135.062500000000000000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape23: TQRShape
      Tag = 666
      Left = 404
      Top = 447
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1068.916666666667000000
        1182.687500000000000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText18: TQRDBText
      Tag = 666
      Left = 406
      Top = 449
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1074.208333333333000000
        1187.979166666667000000
        203.729166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MANUFACTURE_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Tag = 666
      Left = 487
      Top = 449
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1288.520833333333000000
        1187.979166666667000000
        97.895833333333320000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel24: TQRLabel
      Tag = 666
      Left = 540
      Top = 429
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1428.750000000000000000
        1135.062500000000000000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape24: TQRShape
      Tag = 666
      Left = 540
      Top = 447
      Width = 72
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1428.750000000000000000
        1182.687500000000000000
        190.500000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText20: TQRDBText
      Tag = 666
      Left = 542
      Top = 449
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1434.041666666667000000
        1187.979166666667000000
        179.916666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_LACK_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText21: TQRDBText
      Tag = 666
      Left = 614
      Top = 449
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1624.541666666667000000
        1187.979166666667000000
        97.895833333333320000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel25: TQRLabel
      Tag = 666
      Left = 668
      Top = 429
      Width = 101
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1767.416666666667000000
        1135.062500000000000000
        267.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1055#1088#1080#1077#1084#1085#1080#1082
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape25: TQRShape
      Tag = 666
      Left = 668
      Top = 447
      Width = 133
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1767.416666666667000000
        1182.687500000000000000
        351.895833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText22: TQRDBText
      Tag = 666
      Left = 670
      Top = 449
      Width = 129
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1772.708333333333000000
        1187.979166666667000000
        341.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SHIPMENT_STORE_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel26: TQRLabel
      Tag = 666
      Left = 812
      Top = 429
      Width = 129
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2148.416666666667000000
        1135.062500000000000000
        341.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1080#1077#1084#1072#1085#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape26: TQRShape
      Tag = 666
      Left = 812
      Top = 447
      Width = 179
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2148.416666666667000000
        1182.687500000000000000
        473.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText23: TQRDBText
      Tag = 666
      Left = 814
      Top = 449
      Width = 175
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2153.708333333333000000
        1187.979166666667000000
        463.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ENTER_SH_STORE_PERIOD'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape27: TQRShape
      Tag = 666
      Left = 996
      Top = 447
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2635.250000000000000000
        1182.687500000000000000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText24: TQRDBText
      Tag = 666
      Left = 998
      Top = 449
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2640.541666666667000000
        1187.979166666667000000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ENTER_SH_STORE_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel27: TQRLabel
      Tag = 666
      Left = 996
      Top = 429
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2635.250000000000000000
        1135.062500000000000000
        74.083333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1088#1079#1088#1074
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape28: TQRShape
      Tag = 666
      Left = 1
      Top = 484
      Width = 694
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        2.645833333333333000
        1280.583333333333000000
        1836.208333333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel28: TQRLabel
      Tag = 666
      Left = 9
      Top = 477
      Width = 147
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1262.062500000000000000
        388.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1048#1085#1078#1077#1085#1077#1088#1080#1085#1075' '#1087#1086' ID '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel29: TQRLabel
      Tag = 666
      Left = 9
      Top = 495
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1309.687500000000000000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1085#1078#1057#1090#1088#1091#1082
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel30: TQRLabel
      Tag = 666
      Left = 9
      Top = 514
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1359.958333333333000000
        39.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #8470
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape29: TQRShape
      Tag = 666
      Left = 25
      Top = 513
      Width = 45
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        66.145833333333320000
        1357.312500000000000000
        119.062500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText25: TQRDBText
      Tag = 666
      Left = 27
      Top = 515
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        71.437500000000000000
        1362.604166666667000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MODEL_SPEC_VERSION_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel31: TQRLabel
      Tag = 666
      Left = 117
      Top = 495
      Width = 131
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        309.562500000000000000
        1309.687500000000000000
        346.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape30: TQRShape
      Tag = 666
      Left = 117
      Top = 513
      Width = 134
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        309.562500000000000000
        1357.312500000000000000
        354.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText26: TQRDBText
      Tag = 666
      Left = 119
      Top = 515
      Width = 130
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        314.854166666666700000
        1362.604166666667000000
        343.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MODEL_SPEC_MODEL_VARIANT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel32: TQRLabel
      Tag = 666
      Left = 259
      Top = 495
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        685.270833333333300000
        1309.687500000000000000
        66.145833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel33: TQRLabel
      Tag = 666
      Left = 301
      Top = 495
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        796.395833333333300000
        1309.687500000000000000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1073#1077#1084' '#1056#1072#1079#1088'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel34: TQRLabel
      Tag = 666
      Left = 385
      Top = 495
      Width = 129
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1018.645833333333000000
        1309.687500000000000000
        341.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1048#1085#1078#1077#1085#1077#1088' '#1052#1054#1044#1045#1083'-'#1080#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape31: TQRShape
      Tag = 666
      Left = 259
      Top = 513
      Width = 33
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        685.270833333333200000
        1357.312500000000000000
        87.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText27: TQRDBText
      Tag = 666
      Left = 261
      Top = 515
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        690.562500000000000000
        1362.604166666667000000
        76.729166666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'MODEL_OPERATIONS_STATUS_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape32: TQRShape
      Tag = 666
      Left = 300
      Top = 513
      Width = 75
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        793.750000000000000000
        1357.312500000000000000
        198.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText28: TQRDBText
      Tag = 666
      Left = 302
      Top = 515
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        799.041666666666800000
        1362.604166666667000000
        187.854166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MODEL_DEVELOPMENT_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape33: TQRShape
      Tag = 666
      Left = 384
      Top = 513
      Width = 75
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1016.000000000000000000
        1357.312500000000000000
        198.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText29: TQRDBText
      Tag = 666
      Left = 386
      Top = 515
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1021.291666666667000000
        1362.604166666667000000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'OKIDU_EMPLOYEE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape34: TQRShape
      Tag = 666
      Left = 458
      Top = 513
      Width = 230
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1211.791666666667000000
        1357.312500000000000000
        608.541666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText30: TQRDBText
      Tag = 666
      Left = 460
      Top = 515
      Width = 226
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1217.083333333333000000
        1362.604166666667000000
        597.958333333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'OKIDU_EMPLOYEE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape35: TQRShape
      Tag = 666
      Left = 701
      Top = 484
      Width = 338
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1854.729166666667000000
        1280.583333333333000000
        894.291666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel35: TQRLabel
      Tag = 666
      Left = 710
      Top = 477
      Width = 159
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1878.541666666667000000
        1262.062500000000000000
        420.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1048#1079#1087#1086#1083#1079#1074#1072#1085#1077' '#1085#1072' '#1088#1077#1079#1091#1083#1090#1072#1090#1072' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel36: TQRLabel
      Tag = 666
      Left = 711
      Top = 495
      Width = 104
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1881.187500000000000000
        1309.687500000000000000
        275.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape36: TQRShape
      Tag = 666
      Left = 710
      Top = 513
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1878.541666666667000000
        1357.312500000000000000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText31: TQRDBText
      Tag = 666
      Left = 712
      Top = 515
      Width = 128
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1883.833333333333000000
        1362.604166666667000000
        338.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CONSUMER_DEPT_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel37: TQRLabel
      Tag = 666
      Left = 850
      Top = 495
      Width = 126
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2248.958333333333000000
        1309.687500000000000000
        333.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape37: TQRShape
      Tag = 666
      Left = 849
      Top = 513
      Width = 181
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2246.312500000000000000
        1357.312500000000000000
        478.895833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText32: TQRDBText
      Tag = 666
      Left = 851
      Top = 515
      Width = 177
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2251.604166666667000000
        1362.604166666667000000
        468.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_CONSUME_DATES_INTERVAL'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape38: TQRShape
      Tag = 666
      Left = 1
      Top = 550
      Width = 192
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        2.645833333333333000
        1455.208333333333000000
        508.000000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel38: TQRLabel
      Tag = 666
      Left = 9
      Top = 543
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1436.687500000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape39: TQRShape
      Tag = 666
      Left = 201
      Top = 550
      Width = 424
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        531.812500000000000000
        1455.208333333333000000
        1121.833333333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel39: TQRLabel
      Tag = 666
      Left = 209
      Top = 543
      Width = 254
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        552.979166666666700000
        1436.687500000000000000
        672.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' 1-'#1074#1080' '#1056#1077#1076' ('#1042#1057'1) '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel40: TQRLabel
      Tag = 666
      Left = 209
      Top = 562
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        552.979166666666700000
        1486.958333333333000000
        82.020833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape40: TQRShape
      Tag = 666
      Left = 208
      Top = 580
      Width = 93
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        550.333333333333300000
        1534.583333333333000000
        246.062500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText33: TQRDBText
      Tag = 666
      Left = 210
      Top = 582
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        555.625000000000000000
        1539.875000000000000000
        235.479166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PLANNED_INVESTED_SEC_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel41: TQRLabel
      Tag = 666
      Left = 301
      Top = 562
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        796.395833333333300000
        1486.958333333333000000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1095#1077#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape41: TQRShape
      Tag = 666
      Left = 300
      Top = 580
      Width = 93
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        793.750000000000000000
        1534.583333333333000000
        246.062500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText34: TQRDBText
      Tag = 666
      Left = 302
      Top = 582
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        799.041666666666800000
        1539.875000000000000000
        235.479166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'ACCOUNT_INVESTED_SEC_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel42: TQRLabel
      Tag = 666
      Left = 457
      Top = 562
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1209.145833333333000000
        1486.958333333333000000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape42: TQRShape
      Tag = 666
      Left = 456
      Top = 580
      Width = 107
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1206.500000000000000000
        1534.583333333333000000
        283.104166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText35: TQRDBText
      Tag = 666
      Left = 458
      Top = 582
      Width = 103
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1211.791666666667000000
        1539.875000000000000000
        272.520833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_INVESTED_VALUE_DIFF_REPORT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText36: TQRDBText
      Tag = 666
      Left = 565
      Top = 582
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1494.895833333333000000
        1539.875000000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_INVESTED_VALUE_DIFF_MEASURE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape43: TQRShape
      Tag = 666
      Left = 8
      Top = 580
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        21.166666666666670000
        1534.583333333333000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText37: TQRDBText
      Tag = 666
      Left = 10
      Top = 582
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        1539.875000000000000000
        203.729166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRIORITY_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape44: TQRShape
      Tag = 666
      Left = 635
      Top = 550
      Width = 404
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1680.104166666667000000
        1455.208333333333000000
        1068.916666666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel43: TQRLabel
      Tag = 666
      Left = 641
      Top = 543
      Width = 125
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1695.979166666667000000
        1436.687500000000000000
        330.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1085#1072' ID '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape45: TQRShape
      Tag = 666
      Left = 643
      Top = 580
      Width = 107
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1701.270833333333000000
        1534.583333333333000000
        283.104166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText38: TQRDBText
      Tag = 666
      Left = 645
      Top = 582
      Width = 103
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1706.562500000000000000
        1539.875000000000000000
        272.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'IS_WASTE_COMPENSATING_ORDER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object lblWastingSale: TQRLabel
      Tag = 666
      Left = 854
      Top = 558
      Width = 101
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2259.541666666667000000
        1476.375000000000000000
        267.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ID '#1054#1055#1042' '#1054#1089#1085#1086#1074#1077#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object shpWastingSaleBranch: TQRShape
      Tag = 666
      Left = 858
      Top = 580
      Width = 87
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2270.125000000000000000
        1534.583333333333000000
        230.187500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object txtWastingSaleBranch: TQRDBText
      Tag = 666
      Left = 860
      Top = 582
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2275.416666666667000000
        1539.875000000000000000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_WASTING_SALE_BRANCH_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object shpWastingSaleNo: TQRShape
      Tag = 666
      Left = 944
      Top = 580
      Width = 87
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2497.666666666667000000
        1534.583333333333000000
        230.187500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object txtWastingSaleNo: TQRDBText
      Tag = 666
      Left = 946
      Top = 582
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2502.958333333333000000
        1539.875000000000000000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'WASTING_SALE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape48: TQRShape
      Tag = 666
      Left = 1
      Top = 616
      Width = 280
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        2.645833333333333000
        1629.833333333333000000
        740.833333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel45: TQRLabel
      Tag = 666
      Left = 9
      Top = 609
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1611.312500000000000000
        251.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1044#1072#1085#1085#1080' '#1079#1072' '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape49: TQRShape
      Tag = 666
      Left = 8
      Top = 645
      Width = 118
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        21.166666666666670000
        1706.562500000000000000
        312.208333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText41: TQRDBText
      Tag = 666
      Left = 10
      Top = 647
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        1711.854166666667000000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CREATE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel46: TQRLabel
      Tag = 666
      Left = 9
      Top = 627
      Width = 115
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        1658.937500000000000000
        304.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1098#1079#1076#1072#1074#1072#1085#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape50: TQRShape
      Tag = 666
      Left = 133
      Top = 617
      Width = 8
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        351.895833333333300000
        1632.479166666667000000
        21.166666666666670000)
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRShape51: TQRShape
      Tag = 666
      Left = 150
      Top = 645
      Width = 118
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        396.875000000000000000
        1706.562500000000000000
        312.208333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText42: TQRDBText
      Tag = 666
      Left = 152
      Top = 647
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        402.166666666666700000
        1711.854166666667000000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_LAST_CHANGE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel47: TQRLabel
      Tag = 666
      Left = 151
      Top = 627
      Width = 115
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        399.520833333333300000
        1658.937500000000000000
        304.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1085#1072' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape53: TQRShape
      Tag = 666
      Left = 293
      Top = 616
      Width = 198
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        775.229166666666800000
        1629.833333333333000000
        523.875000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel49: TQRLabel
      Tag = 666
      Left = 301
      Top = 609
      Width = 146
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        796.395833333333300000
        1611.312500000000000000
        386.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1057#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape54: TQRShape
      Tag = 666
      Left = 301
      Top = 645
      Width = 118
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        796.395833333333200000
        1706.562500000000000000
        312.208333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText44: TQRDBText
      Tag = 666
      Left = 303
      Top = 647
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        801.687500000000000000
        1711.854166666667000000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'TRANSIENT_STATUS_NAME'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel50: TQRLabel
      Tag = 666
      Left = 428
      Top = 627
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1132.416666666667000000
        1658.937500000000000000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape55: TQRShape
      Tag = 666
      Left = 427
      Top = 645
      Width = 55
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1129.770833333333000000
        1706.562500000000000000
        145.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText45: TQRDBText
      Tag = 666
      Left = 429
      Top = 647
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1135.062500000000000000
        1711.854166666667000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'WORKDAYS_TO_EXIST'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel51: TQRLabel
      Tag = 666
      Left = 79
      Top = 495
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        209.020833333333300000
        1309.687500000000000000
        71.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1057#1071
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape56: TQRShape
      Tag = 666
      Left = 77
      Top = 513
      Width = 33
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        203.729166666666700000
        1357.312500000000000000
        87.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText46: TQRDBText
      Tag = 666
      Left = 79
      Top = 515
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        209.020833333333300000
        1362.604166666667000000
        76.729166666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_STRUCT_STATUS'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText47: TQRDBText
      Tag = 666
      Left = 396
      Top = 582
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1047.750000000000000000
        1539.875000000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_SECONDARY_CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape46: TQRShape
      Tag = 666
      Left = 749
      Top = 580
      Width = 32
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1981.729166666667000000
        1534.583333333333000000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText39: TQRDBText
      Tag = 666
      Left = 751
      Top = 582
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1987.020833333333000000
        1539.875000000000000000
        74.083333333333320000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'HAS_WASTE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel44: TQRLabel
      Tag = 666
      Left = 750
      Top = 562
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1984.375000000000000000
        1486.958333333333000000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1041#1083#1086#1082'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape57: TQRShape
      Tag = 666
      Left = 935
      Top = 381
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2473.854166666667000000
        1008.062500000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText48: TQRDBText
      Tag = 666
      Left = 937
      Top = 383
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2479.145833333333000000
        1013.354166666667000000
        68.791666666666680000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'REAL_PRODUCTION_WORKDAYS'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel53: TQRLabel
      Tag = 666
      Left = 880
      Top = 366
      Width = 9
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2328.333333333333000000
        968.375000000000000000
        23.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1040
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 8
    end
    object QRShape58: TQRShape
      Tag = 666
      Left = 100
      Top = 580
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        264.583333333333300000
        1534.583333333333000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText49: TQRDBText
      Tag = 666
      Left = 102
      Top = 582
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        269.875000000000000000
        1539.875000000000000000
        209.020833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_WORK_PRIORITY_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel54: TQRLabel
      Tag = 666
      Left = 8
      Top = 562
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        1486.958333333333000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1089#1085#1086#1074#1077#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel55: TQRLabel
      Tag = 666
      Left = 101
      Top = 562
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        1486.958333333333000000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1077#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape52: TQRShape
      Left = 0
      Top = 32
      Width = 353
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        0.000000000000000000
        84.666666666666680000
        933.979166666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel48: TQRLabel
      Left = 9
      Top = 25
      Width = 209
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        66.145833333333330000
        552.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1054#1073#1086#1089#1086#1073#1077#1085' '#1044#1080#1072#1083#1086#1075' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1054#1044#1050') '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel56: TQRLabel
      Left = 51
      Top = 42
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        134.937500000000000000
        111.125000000000000000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1043#1083'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape59: TQRShape
      Left = 50
      Top = 61
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        132.291666666666700000
        161.395833333333300000
        164.041666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText43: TQRDBText
      Left = 52
      Top = 63
      Width = 58
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        137.583333333333300000
        166.687500000000000000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_REQUEST_BRANCH_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel57: TQRLabel
      Left = 8
      Top = 42
      Width = 22
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        111.125000000000000000
        58.208333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1080#1087
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape60: TQRShape
      Left = 7
      Top = 61
      Width = 35
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        18.520833333333330000
        161.395833333333300000
        92.604166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText50: TQRDBText
      Left = 9
      Top = 63
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        166.687500000000000000
        82.020833333333320000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_DEAL_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape61: TQRShape
      Left = 120
      Top = 61
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        317.500000000000000000
        161.395833333333300000
        164.041666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText51: TQRDBText
      Left = 122
      Top = 63
      Width = 58
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        322.791666666666700000
        166.687500000000000000
        153.458333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'REQUEST_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel58: TQRLabel
      Left = 121
      Top = 42
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        320.145833333333300000
        111.125000000000000000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1044#1050' No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape62: TQRShape
      Left = 190
      Top = 61
      Width = 35
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        502.708333333333300000
        161.395833333333300000
        92.604166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText52: TQRDBText
      Left = 192
      Top = 63
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        508.000000000000000000
        166.687500000000000000
        82.020833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'REQUEST_LINE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel59: TQRLabel
      Left = 191
      Top = 42
      Width = 17
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        505.354166666666700000
        111.125000000000000000
        44.979166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape63: TQRShape
      Left = 233
      Top = 61
      Width = 112
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        616.479166666666800000
        161.395833333333300000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText53: TQRDBText
      Left = 235
      Top = 63
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        621.770833333333200000
        166.687500000000000000
        285.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CLIENT_REQUEST_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel60: TQRLabel
      Left = 234
      Top = 42
      Width = 106
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        619.125000000000000000
        111.125000000000000000
        280.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1072#1088#1090#1085'. '#1086#1079#1085#1072#1095#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape64: TQRShape
      Left = 360
      Top = 32
      Width = 353
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        952.500000000000000000
        84.666666666666680000
        933.979166666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel61: TQRLabel
      Left = 369
      Top = 25
      Width = 218
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        976.312500000000000000
        66.145833333333330000
        576.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055') '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel62: TQRLabel
      Left = 468
      Top = 42
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1238.250000000000000000
        111.125000000000000000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1043#1083'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape65: TQRShape
      Left = 467
      Top = 61
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1235.604166666667000000
        161.395833333333300000
        164.041666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText54: TQRDBText
      Left = 469
      Top = 63
      Width = 58
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1240.895833333333000000
        166.687500000000000000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_SALE_BRANCH_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel63: TQRLabel
      Left = 425
      Top = 42
      Width = 22
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1124.479166666667000000
        111.125000000000000000
        58.208333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1080#1087
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape66: TQRShape
      Left = 424
      Top = 61
      Width = 35
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1121.833333333333000000
        161.395833333333300000
        92.604166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText55: TQRDBText
      Left = 426
      Top = 63
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1127.125000000000000000
        166.687500000000000000
        82.020833333333320000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_DEAL_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape67: TQRShape
      Left = 537
      Top = 61
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1420.812500000000000000
        161.395833333333300000
        164.041666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText56: TQRDBText
      Left = 539
      Top = 63
      Width = 58
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1426.104166666667000000
        166.687500000000000000
        153.458333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel64: TQRLabel
      Left = 538
      Top = 42
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1423.458333333333000000
        111.125000000000000000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1055#1055' No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape68: TQRShape
      Left = 366
      Top = 61
      Width = 50
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        968.375000000000000000
        161.395833333333300000
        132.291666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText57: TQRDBText
      Left = 368
      Top = 63
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        973.666666666666800000
        166.687500000000000000
        121.708333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MIN_SALE_SHIPMENT_STATE_TEXT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel65: TQRLabel
      Left = 367
      Top = 42
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        971.020833333333300000
        111.125000000000000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel66: TQRLabel
      Left = 609
      Top = 42
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1611.312500000000000000
        111.125000000000000000
        66.145833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape69: TQRShape
      Left = 608
      Top = 61
      Width = 35
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1608.666666666667000000
        161.395833333333300000
        92.604166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText58: TQRDBText
      Left = 610
      Top = 63
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1613.958333333333000000
        166.687500000000000000
        82.020833333333320000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel67: TQRLabel
      Left = 652
      Top = 42
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1725.083333333333000000
        111.125000000000000000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1080#1086#1088'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape70: TQRShape
      Left = 651
      Top = 61
      Width = 55
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1722.437500000000000000
        161.395833333333300000
        145.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText59: TQRDBText
      Left = 653
      Top = 63
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1727.729166666667000000
        166.687500000000000000
        134.937500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRIORITY_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape71: TQRShape
      Left = 720
      Top = 32
      Width = 321
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1905.000000000000000000
        84.666666666666680000
        849.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel68: TQRLabel
      Left = 729
      Top = 25
      Width = 50
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1928.812500000000000000
        66.145833333333330000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel69: TQRLabel
      Left = 727
      Top = 42
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1923.520833333333000000
        111.125000000000000000
        63.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1086#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape72: TQRShape
      Left = 726
      Top = 61
      Width = 55
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1920.875000000000000000
        161.395833333333300000
        145.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText60: TQRDBText
      Left = 728
      Top = 63
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1926.166666666667000000
        166.687500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CLIENT_COMPANY_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel70: TQRLabel
      Left = 781
      Top = 42
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2066.395833333333000000
        111.125000000000000000
        235.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape73: TQRShape
      Left = 780
      Top = 61
      Width = 199
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2063.750000000000000000
        161.395833333333300000
        526.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText61: TQRDBText
      Left = 782
      Top = 63
      Width = 195
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2069.041666666667000000
        166.687500000000000000
        515.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CLIENT_SHORT_NAME'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel71: TQRLabel
      Left = 979
      Top = 42
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2590.270833333333000000
        111.125000000000000000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1098#1088#1078#1072#1074#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape74: TQRShape
      Left = 978
      Top = 61
      Width = 55
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2587.625000000000000000
        161.395833333333300000
        145.520833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText62: TQRDBText
      Left = 980
      Top = 63
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2592.916666666667000000
        166.687500000000000000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CLIENT_COUNTRY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape75: TQRShape
      Left = 608
      Top = 100
      Width = 433
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1608.666666666667000000
        264.583333333333300000
        1145.645833333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel72: TQRLabel
      Left = 617
      Top = 93
      Width = 123
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1632.479166666667000000
        246.062500000000000000
        325.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '#1086#1090' '#1044#1080#1072#1083#1086#1075' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape76: TQRShape
      Left = 0
      Top = 100
      Width = 601
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        0.000000000000000000
        264.583333333333300000
        1590.145833333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel73: TQRLabel
      Left = 9
      Top = 93
      Width = 145
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        246.062500000000000000
        383.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' %ProductClassName% '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel74: TQRLabel
      Tag = 666
      Left = 0
      Top = 321
      Width = 1049
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        849.312500000000000000
        2775.479166666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1051#1080#1085#1077#1081#1085#1086' '#1089#1074#1098#1088#1079#1072#1085' '#1089' '#1055#1088#1086#1076#1072#1078#1073#1072#1090#1072' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1042#1098#1090#1088#1077#1096#1077#1085' ('#1054#1055#1042')'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 12
    end
    object QRLabel75: TQRLabel
      Left = 8
      Top = 110
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        291.041666666666700000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape77: TQRShape
      Left = 7
      Top = 129
      Width = 290
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        18.520833333333330000
        341.312500000000000000
        767.291666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText63: TQRDBText
      Left = 9
      Top = 131
      Width = 286
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        346.604166666666700000
        756.708333333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape78: TQRShape
      Left = 300
      Top = 129
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        793.750000000000000000
        341.312500000000000000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText64: TQRDBText
      Left = 302
      Top = 131
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        799.041666666666800000
        346.604166666666700000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PRODUCT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel76: TQRLabel
      Left = 301
      Top = 110
      Width = 59
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        796.395833333333300000
        291.041666666666700000
        156.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'id '#1094#1080#1092#1088#1086#1074
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object rctClientProductSignature: TQRShape
      Left = 396
      Top = 129
      Width = 198
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1047.750000000000000000
        341.312500000000000000
        523.875000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblClientProductSignatureData: TQRDBText
      Left = 398
      Top = 131
      Width = 194
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1053.041666666667000000
        346.604166666666700000
        513.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CLIENT_PRODUCT_SIGNATURE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object lblClientProductSignature: TQRLabel
      Left = 397
      Top = 110
      Width = 190
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        291.041666666666700000
        502.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1072#1088#1090#1085#1100#1086#1088#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape80: TQRShape
      Left = 0
      Top = 168
      Width = 1041
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        0.000000000000000000
        444.500000000000000000
        2754.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel78: TQRLabel
      Left = 9
      Top = 160
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        423.333333333333300000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055#1042' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel79: TQRLabel
      Left = 8
      Top = 177
      Width = 131
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        468.312500000000000000
        346.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape81: TQRShape
      Left = 7
      Top = 196
      Width = 139
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        18.520833333333330000
        518.583333333333300000
        367.770833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText66: TQRDBText
      Left = 9
      Top = 198
      Width = 135
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        523.875000000000000000
        357.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SHIPMENT_STORE_IDENTIFIER'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel80: TQRLabel
      Left = 153
      Top = 177
      Width = 106
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        404.812500000000000000
        468.312500000000000000
        280.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape82: TQRShape
      Left = 152
      Top = 196
      Width = 111
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        402.166666666666700000
        518.583333333333300000
        293.687500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText67: TQRDBText
      Left = 154
      Top = 198
      Width = 107
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        407.458333333333300000
        523.875000000000000000
        283.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel81: TQRLabel
      Left = 270
      Top = 177
      Width = 105
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        714.375000000000000000
        468.312500000000000000
        277.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055' '#1055#1086#1083#1091#1095#1072#1090#1077#1083
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape83: TQRShape
      Left = 269
      Top = 196
      Width = 139
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        711.729166666666800000
        518.583333333333300000
        367.770833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText68: TQRDBText
      Left = 271
      Top = 198
      Width = 135
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        717.020833333333200000
        523.875000000000000000
        357.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'RECEIVE_PLACE_NAME'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel82: TQRLabel
      Left = 415
      Top = 177
      Width = 120
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1098.020833333333000000
        468.312500000000000000
        317.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075'. '#1076#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape84: TQRShape
      Left = 414
      Top = 196
      Width = 128
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1095.375000000000000000
        518.583333333333300000
        338.666666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText69: TQRDBText
      Left = 416
      Top = 198
      Width = 124
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        523.875000000000000000
        328.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'RECEIVE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel83: TQRLabel
      Left = 915
      Top = 177
      Width = 110
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2420.937500000000000000
        468.312500000000000000
        291.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1088#1075'. '#1085#1072' '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape85: TQRShape
      Left = 914
      Top = 196
      Width = 119
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2418.291666666667000000
        518.583333333333300000
        314.854166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText70: TQRDBText
      Left = 916
      Top = 198
      Width = 115
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2423.583333333333000000
        523.875000000000000000
        304.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'IS_VENDOR_TRANSPORT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel84: TQRLabel
      Left = 790
      Top = 177
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2090.208333333333000000
        468.312500000000000000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1082#1086#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape86: TQRShape
      Left = 789
      Top = 196
      Width = 119
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2087.562500000000000000
        518.583333333333300000
        314.854166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText71: TQRDBText
      Left = 791
      Top = 198
      Width = 115
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2092.854166666667000000
        523.875000000000000000
        304.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SHIPMENT_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape87: TQRShape
      Left = 0
      Top = 236
      Width = 721
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        0.000000000000000000
        624.416666666666800000
        1907.645833333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel85: TQRLabel
      Left = 9
      Top = 229
      Width = 160
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        605.895833333333300000
        423.333333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape88: TQRShape
      Left = 728
      Top = 236
      Width = 313
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1926.166666666667000000
        624.416666666666800000
        828.145833333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel86: TQRLabel
      Left = 737
      Top = 229
      Width = 144
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        605.895833333333300000
        381.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel87: TQRLabel
      Left = 736
      Top = 245
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1947.333333333333000000
        648.229166666666700000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1045#1076'. '#1094#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape89: TQRShape
      Left = 735
      Top = 264
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1944.687500000000000000
        698.500000000000000000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText72: TQRDBText
      Left = 737
      Top = 266
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        703.791666666666800000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel88: TQRLabel
      Left = 920
      Top = 245
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2434.166666666667000000
        648.229166666666700000
        182.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1089#1090'-'#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape90: TQRShape
      Left = 919
      Top = 264
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2431.520833333333000000
        698.500000000000000000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText73: TQRDBText
      Left = 921
      Top = 266
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2436.812500000000000000
        703.791666666666800000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText74: TQRDBText
      Left = 820
      Top = 266
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2169.583333333333000000
        703.791666666666800000
        76.729166666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel89: TQRLabel
      Left = 8
      Top = 245
      Width = 50
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        648.229166666666700000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073#1086#1090#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape91: TQRShape
      Left = 7
      Top = 264
      Width = 98
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        18.520833333333330000
        698.500000000000000000
        259.291666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText76: TQRDBText
      Left = 9
      Top = 266
      Width = 94
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        703.791666666666800000
        248.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel90: TQRLabel
      Left = 144
      Top = 245
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        648.229166666666700000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape92: TQRShape
      Left = 143
      Top = 264
      Width = 98
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        378.354166666666700000
        698.500000000000000000
        259.291666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText77: TQRDBText
      Left = 145
      Top = 266
      Width = 94
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        383.645833333333300000
        703.791666666666800000
        248.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'ACCOUNT_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel91: TQRLabel
      Left = 280
      Top = 245
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        740.833333333333300000
        648.229166666666700000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape93: TQRShape
      Left = 279
      Top = 264
      Width = 98
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        738.187500000000000000
        698.500000000000000000
        259.291666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText78: TQRDBText
      Left = 281
      Top = 266
      Width = 94
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        743.479166666666800000
        703.791666666666800000
        248.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_LACK_QUANTITY_PERCENT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText79: TQRDBText
      Left = 107
      Top = 266
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        283.104166666666700000
        703.791666666666800000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText80: TQRDBText
      Left = 243
      Top = 266
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        642.937500000000000000
        703.791666666666800000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ACCOUNT_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText81: TQRDBText
      Left = 379
      Top = 266
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1002.770833333333000000
        703.791666666666800000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_PERCENT_TEXT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText82: TQRDBText
      Left = 614
      Top = 115
      Width = 419
      Height = 38
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        100.541666666666700000
        1624.541666666667000000
        304.270833333333400000
        1108.604166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'NOTES'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel92: TQRLabel
      Left = 850
      Top = 266
      Width = 5
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2248.958333333333000000
        703.791666666666700000
        13.229166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '/'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText75: TQRDBText
      Left = 1004
      Top = 266
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2656.416666666667000000
        703.791666666666800000
        76.729166666666680000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText83: TQRDBText
      Left = 857
      Top = 266
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2267.479166666667000000
        703.791666666666800000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape293: TQRShape
      Tag = 666
      Left = 504
      Top = 616
      Width = 534
      Height = 57
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        150.812500000000000000
        1333.500000000000000000
        1629.833333333333000000
        1412.875000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel203: TQRLabel
      Tag = 666
      Left = 513
      Top = 609
      Width = 61
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        1357.312500000000000000
        1611.312500000000000000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ' '#1041#1077#1083#1077#1078#1082#1080' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText173: TQRDBText
      Tag = 666
      Left = 510
      Top = 631
      Width = 520
      Height = 38
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        100.541666666666700000
        1349.375000000000000000
        1669.520833333333000000
        1375.833333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'NOTES'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
  end
  object bndColumnHeader: TQRBand [2]
    Left = 38
    Top = 777
    Width = 1047
    Height = 224
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      592.666666666666700000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbColumnHeader
    object QRShape95: TQRShape
      Tag = 1
      Left = 1
      Top = 31
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2.645833333333333000
        82.020833333333340000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel94: TQRLabel
      Tag = 1
      Left = 4
      Top = 49
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        129.645833333333300000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape96: TQRShape
      Tag = 1
      Left = 40
      Top = 31
      Width = 58
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        105.833333333333300000
        82.020833333333340000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel95: TQRLabel
      Tag = 1
      Left = 43
      Top = 49
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        129.645833333333300000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape97: TQRShape
      Tag = 1
      Left = 97
      Top = 31
      Width = 169
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        256.645833333333400000
        82.020833333333340000
        447.145833333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel96: TQRLabel
      Tag = 1
      Left = 100
      Top = 40
      Width = 163
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333400000
        105.833333333333300000
        431.270833333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape98: TQRShape
      Tag = 1
      Left = 97
      Top = 65
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333400000
        171.979166666666700000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel97: TQRLabel
      Tag = 1
      Left = 100
      Top = 67
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333400000
        177.270833333333300000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape47: TQRShape
      Tag = 1
      Left = 182
      Top = 65
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        171.979166666666700000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel98: TQRLabel
      Tag = 1
      Left = 185
      Top = 67
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        489.479166666666600000
        177.270833333333300000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape94: TQRShape
      Tag = 1
      Left = 265
      Top = 31
      Width = 214
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        82.020833333333340000
        566.208333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel99: TQRLabel
      Tag = 1
      Left = 269
      Top = 33
      Width = 207
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        711.729166666666800000
        87.312500000000000000
        547.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape99: TQRShape
      Tag = 1
      Left = 265
      Top = 51
      Width = 86
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        701.145833333333400000
        134.937500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel100: TQRLabel
      Tag = 1
      Left = 268
      Top = 59
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        709.083333333333400000
        156.104166666666700000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape100: TQRShape
      Tag = 1
      Left = 350
      Top = 51
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        926.041666666666800000
        134.937500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel101: TQRLabel
      Tag = 1
      Left = 353
      Top = 53
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        933.979166666666600000
        140.229166666666700000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1079#1088#1074'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape101: TQRShape
      Tag = 1
      Left = 395
      Top = 51
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1045.104166666667000000
        134.937500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel102: TQRLabel
      Tag = 1
      Left = 398
      Top = 59
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1053.041666666667000000
        156.104166666666700000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape102: TQRShape
      Tag = 1
      Left = 478
      Top = 31
      Width = 521
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        82.020833333333340000
        1378.479166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel93: TQRLabel
      Tag = 1
      Left = 482
      Top = 33
      Width = 514
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1275.291666666667000000
        87.312500000000000000
        1359.958333333333000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1060#1072#1082#1090#1091#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape103: TQRShape
      Tag = 1
      Left = 998
      Top = 31
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2640.541666666667000000
        82.020833333333340000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel103: TQRLabel
      Tag = 1
      Left = 1001
      Top = 41
      Width = 34
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        103.187500000000000000
        2648.479166666667000000
        108.479166666666700000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1056'1 %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape104: TQRShape
      Tag = 1
      Left = 478
      Top = 51
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1264.708333333333000000
        134.937500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel104: TQRLabel
      Tag = 1
      Left = 481
      Top = 59
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1272.645833333333000000
        156.104166666666700000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape105: TQRShape
      Tag = 1
      Left = 561
      Top = 51
      Width = 112
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666670000
        1484.312500000000000000
        134.937500000000000000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape106: TQRShape
      Tag = 1
      Left = 672
      Top = 51
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666670000
        1778.000000000000000000
        134.937500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel106: TQRLabel
      Tag = 1
      Left = 564
      Top = 59
      Width = 106
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1492.250000000000000000
        156.104166666666700000
        280.458333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape107: TQRShape
      Tag = 1
      Left = 717
      Top = 51
      Width = 81
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1897.062500000000000000
        134.937500000000000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel107: TQRLabel
      Tag = 1
      Left = 720
      Top = 59
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1905.000000000000000000
        156.104166666666700000
        198.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape108: TQRShape
      Tag = 1
      Left = 952
      Top = 51
      Width = 47
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        2518.833333333333000000
        134.937500000000000000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel108: TQRLabel
      Tag = 1
      Left = 954
      Top = 59
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        156.104166666666700000
        113.770833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1072#1083#1091#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape109: TQRShape
      Tag = 1
      Left = 797
      Top = 51
      Width = 74
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        2108.729166666667000000
        134.937500000000000000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape110: TQRShape
      Tag = 1
      Left = 870
      Top = 51
      Width = 83
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        2301.875000000000000000
        134.937500000000000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel109: TQRLabel
      Tag = 1
      Left = 799
      Top = 53
      Width = 70
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2114.020833333333000000
        140.229166666666700000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel110: TQRLabel
      Tag = 1
      Left = 872
      Top = 53
      Width = 78
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2307.166666666667000000
        140.229166666666700000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel52: TQRLabel
      Tag = 1
      Left = 0
      Top = 9
      Width = 1049
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        23.812500000000000000
        2775.479166666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1103' '#1087#1086' '#1055#1088#1086#1076#1072#1078#1073#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 12
    end
    object QRShape126: TQRShape
      Tag = 2
      Left = 1
      Top = 87
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2.645833333333333000
        230.187500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel111: TQRLabel
      Tag = 2
      Left = 4
      Top = 105
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        277.812500000000000000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape127: TQRShape
      Tag = 2
      Left = 40
      Top = 87
      Width = 58
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        105.833333333333300000
        230.187500000000000000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel112: TQRLabel
      Tag = 2
      Left = 43
      Top = 105
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        277.812500000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape128: TQRShape
      Tag = 2
      Left = 97
      Top = 87
      Width = 238
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333300000
        230.187500000000000000
        629.708333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel113: TQRLabel
      Tag = 2
      Left = 100
      Top = 89
      Width = 232
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        235.479166666666700000
        613.833333333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape132: TQRShape
      Tag = 2
      Left = 97
      Top = 107
      Width = 162
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        256.645833333333300000
        283.104166666666700000
        428.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel114: TQRLabel
      Tag = 2
      Left = 100
      Top = 115
      Width = 156
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        304.270833333333300000
        412.750000000000100000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape133: TQRShape
      Tag = 2
      Left = 258
      Top = 107
      Width = 77
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        682.625000000000000000
        283.104166666666700000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel115: TQRLabel
      Tag = 2
      Left = 261
      Top = 109
      Width = 71
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        690.562500000000000000
        288.395833333333300000
        187.854166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1084' '#1089#1090#1098#1087#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape134: TQRShape
      Tag = 2
      Left = 334
      Top = 87
      Width = 131
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        883.708333333333400000
        230.187500000000000000
        346.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel116: TQRLabel
      Tag = 2
      Left = 338
      Top = 89
      Width = 124
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        894.291666666666800000
        235.479166666666700000
        328.083333333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape135: TQRShape
      Tag = 2
      Left = 334
      Top = 107
      Width = 86
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        883.708333333333400000
        283.104166666666700000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel117: TQRLabel
      Tag = 2
      Left = 337
      Top = 115
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        891.645833333333200000
        304.270833333333300000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape136: TQRShape
      Tag = 2
      Left = 419
      Top = 107
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1108.604166666667000000
        283.104166666666700000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel118: TQRLabel
      Tag = 2
      Left = 422
      Top = 109
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1116.541666666667000000
        288.395833333333300000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape138: TQRShape
      Tag = 2
      Left = 593
      Top = 87
      Width = 406
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1568.979166666667000000
        230.187500000000000000
        1074.208333333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel120: TQRLabel
      Tag = 2
      Left = 597
      Top = 89
      Width = 398
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1579.562500000000000000
        235.479166666666700000
        1053.041666666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1060#1072#1082#1090#1091#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape139: TQRShape
      Tag = 2
      Left = 998
      Top = 87
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2640.541666666667000000
        230.187500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel121: TQRLabel
      Tag = 2
      Left = 1001
      Top = 97
      Width = 34
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        103.187500000000000000
        2648.479166666667000000
        256.645833333333300000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1056'1 %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape140: TQRShape
      Tag = 2
      Left = 593
      Top = 107
      Width = 75
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1568.979166666667000000
        283.104166666666700000
        198.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape142: TQRShape
      Tag = 2
      Left = 667
      Top = 107
      Width = 69
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1764.770833333333000000
        283.104166666666700000
        182.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel124: TQRLabel
      Tag = 2
      Left = 670
      Top = 115
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1772.708333333334000000
        304.270833333333300000
        166.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape143: TQRShape
      Tag = 2
      Left = 735
      Top = 107
      Width = 79
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1944.687500000000000000
        283.104166666666700000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel125: TQRLabel
      Tag = 2
      Left = 738
      Top = 115
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1952.625000000000000000
        304.270833333333300000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape144: TQRShape
      Tag = 2
      Left = 967
      Top = 107
      Width = 32
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2558.520833333333000000
        283.104166666666700000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel126: TQRLabel
      Tag = 2
      Left = 969
      Top = 109
      Width = 28
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.666666666666680000
        2563.812500000000000000
        288.395833333333300000
        74.083333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1072'- '#1083#1091#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape145: TQRShape
      Tag = 2
      Left = 813
      Top = 107
      Width = 74
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2151.062500000000000000
        283.104166666666700000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape146: TQRShape
      Tag = 2
      Left = 886
      Top = 107
      Width = 82
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2344.208333333333000000
        283.104166666666700000
        216.958333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel127: TQRLabel
      Tag = 2
      Left = 815
      Top = 109
      Width = 70
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2156.354166666667000000
        288.395833333333300000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel128: TQRLabel
      Tag = 2
      Left = 888
      Top = 109
      Width = 77
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2349.500000000000000000
        288.395833333333300000
        203.729166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel119: TQRLabel
      Tag = 2
      Left = 595
      Top = 109
      Width = 71
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1574.270833333333000000
        288.395833333333300000
        187.854166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1084' '#1089#1090#1098#1087#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape137: TQRShape
      Tag = 2
      Left = 464
      Top = 87
      Width = 130
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1227.666666666667000000
        230.187500000000000000
        343.958333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel122: TQRLabel
      Tag = 2
      Left = 468
      Top = 89
      Width = 123
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1238.250000000000000000
        235.479166666666700000
        325.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1098#1097#1072#1085#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape147: TQRShape
      Tag = 2
      Left = 464
      Top = 107
      Width = 85
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1227.666666666667000000
        283.104166666666700000
        224.895833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel129: TQRLabel
      Tag = 2
      Left = 467
      Top = 115
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1235.604166666667000000
        304.270833333333300000
        209.020833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape148: TQRShape
      Tag = 2
      Left = 548
      Top = 107
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1449.916666666667000000
        283.104166666666700000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel130: TQRLabel
      Tag = 2
      Left = 551
      Top = 109
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1457.854166666667000000
        288.395833333333300000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape149: TQRShape
      Tag = 3
      Left = 1
      Top = 143
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2.645833333333333000
        378.354166666666700000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel131: TQRLabel
      Tag = 3
      Left = 4
      Top = 161
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        425.979166666666700000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape150: TQRShape
      Tag = 3
      Left = 40
      Top = 143
      Width = 58
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        105.833333333333300000
        378.354166666666700000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel132: TQRLabel
      Tag = 3
      Left = 43
      Top = 161
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        425.979166666666700000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape151: TQRShape
      Tag = 3
      Left = 97
      Top = 143
      Width = 169
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        256.645833333333300000
        378.354166666666700000
        447.145833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel133: TQRLabel
      Tag = 3
      Left = 100
      Top = 152
      Width = 163
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        402.166666666666700000
        431.270833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape152: TQRShape
      Tag = 3
      Left = 97
      Top = 177
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333300000
        468.312500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel134: TQRLabel
      Tag = 3
      Left = 100
      Top = 179
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        473.604166666666700000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape153: TQRShape
      Tag = 3
      Left = 182
      Top = 177
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        468.312500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel135: TQRLabel
      Tag = 3
      Left = 185
      Top = 179
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        489.479166666666700000
        473.604166666666700000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape154: TQRShape
      Tag = 3
      Left = 265
      Top = 143
      Width = 214
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        378.354166666666700000
        566.208333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel136: TQRLabel
      Tag = 3
      Left = 269
      Top = 145
      Width = 207
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        711.729166666666600000
        383.645833333333300000
        547.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape155: TQRShape
      Tag = 3
      Left = 265
      Top = 163
      Width = 86
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        701.145833333333400000
        431.270833333333300000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel137: TQRLabel
      Tag = 3
      Left = 268
      Top = 171
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        709.083333333333400000
        452.437500000000000000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape156: TQRShape
      Tag = 3
      Left = 350
      Top = 163
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        926.041666666666600000
        431.270833333333300000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel138: TQRLabel
      Tag = 3
      Left = 353
      Top = 165
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        933.979166666666600000
        436.562500000000000000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1079#1088#1074'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape157: TQRShape
      Tag = 3
      Left = 395
      Top = 163
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1045.104166666667000000
        431.270833333333300000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel139: TQRLabel
      Tag = 3
      Left = 398
      Top = 171
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1053.041666666667000000
        452.437500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape158: TQRShape
      Tag = 3
      Left = 478
      Top = 143
      Width = 521
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        378.354166666666700000
        1378.479166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel140: TQRLabel
      Tag = 3
      Left = 482
      Top = 145
      Width = 514
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1275.291666666667000000
        383.645833333333300000
        1359.958333333333000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1060#1072#1082#1090#1091#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape159: TQRShape
      Tag = 3
      Left = 998
      Top = 143
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2640.541666666667000000
        378.354166666666700000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel141: TQRLabel
      Tag = 3
      Left = 1001
      Top = 153
      Width = 34
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        103.187500000000000000
        2648.479166666667000000
        404.812500000000000000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1056'1 %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape160: TQRShape
      Tag = 3
      Left = 478
      Top = 163
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1264.708333333333000000
        431.270833333333300000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel142: TQRLabel
      Tag = 3
      Left = 481
      Top = 171
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1272.645833333333000000
        452.437500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape161: TQRShape
      Tag = 3
      Left = 561
      Top = 163
      Width = 112
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666670000
        1484.312500000000000000
        431.270833333333300000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape162: TQRShape
      Tag = 3
      Left = 672
      Top = 163
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666670000
        1778.000000000000000000
        431.270833333333300000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape163: TQRShape
      Tag = 3
      Left = 717
      Top = 163
      Width = 81
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1897.062500000000000000
        431.270833333333300000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel145: TQRLabel
      Tag = 3
      Left = 720
      Top = 171
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1905.000000000000000000
        452.437500000000000000
        198.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape164: TQRShape
      Tag = 3
      Left = 952
      Top = 163
      Width = 47
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2518.833333333333000000
        431.270833333333300000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel146: TQRLabel
      Tag = 3
      Left = 954
      Top = 171
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        452.437500000000000000
        113.770833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1072#1083#1091#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape165: TQRShape
      Tag = 3
      Left = 797
      Top = 163
      Width = 74
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2108.729166666667000000
        431.270833333333300000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape166: TQRShape
      Tag = 3
      Left = 870
      Top = 163
      Width = 83
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2301.875000000000000000
        431.270833333333300000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel147: TQRLabel
      Tag = 3
      Left = 799
      Top = 165
      Width = 70
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2114.020833333333000000
        436.562500000000000000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel148: TQRLabel
      Tag = 3
      Left = 872
      Top = 165
      Width = 78
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2307.166666666667000000
        436.562500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape193: TQRShape
      Tag = 4
      Left = 1
      Top = 199
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2.645833333333333000
        526.520833333333400000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel123: TQRLabel
      Tag = 4
      Left = 4
      Top = 217
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        574.145833333333400000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape194: TQRShape
      Tag = 4
      Left = 40
      Top = 199
      Width = 58
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        105.833333333333300000
        526.520833333333400000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel149: TQRLabel
      Tag = 4
      Left = 43
      Top = 217
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        574.145833333333400000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape195: TQRShape
      Tag = 4
      Left = 97
      Top = 199
      Width = 169
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        256.645833333333400000
        526.520833333333400000
        447.145833333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel150: TQRLabel
      Tag = 4
      Left = 100
      Top = 208
      Width = 163
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333400000
        550.333333333333400000
        431.270833333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape196: TQRShape
      Tag = 4
      Left = 97
      Top = 233
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333400000
        616.479166666666800000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel151: TQRLabel
      Tag = 4
      Left = 100
      Top = 235
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333400000
        621.770833333333400000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape197: TQRShape
      Tag = 4
      Left = 182
      Top = 233
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        616.479166666666800000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel152: TQRLabel
      Tag = 4
      Left = 185
      Top = 235
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        489.479166666666600000
        621.770833333333400000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape198: TQRShape
      Tag = 4
      Left = 265
      Top = 199
      Width = 214
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        526.520833333333400000
        566.208333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel153: TQRLabel
      Tag = 4
      Left = 269
      Top = 201
      Width = 207
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        711.729166666666800000
        531.812500000000000000
        547.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape199: TQRShape
      Tag = 4
      Left = 265
      Top = 219
      Width = 86
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        701.145833333333400000
        579.437500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel154: TQRLabel
      Tag = 4
      Left = 268
      Top = 227
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        709.083333333333400000
        600.604166666666800000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape200: TQRShape
      Tag = 4
      Left = 350
      Top = 219
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        926.041666666666800000
        579.437500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel155: TQRLabel
      Tag = 4
      Left = 353
      Top = 221
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        933.979166666666600000
        584.729166666666800000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape201: TQRShape
      Tag = 4
      Left = 395
      Top = 219
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1045.104166666667000000
        579.437500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel156: TQRLabel
      Tag = 4
      Left = 398
      Top = 227
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1053.041666666667000000
        600.604166666666800000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape202: TQRShape
      Tag = 4
      Left = 478
      Top = 199
      Width = 521
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        526.520833333333400000
        1378.479166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel157: TQRLabel
      Tag = 4
      Left = 482
      Top = 201
      Width = 514
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1275.291666666667000000
        531.812500000000000000
        1359.958333333333000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1060#1072#1082#1090#1091#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape203: TQRShape
      Tag = 4
      Left = 998
      Top = 199
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2640.541666666667000000
        526.520833333333400000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel158: TQRLabel
      Tag = 4
      Left = 1001
      Top = 209
      Width = 34
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        103.187500000000000000
        2648.479166666667000000
        552.979166666666800000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1056'1 %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape204: TQRShape
      Tag = 4
      Left = 478
      Top = 219
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1264.708333333333000000
        579.437500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel159: TQRLabel
      Tag = 4
      Left = 481
      Top = 227
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1272.645833333333000000
        600.604166666666800000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape205: TQRShape
      Tag = 4
      Left = 561
      Top = 219
      Width = 79
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1484.312500000000000000
        579.437500000000000000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel160: TQRLabel
      Tag = 4
      Left = 564
      Top = 221
      Width = 73
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1492.250000000000000000
        584.729166666666800000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1088#1086#1092#1086#1088#1084#1072' '#1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape206: TQRShape
      Tag = 4
      Left = 639
      Top = 219
      Width = 79
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1690.687500000000000000
        579.437500000000000000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel161: TQRLabel
      Tag = 4
      Left = 642
      Top = 227
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1698.625000000000000000
        600.604166666666800000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape207: TQRShape
      Tag = 4
      Left = 717
      Top = 219
      Width = 81
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        1897.062500000000000000
        579.437500000000000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel162: TQRLabel
      Tag = 4
      Left = 720
      Top = 227
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1905.000000000000000000
        600.604166666666800000
        198.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape208: TQRShape
      Tag = 4
      Left = 952
      Top = 219
      Width = 47
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        2518.833333333333000000
        579.437500000000000000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel163: TQRLabel
      Tag = 4
      Left = 954
      Top = 227
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        600.604166666666800000
        113.770833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1072#1083#1091#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape209: TQRShape
      Tag = 4
      Left = 797
      Top = 219
      Width = 74
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        2108.729166666667000000
        579.437500000000000000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape210: TQRShape
      Tag = 4
      Left = 870
      Top = 219
      Width = 83
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666680000
        2301.875000000000000000
        579.437500000000000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel164: TQRLabel
      Tag = 4
      Left = 799
      Top = 221
      Width = 70
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2114.020833333333000000
        584.729166666666800000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel165: TQRLabel
      Tag = 4
      Left = 872
      Top = 221
      Width = 78
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2307.166666666667000000
        584.729166666666800000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape211: TQRShape
      Tag = 5
      Left = 1
      Top = 255
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2.645833333333333000
        674.687500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel166: TQRLabel
      Tag = 5
      Left = 4
      Top = 273
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        722.312500000000000000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape212: TQRShape
      Tag = 5
      Left = 40
      Top = 255
      Width = 58
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        105.833333333333300000
        674.687500000000000000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel167: TQRLabel
      Tag = 5
      Left = 43
      Top = 273
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        722.312500000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape213: TQRShape
      Tag = 5
      Left = 97
      Top = 255
      Width = 238
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333300000
        674.687500000000000000
        629.708333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel168: TQRLabel
      Tag = 5
      Left = 100
      Top = 257
      Width = 232
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        679.979166666666800000
        613.833333333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape214: TQRShape
      Tag = 5
      Left = 97
      Top = 275
      Width = 162
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        256.645833333333300000
        727.604166666666800000
        428.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel169: TQRLabel
      Tag = 5
      Left = 100
      Top = 283
      Width = 156
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        748.770833333333400000
        412.750000000000100000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape215: TQRShape
      Tag = 5
      Left = 258
      Top = 275
      Width = 77
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        682.625000000000000000
        727.604166666666800000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel170: TQRLabel
      Tag = 5
      Left = 261
      Top = 277
      Width = 71
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        690.562500000000000000
        732.895833333333400000
        187.854166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1084' '#1089#1090#1098#1087#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape216: TQRShape
      Tag = 5
      Left = 334
      Top = 255
      Width = 131
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        883.708333333333400000
        674.687500000000000000
        346.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel171: TQRLabel
      Tag = 5
      Left = 338
      Top = 257
      Width = 124
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        894.291666666666800000
        679.979166666666800000
        328.083333333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape217: TQRShape
      Tag = 5
      Left = 334
      Top = 275
      Width = 86
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        883.708333333333400000
        727.604166666666800000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel172: TQRLabel
      Tag = 5
      Left = 337
      Top = 283
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        891.645833333333200000
        748.770833333333400000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape218: TQRShape
      Tag = 5
      Left = 419
      Top = 275
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1108.604166666667000000
        727.604166666666800000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel173: TQRLabel
      Tag = 5
      Left = 422
      Top = 277
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1116.541666666667000000
        732.895833333333400000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape219: TQRShape
      Tag = 5
      Left = 593
      Top = 255
      Width = 406
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1568.979166666667000000
        674.687500000000000000
        1074.208333333333000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel174: TQRLabel
      Tag = 5
      Left = 597
      Top = 257
      Width = 398
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1579.562500000000000000
        679.979166666666800000
        1053.041666666667000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1060#1072#1082#1090#1091#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape220: TQRShape
      Tag = 5
      Left = 998
      Top = 255
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2640.541666666667000000
        674.687500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel175: TQRLabel
      Tag = 5
      Left = 1001
      Top = 265
      Width = 34
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        103.187500000000000000
        2648.479166666667000000
        701.145833333333400000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1056'1 %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape221: TQRShape
      Tag = 5
      Left = 593
      Top = 275
      Width = 75
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1568.979166666667000000
        727.604166666666800000
        198.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape222: TQRShape
      Tag = 5
      Left = 667
      Top = 275
      Width = 69
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1764.770833333333000000
        727.604166666666800000
        182.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel176: TQRLabel
      Tag = 5
      Left = 670
      Top = 283
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1772.708333333334000000
        748.770833333333400000
        166.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape223: TQRShape
      Tag = 5
      Left = 735
      Top = 275
      Width = 79
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1944.687500000000000000
        727.604166666666800000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel177: TQRLabel
      Tag = 5
      Left = 738
      Top = 283
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1952.625000000000000000
        748.770833333333400000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape224: TQRShape
      Tag = 5
      Left = 967
      Top = 275
      Width = 32
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2558.520833333333000000
        727.604166666666800000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel178: TQRLabel
      Tag = 5
      Left = 969
      Top = 277
      Width = 28
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        84.666666666666680000
        2563.812500000000000000
        732.895833333333400000
        74.083333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1072'- '#1083#1091#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape225: TQRShape
      Tag = 5
      Left = 813
      Top = 275
      Width = 74
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2151.062500000000000000
        727.604166666666800000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape226: TQRShape
      Tag = 5
      Left = 886
      Top = 275
      Width = 82
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2344.208333333333000000
        727.604166666666800000
        216.958333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel179: TQRLabel
      Tag = 5
      Left = 815
      Top = 277
      Width = 70
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2156.354166666667000000
        732.895833333333400000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel180: TQRLabel
      Tag = 5
      Left = 888
      Top = 277
      Width = 77
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2349.500000000000000000
        732.895833333333400000
        203.729166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel181: TQRLabel
      Tag = 5
      Left = 595
      Top = 277
      Width = 71
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1574.270833333333000000
        732.895833333333400000
        187.854166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1084' '#1089#1090#1098#1087#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape227: TQRShape
      Tag = 5
      Left = 464
      Top = 255
      Width = 130
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1227.666666666667000000
        674.687500000000000000
        343.958333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel182: TQRLabel
      Tag = 5
      Left = 468
      Top = 257
      Width = 123
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1238.250000000000000000
        679.979166666666800000
        325.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1098#1097#1072#1085#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape228: TQRShape
      Tag = 5
      Left = 464
      Top = 275
      Width = 85
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1227.666666666667000000
        727.604166666666800000
        224.895833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel183: TQRLabel
      Tag = 5
      Left = 467
      Top = 283
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1235.604166666667000000
        748.770833333333400000
        209.020833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape229: TQRShape
      Tag = 5
      Left = 548
      Top = 275
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1449.916666666667000000
        727.604166666666800000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel184: TQRLabel
      Tag = 5
      Left = 551
      Top = 277
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1457.854166666667000000
        732.895833333333400000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape230: TQRShape
      Tag = 6
      Left = 1
      Top = 311
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2.645833333333333000
        822.854166666666600000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel185: TQRLabel
      Tag = 6
      Left = 4
      Top = 329
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        870.479166666666800000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape231: TQRShape
      Tag = 6
      Left = 40
      Top = 311
      Width = 58
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        105.833333333333300000
        822.854166666666600000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel186: TQRLabel
      Tag = 6
      Left = 43
      Top = 329
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        870.479166666666800000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape232: TQRShape
      Tag = 6
      Left = 97
      Top = 311
      Width = 169
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        256.645833333333300000
        822.854166666666600000
        447.145833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel187: TQRLabel
      Tag = 6
      Left = 100
      Top = 320
      Width = 163
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        846.666666666666600000
        431.270833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape233: TQRShape
      Tag = 6
      Left = 97
      Top = 345
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333300000
        912.812500000000100000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel188: TQRLabel
      Tag = 6
      Left = 100
      Top = 347
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        918.104166666666800000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape234: TQRShape
      Tag = 6
      Left = 182
      Top = 345
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        912.812500000000100000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel189: TQRLabel
      Tag = 6
      Left = 185
      Top = 347
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        489.479166666666700000
        918.104166666666800000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape235: TQRShape
      Tag = 6
      Left = 265
      Top = 311
      Width = 214
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        822.854166666666600000
        566.208333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel190: TQRLabel
      Tag = 6
      Left = 269
      Top = 313
      Width = 207
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        711.729166666666600000
        828.145833333333200000
        547.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape236: TQRShape
      Tag = 6
      Left = 265
      Top = 331
      Width = 86
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        701.145833333333400000
        875.770833333333400000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel191: TQRLabel
      Tag = 6
      Left = 268
      Top = 339
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        709.083333333333400000
        896.937500000000000000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape237: TQRShape
      Tag = 6
      Left = 350
      Top = 331
      Width = 46
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        926.041666666666600000
        875.770833333333400000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel192: TQRLabel
      Tag = 6
      Left = 353
      Top = 333
      Width = 40
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        933.979166666666600000
        881.062500000000000000
        105.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. '#1076#1085#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape238: TQRShape
      Tag = 6
      Left = 395
      Top = 331
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1045.104166666667000000
        875.770833333333400000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel193: TQRLabel
      Tag = 6
      Left = 398
      Top = 339
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1053.041666666667000000
        896.937500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape239: TQRShape
      Tag = 6
      Left = 478
      Top = 311
      Width = 521
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        822.854166666666600000
        1378.479166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel194: TQRLabel
      Tag = 6
      Left = 482
      Top = 313
      Width = 514
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1275.291666666667000000
        828.145833333333200000
        1359.958333333333000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1060#1072#1082#1090#1091#1088#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape240: TQRShape
      Tag = 6
      Left = 998
      Top = 311
      Width = 40
      Height = 55
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        145.520833333333300000
        2640.541666666667000000
        822.854166666666600000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel195: TQRLabel
      Tag = 6
      Left = 1001
      Top = 321
      Width = 34
      Height = 39
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        103.187500000000000000
        2648.479166666667000000
        849.312499999999900000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1056'1 %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape241: TQRShape
      Tag = 6
      Left = 478
      Top = 331
      Width = 84
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1264.708333333333000000
        875.770833333333400000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel196: TQRLabel
      Tag = 6
      Left = 481
      Top = 339
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1272.645833333333000000
        896.937500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape242: TQRShape
      Tag = 6
      Left = 561
      Top = 331
      Width = 79
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1484.312500000000000000
        875.770833333333400000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel197: TQRLabel
      Tag = 6
      Left = 564
      Top = 333
      Width = 73
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        1492.250000000000000000
        881.062500000000000000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1088#1086#1092#1086#1088#1084#1072' '#1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape243: TQRShape
      Tag = 6
      Left = 639
      Top = 331
      Width = 79
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1690.687500000000000000
        875.770833333333400000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel198: TQRLabel
      Tag = 6
      Left = 642
      Top = 339
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1698.625000000000000000
        896.937500000000000000
        193.145833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape244: TQRShape
      Tag = 6
      Left = 717
      Top = 331
      Width = 81
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        1897.062500000000000000
        875.770833333333400000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel199: TQRLabel
      Tag = 6
      Left = 720
      Top = 339
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1905.000000000000000000
        896.937500000000000000
        198.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape245: TQRShape
      Tag = 6
      Left = 952
      Top = 331
      Width = 47
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2518.833333333333000000
        875.770833333333400000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel200: TQRLabel
      Tag = 6
      Left = 954
      Top = 339
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        896.937500000000000000
        113.770833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1072#1083#1091#1090#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape246: TQRShape
      Tag = 6
      Left = 797
      Top = 331
      Width = 74
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2108.729166666667000000
        875.770833333333400000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape247: TQRShape
      Tag = 6
      Left = 870
      Top = 331
      Width = 83
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        92.604166666666660000
        2301.875000000000000000
        875.770833333333400000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel201: TQRLabel
      Tag = 6
      Left = 799
      Top = 333
      Width = 70
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2114.020833333333000000
        881.062500000000000000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1045#1076#1080#1085#1080#1095#1085#1072' '#1062#1077#1085#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel202: TQRLabel
      Tag = 6
      Left = 872
      Top = 333
      Width = 78
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2307.166666666667000000
        881.062500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel143: TQRLabel
      Tag = 3
      Left = 678
      Top = 171
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1793.875000000000000000
        452.437500000000000000
        89.958333333333330000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel144: TQRLabel
      Tag = 3
      Left = 564
      Top = 171
      Width = 106
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1492.250000000000000000
        452.437500000000000000
        280.458333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1053#1086#1084#1077#1088
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRLabel105: TQRLabel
      Tag = 1
      Left = 678
      Top = 59
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1793.875000000000000000
        156.104166666666700000
        92.604166666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
  end
  object bndDetail: TQRBand [3]
    Left = 38
    Top = 1001
    Width = 1047
    Height = 312
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
      825.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRShape277: TQRShape
      Tag = 5
      Left = 548
      Top = 223
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1449.916666666667000000
        590.020833333333400000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape276: TQRShape
      Tag = 5
      Left = 464
      Top = 223
      Width = 85
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1227.666666666667000000
        590.020833333333400000
        224.895833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape268: TQRShape
      Tag = 5
      Left = 419
      Top = 223
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1108.604166666667000000
        590.020833333333400000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape267: TQRShape
      Tag = 5
      Left = 334
      Top = 223
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        883.708333333333400000
        590.020833333333400000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape266: TQRShape
      Tag = 5
      Left = 258
      Top = 223
      Width = 77
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        682.625000000000000000
        590.020833333333400000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape265: TQRShape
      Tag = 5
      Left = 97
      Top = 223
      Width = 162
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333300000
        590.020833333333400000
        428.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape264: TQRShape
      Tag = 5
      Left = 40
      Top = 223
      Width = 58
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        105.833333333333300000
        590.020833333333400000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape263: TQRShape
      Tag = 5
      Left = 1
      Top = 223
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2.645833333333333000
        590.020833333333400000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape111: TQRShape
      Tag = 1
      Left = 1
      Top = -1
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2.645833333333333000
        -2.645833333333333000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape112: TQRShape
      Tag = 1
      Left = 40
      Top = -1
      Width = 58
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        105.833333333333300000
        -2.645833333333333000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape113: TQRShape
      Tag = 1
      Left = 97
      Top = -1
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333400000
        -2.645833333333333000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape114: TQRShape
      Tag = 1
      Left = 182
      Top = -1
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        -2.645833333333333000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape115: TQRShape
      Tag = 1
      Left = 265
      Top = -1
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        -2.645833333333333000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape116: TQRShape
      Tag = 1
      Left = 350
      Top = -1
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        926.041666666666800000
        -2.645833333333333000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape117: TQRShape
      Tag = 1
      Left = 395
      Top = -1
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1045.104166666667000000
        -2.645833333333333000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape118: TQRShape
      Tag = 1
      Left = 998
      Top = -1
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2640.541666666667000000
        -2.645833333333333000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape119: TQRShape
      Tag = 1
      Left = 478
      Top = -1
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        -2.645833333333333000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape120: TQRShape
      Tag = 1
      Left = 561
      Top = -1
      Width = 112
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1484.312500000000000000
        -2.645833333333333000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape121: TQRShape
      Tag = 1
      Left = 672
      Top = -1
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1778.000000000000000000
        -2.645833333333333000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape122: TQRShape
      Tag = 1
      Left = 717
      Top = -1
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1897.062500000000000000
        -2.645833333333333000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape123: TQRShape
      Tag = 1
      Left = 952
      Top = -1
      Width = 47
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2518.833333333333000000
        -2.645833333333333000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape124: TQRShape
      Tag = 1
      Left = 797
      Top = -1
      Width = 74
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2108.729166666667000000
        -2.645833333333333000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape125: TQRShape
      Tag = 1
      Left = 870
      Top = -1
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2301.875000000000000000
        -2.645833333333333000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText40: TQRDBText
      Tag = 1
      Left = 4
      Top = 1
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        2.645833333333333000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText84: TQRDBText
      Tag = 1
      Left = 43
      Top = 1
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        2.645833333333333000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_STATE_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText85: TQRDBText
      Tag = 1
      Left = 99
      Top = 1
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        2.645833333333333000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText86: TQRDBText
      Tag = 1
      Left = 184
      Top = 1
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        486.833333333333400000
        2.645833333333333000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PLAN_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText87: TQRDBText
      Tag = 1
      Left = 267
      Top = 1
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        706.437500000000000000
        2.645833333333333000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText88: TQRDBText
      Tag = 1
      Left = 352
      Top = 1
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        931.333333333333500000
        2.645833333333333000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText89: TQRDBText
      Tag = 1
      Left = 397
      Top = 1
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        2.645833333333333000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_OUT_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText90: TQRDBText
      Tag = 1
      Left = 480
      Top = 1
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1270.000000000000000000
        2.645833333333333000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText91: TQRDBText
      Tag = 1
      Left = 563
      Top = 1
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        2.645833333333333000
        285.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText92: TQRDBText
      Tag = 1
      Left = 677
      Top = 1
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1791.229166666667000000
        2.645833333333333000
        95.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IS_PROFORM_INVOICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText93: TQRDBText
      Tag = 1
      Left = 719
      Top = 1
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1902.354166666667000000
        2.645833333333333000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText94: TQRDBText
      Tag = 1
      Left = 799
      Top = 1
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2114.020833333333000000
        2.645833333333333000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText95: TQRDBText
      Tag = 1
      Left = 872
      Top = 1
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2307.166666666667000000
        2.645833333333333000
        209.020833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText96: TQRDBText
      Tag = 1
      Left = 954
      Top = 1
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        2.645833333333333000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_INVOICE_CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText97: TQRDBText
      Tag = 1
      Left = 1000
      Top = 1
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2645.833333333333000000
        2.645833333333333000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_VALUE_ADDED_REAL_PCT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape129: TQRShape
      Tag = 2
      Left = 1
      Top = 55
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2.645833333333333000
        145.520833333333300000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape130: TQRShape
      Tag = 2
      Left = 40
      Top = 55
      Width = 58
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        105.833333333333300000
        145.520833333333300000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape131: TQRShape
      Tag = 2
      Left = 97
      Top = 55
      Width = 162
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333300000
        145.520833333333300000
        428.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape141: TQRShape
      Tag = 2
      Left = 258
      Top = 55
      Width = 77
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        682.625000000000000000
        145.520833333333300000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape167: TQRShape
      Tag = 2
      Left = 334
      Top = 55
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        883.708333333333400000
        145.520833333333300000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape168: TQRShape
      Tag = 2
      Left = 419
      Top = 55
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1108.604166666667000000
        145.520833333333300000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape169: TQRShape
      Tag = 2
      Left = 998
      Top = 55
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2640.541666666667000000
        145.520833333333300000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape170: TQRShape
      Tag = 2
      Left = 593
      Top = 55
      Width = 75
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1568.979166666667000000
        145.520833333333300000
        198.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape171: TQRShape
      Tag = 2
      Left = 667
      Top = 55
      Width = 69
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1764.770833333333000000
        145.520833333333300000
        182.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape172: TQRShape
      Tag = 2
      Left = 735
      Top = 55
      Width = 79
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1944.687500000000000000
        145.520833333333300000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape173: TQRShape
      Tag = 2
      Left = 967
      Top = 55
      Width = 32
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2558.520833333333000000
        145.520833333333300000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape174: TQRShape
      Tag = 2
      Left = 813
      Top = 55
      Width = 74
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2151.062500000000000000
        145.520833333333300000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape175: TQRShape
      Tag = 2
      Left = 886
      Top = 55
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2344.208333333333000000
        145.520833333333300000
        216.958333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape176: TQRShape
      Tag = 2
      Left = 464
      Top = 55
      Width = 85
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1227.666666666667000000
        145.520833333333300000
        224.895833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape177: TQRShape
      Tag = 2
      Left = 548
      Top = 55
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1449.916666666667000000
        145.520833333333300000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText98: TQRDBText
      Tag = 2
      Left = 4
      Top = 57
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        150.812500000000000000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText99: TQRDBText
      Tag = 2
      Left = 43
      Top = 57
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        150.812500000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_STATE_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText100: TQRDBText
      Tag = 2
      Left = 99
      Top = 57
      Width = 157
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        150.812500000000000000
        415.395833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'RECEIVE_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText101: TQRDBText
      Tag = 2
      Left = 260
      Top = 57
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        687.916666666666800000
        150.812500000000000000
        193.145833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_PLAN_DATE_UNIT_QTY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText102: TQRDBText
      Tag = 2
      Left = 336
      Top = 57
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        150.812500000000000000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText103: TQRDBText
      Tag = 2
      Left = 421
      Top = 57
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1113.895833333333000000
        150.812500000000000000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText104: TQRDBText
      Tag = 2
      Left = 466
      Top = 57
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1232.958333333333000000
        150.812500000000000000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IMPORT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText105: TQRDBText
      Tag = 2
      Left = 550
      Top = 57
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1455.208333333333000000
        150.812500000000000000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_IMPORT_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText106: TQRDBText
      Tag = 2
      Left = 596
      Top = 57
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1576.916666666667000000
        150.812500000000000000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_QTY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText107: TQRDBText
      Tag = 2
      Left = 669
      Top = 57
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1770.062500000000000000
        150.812500000000000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText108: TQRDBText
      Tag = 2
      Left = 737
      Top = 57
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        150.812500000000000000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText109: TQRDBText
      Tag = 2
      Left = 815
      Top = 57
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2156.354166666667000000
        150.812500000000000000
        182.562500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText110: TQRDBText
      Tag = 2
      Left = 888
      Top = 57
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2349.500000000000000000
        150.812500000000000000
        206.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText111: TQRDBText
      Tag = 2
      Left = 1000
      Top = 57
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2645.833333333333000000
        150.812500000000000000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_VALUE_ADDED_REAL_PCT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText112: TQRDBText
      Tag = 2
      Left = 969
      Top = 57
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2563.812500000000000000
        150.812500000000000000
        74.083333333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_INVOICE_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape178: TQRShape
      Tag = 3
      Left = 1
      Top = 111
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2.645833333333333000
        293.687500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape179: TQRShape
      Tag = 3
      Left = 40
      Top = 111
      Width = 58
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        105.833333333333300000
        293.687500000000000000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape180: TQRShape
      Tag = 3
      Left = 97
      Top = 111
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333400000
        293.687500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape181: TQRShape
      Tag = 3
      Left = 182
      Top = 111
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        293.687500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape182: TQRShape
      Tag = 3
      Left = 265
      Top = 111
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        293.687500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape183: TQRShape
      Tag = 3
      Left = 350
      Top = 111
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        926.041666666666800000
        293.687500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape184: TQRShape
      Tag = 3
      Left = 395
      Top = 111
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1045.104166666667000000
        293.687500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape185: TQRShape
      Tag = 3
      Left = 998
      Top = 111
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2640.541666666667000000
        293.687500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape186: TQRShape
      Tag = 3
      Left = 478
      Top = 111
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        293.687500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape187: TQRShape
      Tag = 3
      Left = 561
      Top = 111
      Width = 112
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1484.312500000000000000
        293.687500000000000000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape188: TQRShape
      Tag = 3
      Left = 672
      Top = 111
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1778.000000000000000000
        293.687500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape189: TQRShape
      Tag = 3
      Left = 717
      Top = 111
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1897.062500000000000000
        293.687500000000000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape190: TQRShape
      Tag = 3
      Left = 952
      Top = 111
      Width = 47
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2518.833333333333000000
        293.687500000000000000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape191: TQRShape
      Tag = 3
      Left = 797
      Top = 111
      Width = 74
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2108.729166666667000000
        293.687500000000000000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape192: TQRShape
      Tag = 3
      Left = 870
      Top = 111
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2301.875000000000000000
        293.687500000000000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText113: TQRDBText
      Tag = 3
      Left = 4
      Top = 113
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        298.979166666666700000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText114: TQRDBText
      Tag = 3
      Left = 43
      Top = 113
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        298.979166666666700000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_STATE_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText115: TQRDBText
      Tag = 3
      Left = 99
      Top = 113
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        298.979166666666700000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText116: TQRDBText
      Tag = 3
      Left = 184
      Top = 113
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        486.833333333333400000
        298.979166666666700000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PLAN_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText117: TQRDBText
      Tag = 3
      Left = 267
      Top = 113
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        706.437500000000000000
        298.979166666666700000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText118: TQRDBText
      Tag = 3
      Left = 352
      Top = 113
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        931.333333333333500000
        298.979166666666700000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText119: TQRDBText
      Tag = 3
      Left = 397
      Top = 113
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        298.979166666666700000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_OUT_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText120: TQRDBText
      Tag = 3
      Left = 480
      Top = 113
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1270.000000000000000000
        298.979166666666700000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText121: TQRDBText
      Tag = 3
      Left = 563
      Top = 113
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        298.979166666666700000
        285.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText122: TQRDBText
      Tag = 3
      Left = 677
      Top = 113
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1791.229166666667000000
        298.979166666666700000
        95.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IS_PROFORM_INVOICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText123: TQRDBText
      Tag = 3
      Left = 719
      Top = 113
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1902.354166666667000000
        298.979166666666700000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText124: TQRDBText
      Tag = 3
      Left = 799
      Top = 113
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2114.020833333333000000
        298.979166666666700000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText125: TQRDBText
      Tag = 3
      Left = 872
      Top = 113
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2307.166666666667000000
        298.979166666666700000
        209.020833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText126: TQRDBText
      Tag = 3
      Left = 954
      Top = 113
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        298.979166666666700000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_INVOICE_CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText127: TQRDBText
      Tag = 3
      Left = 1000
      Top = 113
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2645.833333333333000000
        298.979166666666700000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_VALUE_ADDED_REAL_PCT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape248: TQRShape
      Tag = 4
      Left = 1
      Top = 167
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2.645833333333333000
        441.854166666666700000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape249: TQRShape
      Tag = 4
      Left = 40
      Top = 167
      Width = 58
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        105.833333333333300000
        441.854166666666700000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape250: TQRShape
      Tag = 4
      Left = 97
      Top = 167
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333400000
        441.854166666666700000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape251: TQRShape
      Tag = 4
      Left = 182
      Top = 167
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        441.854166666666700000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape252: TQRShape
      Tag = 4
      Left = 265
      Top = 167
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        441.854166666666700000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape253: TQRShape
      Tag = 4
      Left = 350
      Top = 167
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        926.041666666666800000
        441.854166666666700000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape254: TQRShape
      Tag = 4
      Left = 395
      Top = 167
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1045.104166666667000000
        441.854166666666700000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape255: TQRShape
      Tag = 4
      Left = 998
      Top = 167
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2640.541666666667000000
        441.854166666666700000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape256: TQRShape
      Tag = 4
      Left = 478
      Top = 167
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        441.854166666666700000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape257: TQRShape
      Tag = 4
      Left = 561
      Top = 167
      Width = 112
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1484.312500000000000000
        441.854166666666700000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape258: TQRShape
      Tag = 4
      Left = 672
      Top = 167
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1778.000000000000000000
        441.854166666666700000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape259: TQRShape
      Tag = 4
      Left = 717
      Top = 167
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1897.062500000000000000
        441.854166666666700000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape260: TQRShape
      Tag = 4
      Left = 952
      Top = 167
      Width = 47
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2518.833333333333000000
        441.854166666666700000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape261: TQRShape
      Tag = 4
      Left = 797
      Top = 167
      Width = 74
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2108.729166666667000000
        441.854166666666700000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape262: TQRShape
      Tag = 4
      Left = 870
      Top = 167
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2301.875000000000000000
        441.854166666666700000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText128: TQRDBText
      Tag = 4
      Left = 4
      Top = 169
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        447.145833333333400000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText129: TQRDBText
      Tag = 4
      Left = 43
      Top = 169
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        447.145833333333400000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_STATE_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText130: TQRDBText
      Tag = 4
      Left = 99
      Top = 169
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        447.145833333333400000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText131: TQRDBText
      Tag = 4
      Left = 184
      Top = 169
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        486.833333333333400000
        447.145833333333400000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PLAN_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText132: TQRDBText
      Tag = 4
      Left = 267
      Top = 169
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        706.437500000000000000
        447.145833333333400000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText133: TQRDBText
      Tag = 4
      Left = 352
      Top = 169
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        931.333333333333500000
        447.145833333333400000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText134: TQRDBText
      Tag = 4
      Left = 397
      Top = 169
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        447.145833333333400000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_OUT_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText135: TQRDBText
      Tag = 4
      Left = 480
      Top = 169
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1270.000000000000000000
        447.145833333333400000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText136: TQRDBText
      Tag = 4
      Left = 563
      Top = 169
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        447.145833333333300000
        285.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText137: TQRDBText
      Tag = 4
      Left = 677
      Top = 169
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1791.229166666667000000
        447.145833333333300000
        95.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IS_PROFORM_INVOICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText138: TQRDBText
      Tag = 4
      Left = 719
      Top = 169
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1902.354166666667000000
        447.145833333333400000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText139: TQRDBText
      Tag = 4
      Left = 799
      Top = 169
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2114.020833333333000000
        447.145833333333400000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_INVOICE_SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText140: TQRDBText
      Tag = 4
      Left = 872
      Top = 169
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2307.166666666667000000
        447.145833333333400000
        209.020833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_INVOICE_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText141: TQRDBText
      Tag = 4
      Left = 954
      Top = 169
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        447.145833333333400000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText142: TQRDBText
      Tag = 4
      Left = 1000
      Top = 169
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2645.833333333333000000
        447.145833333333400000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_VALUE_ADDED_REAL_PCT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText143: TQRDBText
      Tag = 5
      Left = 4
      Top = 225
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        595.312500000000000000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText144: TQRDBText
      Tag = 5
      Left = 43
      Top = 225
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        595.312500000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_STATE_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText145: TQRDBText
      Tag = 5
      Left = 99
      Top = 225
      Width = 157
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        595.312500000000000000
        415.395833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'RECEIVE_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText146: TQRDBText
      Tag = 5
      Left = 260
      Top = 225
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        687.916666666666800000
        595.312500000000000000
        193.145833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_PLAN_DATE_UNIT_QTY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText147: TQRDBText
      Tag = 5
      Left = 336
      Top = 225
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        595.312500000000000000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText148: TQRDBText
      Tag = 5
      Left = 421
      Top = 225
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1113.895833333333000000
        595.312500000000000000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText149: TQRDBText
      Tag = 5
      Left = 466
      Top = 225
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1232.958333333333000000
        595.312500000000000000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IMPORT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText150: TQRDBText
      Tag = 5
      Left = 550
      Top = 225
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1455.208333333333000000
        595.312500000000000000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_IMPORT_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRShape269: TQRShape
      Tag = 5
      Left = 998
      Top = 223
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2640.541666666667000000
        590.020833333333400000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape270: TQRShape
      Tag = 5
      Left = 593
      Top = 223
      Width = 75
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1568.979166666667000000
        590.020833333333400000
        198.437500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape271: TQRShape
      Tag = 5
      Left = 667
      Top = 223
      Width = 69
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1764.770833333333000000
        590.020833333333400000
        182.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape272: TQRShape
      Tag = 5
      Left = 735
      Top = 223
      Width = 79
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1944.687500000000000000
        590.020833333333400000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape273: TQRShape
      Tag = 5
      Left = 967
      Top = 223
      Width = 32
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2558.520833333333000000
        590.020833333333400000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape274: TQRShape
      Tag = 5
      Left = 813
      Top = 223
      Width = 74
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2151.062500000000000000
        590.020833333333400000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape275: TQRShape
      Tag = 5
      Left = 886
      Top = 223
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2344.208333333333000000
        590.020833333333400000
        216.958333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText151: TQRDBText
      Tag = 5
      Left = 596
      Top = 225
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1576.916666666667000000
        595.312500000000000000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_QTY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText152: TQRDBText
      Tag = 5
      Left = 669
      Top = 225
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1770.062500000000000000
        595.312500000000000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText153: TQRDBText
      Tag = 5
      Left = 737
      Top = 225
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        595.312500000000000000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText154: TQRDBText
      Tag = 5
      Left = 815
      Top = 225
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2156.354166666667000000
        595.312500000000000000
        182.562500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_INVOICE_SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText155: TQRDBText
      Tag = 5
      Left = 888
      Top = 225
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2349.500000000000000000
        595.312500000000000000
        206.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_INVOICE_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText156: TQRDBText
      Tag = 5
      Left = 1000
      Top = 225
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2645.833333333333000000
        595.312500000000000000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_VALUE_ADDED_REAL_PCT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText157: TQRDBText
      Tag = 5
      Left = 969
      Top = 225
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2563.812500000000000000
        595.312500000000000000
        74.083333333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_CURRENCY_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 9
    end
    object QRShape278: TQRShape
      Tag = 6
      Left = 1
      Top = 279
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2.645833333333333000
        738.187500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape279: TQRShape
      Tag = 6
      Left = 40
      Top = 279
      Width = 58
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        105.833333333333300000
        738.187500000000000000
        153.458333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape280: TQRShape
      Tag = 6
      Left = 97
      Top = 279
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        256.645833333333400000
        738.187500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape281: TQRShape
      Tag = 6
      Left = 182
      Top = 279
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        481.541666666666700000
        738.187500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape282: TQRShape
      Tag = 6
      Left = 265
      Top = 279
      Width = 86
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        701.145833333333400000
        738.187500000000000000
        227.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape283: TQRShape
      Tag = 6
      Left = 350
      Top = 279
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        926.041666666666800000
        738.187500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape284: TQRShape
      Tag = 6
      Left = 395
      Top = 279
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1045.104166666667000000
        738.187500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape285: TQRShape
      Tag = 6
      Left = 998
      Top = 279
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2640.541666666667000000
        738.187500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape286: TQRShape
      Tag = 6
      Left = 478
      Top = 279
      Width = 84
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1264.708333333333000000
        738.187500000000000000
        222.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape287: TQRShape
      Tag = 6
      Left = 561
      Top = 279
      Width = 112
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1484.312500000000000000
        738.187500000000000000
        296.333333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape288: TQRShape
      Tag = 6
      Left = 672
      Top = 279
      Width = 46
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1778.000000000000000000
        738.187500000000000000
        121.708333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape289: TQRShape
      Tag = 6
      Left = 717
      Top = 279
      Width = 81
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1897.062500000000000000
        738.187500000000000000
        214.312500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape290: TQRShape
      Tag = 6
      Left = 952
      Top = 279
      Width = 47
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2518.833333333333000000
        738.187500000000000000
        124.354166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape291: TQRShape
      Tag = 6
      Left = 797
      Top = 279
      Width = 74
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2108.729166666667000000
        738.187500000000000000
        195.791666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape292: TQRShape
      Tag = 6
      Left = 870
      Top = 279
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2301.875000000000000000
        738.187500000000000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText158: TQRDBText
      Tag = 6
      Left = 4
      Top = 281
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        743.479166666666800000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText159: TQRDBText
      Tag = 6
      Left = 43
      Top = 281
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        743.479166666666800000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SALE_SHIPMENT_STATE_CODE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText160: TQRDBText
      Tag = 6
      Left = 99
      Top = 281
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        743.479166666666800000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_PLAN_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText161: TQRDBText
      Tag = 6
      Left = 184
      Top = 281
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        486.833333333333400000
        743.479166666666800000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PLAN_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText162: TQRDBText
      Tag = 6
      Left = 267
      Top = 281
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        706.437500000000000000
        743.479166666666800000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText163: TQRDBText
      Tag = 6
      Left = 352
      Top = 281
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        931.333333333333500000
        743.479166666666800000
        111.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_DATE_DIFF'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText164: TQRDBText
      Tag = 6
      Left = 397
      Top = 281
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        743.479166666666800000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPMENT_OUT_QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText165: TQRDBText
      Tag = 6
      Left = 480
      Top = 281
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1270.000000000000000000
        743.479166666666800000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText166: TQRDBText
      Tag = 6
      Left = 563
      Top = 281
      Width = 108
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        743.479166666666700000
        285.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_NO'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText167: TQRDBText
      Tag = 6
      Left = 677
      Top = 281
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1791.229166666667000000
        743.479166666666700000
        95.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'IS_PROFORM_INVOICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText168: TQRDBText
      Tag = 6
      Left = 719
      Top = 281
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1902.354166666667000000
        743.479166666666800000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'INVOICE_DATE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText169: TQRDBText
      Tag = 6
      Left = 799
      Top = 281
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2114.020833333333000000
        743.479166666666800000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_INVOICE_SINGLE_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText170: TQRDBText
      Tag = 6
      Left = 872
      Top = 281
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2307.166666666667000000
        743.479166666666800000
        209.020833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_INVOICE_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText171: TQRDBText
      Tag = 6
      Left = 954
      Top = 281
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        743.479166666666800000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_BASE_CURRENCY_ABBREV'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRDBText172: TQRDBText
      Tag = 6
      Left = 1000
      Top = 281
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2645.833333333333000000
        743.479166666666800000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_VALUE_ADDED_REAL_PCT'
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
  end
end
