inherited rptGroupSalesDetail: TrptGroupSalesDetail
  Width = 1123
  Height = 794
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
  ExplicitWidth = 1123
  ExplicitHeight = 794
  inherited bndPageFooter: TQRBand
    Top = 793
    Width = 1047
    Size.Values = (
      71.437500000000000000
      2770.187500000000000000)
    ExplicitTop = 793
    ExplicitWidth = 1047
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
        58.208333333333320000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
    object lblTotalPriceSC: TQRLabel
      Left = 391
      Top = 6
      Width = 134
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1034.520833333333000000
        15.875000000000000000
        354.541666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '* - '#1057#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1089#1072' '#1074' %s'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object QRBand1: TQRBand [1]
    Left = 38
    Top = 38
    Width = 1047
    Height = 107
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
      283.104166666666700000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRLabel1: TQRLabel
      Left = 0
      Top = 8
      Width = 1045
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        63.500000000000000000
        0.000000000000000000
        21.166666666666700000
        2764.895833333330000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1044#1050' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
    object QRShape277: TQRShape
      Left = 48
      Top = 36
      Width = 104
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        127.000000000000000000
        95.250000000000000000
        275.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel158: TQRLabel
      Left = 68
      Top = 48
      Width = 65
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        179.916666666666700000
        127.000000000000000000
        171.979166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'ID '#1055#1044#1050
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape278: TQRShape
      Left = 151
      Top = 36
      Width = 30
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        399.520833333333300000
        95.250000000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel159: TQRLabel
      Left = 153
      Top = 47
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        404.812500000000000000
        124.354166666666700000
        68.791666666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape279: TQRShape
      Left = 180
      Top = 36
      Width = 437
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        476.250000000000000000
        95.250000000000000000
        1156.229166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel160: TQRLabel
      Left = 391
      Top = 48
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1034.520833333333000000
        127.000000000000000000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1083#1080#1077#1085#1090
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape280: TQRShape
      Left = 616
      Top = 36
      Width = 105
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1629.833333333333000000
        95.250000000000000000
        277.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblTotalPriceSC1: TQRLabel
      Left = 625
      Top = 39
      Width = 88
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        1653.645833333333000000
        103.187500000000000000
        232.833333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1086#1075'. '#1054#1073#1097#1072' '#1094#1077#1085#1072' /%s/'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape281: TQRShape
      Left = 720
      Top = 36
      Width = 76
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1905.000000000000000000
        95.250000000000000000
        201.083333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel161: TQRLabel
      Left = 724
      Top = 39
      Width = 68
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        1915.583333333333000000
        103.187500000000000000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1080#1079#1087#1088'. '#1085#1072' '#1079#1072#1087'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape282: TQRShape
      Left = 795
      Top = 36
      Width = 76
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2103.437500000000000000
        95.250000000000000000
        201.083333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel162: TQRLabel
      Left = 800
      Top = 39
      Width = 68
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        2116.666666666667000000
        103.187500000000000000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1044#1072#1090#1072' '#1088#1077#1075'. '#1085#1072' '#1079#1072#1087'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape283: TQRShape
      Left = 870
      Top = 36
      Width = 82
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2301.875000000000000000
        95.250000000000000000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel163: TQRLabel
      Left = 872
      Top = 39
      Width = 78
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        2307.166666666667000000
        103.187500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1088#1077#1076#1083'. '#1076#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape284: TQRShape
      Left = 951
      Top = 36
      Width = 82
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2516.187500000000000000
        95.250000000000000000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel164: TQRLabel
      Left = 953
      Top = 39
      Width = 78
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        2521.479166666667000000
        103.187500000000000000
        206.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085'. '#1076#1072#1090#1072' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1072
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape285: TQRShape
      Left = 0
      Top = 36
      Width = 49
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        0.000000000000000000
        95.250000000000000000
        129.645833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel165: TQRLabel
      Left = 3
      Top = 48
      Width = 43
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        7.937500000000000000
        127.000000000000000000
        113.770833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1091#1089
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape286: TQRShape
      Left = 48
      Top = 76
      Width = 104
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        127.000000000000000000
        201.083333333333300000
        275.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape287: TQRShape
      Left = 151
      Top = 76
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        399.520833333333300000
        201.083333333333300000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape288: TQRShape
      Left = 180
      Top = 76
      Width = 437
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        476.250000000000000000
        201.083333333333300000
        1156.229166666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape289: TQRShape
      Left = 616
      Top = 76
      Width = 105
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1629.833333333333000000
        201.083333333333300000
        277.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape290: TQRShape
      Left = 720
      Top = 76
      Width = 76
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1905.000000000000000000
        201.083333333333300000
        201.083333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape291: TQRShape
      Left = 795
      Top = 76
      Width = 76
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2103.437500000000000000
        201.083333333333300000
        201.083333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape292: TQRShape
      Left = 870
      Top = 76
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2301.875000000000000000
        201.083333333333300000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape293: TQRShape
      Left = 951
      Top = 76
      Width = 82
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2516.187500000000000000
        201.083333333333300000
        216.958333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText121: TQRDBText
      Left = 53
      Top = 78
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        206.375000000000000000
        251.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_ORDER_IDENTIFICATION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText122: TQRDBText
      Left = 155
      Top = 78
      Width = 22
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        410.104166666666700000
        206.375000000000000000
        58.208333333333320000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'SALE_ORDER_TYPE_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText123: TQRDBText
      Left = 184
      Top = 78
      Width = 429
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        486.833333333333300000
        206.375000000000000000
        1135.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CLIENT_COMPANY_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText124: TQRDBText
      Left = 621
      Top = 78
      Width = 96
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1643.062500000000000000
        206.375000000000000000
        254.000000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText125: TQRDBText
      Left = 724
      Top = 78
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1915.583333333333000000
        206.375000000000000000
        179.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'REQUEST_SEND_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText126: TQRDBText
      Left = 799
      Top = 78
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2114.020833333333000000
        206.375000000000000000
        179.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'REQUEST_REGISTER_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText127: TQRDBText
      Left = 874
      Top = 78
      Width = 74
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2312.458333333333000000
        206.375000000000000000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'CL_OFFER_RECEIVE_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText128: TQRDBText
      Left = 954
      Top = 78
      Width = 74
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2524.125000000000000000
        206.375000000000000000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'RECEIVE_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape294: TQRShape
      Left = 0
      Top = 76
      Width = 49
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        0.000000000000000000
        201.083333333333300000
        129.645833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText129: TQRDBText
      Left = 2
      Top = 78
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        5.291666666666667000
        206.375000000000000000
        119.062500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'STATUS_CODE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand2: TQRBand [2]
    Left = 38
    Top = 145
    Width = 1047
    Height = 336
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
      889.000000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbColumnHeader
    object QRShape11: TQRShape
      Tag = 1
      Left = 126
      Top = 0
      Width = 352
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        0.000000000000000000
        931.333333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape25: TQRShape
      Tag = 1
      Left = 126
      Top = 20
      Width = 276
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        52.916666666666670000
        730.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape26: TQRShape
      Left = 0
      Top = 0
      Width = 41
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
        108.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape27: TQRShape
      Left = 40
      Top = 0
      Width = 87
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        105.833333333333300000
        0.000000000000000000
        230.187500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel15: TQRLabel
      Left = 2
      Top = 4
      Width = 37
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        5.291666666666667000
        10.583333333333330000
        97.895833333333320000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1044#1050' No'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel16: TQRLabel
      Left = 61
      Top = 12
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        161.395833333333300000
        31.750000000000000000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ID '#1054#1055#1055
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel17: TQRLabel
      Tag = 1
      Left = 270
      Top = 2
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        714.375000000000000000
        5.291666666666667000
        272.520833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape31: TQRShape
      Tag = 1
      Left = 516
      Top = 0
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        0.000000000000000000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape32: TQRShape
      Tag = 1
      Left = 477
      Top = 0
      Width = 40
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1262.062500000000000000
        0.000000000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel22: TQRLabel
      Tag = 1
      Left = 479
      Top = 2
      Width = 35
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        1267.354166666667000000
        5.291666666666667000
        92.604166666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1052'. '#1045#1076'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape33: TQRShape
      Tag = 1
      Left = 401
      Top = 20
      Width = 77
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1060.979166666667000000
        52.916666666666670000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel23: TQRLabel
      Tag = 1
      Left = 405
      Top = 22
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1071.562500000000000000
        58.208333333333320000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'id '#1094#1080#1092#1088#1086#1074
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel5: TQRLabel
      Tag = 1
      Left = 134
      Top = 22
      Width = 259
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        354.541666666666700000
        58.208333333333320000
        685.270833333333200000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape1: TQRShape
      Tag = 1
      Left = 647
      Top = 0
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        0.000000000000000000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Tag = 1
      Left = 909
      Top = 0
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        0.000000000000000000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape3: TQRShape
      Tag = 1
      Left = 778
      Top = 0
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        0.000000000000000000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Tag = 1
      Left = 555
      Top = 3
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1468.437500000000000000
        7.937500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Tag = 1
      Left = 680
      Top = 3
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1799.166666666667000000
        7.937500000000000000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Tag = 1
      Left = 812
      Top = 3
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2148.416666666667000000
        7.937500000000000000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel6: TQRLabel
      Tag = 1
      Left = 938
      Top = 3
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2481.791666666667000000
        7.937500000000000000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape4: TQRShape
      Tag = 1
      Left = 516
      Top = 20
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        52.916666666666670000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape5: TQRShape
      Tag = 1
      Left = 582
      Top = 20
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        52.916666666666670000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel8: TQRLabel
      Tag = 1
      Left = 536
      Top = 22
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1418.166666666667000000
        58.208333333333340000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel9: TQRLabel
      Tag = 1
      Left = 600
      Top = 22
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1587.500000000000000000
        58.208333333333340000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape6: TQRShape
      Tag = 1
      Left = 647
      Top = 20
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        52.916666666666670000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape7: TQRShape
      Tag = 1
      Left = 713
      Top = 20
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        52.916666666666670000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel10: TQRLabel
      Tag = 1
      Left = 667
      Top = 22
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1764.770833333333000000
        58.208333333333340000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel11: TQRLabel
      Tag = 1
      Left = 731
      Top = 22
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1934.104166666667000000
        58.208333333333340000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape8: TQRShape
      Tag = 1
      Left = 778
      Top = 20
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        52.916666666666670000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape9: TQRShape
      Tag = 1
      Left = 844
      Top = 20
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        52.916666666666670000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel12: TQRLabel
      Tag = 1
      Left = 798
      Top = 22
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2111.375000000000000000
        58.208333333333340000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel13: TQRLabel
      Tag = 1
      Left = 862
      Top = 22
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2280.708333333333000000
        58.208333333333340000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape10: TQRShape
      Tag = 1
      Left = 909
      Top = 20
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        52.916666666666670000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape13: TQRShape
      Tag = 1
      Left = 975
      Top = 20
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        52.916666666666670000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel14: TQRLabel
      Tag = 1
      Left = 929
      Top = 22
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2457.979166666667000000
        58.208333333333340000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel18: TQRLabel
      Tag = 1
      Left = 993
      Top = 22
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2627.312500000000000000
        58.208333333333320000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape12: TQRShape
      Tag = 3
      Left = 406
      Top = 80
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        211.666666666666700000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel7: TQRLabel
      Tag = 3
      Left = 467
      Top = 83
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1235.604166666667000000
        219.604166666666700000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape14: TQRShape
      Tag = 3
      Left = 406
      Top = 100
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        264.583333333333300000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape15: TQRShape
      Tag = 3
      Left = 563
      Top = 100
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        264.583333333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel19: TQRLabel
      Tag = 3
      Left = 408
      Top = 102
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1079.500000000000000000
        269.875000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel20: TQRLabel
      Tag = 3
      Left = 565
      Top = 102
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1494.895833333333000000
        269.875000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape16: TQRShape
      Tag = 3
      Left = 434
      Top = 100
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        264.583333333333300000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel21: TQRLabel
      Tag = 3
      Left = 436
      Top = 102
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1153.583333333333000000
        269.875000000000000000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape17: TQRShape
      Tag = 3
      Left = 452
      Top = 100
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        264.583333333333300000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel24: TQRLabel
      Tag = 3
      Left = 454
      Top = 102
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1201.208333333333000000
        269.875000000000000000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape18: TQRShape
      Tag = 3
      Left = 508
      Top = 100
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        264.583333333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel25: TQRLabel
      Tag = 3
      Left = 510
      Top = 102
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1349.375000000000000000
        269.875000000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape19: TQRShape
      Tag = 3
      Left = 958
      Top = 80
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        211.666666666666700000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel26: TQRLabel
      Tag = 3
      Left = 964
      Top = 83
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2550.583333333333000000
        219.604166666666700000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape20: TQRShape
      Tag = 3
      Left = 958
      Top = 100
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        264.583333333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape21: TQRShape
      Tag = 3
      Left = 1013
      Top = 100
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        264.583333333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel28: TQRLabel
      Tag = 3
      Left = 1015
      Top = 102
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2685.520833333333000000
        269.875000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel29: TQRLabel
      Tag = 3
      Left = 960
      Top = 103
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2540.000000000000000000
        272.520833333333300000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape22: TQRShape
      Tag = 3
      Left = 590
      Top = 80
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        211.666666666666700000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel27: TQRLabel
      Tag = 3
      Left = 646
      Top = 83
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1709.208333333333000000
        219.604166666666700000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape23: TQRShape
      Tag = 3
      Left = 590
      Top = 100
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        264.583333333333300000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape24: TQRShape
      Tag = 3
      Left = 747
      Top = 100
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        264.583333333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel30: TQRLabel
      Tag = 3
      Left = 592
      Top = 102
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1566.333333333333000000
        269.875000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel31: TQRLabel
      Tag = 3
      Left = 749
      Top = 102
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1981.729166666667000000
        269.875000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape28: TQRShape
      Tag = 3
      Left = 618
      Top = 100
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        264.583333333333300000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel32: TQRLabel
      Tag = 3
      Left = 620
      Top = 102
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1640.416666666667000000
        269.875000000000000000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape29: TQRShape
      Tag = 3
      Left = 636
      Top = 100
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        264.583333333333300000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel33: TQRLabel
      Tag = 3
      Left = 638
      Top = 102
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1688.041666666667000000
        269.875000000000000000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape30: TQRShape
      Tag = 3
      Left = 692
      Top = 100
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        264.583333333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel34: TQRLabel
      Tag = 3
      Left = 694
      Top = 102
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1836.208333333333000000
        269.875000000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape34: TQRShape
      Tag = 3
      Left = 774
      Top = 80
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        211.666666666666700000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel35: TQRLabel
      Tag = 3
      Left = 831
      Top = 83
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2198.687500000000000000
        219.604166666666700000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape35: TQRShape
      Tag = 3
      Left = 774
      Top = 100
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        264.583333333333300000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape36: TQRShape
      Tag = 3
      Left = 931
      Top = 100
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        264.583333333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel36: TQRLabel
      Tag = 3
      Left = 776
      Top = 102
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2053.166666666667000000
        269.875000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel37: TQRLabel
      Tag = 3
      Left = 933
      Top = 102
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2468.562500000000000000
        269.875000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape37: TQRShape
      Tag = 3
      Left = 802
      Top = 100
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        264.583333333333300000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel38: TQRLabel
      Tag = 3
      Left = 804
      Top = 102
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2127.250000000000000000
        269.875000000000000000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape38: TQRShape
      Tag = 3
      Left = 820
      Top = 100
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        264.583333333333300000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel39: TQRLabel
      Tag = 3
      Left = 822
      Top = 102
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2174.875000000000000000
        269.875000000000000000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape40: TQRShape
      Tag = 3
      Left = 876
      Top = 100
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        264.583333333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel41: TQRLabel
      Tag = 3
      Left = 878
      Top = 102
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2323.041666666667000000
        269.875000000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape41: TQRShape
      Tag = 3
      Left = 126
      Top = 80
      Width = 248
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        333.375000000000000000
        211.666666666666700000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel42: TQRLabel
      Tag = 3
      Left = 204
      Top = 93
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        539.750000000000000000
        246.062500000000000000
        272.520833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape43: TQRShape
      Tag = 3
      Left = 373
      Top = 80
      Width = 34
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        986.895833333333200000
        211.666666666666700000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape76: TQRShape
      Tag = 2
      Left = 516
      Top = 40
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        105.833333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape77: TQRShape
      Tag = 2
      Left = 647
      Top = 40
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        105.833333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape78: TQRShape
      Tag = 2
      Left = 909
      Top = 40
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        105.833333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape79: TQRShape
      Tag = 2
      Left = 778
      Top = 40
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        105.833333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel45: TQRLabel
      Tag = 2
      Left = 555
      Top = 43
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1468.437500000000000000
        113.770833333333300000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel46: TQRLabel
      Tag = 2
      Left = 680
      Top = 43
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1799.166666666667000000
        113.770833333333300000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel47: TQRLabel
      Tag = 2
      Left = 812
      Top = 43
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2148.416666666667000000
        113.770833333333300000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel48: TQRLabel
      Tag = 2
      Left = 938
      Top = 43
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2481.791666666667000000
        113.770833333333300000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape80: TQRShape
      Tag = 2
      Left = 516
      Top = 60
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        158.750000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape81: TQRShape
      Tag = 2
      Left = 582
      Top = 60
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        158.750000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel49: TQRLabel
      Tag = 2
      Left = 536
      Top = 62
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1418.166666666667000000
        164.041666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel50: TQRLabel
      Tag = 2
      Left = 600
      Top = 62
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1587.500000000000000000
        164.041666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape82: TQRShape
      Tag = 2
      Left = 647
      Top = 60
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        158.750000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape83: TQRShape
      Tag = 2
      Left = 713
      Top = 60
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        158.750000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel51: TQRLabel
      Tag = 2
      Left = 667
      Top = 62
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1764.770833333333000000
        164.041666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel52: TQRLabel
      Tag = 2
      Left = 731
      Top = 62
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1934.104166666667000000
        164.041666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape84: TQRShape
      Tag = 2
      Left = 778
      Top = 60
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        158.750000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape85: TQRShape
      Tag = 2
      Left = 844
      Top = 60
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        158.750000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel53: TQRLabel
      Tag = 2
      Left = 798
      Top = 62
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2111.375000000000000000
        164.041666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel54: TQRLabel
      Tag = 2
      Left = 862
      Top = 62
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2280.708333333333000000
        164.041666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape86: TQRShape
      Tag = 2
      Left = 909
      Top = 60
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        158.750000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape87: TQRShape
      Tag = 2
      Left = 975
      Top = 60
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        158.750000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel55: TQRLabel
      Tag = 2
      Left = 929
      Top = 62
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2457.979166666667000000
        164.041666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel56: TQRLabel
      Tag = 2
      Left = 993
      Top = 62
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2627.312500000000000000
        164.041666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape88: TQRShape
      Tag = 2
      Left = 477
      Top = 40
      Width = 40
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1262.062500000000000000
        105.833333333333300000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape89: TQRShape
      Tag = 2
      Left = 126
      Top = 40
      Width = 352
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        333.375000000000000000
        105.833333333333300000
        931.333333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel58: TQRLabel
      Tag = 2
      Left = 222
      Top = 50
      Width = 165
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        587.375000000000000000
        132.291666666666700000
        436.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1082#1083#1080#1077#1085#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape90: TQRShape
      Tag = 4
      Left = 406
      Top = 120
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        317.500000000000000000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel59: TQRLabel
      Tag = 4
      Left = 467
      Top = 123
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1235.604166666667000000
        325.437500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape91: TQRShape
      Tag = 4
      Left = 406
      Top = 140
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        370.416666666666700000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape92: TQRShape
      Tag = 4
      Left = 563
      Top = 140
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        370.416666666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel60: TQRLabel
      Tag = 4
      Left = 408
      Top = 142
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1079.500000000000000000
        375.708333333333400000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel61: TQRLabel
      Tag = 4
      Left = 565
      Top = 142
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1494.895833333333000000
        375.708333333333400000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape93: TQRShape
      Tag = 4
      Left = 434
      Top = 140
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        370.416666666666700000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel62: TQRLabel
      Tag = 4
      Left = 436
      Top = 142
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1153.583333333333000000
        375.708333333333400000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape94: TQRShape
      Tag = 4
      Left = 452
      Top = 140
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        370.416666666666700000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel63: TQRLabel
      Tag = 4
      Left = 454
      Top = 142
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1201.208333333333000000
        375.708333333333400000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape95: TQRShape
      Tag = 4
      Left = 508
      Top = 140
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        370.416666666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel64: TQRLabel
      Tag = 4
      Left = 510
      Top = 142
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1349.375000000000000000
        375.708333333333400000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape96: TQRShape
      Tag = 4
      Left = 958
      Top = 120
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        317.500000000000000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel65: TQRLabel
      Tag = 4
      Left = 964
      Top = 123
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2550.583333333333000000
        325.437500000000000000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape97: TQRShape
      Tag = 4
      Left = 958
      Top = 140
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        370.416666666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape98: TQRShape
      Tag = 4
      Left = 1013
      Top = 140
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        370.416666666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel66: TQRLabel
      Tag = 4
      Left = 1015
      Top = 142
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2685.520833333333000000
        375.708333333333300000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel67: TQRLabel
      Tag = 4
      Left = 960
      Top = 143
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2540.000000000000000000
        378.354166666666700000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape99: TQRShape
      Tag = 4
      Left = 590
      Top = 120
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        317.500000000000000000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel68: TQRLabel
      Tag = 4
      Left = 646
      Top = 123
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1709.208333333333000000
        325.437500000000000000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape100: TQRShape
      Tag = 4
      Left = 590
      Top = 140
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        370.416666666666700000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape101: TQRShape
      Tag = 4
      Left = 747
      Top = 140
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        370.416666666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel69: TQRLabel
      Tag = 4
      Left = 592
      Top = 142
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1566.333333333333000000
        375.708333333333400000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel70: TQRLabel
      Tag = 4
      Left = 749
      Top = 142
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1981.729166666667000000
        375.708333333333400000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape102: TQRShape
      Tag = 4
      Left = 618
      Top = 140
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        370.416666666666700000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel71: TQRLabel
      Tag = 4
      Left = 620
      Top = 142
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1640.416666666667000000
        375.708333333333400000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape103: TQRShape
      Tag = 4
      Left = 636
      Top = 140
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        370.416666666666700000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel72: TQRLabel
      Tag = 4
      Left = 638
      Top = 142
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1688.041666666667000000
        375.708333333333400000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape104: TQRShape
      Tag = 4
      Left = 692
      Top = 140
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        370.416666666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel73: TQRLabel
      Tag = 4
      Left = 694
      Top = 142
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1836.208333333333000000
        375.708333333333400000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape105: TQRShape
      Tag = 4
      Left = 774
      Top = 120
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        317.500000000000000000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel74: TQRLabel
      Tag = 4
      Left = 831
      Top = 123
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2198.687500000000000000
        325.437500000000000000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape106: TQRShape
      Tag = 4
      Left = 774
      Top = 140
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        370.416666666666700000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape107: TQRShape
      Tag = 4
      Left = 931
      Top = 140
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        370.416666666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel75: TQRLabel
      Tag = 4
      Left = 776
      Top = 142
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2053.166666666667000000
        375.708333333333400000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel76: TQRLabel
      Tag = 4
      Left = 933
      Top = 142
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2468.562500000000000000
        375.708333333333400000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape108: TQRShape
      Tag = 4
      Left = 802
      Top = 140
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        370.416666666666700000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel77: TQRLabel
      Tag = 4
      Left = 804
      Top = 142
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2127.250000000000000000
        375.708333333333400000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape109: TQRShape
      Tag = 4
      Left = 820
      Top = 140
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        370.416666666666700000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel78: TQRLabel
      Tag = 4
      Left = 822
      Top = 142
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2174.875000000000000000
        375.708333333333400000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape110: TQRShape
      Tag = 4
      Left = 876
      Top = 140
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        370.416666666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel79: TQRLabel
      Tag = 4
      Left = 878
      Top = 142
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2323.041666666667000000
        375.708333333333400000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape111: TQRShape
      Tag = 4
      Left = 373
      Top = 120
      Width = 34
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        986.895833333333200000
        317.500000000000000000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape112: TQRShape
      Tag = 4
      Left = 126
      Top = 120
      Width = 248
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        333.375000000000000000
        317.500000000000000000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel81: TQRLabel
      Tag = 4
      Left = 174
      Top = 133
      Width = 165
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        460.375000000000000000
        351.895833333333400000
        436.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1082#1083#1080#1077#1085#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape113: TQRShape
      Tag = 5
      Left = 126
      Top = 160
      Width = 352
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        423.333333333333300000
        931.333333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape114: TQRShape
      Tag = 5
      Left = 126
      Top = 180
      Width = 276
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        476.250000000000000000
        730.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel82: TQRLabel
      Tag = 5
      Left = 270
      Top = 162
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        714.375000000000000000
        428.625000000000000000
        272.520833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape115: TQRShape
      Tag = 5
      Left = 516
      Top = 160
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        423.333333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape116: TQRShape
      Tag = 5
      Left = 477
      Top = 160
      Width = 40
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1262.062500000000000000
        423.333333333333300000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape117: TQRShape
      Tag = 5
      Left = 401
      Top = 180
      Width = 77
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1060.979166666667000000
        476.250000000000000000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel84: TQRLabel
      Tag = 5
      Left = 405
      Top = 182
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1071.562500000000000000
        481.541666666666700000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'id '#1094#1080#1092#1088#1086#1074
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel85: TQRLabel
      Tag = 5
      Left = 134
      Top = 182
      Width = 259
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        354.541666666666700000
        481.541666666666700000
        685.270833333333200000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape118: TQRShape
      Tag = 5
      Left = 647
      Top = 160
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        423.333333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape119: TQRShape
      Tag = 5
      Left = 909
      Top = 160
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        423.333333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape120: TQRShape
      Tag = 5
      Left = 778
      Top = 160
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        423.333333333333300000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel86: TQRLabel
      Tag = 5
      Left = 555
      Top = 163
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1468.437500000000000000
        431.270833333333400000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel87: TQRLabel
      Tag = 5
      Left = 680
      Top = 163
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1799.166666666667000000
        431.270833333333400000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel88: TQRLabel
      Tag = 5
      Left = 812
      Top = 163
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2148.416666666667000000
        431.270833333333400000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel89: TQRLabel
      Tag = 5
      Left = 938
      Top = 163
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2481.791666666667000000
        431.270833333333400000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape121: TQRShape
      Tag = 5
      Left = 516
      Top = 180
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        476.250000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape122: TQRShape
      Tag = 5
      Left = 582
      Top = 180
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        476.250000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel90: TQRLabel
      Tag = 5
      Left = 536
      Top = 182
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1418.166666666667000000
        481.541666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel91: TQRLabel
      Tag = 5
      Left = 600
      Top = 182
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1587.500000000000000000
        481.541666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape123: TQRShape
      Tag = 5
      Left = 647
      Top = 180
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        476.250000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape124: TQRShape
      Tag = 5
      Left = 713
      Top = 180
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        476.250000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel92: TQRLabel
      Tag = 5
      Left = 667
      Top = 182
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1764.770833333333000000
        481.541666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel93: TQRLabel
      Tag = 5
      Left = 731
      Top = 182
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1934.104166666667000000
        481.541666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape125: TQRShape
      Tag = 5
      Left = 778
      Top = 180
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        476.250000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape126: TQRShape
      Tag = 5
      Left = 844
      Top = 180
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        476.250000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel94: TQRLabel
      Tag = 5
      Left = 798
      Top = 182
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2111.375000000000000000
        481.541666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel95: TQRLabel
      Tag = 5
      Left = 862
      Top = 182
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2280.708333333333000000
        481.541666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape127: TQRShape
      Tag = 5
      Left = 909
      Top = 180
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        476.250000000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape128: TQRShape
      Tag = 5
      Left = 975
      Top = 180
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        476.250000000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel96: TQRLabel
      Tag = 5
      Left = 929
      Top = 182
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2457.979166666667000000
        481.541666666666700000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel97: TQRLabel
      Tag = 5
      Left = 993
      Top = 182
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2627.312500000000000000
        481.541666666666700000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape129: TQRShape
      Tag = 7
      Left = 406
      Top = 240
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        635.000000000000000000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel98: TQRLabel
      Tag = 7
      Left = 467
      Top = 243
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1235.604166666667000000
        642.937500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape130: TQRShape
      Tag = 7
      Left = 406
      Top = 260
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        687.916666666666800000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape131: TQRShape
      Tag = 7
      Left = 563
      Top = 260
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        687.916666666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel99: TQRLabel
      Tag = 7
      Left = 408
      Top = 262
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1079.500000000000000000
        693.208333333333200000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel100: TQRLabel
      Tag = 7
      Left = 565
      Top = 262
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1494.895833333333000000
        693.208333333333200000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape132: TQRShape
      Tag = 7
      Left = 434
      Top = 260
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        687.916666666666800000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel101: TQRLabel
      Tag = 7
      Left = 436
      Top = 262
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1153.583333333333000000
        693.208333333333200000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape133: TQRShape
      Tag = 7
      Left = 452
      Top = 260
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        687.916666666666800000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel102: TQRLabel
      Tag = 7
      Left = 454
      Top = 262
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1201.208333333333000000
        693.208333333333200000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape134: TQRShape
      Tag = 7
      Left = 508
      Top = 260
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        687.916666666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel103: TQRLabel
      Tag = 7
      Left = 510
      Top = 262
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1349.375000000000000000
        693.208333333333200000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape135: TQRShape
      Tag = 7
      Left = 958
      Top = 240
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        635.000000000000000000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel104: TQRLabel
      Tag = 7
      Left = 964
      Top = 243
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2550.583333333333000000
        642.937500000000000000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape136: TQRShape
      Tag = 7
      Left = 958
      Top = 260
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        687.916666666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape137: TQRShape
      Tag = 7
      Left = 1013
      Top = 260
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        687.916666666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel105: TQRLabel
      Tag = 7
      Left = 1015
      Top = 262
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2685.520833333333000000
        693.208333333333200000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel106: TQRLabel
      Tag = 7
      Left = 960
      Top = 263
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2540.000000000000000000
        695.854166666666800000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape138: TQRShape
      Tag = 7
      Left = 590
      Top = 240
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        635.000000000000000000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel107: TQRLabel
      Tag = 7
      Left = 646
      Top = 243
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1709.208333333333000000
        642.937500000000000000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape139: TQRShape
      Tag = 7
      Left = 590
      Top = 260
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        687.916666666666800000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape140: TQRShape
      Tag = 7
      Left = 747
      Top = 260
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        687.916666666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel108: TQRLabel
      Tag = 7
      Left = 592
      Top = 262
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1566.333333333333000000
        693.208333333333200000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel109: TQRLabel
      Tag = 7
      Left = 749
      Top = 262
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1981.729166666667000000
        693.208333333333200000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape141: TQRShape
      Tag = 7
      Left = 618
      Top = 260
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        687.916666666666800000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel110: TQRLabel
      Tag = 7
      Left = 620
      Top = 262
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1640.416666666667000000
        693.208333333333200000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape142: TQRShape
      Tag = 7
      Left = 636
      Top = 260
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        687.916666666666800000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel111: TQRLabel
      Tag = 7
      Left = 638
      Top = 262
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1688.041666666667000000
        693.208333333333200000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape143: TQRShape
      Tag = 7
      Left = 692
      Top = 260
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        687.916666666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel112: TQRLabel
      Tag = 7
      Left = 694
      Top = 262
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1836.208333333333000000
        693.208333333333200000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape144: TQRShape
      Tag = 7
      Left = 774
      Top = 240
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        635.000000000000000000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel113: TQRLabel
      Tag = 7
      Left = 831
      Top = 243
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2198.687500000000000000
        642.937500000000000000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape145: TQRShape
      Tag = 7
      Left = 774
      Top = 260
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        687.916666666666800000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape146: TQRShape
      Tag = 7
      Left = 931
      Top = 260
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        687.916666666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel114: TQRLabel
      Tag = 7
      Left = 776
      Top = 262
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2053.166666666667000000
        693.208333333333200000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel115: TQRLabel
      Tag = 7
      Left = 933
      Top = 262
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2468.562500000000000000
        693.208333333333200000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape147: TQRShape
      Tag = 7
      Left = 802
      Top = 260
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        687.916666666666800000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel116: TQRLabel
      Tag = 7
      Left = 804
      Top = 262
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2127.250000000000000000
        693.208333333333200000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape148: TQRShape
      Tag = 7
      Left = 820
      Top = 260
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        687.916666666666800000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel117: TQRLabel
      Tag = 7
      Left = 822
      Top = 262
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2174.875000000000000000
        693.208333333333200000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape149: TQRShape
      Tag = 7
      Left = 876
      Top = 260
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        687.916666666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel118: TQRLabel
      Tag = 7
      Left = 878
      Top = 262
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2323.041666666667000000
        693.208333333333200000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape150: TQRShape
      Tag = 7
      Left = 126
      Top = 240
      Width = 248
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        333.375000000000000000
        635.000000000000000000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel119: TQRLabel
      Tag = 7
      Left = 204
      Top = 253
      Width = 103
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        539.750000000000000000
        669.395833333333400000
        272.520833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape151: TQRShape
      Tag = 7
      Left = 373
      Top = 240
      Width = 34
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        986.895833333333200000
        635.000000000000000000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape152: TQRShape
      Tag = 6
      Left = 516
      Top = 200
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        529.166666666666700000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape153: TQRShape
      Tag = 6
      Left = 647
      Top = 200
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        529.166666666666700000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape154: TQRShape
      Tag = 6
      Left = 909
      Top = 200
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        529.166666666666700000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape155: TQRShape
      Tag = 6
      Left = 778
      Top = 200
      Width = 132
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        529.166666666666700000
        349.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel121: TQRLabel
      Tag = 6
      Left = 555
      Top = 203
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1468.437500000000000000
        537.104166666666700000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel122: TQRLabel
      Tag = 6
      Left = 680
      Top = 203
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1799.166666666667000000
        537.104166666666700000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel123: TQRLabel
      Tag = 6
      Left = 812
      Top = 203
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2148.416666666667000000
        537.104166666666700000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel124: TQRLabel
      Tag = 6
      Left = 938
      Top = 203
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2481.791666666667000000
        537.104166666666700000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape156: TQRShape
      Tag = 6
      Left = 516
      Top = 220
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        582.083333333333200000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape157: TQRShape
      Tag = 6
      Left = 582
      Top = 220
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        582.083333333333200000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel125: TQRLabel
      Tag = 6
      Left = 536
      Top = 222
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1418.166666666667000000
        587.375000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel126: TQRLabel
      Tag = 6
      Left = 600
      Top = 222
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1587.500000000000000000
        587.375000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape158: TQRShape
      Tag = 6
      Left = 647
      Top = 220
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        582.083333333333200000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape159: TQRShape
      Tag = 6
      Left = 713
      Top = 220
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        582.083333333333200000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel127: TQRLabel
      Tag = 6
      Left = 667
      Top = 222
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1764.770833333333000000
        587.375000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel128: TQRLabel
      Tag = 6
      Left = 731
      Top = 222
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1934.104166666667000000
        587.375000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape160: TQRShape
      Tag = 6
      Left = 778
      Top = 220
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        582.083333333333200000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape161: TQRShape
      Tag = 6
      Left = 844
      Top = 220
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        582.083333333333200000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel129: TQRLabel
      Tag = 6
      Left = 798
      Top = 222
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2111.375000000000000000
        587.375000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel130: TQRLabel
      Tag = 6
      Left = 862
      Top = 222
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2280.708333333333000000
        587.375000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape162: TQRShape
      Tag = 6
      Left = 909
      Top = 220
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        582.083333333333200000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape163: TQRShape
      Tag = 6
      Left = 975
      Top = 220
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        582.083333333333200000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel131: TQRLabel
      Tag = 6
      Left = 929
      Top = 222
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2457.979166666667000000
        587.375000000000000000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel132: TQRLabel
      Tag = 6
      Left = 993
      Top = 222
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2627.312500000000000000
        587.375000000000000000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape164: TQRShape
      Tag = 6
      Left = 477
      Top = 200
      Width = 40
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1262.062500000000000000
        529.166666666666700000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape165: TQRShape
      Tag = 6
      Left = 126
      Top = 200
      Width = 352
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        333.375000000000000000
        529.166666666666700000
        931.333333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel134: TQRLabel
      Tag = 6
      Left = 222
      Top = 210
      Width = 165
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        587.375000000000000000
        555.625000000000000000
        436.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1082#1083#1080#1077#1085#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape166: TQRShape
      Tag = 8
      Left = 406
      Top = 280
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        740.833333333333200000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel135: TQRLabel
      Tag = 8
      Left = 467
      Top = 283
      Width = 57
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1235.604166666667000000
        748.770833333333400000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1086#1080#1089#1082#1072#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape167: TQRShape
      Tag = 8
      Left = 406
      Top = 300
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        793.750000000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape168: TQRShape
      Tag = 8
      Left = 563
      Top = 300
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        793.750000000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel136: TQRLabel
      Tag = 8
      Left = 408
      Top = 302
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1079.500000000000000000
        799.041666666666800000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel137: TQRLabel
      Tag = 8
      Left = 565
      Top = 302
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1494.895833333333000000
        799.041666666666800000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape169: TQRShape
      Tag = 8
      Left = 434
      Top = 300
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        793.750000000000000000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel138: TQRLabel
      Tag = 8
      Left = 436
      Top = 302
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1153.583333333333000000
        799.041666666666800000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape170: TQRShape
      Tag = 8
      Left = 452
      Top = 300
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        793.750000000000000000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel139: TQRLabel
      Tag = 8
      Left = 454
      Top = 302
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1201.208333333333000000
        799.041666666666800000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape171: TQRShape
      Tag = 8
      Left = 508
      Top = 300
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        793.750000000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel140: TQRLabel
      Tag = 8
      Left = 510
      Top = 302
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1349.375000000000000000
        799.041666666666800000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape172: TQRShape
      Tag = 8
      Left = 958
      Top = 280
      Width = 83
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        740.833333333333200000
        219.604166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel141: TQRLabel
      Tag = 8
      Left = 964
      Top = 283
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2550.583333333333000000
        748.770833333333200000
        185.208333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape173: TQRShape
      Tag = 8
      Left = 958
      Top = 300
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        793.750000000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape174: TQRShape
      Tag = 8
      Left = 1013
      Top = 300
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        793.750000000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel142: TQRLabel
      Tag = 8
      Left = 1015
      Top = 302
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2685.520833333333000000
        799.041666666666800000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel143: TQRLabel
      Tag = 8
      Left = 960
      Top = 303
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2540.000000000000000000
        801.687500000000000000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape175: TQRShape
      Tag = 8
      Left = 590
      Top = 280
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        740.833333333333200000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel144: TQRLabel
      Tag = 8
      Left = 646
      Top = 283
      Width = 68
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1709.208333333333000000
        748.770833333333400000
        179.916666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape176: TQRShape
      Tag = 8
      Left = 590
      Top = 300
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        793.750000000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape177: TQRShape
      Tag = 8
      Left = 747
      Top = 300
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        793.750000000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel145: TQRLabel
      Tag = 8
      Left = 592
      Top = 302
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1566.333333333333000000
        799.041666666666800000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel146: TQRLabel
      Tag = 8
      Left = 749
      Top = 302
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1981.729166666667000000
        799.041666666666800000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape178: TQRShape
      Tag = 8
      Left = 618
      Top = 300
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        793.750000000000000000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel147: TQRLabel
      Tag = 8
      Left = 620
      Top = 302
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1640.416666666667000000
        799.041666666666800000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape179: TQRShape
      Tag = 8
      Left = 636
      Top = 300
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        793.750000000000000000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel148: TQRLabel
      Tag = 8
      Left = 638
      Top = 302
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1688.041666666667000000
        799.041666666666800000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape180: TQRShape
      Tag = 8
      Left = 692
      Top = 300
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        793.750000000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel149: TQRLabel
      Tag = 8
      Left = 694
      Top = 302
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1836.208333333333000000
        799.041666666666800000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape181: TQRShape
      Tag = 8
      Left = 774
      Top = 280
      Width = 185
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        740.833333333333200000
        489.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel150: TQRLabel
      Tag = 8
      Left = 831
      Top = 283
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2198.687500000000000000
        748.770833333333400000
        174.625000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1088#1086#1076#1072#1076#1077#1085#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape182: TQRShape
      Tag = 8
      Left = 774
      Top = 300
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        793.750000000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape183: TQRShape
      Tag = 8
      Left = 931
      Top = 300
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        793.750000000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel151: TQRLabel
      Tag = 8
      Left = 776
      Top = 302
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2053.166666666667000000
        799.041666666666800000
        66.145833333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050'-'#1074#1086
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel152: TQRLabel
      Tag = 8
      Left = 933
      Top = 302
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2468.562500000000000000
        799.041666666666800000
        63.500000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1055#1057'*'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape184: TQRShape
      Tag = 8
      Left = 802
      Top = 300
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        793.750000000000000000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel153: TQRLabel
      Tag = 8
      Left = 804
      Top = 302
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2127.250000000000000000
        799.041666666666800000
        39.687500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1047#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape185: TQRShape
      Tag = 8
      Left = 820
      Top = 300
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        793.750000000000000000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel154: TQRLabel
      Tag = 8
      Left = 822
      Top = 302
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2174.875000000000000000
        799.041666666666800000
        140.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1077#1084'. '#1089#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape186: TQRShape
      Tag = 8
      Left = 876
      Top = 300
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        793.750000000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel155: TQRLabel
      Tag = 8
      Left = 878
      Top = 302
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        2323.041666666667000000
        799.041666666666800000
        137.583333333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1088#1077#1089'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape187: TQRShape
      Tag = 8
      Left = 373
      Top = 280
      Width = 34
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        986.895833333333200000
        740.833333333333200000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape188: TQRShape
      Tag = 8
      Left = 126
      Top = 280
      Width = 248
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        333.375000000000000000
        740.833333333333200000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel157: TQRLabel
      Tag = 8
      Left = 174
      Top = 293
      Width = 165
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        460.375000000000000000
        775.229166666666800000
        436.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1054#1073' '#1086#1090' '#1082#1083#1080#1077#1085#1090
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel57: TQRLabel
      Tag = 2
      Left = 479
      Top = 43
      Width = 35
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        1267.354166666667000000
        113.770833333333300000
        92.604166666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1052'. '#1045#1076'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel44: TQRLabel
      Tag = 3
      Left = 375
      Top = 85
      Width = 30
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        992.187500000000000000
        224.895833333333300000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1052'.'#1045#1076'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel80: TQRLabel
      Tag = 4
      Left = 375
      Top = 124
      Width = 30
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        992.187500000000000000
        328.083333333333300000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1072#1073'. '#1052'.'#1045#1076'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel83: TQRLabel
      Tag = 5
      Left = 479
      Top = 163
      Width = 35
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        1267.354166666667000000
        431.270833333333300000
        92.604166666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1052'. '#1045#1076'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel120: TQRLabel
      Tag = 6
      Left = 479
      Top = 204
      Width = 35
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        1267.354166666667000000
        539.750000000000000000
        92.604166666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1052'. '#1045#1076'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel133: TQRLabel
      Tag = 7
      Left = 375
      Top = 245
      Width = 30
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        992.187500000000000000
        648.229166666666800000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1052'. '#1045#1076'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel156: TQRLabel
      Tag = 8
      Left = 375
      Top = 284
      Width = 30
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333320000
        992.187500000000000000
        751.416666666666800000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1095#1077#1090'. '#1052'. '#1045#1076'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRBand3: TQRBand [3]
    Left = 38
    Top = 481
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      825.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRShape44: TQRShape
      Tag = 1
      Left = 126
      Top = -1
      Width = 276
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        -2.645833333333333000
        730.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape45: TQRShape
      Left = 0
      Top = -1
      Width = 41
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        0.000000000000000000
        -2.645833333333333000
        108.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape46: TQRShape
      Left = 40
      Top = -1
      Width = 87
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
        230.187500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape47: TQRShape
      Tag = 1
      Left = 477
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
        1262.062500000000000000
        -2.645833333333333000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape48: TQRShape
      Tag = 1
      Left = 401
      Top = -1
      Width = 77
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1060.979166666667000000
        -2.645833333333333000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape49: TQRShape
      Tag = 1
      Left = 516
      Top = -1
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        -2.645833333333333000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape50: TQRShape
      Tag = 1
      Left = 582
      Top = -1
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        -2.645833333333333000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape51: TQRShape
      Tag = 1
      Left = 647
      Top = -1
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        -2.645833333333333000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape52: TQRShape
      Tag = 1
      Left = 713
      Top = -1
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        -2.645833333333333000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape53: TQRShape
      Tag = 1
      Left = 778
      Top = -1
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        -2.645833333333333000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape54: TQRShape
      Tag = 1
      Left = 844
      Top = -1
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        -2.645833333333333000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape55: TQRShape
      Tag = 1
      Left = 909
      Top = -1
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        -2.645833333333333000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape56: TQRShape
      Tag = 1
      Left = 975
      Top = -1
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        -2.645833333333333000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText13: TQRDBText
      Left = 2
      Top = 1
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        5.291666666666667000
        2.645833333333333000
        97.895833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REQUEST_LINE_NO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText14: TQRDBText
      Left = 42
      Top = 1
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        111.125000000000000000
        2.645833333333333000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_SALE_IDENTIFICATION'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText15: TQRDBText
      Tag = 1
      Left = 128
      Top = 1
      Width = 272
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        2.645833333333333000
        719.666666666666800000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText16: TQRDBText
      Tag = 1
      Left = 403
      Top = 1
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1066.270833333333000000
        2.645833333333333000
        193.145833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText17: TQRDBText
      Tag = 1
      Left = 479
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
        1267.354166666667000000
        2.645833333333333000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText1: TQRDBText
      Tag = 1
      Left = 518
      Top = 1
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1370.541666666667000000
        2.645833333333333000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText2: TQRDBText
      Tag = 1
      Left = 584
      Top = 1
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText3: TQRDBText
      Tag = 1
      Left = 649
      Top = 1
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1717.145833333333000000
        2.645833333333333000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText4: TQRDBText
      Tag = 1
      Left = 715
      Top = 1
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1891.770833333333000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText5: TQRDBText
      Tag = 1
      Left = 780
      Top = 1
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2063.750000000000000000
        2.645833333333333000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPPED_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText6: TQRDBText
      Tag = 1
      Left = 846
      Top = 1
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2238.375000000000000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText7: TQRDBText
      Tag = 1
      Left = 911
      Top = 1
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2410.354166666667000000
        2.645833333333333000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText8: TQRDBText
      Tag = 1
      Left = 977
      Top = 1
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2584.979166666667000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape58: TQRShape
      Tag = 3
      Left = 406
      Top = 79
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        209.020833333333300000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape59: TQRShape
      Tag = 3
      Left = 563
      Top = 79
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        209.020833333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape60: TQRShape
      Tag = 3
      Left = 434
      Top = 79
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        209.020833333333300000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape61: TQRShape
      Tag = 3
      Left = 452
      Top = 79
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        209.020833333333300000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape62: TQRShape
      Tag = 3
      Left = 508
      Top = 79
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        209.020833333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText9: TQRDBText
      Tag = 3
      Left = 408
      Top = 83
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1079.500000000000000000
        219.604166666666700000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText10: TQRDBText
      Tag = 3
      Left = 436
      Top = 83
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1153.583333333333000000
        219.604166666666700000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText11: TQRDBText
      Tag = 3
      Left = 454
      Top = 83
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1201.208333333333000000
        219.604166666666700000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText12: TQRDBText
      Tag = 3
      Left = 511
      Top = 83
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1352.020833333333000000
        219.604166666666700000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_RESOURCE_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText18: TQRDBText
      Tag = 3
      Left = 565
      Top = 83
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1494.895833333333000000
        219.604166666666700000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape57: TQRShape
      Tag = 3
      Left = 590
      Top = 79
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        209.020833333333300000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape63: TQRShape
      Tag = 3
      Left = 747
      Top = 79
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        209.020833333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape64: TQRShape
      Tag = 3
      Left = 618
      Top = 79
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        209.020833333333300000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape65: TQRShape
      Tag = 3
      Left = 636
      Top = 79
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        209.020833333333300000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape66: TQRShape
      Tag = 3
      Left = 692
      Top = 79
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        209.020833333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText19: TQRDBText
      Tag = 3
      Left = 592
      Top = 83
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1566.333333333333000000
        219.604166666666700000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText20: TQRDBText
      Tag = 3
      Left = 620
      Top = 83
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1640.416666666667000000
        219.604166666666700000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText21: TQRDBText
      Tag = 3
      Left = 638
      Top = 83
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1688.041666666667000000
        219.604166666666700000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText22: TQRDBText
      Tag = 3
      Left = 695
      Top = 83
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1838.854166666667000000
        219.604166666666700000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText23: TQRDBText
      Tag = 3
      Left = 749
      Top = 83
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1981.729166666667000000
        219.604166666666700000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape67: TQRShape
      Tag = 3
      Left = 774
      Top = 79
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        209.020833333333300000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape68: TQRShape
      Tag = 3
      Left = 931
      Top = 79
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        209.020833333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape69: TQRShape
      Tag = 3
      Left = 802
      Top = 79
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        209.020833333333300000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape70: TQRShape
      Tag = 3
      Left = 820
      Top = 79
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        209.020833333333300000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape71: TQRShape
      Tag = 3
      Left = 876
      Top = 79
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        209.020833333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText24: TQRDBText
      Tag = 3
      Left = 776
      Top = 83
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2053.166666666667000000
        219.604166666666700000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPPED_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText25: TQRDBText
      Tag = 3
      Left = 804
      Top = 83
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2127.250000000000000000
        219.604166666666700000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText26: TQRDBText
      Tag = 3
      Left = 822
      Top = 83
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2174.875000000000000000
        219.604166666666700000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText27: TQRDBText
      Tag = 3
      Left = 879
      Top = 83
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2325.687500000000000000
        219.604166666666700000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_RESOURCE_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText28: TQRDBText
      Tag = 3
      Left = 933
      Top = 83
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2468.562500000000000000
        219.604166666666700000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape72: TQRShape
      Tag = 3
      Left = 958
      Top = 79
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        209.020833333333300000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape73: TQRShape
      Tag = 3
      Left = 1013
      Top = 79
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        209.020833333333300000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText29: TQRDBText
      Tag = 3
      Left = 960
      Top = 83
      Width = 52
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2540.000000000000000000
        219.604166666666700000
        137.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_QTY_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText30: TQRDBText
      Tag = 3
      Left = 1015
      Top = 83
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2685.520833333333000000
        219.604166666666700000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape74: TQRShape
      Tag = 3
      Left = 126
      Top = 79
      Width = 248
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        209.020833333333300000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape75: TQRShape
      Tag = 3
      Left = 373
      Top = 79
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        986.895833333333200000
        209.020833333333300000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText31: TQRDBText
      Tag = 3
      Left = 128
      Top = 81
      Width = 244
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        214.312500000000000000
        645.583333333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText32: TQRDBText
      Tag = 3
      Left = 375
      Top = 81
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        992.187500000000000000
        214.312500000000000000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_MEASURE_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape189: TQRShape
      Tag = 2
      Left = 126
      Top = 39
      Width = 352
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        103.187500000000000000
        931.333333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape190: TQRShape
      Tag = 2
      Left = 477
      Top = 39
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1262.062500000000000000
        103.187500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape192: TQRShape
      Tag = 2
      Left = 516
      Top = 39
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        103.187500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape193: TQRShape
      Tag = 2
      Left = 582
      Top = 39
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        103.187500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape194: TQRShape
      Tag = 2
      Left = 647
      Top = 39
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        103.187500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape195: TQRShape
      Tag = 2
      Left = 713
      Top = 39
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        103.187500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape196: TQRShape
      Tag = 2
      Left = 778
      Top = 39
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        103.187500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape197: TQRShape
      Tag = 2
      Left = 844
      Top = 39
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        103.187500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape198: TQRShape
      Tag = 2
      Left = 909
      Top = 39
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        103.187500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape199: TQRShape
      Tag = 2
      Left = 975
      Top = 39
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        103.187500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText33: TQRDBText
      Tag = 2
      Left = 128
      Top = 41
      Width = 348
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        108.479166666666700000
        920.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'COMPANY_PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText35: TQRDBText
      Tag = 2
      Left = 479
      Top = 41
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1267.354166666667000000
        108.479166666666700000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText36: TQRDBText
      Tag = 2
      Left = 518
      Top = 41
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1370.541666666667000000
        108.479166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText37: TQRDBText
      Tag = 2
      Left = 584
      Top = 41
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        108.479166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText38: TQRDBText
      Tag = 2
      Left = 649
      Top = 41
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1717.145833333333000000
        108.479166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText39: TQRDBText
      Tag = 2
      Left = 715
      Top = 41
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1891.770833333333000000
        108.479166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText40: TQRDBText
      Tag = 2
      Left = 780
      Top = 41
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2063.750000000000000000
        108.479166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPPED_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText41: TQRDBText
      Tag = 2
      Left = 846
      Top = 41
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2238.375000000000000000
        108.479166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText42: TQRDBText
      Tag = 2
      Left = 911
      Top = 41
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2410.354166666667000000
        108.479166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText43: TQRDBText
      Tag = 2
      Left = 977
      Top = 41
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2584.979166666667000000
        108.479166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape216: TQRShape
      Tag = 4
      Left = 126
      Top = 119
      Width = 248
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        314.854166666666700000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape217: TQRShape
      Tag = 4
      Left = 373
      Top = 119
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        986.895833333333200000
        314.854166666666700000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText60: TQRDBText
      Tag = 4
      Left = 128
      Top = 121
      Width = 244
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        320.145833333333300000
        645.583333333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'COMPANY_PRODUCT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText61: TQRDBText
      Tag = 4
      Left = 375
      Top = 121
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        992.187500000000000000
        320.145833333333300000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_MEASURE_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape218: TQRShape
      Tag = 5
      Left = 126
      Top = 159
      Width = 276
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        420.687500000000000000
        730.250000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape219: TQRShape
      Tag = 5
      Left = 477
      Top = 159
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1262.062500000000000000
        420.687500000000000000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape220: TQRShape
      Tag = 5
      Left = 401
      Top = 159
      Width = 77
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1060.979166666667000000
        420.687500000000000000
        203.729166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape221: TQRShape
      Tag = 5
      Left = 516
      Top = 159
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        420.687500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape222: TQRShape
      Tag = 5
      Left = 582
      Top = 159
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        420.687500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape223: TQRShape
      Tag = 5
      Left = 647
      Top = 159
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        420.687500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape224: TQRShape
      Tag = 5
      Left = 713
      Top = 159
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        420.687500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape225: TQRShape
      Tag = 5
      Left = 778
      Top = 159
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        420.687500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape226: TQRShape
      Tag = 5
      Left = 844
      Top = 159
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        420.687500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape227: TQRShape
      Tag = 5
      Left = 909
      Top = 159
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        420.687500000000000000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape228: TQRShape
      Tag = 5
      Left = 975
      Top = 159
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        420.687500000000000000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText62: TQRDBText
      Tag = 5
      Left = 128
      Top = 161
      Width = 272
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        425.979166666666700000
        719.666666666666800000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText63: TQRDBText
      Tag = 5
      Left = 403
      Top = 161
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1066.270833333333000000
        425.979166666666700000
        193.145833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText64: TQRDBText
      Tag = 5
      Left = 479
      Top = 161
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1267.354166666667000000
        425.979166666666700000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText65: TQRDBText
      Tag = 5
      Left = 518
      Top = 161
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1370.541666666667000000
        425.979166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_CL_OFFER_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText66: TQRDBText
      Tag = 5
      Left = 584
      Top = 161
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        425.979166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText67: TQRDBText
      Tag = 5
      Left = 649
      Top = 161
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1717.145833333333000000
        425.979166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText68: TQRDBText
      Tag = 5
      Left = 715
      Top = 161
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1891.770833333333000000
        425.979166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText69: TQRDBText
      Tag = 5
      Left = 780
      Top = 161
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2063.750000000000000000
        425.979166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_SHIPPED_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText70: TQRDBText
      Tag = 5
      Left = 846
      Top = 161
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2238.375000000000000000
        425.979166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText71: TQRDBText
      Tag = 5
      Left = 911
      Top = 161
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2410.354166666667000000
        425.979166666666700000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_QUANTITY_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText72: TQRDBText
      Tag = 5
      Left = 977
      Top = 161
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2584.979166666667000000
        425.979166666666700000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape230: TQRShape
      Tag = 6
      Left = 477
      Top = 199
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1262.062500000000000000
        526.520833333333300000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape232: TQRShape
      Tag = 6
      Left = 516
      Top = 199
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1365.250000000000000000
        526.520833333333300000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape233: TQRShape
      Tag = 6
      Left = 582
      Top = 199
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1539.875000000000000000
        526.520833333333300000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape234: TQRShape
      Tag = 6
      Left = 647
      Top = 199
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1711.854166666667000000
        526.520833333333300000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape235: TQRShape
      Tag = 6
      Left = 713
      Top = 199
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1886.479166666667000000
        526.520833333333300000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape236: TQRShape
      Tag = 6
      Left = 778
      Top = 199
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2058.458333333333000000
        526.520833333333300000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape237: TQRShape
      Tag = 6
      Left = 844
      Top = 199
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2233.083333333333000000
        526.520833333333300000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape238: TQRShape
      Tag = 6
      Left = 909
      Top = 199
      Width = 67
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2405.062500000000000000
        526.520833333333300000
        177.270833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape239: TQRShape
      Tag = 6
      Left = 975
      Top = 199
      Width = 66
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2579.687500000000000000
        526.520833333333300000
        174.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText75: TQRDBText
      Tag = 6
      Left = 479
      Top = 201
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1267.354166666667000000
        531.812500000000000000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText76: TQRDBText
      Tag = 6
      Left = 518
      Top = 201
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1370.541666666667000000
        531.812500000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_CL_OFFER_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText77: TQRDBText
      Tag = 6
      Left = 584
      Top = 201
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        531.812500000000000000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText78: TQRDBText
      Tag = 6
      Left = 649
      Top = 201
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1717.145833333333000000
        531.812500000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText79: TQRDBText
      Tag = 6
      Left = 715
      Top = 201
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1891.770833333333000000
        531.812500000000000000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText80: TQRDBText
      Tag = 6
      Left = 780
      Top = 201
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2063.750000000000000000
        531.812500000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_SHIPPED_QUANTITY'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText81: TQRDBText
      Tag = 6
      Left = 846
      Top = 201
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2238.375000000000000000
        531.812500000000000000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText82: TQRDBText
      Tag = 6
      Left = 911
      Top = 201
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2410.354166666667000000
        531.812500000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_QUANTITY_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText83: TQRDBText
      Tag = 6
      Left = 977
      Top = 201
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2584.979166666667000000
        531.812500000000000000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape229: TQRShape
      Tag = 6
      Left = 126
      Top = 199
      Width = 352
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        526.520833333333300000
        931.333333333333200000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText73: TQRDBText
      Tag = 6
      Left = 128
      Top = 201
      Width = 348
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        531.812500000000000000
        920.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'COMPANY_PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape191: TQRShape
      Tag = 4
      Left = 406
      Top = 119
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        314.854166666666700000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape200: TQRShape
      Tag = 4
      Left = 563
      Top = 119
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        314.854166666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape201: TQRShape
      Tag = 4
      Left = 434
      Top = 119
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        314.854166666666700000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape202: TQRShape
      Tag = 4
      Left = 452
      Top = 119
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        314.854166666666700000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape203: TQRShape
      Tag = 4
      Left = 508
      Top = 119
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        314.854166666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText34: TQRDBText
      Tag = 4
      Left = 408
      Top = 123
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1079.500000000000000000
        325.437500000000000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText44: TQRDBText
      Tag = 4
      Left = 436
      Top = 123
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1153.583333333333000000
        325.437500000000000000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText45: TQRDBText
      Tag = 4
      Left = 454
      Top = 123
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1201.208333333333000000
        325.437500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText46: TQRDBText
      Tag = 4
      Left = 511
      Top = 123
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1352.020833333333000000
        325.437500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_RESOURCE_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText47: TQRDBText
      Tag = 4
      Left = 565
      Top = 123
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1494.895833333333000000
        325.437500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape204: TQRShape
      Tag = 4
      Left = 590
      Top = 119
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        314.854166666666700000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape205: TQRShape
      Tag = 4
      Left = 747
      Top = 119
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        314.854166666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape206: TQRShape
      Tag = 4
      Left = 618
      Top = 119
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        314.854166666666700000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape207: TQRShape
      Tag = 4
      Left = 636
      Top = 119
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        314.854166666666700000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape208: TQRShape
      Tag = 4
      Left = 692
      Top = 119
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        314.854166666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText48: TQRDBText
      Tag = 4
      Left = 592
      Top = 123
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1566.333333333333000000
        325.437500000000000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText49: TQRDBText
      Tag = 4
      Left = 620
      Top = 123
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1640.416666666667000000
        325.437500000000000000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText50: TQRDBText
      Tag = 4
      Left = 638
      Top = 123
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1688.041666666667000000
        325.437500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText51: TQRDBText
      Tag = 4
      Left = 695
      Top = 123
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1838.854166666667000000
        325.437500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText52: TQRDBText
      Tag = 4
      Left = 749
      Top = 123
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1981.729166666667000000
        325.437500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape209: TQRShape
      Tag = 4
      Left = 774
      Top = 119
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        314.854166666666700000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape210: TQRShape
      Tag = 4
      Left = 931
      Top = 119
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        314.854166666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape211: TQRShape
      Tag = 4
      Left = 802
      Top = 119
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        314.854166666666700000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape212: TQRShape
      Tag = 4
      Left = 820
      Top = 119
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        314.854166666666700000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape213: TQRShape
      Tag = 4
      Left = 876
      Top = 119
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        314.854166666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText53: TQRDBText
      Tag = 4
      Left = 776
      Top = 123
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2053.166666666667000000
        325.437500000000000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'SHIPPED_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText54: TQRDBText
      Tag = 4
      Left = 804
      Top = 123
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2127.250000000000000000
        325.437500000000000000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText55: TQRDBText
      Tag = 4
      Left = 822
      Top = 123
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2174.875000000000000000
        325.437500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText56: TQRDBText
      Tag = 4
      Left = 879
      Top = 123
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2325.687500000000000000
        325.437500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_RESOURCE_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText57: TQRDBText
      Tag = 4
      Left = 933
      Top = 123
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2468.562500000000000000
        325.437500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape214: TQRShape
      Tag = 4
      Left = 958
      Top = 119
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        314.854166666666700000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape215: TQRShape
      Tag = 4
      Left = 1013
      Top = 119
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        314.854166666666700000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText58: TQRDBText
      Tag = 4
      Left = 960
      Top = 123
      Width = 52
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2540.000000000000000000
        325.437500000000000000
        137.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_QTY_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText59: TQRDBText
      Tag = 4
      Left = 1015
      Top = 123
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2685.520833333333000000
        325.437500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape231: TQRShape
      Tag = 7
      Left = 406
      Top = 239
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        632.354166666666800000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape240: TQRShape
      Tag = 7
      Left = 563
      Top = 239
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        632.354166666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape241: TQRShape
      Tag = 7
      Left = 434
      Top = 239
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        632.354166666666800000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape242: TQRShape
      Tag = 7
      Left = 452
      Top = 239
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        632.354166666666800000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape243: TQRShape
      Tag = 7
      Left = 508
      Top = 239
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        632.354166666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText74: TQRDBText
      Tag = 7
      Left = 408
      Top = 243
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1079.500000000000000000
        642.937500000000000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_CL_OFFER_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText84: TQRDBText
      Tag = 7
      Left = 436
      Top = 243
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1153.583333333333000000
        642.937500000000000000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText85: TQRDBText
      Tag = 7
      Left = 454
      Top = 243
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1201.208333333333000000
        642.937500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText86: TQRDBText
      Tag = 7
      Left = 511
      Top = 243
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1352.020833333333000000
        642.937500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_RESOURCE_A_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText87: TQRDBText
      Tag = 7
      Left = 565
      Top = 243
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1494.895833333333000000
        642.937500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape244: TQRShape
      Tag = 7
      Left = 590
      Top = 239
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        632.354166666666800000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape245: TQRShape
      Tag = 7
      Left = 747
      Top = 239
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        632.354166666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape246: TQRShape
      Tag = 7
      Left = 618
      Top = 239
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        632.354166666666800000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape247: TQRShape
      Tag = 7
      Left = 636
      Top = 239
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        632.354166666666800000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape248: TQRShape
      Tag = 7
      Left = 692
      Top = 239
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        632.354166666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText88: TQRDBText
      Tag = 7
      Left = 592
      Top = 243
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1566.333333333333000000
        642.937500000000000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText89: TQRDBText
      Tag = 7
      Left = 620
      Top = 243
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1640.416666666667000000
        642.937500000000000000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText90: TQRDBText
      Tag = 7
      Left = 638
      Top = 243
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1688.041666666667000000
        642.937500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText91: TQRDBText
      Tag = 7
      Left = 695
      Top = 243
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1838.854166666667000000
        642.937500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_ACC_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText92: TQRDBText
      Tag = 7
      Left = 749
      Top = 243
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1981.729166666667000000
        642.937500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape249: TQRShape
      Tag = 7
      Left = 774
      Top = 239
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        632.354166666666800000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape250: TQRShape
      Tag = 7
      Left = 931
      Top = 239
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        632.354166666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape251: TQRShape
      Tag = 7
      Left = 802
      Top = 239
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        632.354166666666800000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape252: TQRShape
      Tag = 7
      Left = 820
      Top = 239
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        632.354166666666800000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape253: TQRShape
      Tag = 7
      Left = 876
      Top = 239
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        632.354166666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText93: TQRDBText
      Tag = 7
      Left = 776
      Top = 243
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2053.166666666667000000
        642.937500000000000000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_SHIPPED_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText94: TQRDBText
      Tag = 7
      Left = 804
      Top = 243
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2127.250000000000000000
        642.937500000000000000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText95: TQRDBText
      Tag = 7
      Left = 822
      Top = 243
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2174.875000000000000000
        642.937500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText96: TQRDBText
      Tag = 7
      Left = 879
      Top = 243
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2325.687500000000000000
        642.937500000000000000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_RESOURCE_ACC_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText97: TQRDBText
      Tag = 7
      Left = 933
      Top = 243
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2468.562500000000000000
        642.937500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape254: TQRShape
      Tag = 7
      Left = 958
      Top = 239
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        632.354166666666800000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape255: TQRShape
      Tag = 7
      Left = 1013
      Top = 239
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        632.354166666666800000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText98: TQRDBText
      Tag = 7
      Left = 960
      Top = 243
      Width = 52
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2540.000000000000000000
        642.937500000000000000
        137.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_ACC_QTY_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText99: TQRDBText
      Tag = 7
      Left = 1015
      Top = 243
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2685.520833333333000000
        642.937500000000000000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape256: TQRShape
      Tag = 7
      Left = 126
      Top = 239
      Width = 248
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        632.354166666666800000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape257: TQRShape
      Tag = 7
      Left = 373
      Top = 239
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        986.895833333333200000
        632.354166666666800000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText100: TQRDBText
      Tag = 7
      Left = 128
      Top = 241
      Width = 244
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        637.645833333333200000
        645.583333333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText101: TQRDBText
      Tag = 7
      Left = 375
      Top = 241
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        992.187500000000000000
        637.645833333333200000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape258: TQRShape
      Tag = 8
      Left = 406
      Top = 279
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1074.208333333333000000
        738.187500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape259: TQRShape
      Tag = 8
      Left = 563
      Top = 279
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1489.604166666667000000
        738.187500000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape260: TQRShape
      Tag = 8
      Left = 434
      Top = 279
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1148.291666666667000000
        738.187500000000000000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape261: TQRShape
      Tag = 8
      Left = 452
      Top = 279
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1195.916666666667000000
        738.187500000000000000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape262: TQRShape
      Tag = 8
      Left = 508
      Top = 279
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        738.187500000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText102: TQRDBText
      Tag = 8
      Left = 408
      Top = 283
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1079.500000000000000000
        748.770833333333200000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_CL_OFFER_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText103: TQRDBText
      Tag = 8
      Left = 436
      Top = 283
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1153.583333333333000000
        748.770833333333200000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText104: TQRDBText
      Tag = 8
      Left = 454
      Top = 283
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1201.208333333333000000
        748.770833333333200000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText105: TQRDBText
      Tag = 8
      Left = 511
      Top = 283
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1352.020833333333000000
        748.770833333333200000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_LEASE_RESOURCE_A_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText106: TQRDBText
      Tag = 8
      Left = 565
      Top = 283
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1494.895833333333000000
        748.770833333333200000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'CL_OFFER_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape263: TQRShape
      Tag = 8
      Left = 590
      Top = 279
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1561.041666666667000000
        738.187500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape264: TQRShape
      Tag = 8
      Left = 747
      Top = 279
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1976.437500000000000000
        738.187500000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape265: TQRShape
      Tag = 8
      Left = 618
      Top = 279
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1635.125000000000000000
        738.187500000000000000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape266: TQRShape
      Tag = 8
      Left = 636
      Top = 279
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1682.750000000000000000
        738.187500000000000000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape267: TQRShape
      Tag = 8
      Left = 692
      Top = 279
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1830.916666666667000000
        738.187500000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText107: TQRDBText
      Tag = 8
      Left = 592
      Top = 283
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1566.333333333333000000
        748.770833333333200000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText108: TQRDBText
      Tag = 8
      Left = 620
      Top = 283
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1640.416666666667000000
        748.770833333333200000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText109: TQRDBText
      Tag = 8
      Left = 638
      Top = 283
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1688.041666666667000000
        748.770833333333200000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText110: TQRDBText
      Tag = 8
      Left = 695
      Top = 283
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1838.854166666667000000
        748.770833333333200000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_ACC_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText111: TQRDBText
      Tag = 8
      Left = 749
      Top = 283
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1981.729166666667000000
        748.770833333333200000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape268: TQRShape
      Tag = 8
      Left = 774
      Top = 279
      Width = 29
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2047.875000000000000000
        738.187500000000000000
        76.729166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape269: TQRShape
      Tag = 8
      Left = 931
      Top = 279
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2463.270833333333000000
        738.187500000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape270: TQRShape
      Tag = 8
      Left = 802
      Top = 279
      Width = 19
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2121.958333333333000000
        738.187500000000000000
        50.270833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape271: TQRShape
      Tag = 8
      Left = 820
      Top = 279
      Width = 57
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2169.583333333333000000
        738.187500000000000000
        150.812500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape272: TQRShape
      Tag = 8
      Left = 876
      Top = 279
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2317.750000000000000000
        738.187500000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText112: TQRDBText
      Tag = 8
      Left = 776
      Top = 283
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2053.166666666667000000
        748.770833333333200000
        66.145833333333320000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'ACC_SHIPPED_QUANTITY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText113: TQRDBText
      Tag = 8
      Left = 804
      Top = 283
      Width = 15
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2127.250000000000000000
        748.770833333333200000
        39.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText114: TQRDBText
      Tag = 8
      Left = 822
      Top = 283
      Width = 53
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2174.875000000000000000
        748.770833333333200000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_DATE_UNIT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText115: TQRDBText
      Tag = 8
      Left = 879
      Top = 283
      Width = 51
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2325.687500000000000000
        748.770833333333200000
        134.937500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_LEASE_RESOURCE_ACC_QTY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText116: TQRDBText
      Tag = 8
      Left = 933
      Top = 283
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2468.562500000000000000
        748.770833333333200000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REAL_TOTAL_PRICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape273: TQRShape
      Tag = 8
      Left = 958
      Top = 279
      Width = 56
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2534.708333333333000000
        738.187500000000000000
        148.166666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape274: TQRShape
      Tag = 8
      Left = 1013
      Top = 279
      Width = 28
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2680.229166666667000000
        738.187500000000000000
        74.083333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText117: TQRDBText
      Tag = 8
      Left = 960
      Top = 283
      Width = 52
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2540.000000000000000000
        748.770833333333200000
        137.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'LEASE_RESOURCE_ACC_QTY_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText118: TQRDBText
      Tag = 8
      Left = 1015
      Top = 283
      Width = 24
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2685.520833333333000000
        748.770833333333200000
        63.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE_DIFF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape275: TQRShape
      Tag = 8
      Left = 126
      Top = 279
      Width = 248
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        333.375000000000000000
        738.187500000000000000
        656.166666666666800000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape276: TQRShape
      Tag = 8
      Left = 373
      Top = 279
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        986.895833333333200000
        738.187500000000000000
        89.958333333333320000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText119: TQRDBText
      Tag = 8
      Left = 128
      Top = 281
      Width = 244
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        743.479166666666800000
        645.583333333333200000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'COMPANY_PRODUCT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText120: TQRDBText
      Tag = 8
      Left = 375
      Top = 281
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        992.187500000000000000
        743.479166666666800000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'PRODUCT_ACCOUNT_MEASURE_ABBREV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
end
