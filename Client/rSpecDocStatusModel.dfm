inherited rptSpecDocStatusModel: TrptSpecDocStatusModel
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
  inherited qrbTitle: TQRBand
    Height = 67
    Size.Values = (
      177.270833333333300000
      1899.708333333333000000)
    ExplicitHeight = 67
    inherited lblReportTitle: TQRLabel
      Left = 1
      Width = 391
      Size.Values = (
        66.145833333333330000
        2.645833333333333000
        21.166666666666670000
        1034.520833333333000000)
      AutoSize = True
      Caption = #1052#1072#1088#1096#1088#1091#1090#1085#1086' '#1052#1048#1048#1054' '#1085#1072' '#1056#1077#1076' '#1086#1090' '#1055'-'#1052#1054#1044#1045#1083' '#1085#1072
      Font.Height = -19
      FontSize = 14
      ExplicitLeft = 1
      ExplicitWidth = 391
    end
    object QRDBText6: TQRDBText
      Left = 160
      Top = 40
      Width = 153
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        423.333333333333300000
        105.833333333333300000
        404.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'NO_AS_TEXT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText7: TQRDBText
      Left = 320
      Top = 40
      Width = 111
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        846.666666666666700000
        105.833333333333300000
        293.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = 'DETAIL_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText1: TQRDBText
      Left = 396
      Top = 8
      Width = 238
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        1047.750000000000000000
        21.166666666666670000
        629.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = mdsParams
      DataField = '_SPEC_PRODUCT_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
    object QRLabel8: TQRLabel
      Left = 0
      Top = 42
      Width = 161
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        111.125000000000000000
        425.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1088#1077#1076#1072':'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited qrbDetails: TQRBand
    Top = 130
    Size.Values = (
      58.208333333333330000
      1899.708333333333000000)
    ExplicitTop = 130
    inherited shpHorLine: TQRShape
      Size.Values = (
        37.041666666666700000
        29.104166666666700000
        7.937500000000000000
        42.333333333333300000)
    end
    inherited txtNodeName: TQRDBText
      Size.Values = (
        44.979166666666670000
        76.729166666666670000
        5.291666666666667000
        248.708333333333300000)
      FontSize = 10
    end
    inherited txtNodeNo: TQRDBText
      Size.Values = (
        44.979166666666670000
        1566.333333333333000000
        5.291666666666667000
        108.479166666666700000)
      FontSize = 10
    end
    inherited shpVertLine: TQRShape
      Size.Values = (
        26.458333333333300000
        21.166666666666700000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine1: TQRShape
      Size.Values = (
        58.208333333333300000
        508.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine2: TQRShape
      Size.Values = (
        58.208333333333300000
        529.166666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine3: TQRShape
      Size.Values = (
        58.208333333333300000
        550.333333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine4: TQRShape
      Size.Values = (
        58.208333333333300000
        571.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine5: TQRShape
      Size.Values = (
        58.208333333333300000
        592.666666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine6: TQRShape
      Size.Values = (
        58.208333333333300000
        613.833333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine7: TQRShape
      Size.Values = (
        58.208333333333300000
        635.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine8: TQRShape
      Size.Values = (
        58.208333333333300000
        656.166666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine9: TQRShape
      Size.Values = (
        58.208333333333300000
        677.333333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine10: TQRShape
      Size.Values = (
        58.208333333333300000
        698.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine11: TQRShape
      Size.Values = (
        58.208333333333300000
        719.666666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine12: TQRShape
      Size.Values = (
        58.208333333333300000
        740.833333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine13: TQRShape
      Size.Values = (
        58.208333333333300000
        762.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine14: TQRShape
      Size.Values = (
        58.208333333333300000
        783.166666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine15: TQRShape
      Size.Values = (
        58.208333333333300000
        804.333333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine16: TQRShape
      Size.Values = (
        58.208333333333300000
        825.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine18: TQRShape
      Size.Values = (
        58.208333333333300000
        867.833333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine19: TQRShape
      Size.Values = (
        58.208333333333300000
        889.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine20: TQRShape
      Size.Values = (
        58.208333333333300000
        910.166666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine21: TQRShape
      Size.Values = (
        58.208333333333300000
        931.333333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine22: TQRShape
      Size.Values = (
        58.208333333333300000
        952.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine23: TQRShape
      Size.Values = (
        58.208333333333300000
        973.666666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine24: TQRShape
      Size.Values = (
        58.208333333333300000
        994.833333333333000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine25: TQRShape
      Size.Values = (
        58.208333333333300000
        1016.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine38: TQRShape
      Size.Values = (
        58.208333333333300000
        1291.166666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine39: TQRShape
      Size.Values = (
        58.208333333333300000
        1312.333333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine40: TQRShape
      Size.Values = (
        58.208333333333300000
        1333.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine41: TQRShape
      Size.Values = (
        58.208333333333300000
        1354.666666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine42: TQRShape
      Size.Values = (
        58.208333333333300000
        1375.833333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine43: TQRShape
      Size.Values = (
        58.208333333333300000
        1397.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine44: TQRShape
      Size.Values = (
        58.208333333333300000
        1418.166666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine45: TQRShape
      Size.Values = (
        58.208333333333300000
        1439.333333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine46: TQRShape
      Size.Values = (
        58.208333333333300000
        1460.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine47: TQRShape
      Size.Values = (
        58.208333333333300000
        1481.666666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine49: TQRShape
      Size.Values = (
        58.208333333333300000
        1524.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine50: TQRShape
      Size.Values = (
        58.208333333333300000
        1545.166666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine37: TQRShape
      Size.Values = (
        58.208333333333300000
        1270.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine36: TQRShape
      Size.Values = (
        58.208333333333300000
        1248.833333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine35: TQRShape
      Size.Values = (
        58.208333333333300000
        1227.666666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine34: TQRShape
      Size.Values = (
        58.208333333333300000
        1206.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine33: TQRShape
      Size.Values = (
        58.208333333333300000
        1185.333333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine32: TQRShape
      Size.Values = (
        58.208333333333300000
        1164.166666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine31: TQRShape
      Size.Values = (
        58.208333333333300000
        1143.000000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine30: TQRShape
      Size.Values = (
        58.208333333333300000
        1121.833333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine29: TQRShape
      Size.Values = (
        58.208333333333300000
        1100.666666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine28: TQRShape
      Size.Values = (
        58.208333333333300000
        1079.500000000000000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine27: TQRShape
      Size.Values = (
        58.208333333333300000
        1058.333333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine26: TQRShape
      Size.Values = (
        58.208333333333300000
        1037.166666666670000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine17: TQRShape
      Size.Values = (
        58.208333333333300000
        846.666666666667000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited shpParentLine48: TQRShape
      Size.Values = (
        58.208333333333300000
        1502.833333333330000000
        0.000000000000000000
        13.229166666666700000)
    end
    inherited txtDocItemsUnauthorizedStatus: TQRDBText
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        5.291666666666667000
        108.479166666666700000)
      FontSize = 10
    end
    inherited txtApproveCycleNo: TQRDBText
      Size.Values = (
        44.979166666666670000
        1820.333333333333000000
        5.291666666666667000
        79.375000000000000000)
      FontSize = 10
    end
    inherited QRDBText2: TQRDBText
      Size.Values = (
        44.979166666666670000
        613.833333333333300000
        5.291666666666667000
        298.979166666666700000)
      FontSize = 10
    end
    inherited QRDBText3: TQRDBText
      Size.Values = (
        44.979166666666670000
        1312.333333333333000000
        5.291666666666667000
        137.583333333333300000)
      FontSize = 10
    end
    inherited QRDBText4: TQRDBText
      Size.Values = (
        44.979166666666670000
        1468.437500000000000000
        5.291666666666667000
        79.375000000000000000)
      FontSize = 8
    end
    inherited QRDBText5: TQRDBText
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        5.291666666666667000
        153.458333333333300000)
      FontSize = 10
    end
    inherited txtProgramToolRequirement: TQRDBText
      Size.Values = (
        44.979166666666670000
        931.333333333333300000
        5.291666666666667000
        108.479166666666700000)
      FontSize = 10
    end
    inherited txtSpecificToolRequirement: TQRDBText
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        5.291666666666667000
        108.479166666666700000)
      FontSize = 10
    end
    inherited txtTypicalToolRequirement: TQRDBText
      Size.Values = (
        44.979166666666670000
        1185.333333333333000000
        5.291666666666667000
        108.479166666666700000)
      FontSize = 10
    end
  end
  inherited bndPageFooter: TQRBand
    Top = 152
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    ExplicitTop = 152
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
  inherited QRBand1: TQRBand
    Top = 105
    Size.Values = (
      66.145833333333330000
      1899.708333333333000000)
    ExplicitTop = 105
    inherited QRLabel4: TQRLabel
      Size.Values = (
        44.979166666666670000
        613.833333333333300000
        21.166666666666670000
        298.979166666666700000)
      FontSize = 10
    end
    inherited QRLabel5: TQRLabel
      Size.Values = (
        44.979166666666670000
        1312.333333333333000000
        21.166666666666670000
        137.583333333333300000)
      FontSize = 10
    end
    inherited QRLabel6: TQRLabel
      Size.Values = (
        44.979166666666670000
        1468.437500000000000000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
    inherited QRLabel7: TQRLabel
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        21.166666666666670000
        153.458333333333300000)
      FontSize = 10
    end
    inherited QRLabel1: TQRLabel
      Size.Values = (
        44.979166666666670000
        1566.333333333333000000
        21.166666666666670000
        108.479166666666700000)
      FontSize = 10
    end
    inherited QRLabel2: TQRLabel
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        21.166666666666670000
        108.479166666666700000)
      FontSize = 10
    end
    inherited QRLabel3: TQRLabel
      Size.Values = (
        44.979166666666670000
        1820.333333333333000000
        21.166666666666670000
        79.375000000000000000)
      FontSize = 10
    end
    inherited QRLabel118: TQRLabel
      Size.Values = (
        44.979166666666670000
        931.333333333333300000
        21.166666666666670000
        108.479166666666700000)
      FontSize = 10
    end
    inherited QRLabel119: TQRLabel
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        21.166666666666670000
        108.479166666666700000)
      FontSize = 10
    end
    inherited QRLabel1110: TQRLabel
      Size.Values = (
        44.979166666666670000
        1185.333333333333000000
        21.166666666666670000
        108.479166666666700000)
      FontSize = 10
    end
  end
end
