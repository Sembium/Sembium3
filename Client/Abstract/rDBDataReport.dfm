inherited DBDataReport: TDBDataReport
  DataSet = mdsReport
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
  object bndPageFooter: TQRBand [0]
    Left = 38
    Top = 38
    Width = 718
    Height = 27
    AlignToBottom = False
    BeforePrint = bndPageFooterBeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object qrsDataAndTime: TQRSysData
      Left = 154
      Top = 8
      Width = 75
      Height = 17
      Size.Values = (
        44.979166666666670000
        407.458333333333300000
        21.166666666666670000
        198.437500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsDateTime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      Text = #1085#1072' '
      Transparent = False
      ExportAs = exptText
      FontSize = 8
    end
    object qrsPageNum: TQRSysData
      Left = 649
      Top = 8
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        1717.145833333333000000
        21.166666666666670000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      Text = #1057#1090#1088'. '
      Transparent = False
      ExportAs = exptText
      FontSize = 8
    end
    object lblPrintedByApp1: TQRLabel
      Left = 93
      Top = 5
      Width = 10
      Height = 17
      Size.Values = (
        44.979166666666670000
        246.062500000000000000
        13.229166666666670000
        26.458333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'A'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object lblPrintedByApp2: TQRLabel
      Left = 101
      Top = 4
      Width = 12
      Height = 18
      Size.Values = (
        47.625000000000000000
        267.229166666666700000
        10.583333333333330000
        31.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'B'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 11
    end
    object lblPrintedByApp3: TQRLabel
      Left = 112
      Top = 5
      Width = 10
      Height = 17
      Size.Values = (
        44.979166666666670000
        296.333333333333300000
        13.229166666666670000
        26.458333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'C'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object lblPrintedByApp4: TQRLabel
      Left = 0
      Top = 8
      Width = 91
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        21.166666666666670000
        240.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #1054#1090#1087#1077#1095#1072#1090#1072#1085#1086' '#1086#1090' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object lblCompanyName: TQRLabel
      Left = 352
      Top = 6
      Width = 121
      Height = 17
      Size.Values = (
        44.979166666666670000
        931.333333333333300000
        15.875000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'CompanyShortName'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object mdsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
  end
  object mdsReport: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
  end
end
