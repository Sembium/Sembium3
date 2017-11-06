inherited rptBudgetOrdersDetail: TrptBudgetOrdersDetail
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
    Top = 250
    Width = 1047
    Size.Values = (
      71.437500000000000000
      2770.187500000000000000)
    ExplicitTop = 250
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
        58.208333333333330000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 382
      Top = 5
      Width = 213
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1010.708333333333000000
        13.229166666666670000
        563.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1089#1072' '#1074' %BaseCurrency%'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand1: TQRBand [1]
    Left = 38
    Top = 38
    Width = 1047
    Height = 131
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
      346.604166666666700000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
    object QRLabel1: TQRLabel
      Left = 0
      Top = 8
      Width = 1041
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        21.166666666666670000
        2754.312500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072
      Color = clWhite
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
    object QRShape2: TQRShape
      Left = 558
      Top = 32
      Width = 101
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1476.375000000000000000
        84.666666666666670000
        267.229166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape1: TQRShape
      Left = 0
      Top = 32
      Width = 38
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        0.000000000000000000
        84.666666666666680000
        100.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Left = 2
      Top = 35
      Width = 33
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333340000
        5.291666666666667000
        92.604166666666680000
        87.312500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072'- '#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 560
      Top = 38
      Width = 97
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375000000000000000
        1481.666666666667000000
        100.541666666666700000
        256.645833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev%'
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
    object QRShape3: TQRShape
      Left = 37
      Top = 32
      Width = 89
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        97.895833333333340000
        84.666666666666680000
        235.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel4: TQRLabel
      Left = 39
      Top = 44
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        103.187500000000000000
        116.416666666666700000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'ID %BudgetOrderAbbrev%'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape6: TQRShape
      Left = 125
      Top = 32
      Width = 100
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        330.729166666666700000
        84.666666666666680000
        264.583333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel7: TQRLabel
      Left = 127
      Top = 37
      Width = 95
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        79.375000000000000000
        336.020833333333400000
        97.895833333333340000
        251.354166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev%'
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
    object QRShape10: TQRShape
      Left = 224
      Top = 32
      Width = 306
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        592.666666666666700000
        84.666666666666670000
        809.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel11: TQRLabel
      Left = 227
      Top = 44
      Width = 300
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        600.604166666666700000
        116.416666666666700000
        793.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape11: TQRShape
      Left = 688
      Top = 32
      Width = 349
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1820.333333333333000000
        84.666666666666670000
        923.395833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel12: TQRLabel
      Left = 690
      Top = 34
      Width = 345
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1825.625000000000000000
        89.958333333333330000
        912.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape14: TQRShape
      Left = 658
      Top = 32
      Width = 31
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1740.958333333333000000
        84.666666666666670000
        82.020833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel15: TQRLabel
      Left = 660
      Top = 34
      Width = 27
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        95.250000000000000000
        1746.250000000000000000
        89.958333333333330000
        71.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1084' '#1054#1089#1090' %'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape15: TQRShape
      Left = 0
      Top = 72
      Width = 38
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        0.000000000000000000
        190.500000000000000000
        100.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape16: TQRShape
      Left = 558
      Top = 72
      Width = 101
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1476.375000000000000000
        190.500000000000000000
        267.229166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape17: TQRShape
      Left = 37
      Top = 72
      Width = 89
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        97.895833333333340000
        190.500000000000000000
        235.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape19: TQRShape
      Left = 125
      Top = 72
      Width = 100
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        330.729166666666700000
        190.500000000000000000
        264.583333333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape22: TQRShape
      Left = 224
      Top = 72
      Width = 306
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        592.666666666666700000
        190.500000000000000000
        809.625000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape23: TQRShape
      Left = 658
      Top = 72
      Width = 31
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1740.958333333333000000
        190.500000000000000000
        82.020833333333330000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText1: TQRDBText
      Left = 2
      Top = 74
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        5.291666666666667000
        195.791666666666700000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BUDGET_ORDER_STATUS_CODE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 39
      Top = 74
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        103.187500000000000000
        195.791666666666700000
        224.895833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BUDGET_ORDER_IDENTIFIER'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 127
      Top = 74
      Width = 96
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        336.020833333333400000
        195.791666666666700000
        254.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'GENERATOR_DEPT_IDENTIFIER'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 226
      Top = 74
      Width = 302
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        597.958333333333300000
        195.791666666666700000
        799.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'DESCRIPTION'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 560
      Top = 74
      Width = 97
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1481.666666666667000000
        195.791666666666700000
        256.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BEGIN_DATE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 660
      Top = 74
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1746.250000000000000000
        195.791666666666700000
        71.437500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'DEVIATION_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object shpBOIBaseTypeName: TQRShape
      Left = 0
      Top = 107
      Width = 201
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        63.500000000000000000
        0.000000000000000000
        283.104166666666700000
        531.812500000000000000)
      Pen.Width = 8
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblBOIBaseTypeName: TQRLabel
      Left = 6
      Top = 110
      Width = 187
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        291.041666666666700000
        494.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'lblBOIBaseTypeName'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape60: TQRShape
      Left = 529
      Top = 32
      Width = 30
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1399.645833333333000000
        84.666666666666670000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel33: TQRLabel
      Left = 531
      Top = 34
      Width = 26
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        97.895833333333330000
        1404.937500000000000000
        89.958333333333330000
        68.791666666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072'-'#1076#1080#1081
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape61: TQRShape
      Left = 529
      Top = 72
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1399.645833333333000000
        190.500000000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText30: TQRDBText
      Left = 531
      Top = 74
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1404.937500000000000000
        195.791666666666700000
        68.791666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape4: TQRShape
      Left = 862
      Top = 72
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2280.708333333333000000
        190.500000000000000000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtBOIOPlan: TQRDBText
      Left = 864
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2286.000000000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'BOIO_PLAN_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape5: TQRShape
      Left = 862
      Top = 52
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2280.708333333333000000
        137.583333333333300000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblBOIOPlan: TQRLabel
      Left = 864
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2286.000000000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1083#1072#1085#1086#1074#1072
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
    object QRShape7: TQRShape
      Left = 949
      Top = 72
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2510.895833333333000000
        190.500000000000000000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object dbtAccount: TQRDBText
      Left = 951
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'ACCOUNT_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape8: TQRShape
      Left = 949
      Top = 52
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2510.895833333333000000
        137.583333333333300000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblAccount: TQRLabel
      Left = 951
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1095#1077#1090#1085#1072
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
    object QRShape12: TQRShape
      Left = 775
      Top = 72
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2050.520833333333000000
        190.500000000000000000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText10: TQRDBText
      Left = 777
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2055.812500000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PLAN_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape13: TQRShape
      Left = 775
      Top = 52
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2050.520833333333000000
        137.583333333333300000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel8: TQRLabel
      Left = 777
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2055.812500000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1051#1080#1084#1080#1090#1085#1072
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
    object QRShape24: TQRShape
      Left = 688
      Top = 72
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1820.333333333333000000
        190.500000000000000000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText11: TQRDBText
      Left = 690
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1825.625000000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'PROJECT_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape25: TQRShape
      Left = 688
      Top = 52
      Width = 88
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1820.333333333333000000
        137.583333333333300000
        232.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel13: TQRLabel
      Left = 690
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1825.625000000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
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
    object dbtBOIOPlanToPlanDev: TQRDBText
      Left = 864
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2286.000000000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_BOIO_PLAN_TO_PLAN_DEV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblBOIOPlanToPlanDev: TQRLabel
      Left = 864
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2286.000000000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1055'-'#1051')'
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
    object dbtBOIOPlanToPlanDevPercent: TQRDBText
      Left = 864
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2286.000000000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_BOIO_PLAN_TO_PLAN_DEV_P'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblBOIOPlanToPlanDevPercent: TQRLabel
      Left = 864
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2286.000000000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1055'-'#1051') %'
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
    object dbtAccountToPlanDev: TQRDBText
      Left = 951
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ACCOUNT_TO_PLAN_DEV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblAccountToPlanDev: TQRLabel
      Left = 951
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1051')'
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
    object dbtAccountToPlanDevPercent: TQRDBText
      Left = 951
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ACCOUNT_TO_PLAN_DEV_P'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblAccountToPlanDevPercent: TQRLabel
      Left = 950
      Top = 54
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2513.541666666667000000
        142.875000000000000000
        227.541666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1051') %'
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
    object dbtAccountToBOIOPlanDev: TQRDBText
      Left = 951
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ACCOUNT_TO_BOIO_PLAN_DEV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblAccountToBOIOPlanDev: TQRLabel
      Left = 951
      Top = 54
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        142.875000000000000000
        222.250000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1055')'
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
    object dbtAccountToBOIOPlanDevPercent: TQRDBText
      Left = 951
      Top = 74
      Width = 84
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2516.187500000000000000
        195.791666666666700000
        222.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_ACCOUNT_TO_BOIO_PLAN_DEV_P'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object lblAccountToBOIOPlanDevPercent: TQRLabel
      Left = 950
      Top = 54
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2513.541666666667000000
        142.875000000000000000
        227.541666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. ('#1054'-'#1055') %'
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
  end
  object QRBand2: TQRBand [2]
    Left = 38
    Top = 169
    Width = 1047
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
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbColumnHeader
    object QRShape26: TQRShape
      Left = 0
      Top = 0
      Width = 38
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
        100.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel16: TQRLabel
      Left = 2
      Top = 3
      Width = 33
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        89.958333333333340000
        5.291666666666667000
        7.937500000000000000
        87.312500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1057#1090#1072'- '#1090#1091#1089
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape27: TQRShape
      Left = 37
      Top = 0
      Width = 23
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        97.895833333333340000
        0.000000000000000000
        60.854166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel18: TQRLabel
      Left = 41
      Top = 10
      Width = 15
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        108.479166666666700000
        26.458333333333330000
        39.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #8470
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape28: TQRShape
      Left = 88
      Top = 0
      Width = 452
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        232.833333333333300000
        0.000000000000000000
        1195.916666666667000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel19: TQRLabel
      Left = 284
      Top = 2
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        751.416666666666700000
        5.291666666666667000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1057#1090#1072#1090#1080#1103
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape29: TQRShape
      Left = 88
      Top = 20
      Width = 54
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        232.833333333333300000
        52.916666666666670000
        142.875000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel20: TQRLabel
      Left = 105
      Top = 22
      Width = 22
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        277.812500000000000000
        58.208333333333330000
        58.208333333333330000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1082#1086#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape30: TQRShape
      Left = 141
      Top = 20
      Width = 309
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        373.062500000000000000
        52.916666666666670000
        817.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel21: TQRLabel
      Left = 233
      Top = 22
      Width = 133
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        616.479166666666700000
        58.208333333333330000
        351.895833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape31: TQRShape
      Left = 508
      Top = 20
      Width = 32
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        52.916666666666660000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel22: TQRLabel
      Left = 510
      Top = 24
      Width = 28
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333340000
        1349.375000000000000000
        63.500000000000000000
        74.083333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1048#1048#1054
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape32: TQRShape
      Left = 539
      Top = 20
      Width = 79
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1426.104166666667000000
        52.916666666666660000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape33: TQRShape
      Left = 617
      Top = 20
      Width = 43
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1632.479166666667000000
        52.916666666666660000
        113.770833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel24: TQRLabel
      Left = 620
      Top = 22
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1640.416666666667000000
        58.208333333333330000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1053#1072#1095#1080#1085
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape34: TQRShape
      Left = 688
      Top = 0
      Width = 101
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1820.333333333333000000
        0.000000000000000000
        267.229166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel25: TQRLabel
      Left = 690
      Top = 6
      Width = 97
      Height = 29
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        76.729166666666680000
        1825.625000000000000000
        15.875000000000000000
        256.645833333333400000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev%'
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
    object QRShape38: TQRShape
      Left = 818
      Top = 0
      Width = 89
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2164.291666666667000000
        0.000000000000000000
        235.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object lblTotalOrderItemPrice: TQRLabel
      Left = 820
      Top = 4
      Width = 85
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2169.583333333333000000
        10.583333333333330000
        224.895833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' (%BaseCurrency%)'
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
    object QRShape39: TQRShape
      Left = 939
      Top = 0
      Width = 62
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2484.437500000000000000
        0.000000000000000000
        164.041666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel30: TQRLabel
      Left = 946
      Top = 2
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2502.958333333333000000
        5.291666666666667000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1090#1082#1083'. %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape40: TQRShape
      Left = 939
      Top = 20
      Width = 40
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2484.437500000000000000
        52.916666666666660000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel31: TQRLabel
      Left = 941
      Top = 22
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2489.729166666667000000
        58.208333333333330000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1054#1089#1090#1072#1090'.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape41: TQRShape
      Left = 978
      Top = 20
      Width = 23
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2587.625000000000000000
        52.916666666666660000
        60.854166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel32: TQRLabel
      Left = 981
      Top = 22
      Width = 17
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2595.562500000000000000
        58.208333333333330000
        44.979166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '+/-'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape42: TQRShape
      Left = 1000
      Top = 0
      Width = 38
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2645.833333333333000000
        0.000000000000000000
        100.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape9: TQRShape
      Left = 449
      Top = 20
      Width = 60
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1187.979166666667000000
        52.916666666666660000
        158.750000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel10: TQRLabel
      Left = 466
      Top = 22
      Width = 22
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1232.958333333333000000
        58.208333333333330000
        58.208333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1080#1087
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape20: TQRShape
      Left = 539
      Top = 0
      Width = 121
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1426.104166666667000000
        0.000000000000000000
        320.145833333333400000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel14: TQRLabel
      Left = 559
      Top = 22
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1479.020833333333000000
        58.208333333333330000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1058#1055
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel23: TQRLabel
      Left = 559
      Top = 2
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1479.020833333333000000
        5.291666666666667000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape21: TQRShape
      Left = 788
      Top = 0
      Width = 31
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2084.916666666667000000
        0.000000000000000000
        82.020833333333340000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel26: TQRLabel
      Left = 790
      Top = 2
      Width = 27
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        95.250000000000000000
        2090.208333333333000000
        5.291666666666667000
        71.437500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1042#1088#1084' '#1054#1089#1090' %'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape36: TQRShape
      Left = 906
      Top = 0
      Width = 34
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        2397.125000000000000000
        0.000000000000000000
        89.958333333333340000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel27: TQRLabel
      Left = 908
      Top = 4
      Width = 30
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        82.020833333333340000
        2402.416666666667000000
        10.583333333333330000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = '% '#1086#1090' %BudgetOrderAbbrev%'
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
    object QRLabel28: TQRLabel
      Left = 1002
      Top = 13
      Width = 34
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333340000
        2651.125000000000000000
        34.395833333333340000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = '%BudgetOrderItemOrderAbbrev%'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape51: TQRShape
      Left = 659
      Top = 0
      Width = 30
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        1743.604166666667000000
        0.000000000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel29: TQRLabel
      Left = 661
      Top = 8
      Width = 26
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        63.500000000000000000
        1748.895833333334000000
        21.166666666666670000
        68.791666666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1056#1079#1088#1074'. '#1057#1090#1072#1088#1090
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape62: TQRShape
      Left = 59
      Top = 0
      Width = 30
      Height = 41
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        108.479166666666700000
        156.104166666666700000
        0.000000000000000000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel34: TQRLabel
      Left = 61
      Top = 11
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        161.395833333333300000
        29.104166666666670000
        66.145833333333330000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1042#1080#1076
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand3: TQRBand [3]
    Left = 38
    Top = 210
    Width = 1047
    Height = 20
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
      52.916666666666670000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRShape43: TQRShape
      Left = 0
      Top = -1
      Width = 38
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
        100.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape44: TQRShape
      Left = 37
      Top = -1
      Width = 23
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        97.895833333333340000
        -2.645833333333333000
        60.854166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape45: TQRShape
      Left = 88
      Top = -1
      Width = 54
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        232.833333333333300000
        -2.645833333333333000
        142.875000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape46: TQRShape
      Left = 141
      Top = -1
      Width = 309
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        373.062500000000000000
        -2.645833333333333000
        817.562500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape47: TQRShape
      Left = 508
      Top = -1
      Width = 32
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1344.083333333333000000
        -2.645833333333333000
        84.666666666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape48: TQRShape
      Left = 539
      Top = -1
      Width = 79
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1426.104166666667000000
        -2.645833333333333000
        209.020833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape49: TQRShape
      Left = 617
      Top = -1
      Width = 43
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1632.479166666667000000
        -2.645833333333333000
        113.770833333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape50: TQRShape
      Left = 688
      Top = -1
      Width = 101
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1820.333333333333000000
        -2.645833333333333000
        267.229166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape53: TQRShape
      Left = 818
      Top = -1
      Width = 89
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2164.291666666667000000
        -2.645833333333333000
        235.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape54: TQRShape
      Left = 939
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
        2484.437500000000000000
        -2.645833333333333000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape55: TQRShape
      Left = 978
      Top = -1
      Width = 23
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2587.625000000000000000
        -2.645833333333333000
        60.854166666666680000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape56: TQRShape
      Left = 1000
      Top = -1
      Width = 38
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2645.833333333333000000
        -2.645833333333333000
        100.541666666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText12: TQRDBText
      Left = 2
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
        5.291666666666667000
        2.645833333333333000
        89.958333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BUDGET_ITEM_STATUS_CODE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 39
      Top = 1
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        103.187500000000000000
        2.645833333333333000
        50.270833333333330000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BUDGET_ORDER_ITEM_CODE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 90
      Top = 1
      Width = 50
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        238.125000000000000000
        2.645833333333333000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BUDGET_PRODUCT_NO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 143
      Top = 1
      Width = 305
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        378.354166666666700000
        2.645833333333333000
        806.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BUDGET_PRODUCT_NAME'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText16: TQRDBText
      Left = 510
      Top = 1
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1349.375000000000000000
        2.645833333333333000
        74.083333333333340000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BC_HAS_DOC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText17: TQRDBText
      Left = 541
      Top = 1
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1431.395833333333000000
        2.645833333333333000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEPT_IDENTIFIER'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 619
      Top = 1
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1637.770833333333000000
        2.645833333333333000
        103.187500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 690
      Top = 1
      Width = 97
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1825.625000000000000000
        2.645833333333333000
        256.645833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BEGIN_DATE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText22: TQRDBText
      Left = 820
      Top = 1
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2169.583333333333000000
        2.645833333333333000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText23: TQRDBText
      Left = 941
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
        2489.729166666667000000
        2.645833333333333000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'REMAINING_TOTAL_PRICE_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText24: TQRDBText
      Left = 980
      Top = 1
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2592.916666666667000000
        2.645833333333333000
        50.270833333333330000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DEVIATION_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText25: TQRDBText
      Left = 1002
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
        2651.125000000000000000
        2.645833333333333000
        89.958333333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BOI_ORDER_COUNT'
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
    object QRShape18: TQRShape
      Left = 449
      Top = -1
      Width = 60
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1187.979166666667000000
        -2.645833333333333000
        158.750000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText6: TQRDBText
      Left = 451
      Top = 1
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1193.270833333333000000
        2.645833333333333000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BOI_ORDER_TYPE_ABBREV'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape35: TQRShape
      Left = 788
      Top = -1
      Width = 31
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2084.916666666667000000
        -2.645833333333333000
        82.020833333333340000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText20: TQRDBText
      Left = 791
      Top = 1
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2092.854166666667000000
        2.645833333333333000
        68.791666666666680000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DAYS_LEFT_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape37: TQRShape
      Left = 906
      Top = -1
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2397.125000000000000000
        -2.645833333333333000
        89.958333333333340000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText21: TQRDBText
      Left = 908
      Top = 1
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2402.416666666667000000
        2.645833333333333000
        79.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BO_PRICE_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape52: TQRShape
      Left = 659
      Top = -1
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1743.604166666667000000
        -2.645833333333333000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText26: TQRDBText
      Left = 661
      Top = 1
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1748.895833333334000000
        2.645833333333333000
        66.145833333333340000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'DAYS_TO_START'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape63: TQRShape
      Left = 59
      Top = -1
      Width = 30
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        156.104166666666700000
        -2.645833333333333000
        79.375000000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText31: TQRDBText
      Left = 61
      Top = 1
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        161.395833333333300000
        2.645833333333333000
        68.791666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = 'BUDGET_ORDER_ITEM_TYPE_DISPLAY'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand4: TQRBand [4]
    Left = 38
    Top = 230
    Width = 1047
    Height = 20
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
      52.916666666666670000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRShape57: TQRShape
      Left = 818
      Top = -1
      Width = 89
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2164.291666666667000000
        -2.645833333333333000
        235.479166666666700000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape58: TQRShape
      Left = 939
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
        2484.437500000000000000
        -2.645833333333333000
        105.833333333333300000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText27: TQRDBText
      Left = 820
      Top = 1
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2169.583333333333000000
        2.645833333333333000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_PRINT_SUM_TOTAL_PRICE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText28: TQRDBText
      Left = 941
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
        2489.729166666667000000
        2.645833333333333000
        95.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_PRINT_TOTAL_PRICE_DEV_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape59: TQRShape
      Left = 906
      Top = -1
      Width = 34
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        2397.125000000000000000
        -2.645833333333333000
        89.958333333333340000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText29: TQRDBText
      Left = 908
      Top = 1
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2402.416666666667000000
        2.645833333333333000
        79.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsReport
      DataField = '_PRINT_SUM_BO_PRICE_PERCENT'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
end
