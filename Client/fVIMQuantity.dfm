inherited fmVIMQuantity: TfmVIMQuantity
  Left = 263
  Top = 203
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 
    #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbre' +
    'v%'
  ClientHeight = 528
  ClientWidth = 795
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 493
    Width = 795
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 527
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 438
      TabOrder = 1
      Visible = True
      inherited btnClose: TBitBtn
        Top = 3
      end
    end
    inherited pnlApply: TPanel
      Left = 706
      TabOrder = 3
      Visible = False
    end
    object pnlTime: TPanel
      Left = 6
      Top = 1
      Width = 562
      Height = 28
      Anchors = [akLeft, akBottom]
      TabOrder = 0
      object btnPrev: TBitBtn
        Left = 162
        Top = 3
        Width = 119
        Height = 23
        Action = actPrev
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
        TabOrder = 0
      end
      object btnNext: TBitBtn
        Left = 284
        Top = 3
        Width = 119
        Height = 23
        Action = actNext
        Layout = blGlyphRight
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object pnlStartDate: TPanel
        Left = 2
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14281690
        TabOrder = 2
      end
      object pnlEndDate: TPanel
        Left = 418
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14281690
        TabOrder = 3
      end
      object pnlStartDateGSD: TPanel
        Left = 74
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14281690
        TabOrder = 4
      end
      object pnlEndDateGSD: TPanel
        Left = 490
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14281690
        TabOrder = 5
      end
    end
  end
  object pcVIMQuantity: TPageControl [1]
    Left = 6
    Top = 74
    Width = 779
    Height = 415
    ActivePage = tsQuantity
    Anchors = [akLeft, akTop, akBottom]
    HotTrack = True
    TabOrder = 2
    object tsQuantity: TTabSheet
      Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
      object ChartQuantity: TDBChart
        Left = 0
        Top = 0
        Width = 771
        Height = 387
        AllowPanning = pmNone
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Foot.Alignment = taRightJustify
        Foot.Font.Color = clBlack
        Foot.Font.Name = 'Times New Roman'
        Foot.Font.Style = []
        Foot.Text.Strings = (
          #1082#1098#1084' '#1076#1072#1090#1072':')
        Foot.Visible = False
        Gradient.EndColor = 12441534
        Gradient.StartColor = 16053492
        Gradient.Visible = True
        MarginBottom = 20
        MarginTop = 2
        PrintProportional = False
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsItalic]
        Title.Text.Strings = (
          #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          '')
        OnGetLegendPos = ChartQuantityGetLegendPos
        OnGetLegendRect = ChartQuantityGetLegendRect
        BottomAxis.DateTimeFormat = 'hh:mm'
        BottomAxis.MinorTickCount = 0
        BottomAxis.MinorTickLength = 0
        DepthAxis.Automatic = False
        DepthAxis.AutomaticMaximum = False
        DepthAxis.AutomaticMinimum = False
        DepthAxis.Maximum = 0.530000000000000000
        DepthAxis.Minimum = -0.470000000000000000
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.MinorTickCount = 0
        LeftAxis.MinorTickLength = 0
        LeftAxis.Title.Caption = #1089#1090#1086#1081#1085#1086#1089#1090' '#1074' ...'
        LeftAxis.Title.Font.Height = -12
        LeftAxis.Title.Font.Name = 'Times New Roman'
        LeftAxis.TitleSize = 20
        Legend.Alignment = laBottom
        Legend.ColorWidth = 15
        Legend.Font.Height = -9
        Legend.Shadow.Color = clGray
        Legend.Shadow.HorizSize = 2
        Legend.Shadow.VertSize = 2
        Legend.Symbol.Width = 15
        Legend.VertMargin = 20
        Legend.Visible = False
        RightAxis.Automatic = False
        RightAxis.AutomaticMaximum = False
        RightAxis.AutomaticMinimum = False
        View3D = False
        Zoom.Animated = True
        OnAfterDraw = ChartQuantityAfterDraw
        OnBeforeDrawSeries = ChartQuantityBeforeDrawSeries
        OnGetAxisLabel = ChartsGetAxisLabel
        Align = alClient
        BevelOuter = bvLowered
        Color = 15921382
        TabOrder = 0
        DesignSize = (
          771
          387)
        ColorPaletteIndex = 13
        object lblChartQuantityStartDate: TLabel
          Left = 2
          Top = 282
          Width = 49
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '04.04.2002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object lblChartQuantityEndDate: TLabel
          Left = 2
          Top = 295
          Width = 49
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '21.05.2002'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object btnPrintQuantityChart: TSpeedButton
          Left = 1
          Top = 365
          Width = 23
          Height = 22
          Action = actPrintQuantityChart
          Anchors = [akLeft, akBottom]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
            C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
            C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Transparent = False
        end
        object lblToDateOnChartQuantity: TLabel
          Left = 572
          Top = 366
          Width = 171
          Height = 12
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = #1082#1098#1084' '#1076#1072#1090#1072': 00-00-0000'
          Color = 16053492
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object pnlChartQuantityLegend: TPanel
          Left = 88
          Top = 324
          Width = 631
          Height = 38
          Anchors = [akLeft, akRight, akBottom]
          BevelOuter = bvNone
          Color = 16053492
          TabOrder = 0
          object shpLegend3: TShape
            Left = 2
            Top = 2
            Width = 629
            Height = 36
            Brush.Color = 10790296
            Pen.Color = 11054225
          end
          object lblLegend: TShape
            Left = 0
            Top = 0
            Width = 629
            Height = 36
          end
          object lblOtchInQuantity: TLabel
            Left = 27
            Top = 4
            Width = 58
            Height = 12
            Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblOtchOutQuantity: TLabel
            Left = 124
            Top = 4
            Width = 39
            Height = 12
            Caption = #1058#1077#1075#1083#1077#1085#1080#1103
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object shpOtchInQuantity: TShape
            Left = 6
            Top = 5
            Width = 19
            Height = 9
            Brush.Color = 14263195
          end
          object shpOtchOutQuantity: TShape
            Left = 102
            Top = 5
            Width = 19
            Height = 9
            Brush.Color = 5789867
          end
          object shpPassiveQuantity1: TShape
            Left = 6
            Top = 21
            Width = 19
            Height = 9
            Brush.Color = 16759260
          end
          object lblPassiveQuantity: TLabel
            Left = 27
            Top = 20
            Width = 133
            Height = 12
            Caption = #1055#1072#1089#1080#1074#1085#1072' '#1063#1072#1089#1090' '#1086#1090' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080#1090#1077
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblOtchNegativeQuantityReserve2: TLabel
            Left = 228
            Top = 4
            Width = 52
            Height = 12
            Caption = #1057#1087#1088#1103#1084#1086' 0:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblOtchQuantityReserve2: TLabel
            Left = 228
            Top = 20
            Width = 77
            Height = 12
            Caption = #1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblOtchNegativeQuantityReserve1: TLabel
            Left = 332
            Top = 4
            Width = 84
            Height = 12
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblPlanQuantity1: TLabel
            Left = 460
            Top = 4
            Width = 87
            Height = 12
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblDeficitQuantity: TLabel
            Left = 580
            Top = 4
            Width = 39
            Height = 12
            Caption = #1044#1077#1092#1080#1094#1080#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblOtchQuantityReserve1: TLabel
            Left = 332
            Top = 20
            Width = 84
            Height = 12
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblPlanQuantity2: TLabel
            Left = 460
            Top = 20
            Width = 87
            Height = 12
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblDeficitQuantityReserve: TLabel
            Left = 580
            Top = 20
            Width = 39
            Height = 12
            Caption = #1044#1077#1092#1080#1094#1080#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object shpPassiveQuantity: TShape
            Left = 6
            Top = 21
            Width = 19
            Height = 9
            Brush.Color = clBlack
            Brush.Style = bsBDiagonal
          end
          object shpOtchNegativeQuantityReserve1: TShape
            Left = 302
            Top = 8
            Width = 23
            Height = 3
            Brush.Color = clGreen
            Pen.Color = clGreen
          end
          object shpOtchNegativeQuantityReserve: TShape
            Left = 303
            Top = 5
            Width = 21
            Height = 8
            Brush.Color = clGreen
            Shape = stSquare
          end
          object shpOtchQuantityReserve1: TShape
            Left = 302
            Top = 24
            Width = 23
            Height = 3
            Brush.Color = 23296
            Pen.Color = 23296
          end
          object shpOtchQuantityReserve: TShape
            Left = 303
            Top = 21
            Width = 21
            Height = 8
            Brush.Color = 23296
            Shape = stSquare
          end
          object shpPlanQuantity12: TShape
            Left = 430
            Top = 8
            Width = 23
            Height = 3
            Brush.Color = clYellow
            Pen.Color = clYellow
          end
          object shpPlanQuantity1: TShape
            Left = 431
            Top = 5
            Width = 21
            Height = 8
            Brush.Color = clYellow
            Shape = stSquare
          end
          object shpPlanQuantity21: TShape
            Left = 430
            Top = 24
            Width = 23
            Height = 3
            Brush.Color = 62708
            Pen.Color = 62708
          end
          object shpPlanQuantity2: TShape
            Left = 431
            Top = 21
            Width = 21
            Height = 8
            Brush.Color = 62708
            Shape = stSquare
          end
          object shpDeficitQuantity: TShape
            Left = 558
            Top = 5
            Width = 19
            Height = 9
            Brush.Color = clRed
          end
          object shpDeficitQuantityReserve: TShape
            Left = 558
            Top = 21
            Width = 19
            Height = 9
            Brush.Color = 204
          end
        end
        object pnlTogglePeriodLabelsExtraInfo: TPanel
          Left = 747
          Top = 364
          Width = 23
          Height = 22
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            23
            22)
          object btnTogglePeriodLabelsExtraInfo: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 22
            Action = actTogglePeriodLabelsExtraInfo
            AllowAllUp = True
            Anchors = [akRight, akBottom]
            GroupIndex = 12
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object serPassiveQuantity: TAreaSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 16759260
          Title = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
          XLabelsSource = 'THE_DATE'
          AreaBrush = bsBDiagonal
          AreaChartBrush.Style = bsBDiagonal
          AreaLinesPen.Style = psDash
          DrawArea = True
          Pointer.Brush.Color = 16767468
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_PASSIVE_QUANTITY'
        end
        object serZeroArea: TAreaSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 14937059
          ShowInLegend = False
          Title = 'Zero area'
          XLabelsSource = 'THE_DATE'
          AreaLinesPen.Style = psDot
          DrawArea = True
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_ZERO'
        end
        object serZeroQuantityLine: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = clBlack
          ShowInLegend = False
          Title = 'Zero Line'
          XLabelsSource = 'THE_DATE'
          AfterDrawValues = serZeroQuantityLineAfterDrawValues
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_ZERO'
          object TeeFunction1: TLowTeeFunction
          end
        end
        object serPlanInQuantity: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 15783370
          ShowInLegend = False
          Title = #1055#1083#1072#1085#1086#1074#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
          XLabelsSource = 'THE_DATE'
          OnDblClick = serPlanInQuantityDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = -30
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_IN_PLAN_QUANTITY'
        end
        object serOtchInQuantity: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 14263195
          Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
          XLabelsSource = 'THE_DATE'
          OnDblClick = serOtchInQuantityDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = -30
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_IN_OTCH_QUANTITY'
        end
        object serPlanOutQuantity: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 11250646
          ShowInLegend = False
          Title = #1055#1083#1072#1085#1086#1074#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
          OnDblClick = serPlanOutQuantityDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = 30
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_OUT_PLAN_QUANTITY'
        end
        object serOtchOutQuantity: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 5789867
          Title = #1058#1077#1075#1083#1077#1085#1080#1103
          OnDblClick = serOtchOutQuantityDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = 30
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_OUT_OTCH_QUANTITY'
        end
        object serDeficitQuantityReserve: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 3
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 204
          Title = #1044#1077#1092#1080#1094#1080#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
          XLabelsSource = 'THE_DATE'
          OnDblClick = serDeficitQuantityReserveDblClick
          BarWidthPercent = 100
          MultiBar = mbNone
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_DEFICIT_QUANTITY_RESERVE'
        end
        object serOtchQuantity: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = clGreen
          Title = #1054#1090#1095#1077#1090#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' 0'
          OnDblClick = serOtchQuantityDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_OTCH_QUANTITY'
        end
        object serPlanQuantity: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 655359
          Title = #1055#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' 0'
          AfterDrawValues = LineSeriesAfterDrawValues
          OnDblClick = serPlanQuantityDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_PLAN_QUANTITY'
        end
        object serNegativeQuantity: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 4342527
          Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1087#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' 0'
          OnDblClick = serNegativeQuantityDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_NEGATIVE_QUANTITY'
        end
        object serDeficitQuantity: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 3
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          Title = #1044#1077#1092#1080#1094#1080#1090' '#1089#1087#1088#1103#1084#1086' 0'
          XLabelsSource = 'THE_DATE'
          OnDblClick = serDeficitQuantityDblClick
          MultiBar = mbNone
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_DEFICIT_QUANTITY'
        end
        object serOtchQuantityReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 23296
          Title = #1054#1090#1095#1077#1090#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
          AfterDrawValues = LineSeriesAfterDrawValues
          OnDblClick = serOtchQuantityReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_OTCH_QUANTITY_RESERVE'
        end
        object serOtchNegativeQuantityReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 25700
          Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1086#1090#1095#1077#1090#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
          OnDblClick = serOtchNegativeQuantityReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_OTCH_NEGATIVE_QUANTITY_RESERVE'
        end
        object serPlanQuantityReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 62708
          Title = #1055#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
          AfterDrawValues = LineSeriesAfterDrawValues
          OnDblClick = serPlanQuantityReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_PLAN_QUANTITY_RESERVE'
        end
        object serNegativeQuantityReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 1513471
          Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1087#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090' '#1089#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
          OnDblClick = serNegativeQuantityReserveDblClick
          LinePen.Width = 4
          Pointer.Brush.Color = 1513471
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_NEGATIVE_QUANTITY_RESERVE'
        end
        object serMinQuantity: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 7
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Charset = ANSI_CHARSET
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 12111664
          Title = #1047#1072#1076#1077#1083
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_MIN_QUANTITY'
        end
      end
    end
    object tsPrice: TTabSheet
      Caption = ' '#1042#1057'1 '
      ImageIndex = 1
      object ChartPrice: TDBChart
        Left = 0
        Top = 0
        Width = 771
        Height = 387
        AllowPanning = pmNone
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Foot.Alignment = taRightJustify
        Foot.Font.Color = clBlack
        Foot.Font.Name = 'Times New Roman'
        Foot.Font.Style = []
        Foot.Text.Strings = (
          #1082#1098#1084' '#1076#1072#1090#1072':')
        Foot.Visible = False
        Gradient.EndColor = 12441534
        Gradient.StartColor = 16053492
        Gradient.Visible = True
        MarginBottom = 20
        MarginTop = 2
        PrintProportional = False
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsItalic]
        Title.Text.Strings = (
          #1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' 1-'#1074#1080' '#1056#1077#1076
          '')
        OnGetLegendPos = ChartPriceGetLegendPos
        OnGetLegendRect = ChartPriceGetLegendRect
        BottomAxis.DateTimeFormat = 'hh:mm'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.LabelsFont.Name = 'Times New Roman'
        LeftAxis.Title.Caption = #1089#1090#1086#1081#1085#1086#1089#1090' '#1074' ...'
        LeftAxis.Title.Font.Height = -12
        LeftAxis.Title.Font.Name = 'Times New Roman'
        LeftAxis.TitleSize = 20
        Legend.Alignment = laBottom
        Legend.Font.Height = -9
        Legend.Shadow.Color = clGray
        Legend.Shadow.HorizSize = 2
        Legend.Shadow.VertSize = 2
        Legend.VertMargin = 20
        Legend.Visible = False
        View3D = False
        Zoom.Animated = True
        OnAfterDraw = ChartPriceAfterDraw
        OnBeforeDrawSeries = ChartPriceBeforeDrawSeries
        OnGetAxisLabel = ChartsGetAxisLabel
        Align = alClient
        BevelOuter = bvLowered
        Color = 15658963
        TabOrder = 0
        DesignSize = (
          771
          387)
        ColorPaletteIndex = 13
        object lblChartPriceStartDate: TLabel
          Left = 1
          Top = 282
          Width = 50
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '04.04.2002'
          Color = 15921382
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object lblChartPriceEndDate: TLabel
          Left = 1
          Top = 295
          Width = 50
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '21.05.2002'
          Color = 15921382
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object btnPrintPriceChart: TSpeedButton
          Left = 1
          Top = 365
          Width = 23
          Height = 22
          Action = actPrintPriceChart
          Anchors = [akLeft, akBottom]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000C6C6
            C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
            C600FFFFFF00C6C6C600FFFFFF000000FF00FFFFFF000000000000000000FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
            FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000C6C6C600FFFFFF0000000000FFFF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Transparent = False
        end
        object lblToDateOnChartPrice: TLabel
          Left = 572
          Top = 366
          Width = 171
          Height = 12
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = #1082#1098#1084' '#1076#1072#1090#1072': 00-00-0000'
          Color = 16053492
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object pnlLegend: TPanel
          Left = 64
          Top = 324
          Width = 685
          Height = 38
          Anchors = [akLeft, akRight, akBottom]
          BevelOuter = bvNone
          Color = 16053492
          TabOrder = 0
          object shpLegend2: TShape
            Left = 2
            Top = 2
            Width = 683
            Height = 36
            Brush.Color = 10790296
            Pen.Color = 11054225
          end
          object shpLegend: TShape
            Left = 0
            Top = 0
            Width = 683
            Height = 36
          end
          object lblOtchInPrice: TLabel
            Left = 27
            Top = 4
            Width = 58
            Height = 12
            Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblOtchOutPrice: TLabel
            Left = 124
            Top = 4
            Width = 39
            Height = 12
            Caption = #1058#1077#1075#1083#1077#1085#1080#1103
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object shpOtchInPrice: TShape
            Left = 6
            Top = 5
            Width = 19
            Height = 9
            Brush.Color = 14263195
          end
          object shpOtchOutPrice: TShape
            Left = 102
            Top = 5
            Width = 19
            Height = 9
            Brush.Color = 5789867
          end
          object shpPassivePrice2: TShape
            Left = 6
            Top = 21
            Width = 19
            Height = 9
            Brush.Color = 16759260
          end
          object lblPassivePrice: TLabel
            Left = 27
            Top = 20
            Width = 133
            Height = 12
            Caption = #1055#1072#1089#1080#1074#1085#1072' '#1063#1072#1089#1090' '#1086#1090' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080#1090#1077
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblOtchNegativePriceReserve2: TLabel
            Left = 172
            Top = 4
            Width = 52
            Height = 12
            Caption = #1057#1087#1088#1103#1084#1086' 0:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblOtchPriceReserve2: TLabel
            Left = 172
            Top = 20
            Width = 77
            Height = 12
            Caption = #1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083':'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblOtchNegativePriceReserve1: TLabel
            Left = 276
            Top = 4
            Width = 84
            Height = 12
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblPlanPriceReserve1: TLabel
            Left = 404
            Top = 4
            Width = 87
            Height = 12
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblDeficitPrice: TLabel
            Left = 636
            Top = 4
            Width = 39
            Height = 12
            Caption = #1044#1077#1092#1080#1094#1080#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblOtchPriceReserve1: TLabel
            Left = 276
            Top = 20
            Width = 84
            Height = 12
            Caption = #1054#1090#1095#1077#1090#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblPlanPriceReserve2: TLabel
            Left = 404
            Top = 20
            Width = 87
            Height = 12
            Caption = #1055#1083#1072#1085#1086#1074#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lblDeficitPriceReserve: TLabel
            Left = 636
            Top = 20
            Width = 39
            Height = 12
            Caption = #1044#1077#1092#1080#1094#1080#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object shpPassivePrice: TShape
            Left = 6
            Top = 21
            Width = 19
            Height = 9
            Brush.Color = clBlack
            Brush.Style = bsBDiagonal
          end
          object shpOtchNegativePriceReserve2: TShape
            Left = 246
            Top = 8
            Width = 23
            Height = 3
            Brush.Color = clGreen
            Pen.Color = clGreen
          end
          object shpOtchNegativePriceReserve: TShape
            Left = 247
            Top = 5
            Width = 21
            Height = 8
            Brush.Color = clGreen
            Shape = stSquare
          end
          object shpOtchPriceReserve2: TShape
            Left = 246
            Top = 24
            Width = 23
            Height = 3
            Brush.Color = 23296
            Pen.Color = 23296
          end
          object shpOtchPriceReserve: TShape
            Left = 247
            Top = 21
            Width = 21
            Height = 8
            Brush.Color = 23296
            Shape = stSquare
          end
          object shpPlanPriceReserve11: TShape
            Left = 374
            Top = 8
            Width = 23
            Height = 3
            Brush.Color = clYellow
            Pen.Color = clYellow
          end
          object shpPlanPriceReserve1: TShape
            Left = 375
            Top = 5
            Width = 21
            Height = 8
            Brush.Color = clYellow
            Shape = stSquare
          end
          object shpPlanPriceReserve21: TShape
            Left = 374
            Top = 24
            Width = 23
            Height = 3
            Brush.Color = 62708
            Pen.Color = 62708
          end
          object shpPlanPriceReserve2: TShape
            Left = 375
            Top = 21
            Width = 21
            Height = 8
            Brush.Color = 62708
            Shape = stSquare
          end
          object shpDeficitPrice: TShape
            Left = 606
            Top = 5
            Width = 19
            Height = 9
            Brush.Color = clRed
          end
          object shpDeficitPriceReserve: TShape
            Left = 606
            Top = 21
            Width = 19
            Height = 9
            Brush.Color = 204
          end
          object lblBalancedPrice: TLabel
            Left = 532
            Top = 4
            Width = 69
            Height = 12
            Caption = #1041#1072#1083'. '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object shpBalancedPrice2: TShape
            Left = 502
            Top = 8
            Width = 23
            Height = 3
            Brush.Color = clBlue
            Pen.Color = clBlue
          end
          object shpBalancedPrice: TShape
            Left = 503
            Top = 5
            Width = 21
            Height = 8
            Brush.Color = clBlue
            Shape = stSquare
          end
          object lblBalancedPriceReserve: TLabel
            Left = 532
            Top = 20
            Width = 69
            Height = 12
            Caption = #1041#1072#1083'. '#1053#1072#1083#1080#1095#1085#1086#1089#1090
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7566195
            Font.Height = -9
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object shpBalancedPriceReserve2: TShape
            Left = 502
            Top = 24
            Width = 23
            Height = 3
            Brush.Color = 9633792
            Pen.Color = 9633792
          end
          object shpBalancedPriceReserve: TShape
            Left = 503
            Top = 21
            Width = 21
            Height = 8
            Brush.Color = 9633792
            Shape = stSquare
          end
        end
        object pnlTogglePeriodLabelsExtraInfo2: TPanel
          Left = 747
          Top = 364
          Width = 23
          Height = 22
          Anchors = [akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            23
            22)
          object btnTogglePeriodLabelsExtraInfo2: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 22
            Action = actTogglePeriodLabelsExtraInfo
            AllowAllUp = True
            Anchors = [akRight, akBottom]
            GroupIndex = 12
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
        object serPassivePrice: TAreaSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 16759260
          Title = #1055#1072#1089#1080#1074#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          XLabelsSource = 'THE_DATE'
          AreaBrush = bsBDiagonal
          AreaChartBrush.Style = bsBDiagonal
          AreaLinesPen.Style = psDash
          DrawArea = True
          Pointer.Brush.Color = 16767468
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_PASSIVE_QUANTITY_PRICE'
        end
        object serZeroPriceArea: TAreaSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 14937059
          ShowInLegend = False
          XLabelsSource = 'THE_DATE'
          AreaLinesPen.Style = psDot
          DrawArea = True
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_ZERO'
        end
        object serZeroPriceLine: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = clBlack
          ShowInLegend = False
          Title = 'Zero Line'
          XLabelsSource = 'THE_DATE'
          AfterDrawValues = serZeroPriceLineAfterDrawValues
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_ZERO'
        end
        object serPlanInPrice: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 15783370
          ShowInLegend = False
          Title = #1055#1083#1072#1085#1086#1074#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
          XLabelsSource = 'THE_DATE'
          OnDblClick = serPlanInPriceDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = -30
          Shadow.Color = 8487297
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_IN_PLAN_PRICE'
        end
        object serOtchInPrice: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 14263195
          Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
          XLabelsSource = 'THE_DATE'
          OnDblClick = serOtchInPriceDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = -30
          Shadow.Color = 8487297
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_IN_OTCH_PRICE'
        end
        object serPlanOutPrice: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 11250646
          ShowInLegend = False
          Title = #1055#1083#1072#1085#1086#1074#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
          OnDblClick = serPlanOutPriceDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = 30
          Shadow.Color = 8487297
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_OUT_PLAN_PRICE'
        end
        object serOtchOutPrice: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 8
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 5789867
          Title = #1058#1077#1075#1083#1077#1085#1080#1103
          XLabelsSource = 'THE_DATE'
          OnDblClick = serOtchOutPriceDblClick
          BarWidthPercent = 30
          MultiBar = mbNone
          OffsetPercent = 30
          Shadow.Color = 8487297
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_OUT_OTCH_PRICE'
        end
        object serDeficitPriceReserve: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 3
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 204
          Title = #1044#1077#1092#1080#1094#1080#1090
          XLabelsSource = 'THE_DATE'
          OnDblClick = serDeficitPriceReserveDblClick
          BarWidthPercent = 100
          MultiBar = mbNone
          Shadow.Color = 8553090
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_DEFICIT_QUANTITY_PRICE_RESERVE'
        end
        object serOtchPrice: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = clGreen
          Title = #1054#1090#1095#1077#1090#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          OnDblClick = serOtchPriceDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_OTCH_PRICE'
        end
        object serPlanPrice: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = clYellow
          Title = #1055#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          AfterDrawValues = LineSeriesAfterDrawValues
          OnDblClick = serPlanPriceDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_PLAN_PRICE'
        end
        object serNegativePrice: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 4342527
          Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1087#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          OnDblClick = serNegativePriceDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_NEGATIVE_PRICE'
        end
        object serDeficitPrice: TBarSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 3
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = cdsVIM
          Title = #1044#1077#1092#1080#1094#1080#1090
          XLabelsSource = 'THE_DATE'
          OnDblClick = serDeficitPriceDblClick
          MultiBar = mbNone
          Shadow.Color = 8553090
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = '_DEFICIT_PRICE'
        end
        object serOtchPriceReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 23296
          Title = #1054#1090#1095#1077#1090#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          AfterDrawValues = LineSeriesAfterDrawValues
          OnDblClick = serOtchPriceReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_OTCH_PRICE_RESERVE'
        end
        object serOtchNegativePriceReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 25700
          Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1086#1090#1095#1077#1090#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          OnDblClick = serOtchNegativePriceReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_OTCH_NEGATIVE_PRICE_RESERVE'
        end
        object serPlanPriceReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 62708
          Title = #1055#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          AfterDrawValues = LineSeriesAfterDrawValues
          OnDblClick = serPlanPriceReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_PLAN_PRICE_RESERVE'
        end
        object serNegativePriceReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 1513471
          Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1087#1083#1072#1085#1086#1074#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          OnDblClick = serNegativePriceReserveDblClick
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_NEGATIVE_PRICE_RESERVE'
        end
        object serMinPrice: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.Callout.Length = 7
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = False
          DataSource = cdsVIM
          SeriesColor = 12111664
          Title = #1047#1072#1076#1077#1083
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_MIN_PRICE'
        end
        object serBalancedPrice: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          Title = #1041#1072#1083#1072#1085#1089#1080#1088#1072#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_BALANCED_PRICE'
        end
        object serBalancedPriceReserve: TLineSeries
          Marks.Arrow.Visible = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Arrow.Visible = True
          Marks.BackColor = clWhite
          Marks.Color = clWhite
          Marks.Font.Height = -9
          Marks.Font.Name = 'Times New Roman'
          Marks.Visible = True
          DataSource = cdsVIM
          SeriesColor = 9633792
          Title = #1041#1072#1083#1072#1085#1089#1080#1088#1072#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
          LinePen.Width = 4
          Pointer.InflateMargins = True
          Pointer.Style = psDiamond
          Pointer.Visible = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ORDER_NO'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = '_BALANCED_PRICE_RESERVE'
        end
      end
    end
    object tsRegister: TTabSheet
      BorderWidth = 3
      Caption = ' '#1056#1077#1075#1080#1089#1090#1098#1088' '
      ImageIndex = 2
      object pnlMaster: TPanel
        Left = 0
        Top = 24
        Width = 765
        Height = 357
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object grdMaster: TAbmesDBGrid
          Left = 0
          Top = 0
          Width = 765
          Height = 325
          Align = alClient
          DataGrouping.GroupLevels = <>
          DataSource = dsRegister
          Flat = False
          FooterColor = 15258325
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Microsoft Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          HorzScrollBar.Visible = False
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
          RowDetailPanel.Color = clBtnFace
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Microsoft Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 12
          OnDblClick = grdMasterDblClick
          OnDrawColumnCell = grdMasterDrawColumnCell
          OnGetCellParams = grdMasterGetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DATE_LABEL'
              Footers = <>
              Title.Caption = 'Time Moment'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_IN'
              Footer.FieldName = '_SUM_QUANTITY_IN'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_OUT'
              Footer.FieldName = '_SUM_QUANTITY_OUT'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1057#1087#1088#1103#1084#1086' 0'
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'PASSIVE_QUANTITY_PERCENT'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1055#1063' (%)'
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_RESERVE'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_DEFICIT'
              Footers = <>
              Title.Caption = #1044#1077#1092#1080#1094#1080#1090'|'#1057#1087#1088#1103#1084#1086' 0'
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_DEFICIT_RESERVE'
              Footers = <>
              Title.Caption = #1044#1077#1092#1080#1094#1080#1090'|'#1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'A_QUANTITY_IN'
              Footer.FieldName = '_SUM_A_QUANTITY_IN'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'A_QUANTITY_OUT'
              Footer.FieldName = '_SUM_A_QUANTITY_OUT'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'A_QUANTITY'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1057#1087#1088#1103#1084#1086' 0'
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'A_PASSIVE_QUANTITY_PERCENT'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1055#1063' (%)'
              Visible = False
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'A_QUANTITY_RESERVE'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'A_QUANTITY_DEFICIT'
              Footers = <>
              Title.Caption = #1044#1077#1092#1080#1094#1080#1090'|'#1057#1087#1088#1103#1084#1086' 0'
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'A_QUANTITY_DEFICIT_RESERVE'
              Footers = <>
              Title.Caption = #1044#1077#1092#1080#1094#1080#1090'|'#1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_IN_PRICE'
              Footer.FieldName = '_SUM_PRICE_IN'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_OUT_PRICE'
              Footer.FieldName = '_SUM_PRICE_OUT'
              Footer.ValueType = fvtFieldValue
              Footers = <>
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_PRICE'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1057#1087#1088#1103#1084#1086' 0'
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'PASSIVE_PRICE_PERCENT'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1055#1063' (%)'
              Visible = False
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_PRICE_RESERVE'
              Footers = <>
              Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_DEFICIT_PRICE'
              Footers = <>
              Title.Caption = #1044#1077#1092#1080#1094#1080#1090'|'#1057#1087#1088#1103#1084#1086' 0'
              Visible = False
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'QUANTITY_DEFICIT_PRICE_RESERVE'
              Footers = <>
              Title.Caption = #1044#1077#1092#1080#1094#1080#1090'|'#1057#1087#1088#1103#1084#1086' '#1079#1072#1076#1077#1083
              Visible = False
              Width = 99
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object pnlGridButtons: TPanel
          Left = 0
          Top = 325
          Width = 765
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object btnDealsIn: TBitBtn
            Left = 260
            Top = 7
            Width = 121
            Height = 25
            Action = actDealsIn
            Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00202020005050500040404000404040004040400040404000404040004040
              40004040400020202000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00404040009F9F9F006F6F6F00606060006060600060606000606060006060
              6000606060008080800020202000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF0000000000B0B0B000606060006060600090909000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF0000000000000000007FFFFF007FFFFF0060606000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00000000000000
              00000000000000000000000000000080000000000000A0A0A000B0B0B000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00000000000080
              0000008000000080000000800000008000000080000000000000BFBFBF00BFBF
              BF0060606000808080008080800000000000FF00FF00FF00FF00000000000000
              0000000000000000000000000000008000000000000060606000606060006060
              600090909000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF000000000000000000C0C0C000C0C0C000C0C0C000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF0000000000A0A0A0007F7F7F007F7F7F0060606000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00A0A0A00040BFBF0040BFBF0080808000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00EFEFEF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
              DF0060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000CFCFCF00A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
              A00090909000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0020202000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
              DF00DFDFDF00CFCFCF008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0020202000CFCFCF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
              C000C0C0C000C0C0C000CFCFCF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0020202000404040004040400040404000404040004040
              400040404000404040004040400020202000FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 0
          end
          object btnDealsOut: TBitBtn
            Left = 388
            Top = 7
            Width = 121
            Height = 25
            Action = actDealsOut
            Caption = #1058#1077#1075#1083#1077#1085#1080#1103'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00202020005050500040404000404040004040400040404000404040004040
              40004040400020202000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00404040009F9F9F006F6F6F00606060006060600060606000606060006060
              6000606060008080800020202000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00B0B0B000606060006060600090909000C0C0
              C00060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00A0A0A0007FFFFF007FFFFF0060606000C0C0
              C00060606000000000008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00B0B0B000A0A0A000A0A0A000B0B0B000C0C0
              C00060606000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00BFBFBF00BFBFBF00BFBFBF0000000000000000000000
              000000000000000000000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000AFAFAF00606060006060600060606000000000000000FF000000
              FF000000FF000000FF000000FF000000000000000000FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00C0C0C000C0C0C00000000000000000000000
              000000000000000000000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00A0A0A0007F7F7F007F7F7F0060606000C0C0
              C00060606000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00DFDFDF00A0A0A00040BFBF0040BFBF0080808000C0C0
              C00060606000000000008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000BFBFBF00EFEFEF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
              DF0060606000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0040404000CFCFCF00A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
              A00090909000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF0020202000DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
              DF00DFDFDF00CFCFCF008080800000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0020202000CFCFCF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
              C000C0C0C000C0C0C000CFCFCF0000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0020202000404040004040400040404000404040004040
              400040404000404040004040400020202000FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 1
          end
          object btnQuantity: TBitBtn
            Left = 516
            Top = 7
            Width = 121
            Height = 25
            Action = actQuantity
            Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00002020000040400000404000004040000040400000404000004040000040
              40000040400000202000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000080000000800000008000000080000000800000008000000080
              0000008000004040000000202000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000080000000800000008000000080000000800000008000000080
              000000800000404000004040000000202000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000080000000800000008000000080000000800000008000000080
              000000800000404000004040000000404000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000080000000800000008000000080000000800000008000000080
              000000800000404000004040000000404000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000080000000800000008000000080000000800000008000000080
              000000800000404000004040000000404000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F0080FF000080FF000080FF000080FF000080FF000080FF000080FF
              000080FF0000404000004040000000404000FF00FF00FF00FF00FF00FF002020
              20007FBFBF005F9F9F007FBFBF007FBFBF007FBFBF007FBFBF007FBFBF007FBF
              BF007FBFBF00002020000060600000404000FF00FF00FF00FF0000000000DFDF
              DF00FF00FF00DFDFDF00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00004040000060600000202000FF00FF00FF00FF00FF00FF003F3F
              3F00FF00FF00FF00FF009F9F9F007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF003F5F5F00008080000040400000000000FF00FF00FF00FF00FF00
              FF003F3F3F003F3F3F00000000003F3F3F00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF003F5F5F003F5F5F003F3F3F00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000009F9F9F00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF007F7F7F0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF003F3F3F007F7F7F007F7F7F007F7F
              7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 2
          end
          object btnDeficit: TBitBtn
            Left = 644
            Top = 7
            Width = 121
            Height = 25
            Action = actDeficit
            Caption = #1044#1077#1092#1080#1094#1080#1090'...'
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00002020000040400000404000004040000040400000404000004040000040
              40000040400000202000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF000000800000202000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF00000080000000800000202000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF00000080000000800000404000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF00000080000000800000404000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF00000080000000800000404000FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F008000FF008000FF008000FF008000FF008000FF008000FF008000
              FF008000FF00000080000000800000404000FF00FF00FF00FF00FF00FF002020
              20007FBFBF005F9F9F007FBFBF007FBFBF007FBFBF007FBFBF007FBFBF007FBF
              BF007FBFBF00002020000060600000404000FF00FF00FF00FF0000000000DFDF
              DF00FF00FF00DFDFDF00DFDFDF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00004040000060600000202000FF00FF00FF00FF00FF00FF003F3F
              3F00FF00FF00FF00FF009F9F9F007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF003F5F5F00008080000040400000000000FF00FF00FF00FF00FF00
              FF003F3F3F003F3F3F00000000003F3F3F00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF003F5F5F003F5F5F003F3F3F00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000009F9F9F00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF007F7F7F0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF003F3F3F007F7F7F007F7F7F007F7F
              7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            TabOrder = 3
          end
        end
      end
      object pnlMasterNav: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblMeasure: TLabel
          Left = 653
          Top = 6
          Width = 105
          Height = 13
          Caption = #1052#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072': XXX'
        end
        object cnMaster: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 24
          DataSource = dsRegister
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alLeft
          Flat = True
          TabOrder = 0
        end
        object tlbTopButtons: TToolBar
          Left = 96
          Top = 0
          Width = 258
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tbQuantity'
          Images = dmMain.ilActions
          TabOrder = 1
          object sepBeforeExcelExport: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeExcelExport'
            Style = tbsSeparator
          end
          object btnExcelExport: TToolButton
            Left = 8
            Top = 0
            Action = actExcelExport
          end
          object btnPrintGrid: TToolButton
            Left = 32
            Top = 0
            Action = actPrint
          end
          object sepBeforeShowQuantity: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'sepBeforeShowQuantity'
            ImageIndex = 84
            Style = tbsSeparator
          end
          object sbtnShowQuantity: TSpeedButton
            Left = 64
            Top = 0
            Width = 97
            Height = 24
            Action = actShowRegQuantity
            GroupIndex = 10
            Down = True
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000FF00
              FF00FF00FF000000FF00000084000000FF00FF00FF0000000000FF00FF007B7B
              7B00000000000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF000000FF00000084000000FF0000000000008484007B7B7B000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF000000FF00000084000000FF00008484000084840000000000FFFF
              FF000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF000000FF00000084000000FF000084840000848400000000000000
              0000FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF000000FF00000084000000FF0000848400FF00FF00000000007B7B
              7B00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF007B7B7B0000000000FFFFFF00000000007B7B7B00FF00FF00FF00FF000000
              00000000840000008400000084000000840000008400FF00FF00FF00FF00FF00
              FF000000000000000000000000007B7B7B00FF00FF00FF00FF00000000000084
              8400008484000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084
              840000848400FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000000000000000FF00FF00FF00FF000000000000848400008484000084
              8400FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FF00FF0000000000FF00FF0000000000008484000084840000848400FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
              FF00000000000000000000000000008484000084840000848400FF00FF00FF00
              FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
              00000000000000000000000000000000000000848400FF00FF00FF00FF00FF00
              FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
              FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
              FF0000848400000000000000000000000000000000007B7B7B00FF00FF00FF00
              FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
              FF000084840000848400FF00FF00000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Spacing = -1
            Transparent = False
          end
          object sbtnShowPrice: TSpeedButton
            Left = 161
            Top = 0
            Width = 97
            Height = 24
            Action = actShowRegPrice
            GroupIndex = 10
            Flat = True
            Spacing = -1
            Transparent = False
          end
        end
      end
    end
  end
  object pnlTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 795
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlVIMInfo: TPanel
      Left = 6
      Top = 7
      Width = 779
      Height = 61
      TabOrder = 0
      object lblProduct: TLabel
        Left = 10
        Top = 10
        Width = 106
        Height = 13
        Caption = '%ProductClassName%'
      end
      object lblDept: TLabel
        Left = 10
        Top = 37
        Width = 91
        Height = 13
        Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      end
      object lblPeriod: TLabel
        Left = 358
        Top = 37
        Width = 84
        Height = 13
        Caption = #1042#1088#1077#1084#1077#1074#1080' '#1089#1090#1098#1087#1082#1080
      end
      object lblRounderQuantity: TLabel
        Left = 530
        Top = 11
        Width = 91
        Height = 13
        Caption = #1047#1072#1082#1088#1098#1075#1083#1103#1085#1077' - '#1082'-'#1074#1086
      end
      object lblRounderPrice: TLabel
        Left = 530
        Top = 37
        Width = 91
        Height = 13
        Caption = #1047#1072#1082#1088#1098#1075#1083#1103#1085#1077' - '#1042#1057'1'
      end
      object btnParams: TBitBtn
        Left = 703
        Top = 21
        Width = 72
        Height = 22
        Action = actFilter
        Caption = #1060#1080#1083#1090#1098#1088'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 8
      end
      object edtProductName: TDBEdit
        Left = 112
        Top = 8
        Width = 271
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_PRODUCT_NAME'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 0
      end
      object edtProductNo: TDBEdit
        Left = 384
        Top = 8
        Width = 105
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_PRODUCT_NO'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 1
      end
      object edtDeptName: TDBEdit
        Left = 112
        Top = 32
        Width = 137
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_DEPT_NAME'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 2
      end
      object edtDeptNo: TDBEdit
        Left = 250
        Top = 32
        Width = 57
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_DEPT_NO'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 3
      end
      object edtTimeUnits: TDBEdit
        Left = 450
        Top = 32
        Width = 74
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_TIME_UNITS'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 5
      end
      object edtRoundeQuantity: TDBEdit
        Left = 626
        Top = 8
        Width = 71
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_ROUNDER_QUANTITY_NAME'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 6
      end
      object edtRounderPrice: TDBEdit
        Left = 626
        Top = 32
        Width = 71
        Height = 21
        BevelKind = bkTile
        BevelWidth = 2
        BorderStyle = bsNone
        Color = 14281690
        DataField = '_ROUNDER_PRICE_NAME'
        DataSource = dsVIMParams
        ReadOnly = True
        TabOrder = 7
      end
      object tlbFilterDeptDocs: TToolBar
        Left = 308
        Top = 32
        Width = 36
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 36
        EdgeInner = esNone
        Images = dmMain.ilDocs
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        object btnFilterDeptDocs: TToolButton
          Left = 0
          Top = 0
          Action = actFilterDeptDocs
        end
      end
    end
  end
  object tbSpeed: TToolBar [3]
    Left = 426
    Top = 69
    Width = 361
    Height = 24
    Align = alNone
    ButtonHeight = 24
    ButtonWidth = 28
    Caption = 'tbQuantity'
    TabOrder = 1
    object sbtnWorkMeasure: TSpeedButton
      Left = 0
      Top = 0
      Width = 24
      Height = 24
      Action = actWorkMeasure
      GroupIndex = 1
      Down = True
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000FF00
        FF00FF00FF000000FF00000084000000FF00FF00FF0000000000FF00FF007B7B
        7B00000000000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000FF00000084000000FF0000000000008484007B7B7B000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00000084000000FF00008484000084840000000000FFFF
        FF000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00000084000000FF000084840000848400000000000000
        0000FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000FF00000084000000FF0000848400FF00FF00000000007B7B
        7B00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF007B7B7B0000000000FFFFFF00000000007B7B7B00FF00FF00FF00FF000000
        00000000840000008400000084000000840000008400FF00FF00FF00FF00FF00
        FF000000000000000000000000007B7B7B00FF00FF00FF00FF00000000000084
        8400008484000084840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084
        840000848400FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF000000000000848400008484000084
        8400FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FF00FF0000000000008484000084840000848400FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
        FF00000000000000000000000000008484000084840000848400FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000848400FF00FF00FF00FF00FF00
        FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
        FF0000848400000000000000000000000000000000007B7B7B00FF00FF00FF00
        FF00FF00FF007B7B7B00000000007B7B7B00FF00FF00FF00FF00FF00FF00FF00
        FF000084840000848400FF00FF00000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    object sbtnAccountMeasure: TSpeedButton
      Left = 24
      Top = 0
      Width = 24
      Height = 24
      Action = actAccountMeasure
      GroupIndex = 1
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF007B7B7B007B7B7B00FF00FF007B7B7B007B7B7B007B7B7B007B7B
        7B007B7B7B007B7B7B00FF00FF007B7B7B007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000000000007B7B7B00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000BDBDBD007B7B7B00000000007B7B7B00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        00000084840000848400BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000084
        84000084840000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084
        840000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008484000084840000FF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000008484000084840000FFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000008484000084840000FFFF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000008484000084840000FFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000008484000000000000FFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        84000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    object sepBeforeQuantity: TToolButton
      Left = 48
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object sbtnQuantity: TSpeedButton
      Left = 56
      Top = 0
      Width = 24
      Height = 24
      Action = actShowQuantity
      AllowAllUp = True
      GroupIndex = 2
      Down = True
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF00000000000000FF000000FF00FF00FF000000FF000000FF000000FF00FF00
        FF000000000000000000FF00FF00FF00FF000000000000000000FF00FF00FF00
        FF0000000000FF00FF000000FF00FF00FF000000FF00FF00FF000000FF00FF00
        FF00000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF000000FF000000FF000000FF00FF00FF000000FF000000
        FF00000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF000000
        FF0000000000000000000000FF00FF00FF000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        FF000000000000000000FF00FF000000FF000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
    object sbtnQuantityMarks: TSpeedButton
      Left = 80
      Top = 0
      Width = 24
      Height = 24
      Action = actShowQuantityMarks
      AllowAllUp = True
      GroupIndex = 3
      Down = True
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000000000000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000000000000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
    object sepBeforeBalancedPrice: TToolButton
      Left = 104
      Top = 0
      Width = 8
      Caption = 'sepBeforeBalancedPrice'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object sbtnBalancedPrice: TSpeedButton
      Left = 112
      Top = 0
      Width = 24
      Height = 24
      Action = actShowBalancedPrice
      AllowAllUp = True
      GroupIndex = 12
      Flat = True
      Transparent = False
    end
    object sbtnBalancedPriceMarks: TSpeedButton
      Left = 136
      Top = 0
      Width = 24
      Height = 24
      Action = actShowBalancedPriceMarks
      AllowAllUp = True
      GroupIndex = 13
      Flat = True
      Transparent = False
    end
    object sepBeforeMovements: TToolButton
      Left = 160
      Top = 0
      Width = 8
      Caption = 'sepBeforeMovements'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object sbtnMovements: TSpeedButton
      Left = 168
      Top = 0
      Width = 24
      Height = 24
      Action = actShowMovements
      AllowAllUp = True
      GroupIndex = 4
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
        FF00FF00FF00FF00FF000084000000840000FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000FF000000FF00FF00FF000000FF000000FF000000FF00FF00
        FF00FF00FF0000840000FF00FF00FF00FF0000840000FF00FF00FF00FF00FF00
        FF0000000000FF00FF000000FF00FF00FF000000FF00FF00FF000000FF00FF00
        FF0000840000FF00FF00FF00FF00FF00FF00FF00FF0000840000FF00FF00FF00
        FF0000000000FF00FF000000FF000000FF000000FF00FF00FF000000FF000000
        FF0000840000FF00FF00FF00FF00FF00FF00FF00FF0000840000FF00FF00FF00
        FF0000000000FF00FF00FF00FF000000FF00FF00FF00FF00FF000000FF000000
        FF00008400000000FF000000FF00FF00FF00FF00FF0000840000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        FF000000FF0000840000FF00FF000000FF0000840000FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF00FF00FF0000840000008400000000FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
    object sbtnMovementsMarks: TSpeedButton
      Left = 192
      Top = 0
      Width = 24
      Height = 24
      Action = actShowMovementsMarks
      AllowAllUp = True
      GroupIndex = 5
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF000084000000840000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF000084
        0000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000840000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000840000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000840000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF000084
        0000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF000084000000840000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
    object sepBeforeDeficit: TToolButton
      Left = 216
      Top = 0
      Width = 8
      Caption = 'sepBeforeDeficit'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object sbtnDeficit: TSpeedButton
      Left = 224
      Top = 0
      Width = 24
      Height = 24
      Action = actShowDeficit
      AllowAllUp = True
      GroupIndex = 6
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000840000FF00FF00FF00FF00FF00FF0000840000FF00FF00FF00
        FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00
        FF00000000000084000000840000FF00FF00008400000084000000840000FF00
        FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00
        FF0000000000FF00FF0000840000FF00FF0000840000FF00FF0000840000FF00
        FF00FF00FF000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00008400000084000000840000FF00FF00008400000084
        0000FF00FF000000FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF0000840000FF00FF00FF00FF00008400000084
        0000FF00FF000000FF0000840000008400000000FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000084
        0000008400000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000840000FF00FF00FF00FF000084000000840000FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000084000000840000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000840000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
    object sbtnDeficitMarks: TSpeedButton
      Left = 248
      Top = 0
      Width = 24
      Height = 24
      Action = actShowDeficitMarks
      AllowAllUp = True
      GroupIndex = 7
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00000000000000000000000000FFFFFF0000000000FFFFFF000000FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000FF000000
        FF000000FF000000FF000000FF000000FF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000
        FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000
        FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000
        FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000
        FF000000FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
    object sepBeforePassive: TToolButton
      Left = 272
      Top = 0
      Width = 8
      Caption = 'sepBeforePassive'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object sbtnPassive: TSpeedButton
      Left = 280
      Top = 0
      Width = 24
      Height = 24
      Action = actShowPassive
      AllowAllUp = True
      GroupIndex = 8
      Down = True
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000FFFF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000FFFF0000FFFF00FF00FF0000FFFF0000FFFF0000FFFF00FF00
        FF00FF00FF0026216D00FF00FF0026216D00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF0000FFFF00FF00FF0000FFFF00FF00FF0000FFFF00FF00
        FF00FF00FF0026216D00FF00FF0026216D00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF0000FFFF0000FFFF0000FFFF00FF00FF0000FFFF00FF00
        FF0000FFFF0026216D0000FFFF0026216D00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF0000FFFF00FF00FF00FF00FF0000FFFF00FF00
        FF0000FFFF0026216D0026216D0026216D00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
        FF0000FFFF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    object sbtnPassiveMarks: TSpeedButton
      Left = 304
      Top = 0
      Width = 24
      Height = 24
      Action = actShowPassiveMarks
      AllowAllUp = True
      GroupIndex = 9
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF0026216D00FFFFFF0026216D00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF0026216D00FFFFFF0026216D00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF0026216D00FFFFFF0026216D00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF0026216D0026216D0026216D00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    object sepBeforeShowTowardsReserve: TToolButton
      Left = 328
      Top = 0
      Width = 8
      Caption = 'sepBeforeShowTowardsReserve'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object btnShowTowardsReserve: TSpeedButton
      Left = 336
      Top = 0
      Width = 23
      Height = 24
      Action = actShowTowardsReserve
      AllowAllUp = True
      GroupIndex = 11
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000084000000840000008400000084
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000840000008400000084000000840000008400000084
        0000008400000084000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000840000008400000084000000840000008400000084
        0000008400000084000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000084000000840000008400000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000000840000008400000084000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000084000000840000008400000084000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00000000000084000000840000008400000084000000000000FF00FF00FF00
        FF00000000000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
        FF00FF00FF00000000000084000000840000008400000084000000000000FF00
        FF00000000000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
        FF00FF00FF00000000000084000000840000008400000084000000000000FF00
        FF00FF00FF00000000000000FF000000FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000084000000840000008400000000
        0000FF00FF00000000000000FF000000FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Transparent = False
    end
  end
  inherited alActions: TActionList
    Left = 208
    Top = 264
    inherited actForm: TAction
      Caption = 
        #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbre' +
        'v%'
    end
    object actPrev: TAction
      ImageIndex = 36
      OnExecute = actPrevExecute
      OnUpdate = actPrevUpdate
    end
    object actNext: TAction
      ImageIndex = 37
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actFilter: TAction
      Caption = #1060#1080#1083#1090#1098#1088'...'
      ImageIndex = 3
      OnExecute = actFilterExecute
      OnUpdate = actFilterUpdate
    end
    object actPrintPage: TAction
      Caption = #1055#1077#1095#1072#1090
      ImageIndex = 2
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1089#1095#1077#1090#1086#1074#1086#1076#1085#1072#13#10#1084'.'#1077#1076'.'
      ImageIndex = 28
      OnUpdate = actAccountMeasureUpdate
    end
    object actShowPassive: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 8
      Hint = #1087#1072#1089#1080#1074#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 73
      OnUpdate = actShowPassiveUpdate
    end
    object actShowPassiveMarks: TAction
      AutoCheck = True
      GroupIndex = 9
      Hint = #1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072#13#10#1087#1072#1089#1080#1074#1085#1072#1090#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 67
      OnUpdate = actShowPassiveMarksUpdate
    end
    object actShowQuantity: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 2
      Hint = #1085#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 74
      OnUpdate = actShowQuantityUpdate
    end
    object actShowQuantityMarks: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 3
      Hint = #1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072#13#10#1085#1072#1083#1080#1095#1085#1086#1089#1090#1090#1072
      ImageIndex = 68
      OnUpdate = actShowQuantityMarksUpdate
    end
    object actShowMovements: TAction
      AutoCheck = True
      GroupIndex = 4
      Hint = #1076#1074#1080#1078#1077#1085#1080#1103
      ImageIndex = 69
      OnUpdate = actShowMovementsUpdate
    end
    object actShowMovementsMarks: TAction
      AutoCheck = True
      GroupIndex = 5
      Hint = #1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072#13#10#1076#1074#1080#1078#1077#1085#1080#1103#1090#1072
      ImageIndex = 70
      OnUpdate = actShowMovementsMarksUpdate
    end
    object actShowDeficit: TAction
      AutoCheck = True
      GroupIndex = 6
      Hint = #1076#1077#1092#1080#1094#1080#1090
      ImageIndex = 71
      OnUpdate = actShowDeficitUpdate
    end
    object actShowDeficitMarks: TAction
      AutoCheck = True
      GroupIndex = 7
      Hint = #1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072#13#10#1076#1077#1092#1080#1094#1080#1090#1072
      ImageIndex = 72
      OnUpdate = actShowDeficitMarksUpdate
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1088#1072#1073#1086#1090#1085#1072#13#10#1084'.'#1077#1076'.'
      ImageIndex = 23
      OnUpdate = actWorkMeasureUpdate
    end
    object actShowRegQuantity: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 10
      Hint = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 23
      OnUpdate = actShowRegQuantityUpdate
    end
    object actShowRegPrice: TAction
      AutoCheck = True
      Caption = #1042#1057' 1'
      GroupIndex = 10
      Hint = #1042#1057' 1'
      ImageIndex = 38
      OnUpdate = actShowRegPriceUpdate
    end
    object actTogglePeriodLabelsExtraInfo: TAction
      Checked = True
      GroupIndex = 12
      Hint = 
        #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1076#1086#1087#1098#1083#1085#1080#1090#1077#1083#1085#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1079#1072' '#1076#1072#1090#1080#1090#1077' '#1086#1090' '#1074#1088#1077#1084#1077#1074#1080#1103' '#1080#1085#1090 +
        #1077#1088#1074#1072#1083
      ImageIndex = 79
      OnExecute = actTogglePeriodLabelsExtraInfoExecute
      OnUpdate = actTogglePeriodLabelsExtraInfoUpdate
    end
    object actDealsIn: TAction
      Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'...'
      ImageIndex = 135
      OnExecute = actDealsInExecute
    end
    object actDealsOut: TAction
      Caption = #1058#1077#1075#1083#1077#1085#1080#1103'...'
      ImageIndex = 136
      OnExecute = actDealsOutExecute
    end
    object actQuantity: TAction
      Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'...'
      ImageIndex = 137
      OnExecute = actQuantityExecute
    end
    object actDeficit: TAction
      Caption = #1044#1077#1092#1080#1094#1080#1090'...'
      ImageIndex = 138
      OnExecute = actDeficitExecute
    end
    object actExcelExport: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportExecute
      OnUpdate = actExcelExportUpdate
    end
    object actShowTowardsZero: TAction
      Caption = '0'
      Checked = True
      GroupIndex = 11
      Hint = #1057#1087#1088#1103#1084#1086' 0'
    end
    object actShowTowardsReserve: TAction
      GroupIndex = 11
      Hint = #1057#1087#1088#1103#1084#1086' '#1047#1072#1076#1077#1083
      ImageIndex = 85
      OnExecute = actShowTowardsReserveExecute
      OnUpdate = actShowTowardsReserveUpdate
    end
    object actShowBalancedPriceMarks: TAction
      AutoCheck = True
      GroupIndex = 13
      Hint = #1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1073#1072#1083#1072#1085#1089#1080#1088#1072#1085#1072#1090#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 189
      OnUpdate = actShowBalancedPriceMarksUpdate
    end
    object actPrintQuantityChart: TAction
      Hint = #1055#1077#1095#1072#1090' '#1085#1072' '#1075#1088#1072#1092#1080#1082#1072#1090#1072
      ImageIndex = 2
      OnExecute = actPrintQuantityChartExecute
    end
    object actPrintPriceChart: TAction
      Hint = #1055#1077#1095#1072#1090' '#1085#1072' '#1075#1088#1072#1092#1080#1082#1072#1090#1072
      ImageIndex = 2
      OnExecute = actPrintPriceChartExecute
    end
    object actRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      Hint = #1054#1073#1085#1086#1074#1103#1074#1072#1085#1077
      ImageIndex = 39
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
    object actShowMinQuantity: TAction
      AutoCheck = True
      GroupIndex = 13
      Hint = #1079#1072#1076#1077#1083
      ImageIndex = 116
      OnUpdate = actShowMinQuantityUpdate
    end
    object actShowMinQuantityMarks: TAction
      AutoCheck = True
      GroupIndex = 14
      Hint = #1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072#13#10#1079#1072#1076#1077#1083#1072
      ImageIndex = 117
      OnUpdate = actShowMinQuantityMarksUpdate
    end
    object actShowBalancedPrice: TAction
      AutoCheck = True
      GroupIndex = 12
      Hint = #1073#1072#1083#1072#1085#1089#1080#1088#1072#1085#1072' '#1085#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 188
      OnUpdate = actShowBalancedPriceUpdate
    end
    object actFilterDeptDocs: TAction
      ImageIndex = 1
      OnExecute = actFilterDeptDocsExecute
      OnUpdate = actFilterDeptDocsUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 128
    Top = 200
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 96
    Top = 208
  end
  object dsVIM: TDataSource
    DataSet = cdsVIM
    Left = 212
    Top = 216
  end
  object cdsVIM: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conVIM
    IndexFieldNames = 'THE_DATE'
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftWideString
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '18'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PLANNED_STORE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PLANNED_SECOND_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'IS_TOWARDS_RESERVE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvVIM'
    BeforeOpen = cdsVIMBeforeOpen
    AfterOpen = cdsVIMAfterOpen
    OnCalcFields = cdsVIMCalcFields
    AfterGetRecords = cdsVIMAfterGetRecords
    Left = 184
    Top = 216
    object cdsVIM_OTCH_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OTCH_QUANTITY'
      ProviderFlags = []
      Calculated = True
    end
    object cdsVIM_OTCH_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OTCH_PRICE'
      ProviderFlags = []
      Calculated = True
    end
    object cdsVIM_IN_OTCH_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IN_OTCH_QUANTITY'
      Calculated = True
    end
    object cdsVIM_IN_OTCH_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IN_OTCH_PRICE'
      Calculated = True
    end
    object cdsVIM_OUT_OTCH_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUT_OTCH_QUANTITY'
      Calculated = True
    end
    object cdsVIM_OUT_OTCH_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUT_OTCH_PRICE'
      Calculated = True
    end
    object cdsVIM_PLAN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_QUANTITY'
      ProviderFlags = []
      Calculated = True
    end
    object cdsVIM_PLAN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_PRICE'
      ProviderFlags = []
      Calculated = True
    end
    object cdsVIM_IN_PLAN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IN_PLAN_QUANTITY'
      Calculated = True
    end
    object cdsVIM_IN_PLAN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IN_PLAN_PRICE'
      Calculated = True
    end
    object cdsVIM_OUT_PLAN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUT_PLAN_QUANTITY'
      Calculated = True
    end
    object cdsVIM_OUT_PLAN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OUT_PLAN_PRICE'
      Calculated = True
    end
    object cdsVIM_DEFICIT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEFICIT_QUANTITY'
      Calculated = True
    end
    object cdsVIM_DEFICIT_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEFICIT_PRICE'
      Calculated = True
    end
    object cdsVIM_ZERO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ZERO'
      ProviderFlags = []
      Calculated = True
    end
    object cdsVIM_COLOR_OTCH: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_COLOR_OTCH'
      Calculated = True
    end
    object cdsVIM_COLOR_PLAN: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_COLOR_PLAN'
      Calculated = True
    end
    object cdsVIM_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LABEL'
      Calculated = True
    end
    object cdsVIM_NEGATIVE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_NEGATIVE_QUANTITY'
      Calculated = True
    end
    object cdsVIM_NEGATIVE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_NEGATIVE_PRICE'
      Calculated = True
    end
    object cdsVIM_LABEL_FOR_REGISTER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LABEL_FOR_REGISTER'
      Size = 50
      Calculated = True
    end
    object cdsVIMORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
      FieldValueType = fvtInteger
    end
    object cdsVIMTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsVIMWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
      FieldValueType = fvtInteger
    end
    object cdsVIMTHE_YEAR_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_YEAR_DATE'
    end
    object cdsVIMTHE_NO: TAbmesFloatField
      FieldName = 'THE_NO'
      FieldValueType = fvtInteger
    end
    object cdsVIMIS_TODAY_SECOND_RECORD: TAbmesFloatField
      FieldName = 'IS_TODAY_SECOND_RECORD'
      FieldValueType = fvtBoolean
    end
    object cdsVIMQUANTITY_OTCH: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH'
    end
    object cdsVIMQUANTITY_OTCH_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH_PRICE'
    end
    object cdsVIMQUANTITY_IN_OTCH: TAbmesFloatField
      FieldName = 'QUANTITY_IN_OTCH'
    end
    object cdsVIMQUANTITY_IN_OTCH_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_IN_OTCH_PRICE'
    end
    object cdsVIMQUANTITY_OUT_OTCH: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_OTCH'
    end
    object cdsVIMQUANTITY_OUT_OTCH_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_OTCH_PRICE'
    end
    object cdsVIMQUANTITY_PLAN: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN'
    end
    object cdsVIMQUANTITY_PLAN_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN_PRICE'
    end
    object cdsVIMQUANTITY_IN_PLAN: TAbmesFloatField
      FieldName = 'QUANTITY_IN_PLAN'
    end
    object cdsVIMQUANTITY_IN_PLAN_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_IN_PLAN_PRICE'
    end
    object cdsVIMQUANTITY_OUT_PLAN: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_PLAN'
    end
    object cdsVIMQUANTITY_OUT_PLAN_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_OUT_PLAN_PRICE'
    end
    object cdsVIMQUANTITY_DEFICIT: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT'
    end
    object cdsVIMQUANTITY_DEFICIT_PRICE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_PRICE'
    end
    object cdsVIMNEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'NEGATIVE_QUANTITY'
    end
    object cdsVIMNEGATIVE_PRICE: TAbmesFloatField
      FieldName = 'NEGATIVE_PRICE'
    end
    object cdsVIMQUANTITY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH_RESERVE'
    end
    object cdsVIMQUANTITY_OTCH_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_OTCH_PRICE_RESERVE'
    end
    object cdsVIMQUANTITY_PLAN_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN_RESERVE'
    end
    object cdsVIMQUANTITY_PLAN_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_PLAN_PRICE_RESERVE'
    end
    object cdsVIMNEGATIVE_QUANTITY_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_QUANTITY_RESERVE'
    end
    object cdsVIMNEGATIVE_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_PRICE_RESERVE'
    end
    object cdsVIMQUANTITY_DEFICIT_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_RESERVE'
    end
    object cdsVIMQUANTITY_DEFICIT_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_PRICE_RESERVE'
    end
    object cdsVIM_OTCH_QUANTITY_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OTCH_QUANTITY_RESERVE'
      Calculated = True
    end
    object cdsVIM_OTCH_PRICE_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OTCH_PRICE_RESERVE'
      Calculated = True
    end
    object cdsVIM_PLAN_QUANTITY_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_QUANTITY_RESERVE'
      Calculated = True
    end
    object cdsVIM_PLAN_PRICE_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_PRICE_RESERVE'
      Calculated = True
    end
    object cdsVIM_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_NEGATIVE_QUANTITY_RESERVE'
      Calculated = True
    end
    object cdsVIM_NEGATIVE_PRICE_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_NEGATIVE_PRICE_RESERVE'
      Calculated = True
    end
    object cdsVIM_DEFICIT_QUANTITY_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEFICIT_QUANTITY_RESERVE'
      Calculated = True
    end
    object cdsVIM_DEFICIT_QUANTITY_PRICE_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEFICIT_QUANTITY_PRICE_RESERVE'
      Calculated = True
    end
    object cdsVIMNEGATIVE_OTCH_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_OTCH_PRICE_RESERVE'
    end
    object cdsVIMNEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'NEGATIVE_QTY_OTCH_RESERVE'
    end
    object cdsVIM_OTCH_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OTCH_NEGATIVE_QUANTITY_RESERVE'
      Calculated = True
    end
    object cdsVIM_OTCH_NEGATIVE_PRICE_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OTCH_NEGATIVE_PRICE_RESERVE'
      Calculated = True
    end
    object cdsVIMMIN_PRICE: TAbmesFloatField
      FieldName = 'MIN_PRICE'
    end
    object cdsVIMMIN_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_QUANTITY'
    end
    object cdsVIM_MIN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_MIN_QUANTITY'
      Calculated = True
    end
    object cdsVIM_MIN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_MIN_PRICE'
      Calculated = True
    end
    object cdsVIMPASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY'
    end
    object cdsVIMPASSIVE_QUANTITY_PRICE: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY_PRICE'
    end
    object cdsVIM_PASSIVE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PASSIVE_QUANTITY'
      Calculated = True
    end
    object cdsVIM_PASSIVE_QUANTITY_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PASSIVE_QUANTITY_PRICE'
      Calculated = True
    end
    object cdsVIM_PASSIVE_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PASSIVE_QUANTITY_PERCENT'
      Calculated = True
    end
    object cdsVIM_PASSIVE_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PASSIVE_PRICE_PERCENT'
      Calculated = True
    end
    object cdsVIM_A_PASSIVE_QUANTITY_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_A_PASSIVE_QUANTITY_PERCENT'
      Calculated = True
    end
    object cdsVIMACC_QUANTITY_OTCH: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OTCH'
    end
    object cdsVIMACC_QUANTITY_IN_OTCH: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_IN_OTCH'
    end
    object cdsVIMACC_QUANTITY_OUT_OTCH: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OUT_OTCH'
    end
    object cdsVIMACC_QUANTITY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OTCH_RESERVE'
    end
    object cdsVIMACC_NEGATIVE_QTY_OTCH_RESERVE: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QTY_OTCH_RESERVE'
    end
    object cdsVIMACC_QUANTITY_PLAN: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_PLAN'
    end
    object cdsVIMACC_NEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QUANTITY'
    end
    object cdsVIMACC_QUANTITY_IN_PLAN: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_IN_PLAN'
    end
    object cdsVIMACC_QUANTITY_OUT_PLAN: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_OUT_PLAN'
    end
    object cdsVIMACC_QUANTITY_PLAN_RESERVE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_PLAN_RESERVE'
    end
    object cdsVIMACC_NEGATIVE_QUANTITY_RESERVE: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QUANTITY_RESERVE'
    end
    object cdsVIMACC_PASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_PASSIVE_QUANTITY'
    end
    object cdsVIMACC_QUANTITY_DEFICIT: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_DEFICIT'
    end
    object cdsVIMACC_QUANTITY_DEFICIT_RESERVE: TAbmesFloatField
      FieldName = 'ACC_QUANTITY_DEFICIT_RESERVE'
    end
    object cdsVIMACC_MIN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_MIN_QUANTITY'
    end
    object cdsVIMACC_CLEAR_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_CLEAR_QUANTITY'
    end
    object cdsVIM_BALANCED_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BALANCED_PRICE'
      Calculated = True
    end
    object cdsVIM_BALANCED_PRICE_RESERVE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BALANCED_PRICE_RESERVE'
      Calculated = True
    end
  end
  object pdsVIM: TParamDataSet
    AfterOpen = pdsVIMAfterOpen
    BeforePost = pdsVIMBeforePost
    OnCalcFields = pdsVIMCalcFields
    DataSet = cdsVIM
    Left = 244
    Top = 216
    object pdsVIMCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_FILTER_VARIANT_CODE'
      FieldValueType = fvtInteger
    end
    object pdsVIMCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      Required = True
      OnChange = pdsVIMCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsVIMINCLUDE_PLANNED_SECOND_LEVEL: TAbmesFloatField
      DisplayLabel = '+ '#1055#1088#1086#1077#1082#1090#1085#1080' '#1076#1074#1080#1078#1077#1085#1080#1103
      FieldName = 'INCLUDE_PLANNED_SECOND_LEVEL'
      FieldValueType = fvtBoolean
    end
    object pdsVIMCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldName = 'CHOSEN_DEPTS'
      OnChange = pdsVIMCHOSEN_DEPTSChange
      Size = 4000
    end
    object pdsVIMIS_AUTO_ROUNDER: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077
      FieldName = 'IS_AUTO_ROUNDER'
      FieldValueType = fvtBoolean
    end
    object pdsVIMROUNDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1047#1072' '#1088#1072#1073'. '#1082'-'#1074#1086
      FieldName = 'ROUNDER_QUANTITY'
      DisplayFormat = '#'
    end
    object pdsVIMROUNDER_ACCOUNT_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1047#1072' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FieldName = 'ROUNDER_ACCOUNT_QUANTITY'
    end
    object pdsVIMROUNDER_PRICE: TAbmesFloatField
      DefaultExpression = '1'
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1047#1072' '#1042#1057'1'
      FieldName = 'ROUNDER_PRICE'
      DisplayFormat = '#'
    end
    object pdsVIMTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
      ProviderFlags = []
    end
    object pdsVIMTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
      ProviderFlags = []
    end
    object pdsVIMBEGIN_DATE: TAbmesSQLTimeStampField
      ConstraintErrorMessage = 'TIME_UNIT_CODE'
      DisplayLabel = #1042#1088#1084#1048#1085#1090
      FieldName = 'BEGIN_DATE'
    end
    object pdsVIMMAX_PLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'MAX_PLANNED_STORE_DEAL_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsVIMIS_TOWARDS_RESERVE: TAbmesFloatField
      FieldName = 'IS_TOWARDS_RESERVE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsVIM_ROUNDER_QUANTITY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_QUANTITY_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'ROUNDER_QUANTITY'
      ProviderFlags = []
      OnGetText = pdsVIM_ROUNDER_QUANTITY_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsVIM_ROUNDER_ACC_QUANTITY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_ACC_QUANTITY_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'ROUNDER_ACCOUNT_QUANTITY'
      Size = 100
      Lookup = True
    end
    object pdsVIM_ROUNDER_PRICE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_PRICE_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'ROUNDER_PRICE'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object pdsVIM_ROUNDER_QUANTITY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_QUANTITY_ABBREV'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_ABBREV'
      KeyFields = 'ROUNDER_QUANTITY'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object pdsVIM_ROUNDER_ACC_QUANTITY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_ACC_QUANTITY_ABBREV'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_ABBREV'
      KeyFields = 'ROUNDER_ACCOUNT_QUANTITY'
      Size = 100
      Lookup = True
    end
    object pdsVIM_ROUNDER_PRICE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_PRICE_ABBREV'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_ABBREV'
      KeyFields = 'ROUNDER_PRICE'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object pdsVIM_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      Calculated = True
    end
    object pdsVIM_TIME_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TIME_UNIT_NAME'
      Calculated = True
    end
    object pdsVIM_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = '_PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsVIM_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      OnGetText = pdsVIM_PRODUCT_NAMEGetText
      Size = 100
    end
    object pdsVIM_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsVIM_DEPT_CODE: TAbmesFloatField
      FieldName = '_DEPT_CODE'
      ProviderFlags = []
    end
    object pdsVIM_DEPT_NAME: TAbmesWideStringField
      FieldName = '_DEPT_NAME'
      ProviderFlags = []
      OnGetText = pdsVIM_DEPT_NAMEGetText
      Size = 100
    end
    object pdsVIM_DEPT_NO: TAbmesWideStringField
      FieldName = '_DEPT_NO'
      ProviderFlags = []
      Size = 50
    end
    object pdsVIM_TIME_UNITS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TIME_UNITS'
      Calculated = True
    end
    object pdsVIM_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
    object pdsVIM_DEPT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = '_DEPT_HAS_DOCUMENTATION'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  object cdsRegister: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 288
    Top = 216
    object cdsRegisterTHE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'THE_DATE'
    end
    object cdsRegisterWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object cdsRegisterQUANTITY: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1085#1086#1089#1090
      FieldName = 'QUANTITY'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_RESERVE'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_PRICE: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1085#1086#1089#1090
      FieldName = 'QUANTITY_PRICE'
      OnGetText = cdsRegisterPriceFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_PRICE_RESERVE'
      OnGetText = cdsRegisterPriceFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_IN: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      FieldName = 'QUANTITY_IN'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_IN_PRICE: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      FieldName = 'QUANTITY_IN_PRICE'
      OnGetText = cdsRegisterPriceFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_OUT: TAbmesFloatField
      DisplayLabel = #1058#1077#1075#1083#1077#1085#1080#1103
      FieldName = 'QUANTITY_OUT'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_OUT_PRICE: TAbmesFloatField
      DisplayLabel = #1058#1077#1075#1083#1077#1085#1080#1103
      FieldName = 'QUANTITY_OUT_PRICE'
      OnGetText = cdsRegisterPriceFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_DEFICIT: TAbmesFloatField
      DisplayLabel = #1044#1077#1092#1080#1094#1080#1090
      FieldName = 'QUANTITY_DEFICIT'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_DEFICIT_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_RESERVE'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_DEFICIT_PRICE: TAbmesFloatField
      DisplayLabel = #1044#1077#1092#1080#1094#1080#1090
      FieldName = 'QUANTITY_DEFICIT_PRICE'
      OnGetText = cdsRegisterPriceFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterQUANTITY_DEFICIT_PRICE_RESERVE: TAbmesFloatField
      FieldName = 'QUANTITY_DEFICIT_PRICE_RESERVE'
      OnGetText = cdsRegisterPriceFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterPASSIVE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY_PERCENT'
      OnGetText = cdsRegisterPASSIVE_QUANTITY_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsRegisterPASSIVE_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'PASSIVE_PRICE_PERCENT'
      OnGetText = cdsRegisterPASSIVE_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsRegisterDATE_LABEL: TAbmesWideStringField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1080' '#1084#1086#1084#1077#1085#1090
      FieldName = 'DATE_LABEL'
    end
    object cdsRegisterCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object cdsRegisterCOLOR_SELECTED: TAbmesFloatField
      FieldName = 'COLOR_SELECTED'
    end
    object cdsRegister_INCLUDE_PLANS: TAbmesFloatField
      FieldName = 'INCLUDE_PLANS'
      FieldValueType = fvtBoolean
    end
    object cdsRegisterA_QUANTITY: TAbmesFloatField
      DisplayLabel = #1053#1072#1083#1080#1095#1085#1086#1089#1090
      FieldName = 'A_QUANTITY'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterA_QUANTITY_RESERVE: TAbmesFloatField
      FieldName = 'A_QUANTITY_RESERVE'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterA_QUANTITY_IN: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      FieldName = 'A_QUANTITY_IN'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterA_QUANTITY_OUT: TAbmesFloatField
      DisplayLabel = #1058#1077#1075#1083#1077#1085#1080#1103
      FieldName = 'A_QUANTITY_OUT'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterA_QUANTITY_DEFICIT: TAbmesFloatField
      DisplayLabel = #1044#1077#1092#1080#1094#1080#1090
      FieldName = 'A_QUANTITY_DEFICIT'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterA_QUANTITY_DEFICIT_RESERVE: TAbmesFloatField
      FieldName = 'A_QUANTITY_DEFICIT_RESERVE'
      OnGetText = cdsRegisterQuantityFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsRegisterA_PASSIVE_QUANTITY_PERCENT: TAbmesFloatField
      FieldName = 'A_PASSIVE_QUANTITY_PERCENT'
      OnGetText = cdsRegisterA_PASSIVE_QUANTITY_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsRegister_SUM_QUANTITY_IN: TAggregateField
      FieldName = '_SUM_QUANTITY_IN'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(QUANTITY_IN)'
    end
    object cdsRegister_SUM_QUANTITY_OUT: TAggregateField
      FieldName = '_SUM_QUANTITY_OUT'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(QUANTITY_OUT)'
    end
    object cdsRegister_SUM_PRICE_IN: TAggregateField
      FieldName = '_SUM_PRICE_IN'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(QUANTITY_IN_PRICE)'
    end
    object cdsRegister_SUM_PRICE_OUT: TAggregateField
      FieldName = '_SUM_PRICE_OUT'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(QUANTITY_OUT_PRICE)'
    end
    object cdsRegister_SUM_A_QUANTITY_IN: TAggregateField
      FieldName = '_SUM_A_QUANTITY_IN'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(A_QUANTITY_IN)'
    end
    object cdsRegister_SUM_A_QUANTITY_OUT: TAggregateField
      FieldName = '_SUM_A_QUANTITY_OUT'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(A_QUANTITY_OUT)'
    end
  end
  object dsRegister: TDataSource
    DataSet = cdsRegister
    Left = 320
    Top = 216
  end
  object cdsRounders: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvRounders'
    Left = 400
    Top = 216
    object cdsRoundersROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsRoundersROUNDER_NAME: TAbmesWideStringField
      FieldName = 'ROUNDER_NAME'
      Size = 100
    end
    object cdsRoundersROUNDER_ABBREV: TAbmesWideStringField
      FieldName = 'ROUNDER_ABBREV'
      Size = 100
    end
  end
  object cdsTempParams: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'START_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IN_P'
        DataType = ftFloat
      end
      item
        Name = 'OUT_P'
        DataType = ftFloat
      end
      item
        Name = 'IS_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'IS_CLOSED'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_CLOSED'
        DataType = ftFloat
      end
      item
        Name = 'STORE_DEAL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_IN'
        DataType = ftFloat
      end
      item
        Name = 'IS_OUT'
        DataType = ftFloat
      end
      item
        Name = 'IS_STORNO'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_STORNO'
        DataType = ftFloat
      end
      item
        Name = '_STORE_DEAL_DATE_2'
        DataType = ftTimeStamp
      end
      item
        Name = 'START_PERIOD_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_PERIOD_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'INCLUDE_PL_SECOND_LEVEL'
        DataType = ftFloat
      end
      item
        Name = 'DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_WASTE_BOUND'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_WASTE_BOUND'
        DataType = ftFloat
      end
      item
        Name = 'PLANNED_STORE_DEAL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SHOW_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'IS_GROUPED_BY_STORE'
        DataType = ftFloat
      end
      item
        Name = 'IS_TOWARDS_RESERVE'
        DataType = ftFloat
      end
      item
        Name = 'TIME_UNIT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TIME_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHOSEN_PRODUCTS'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'CHOSEN_DEPTS'
        DataType = ftWideString
        Size = 4000
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 209
    object cdsTempParamsDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object cdsTempParamsSTART_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_DATE'
    end
    object cdsTempParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsTempParamsIN_P: TAbmesFloatField
      FieldName = 'IN_P'
    end
    object cdsTempParamsOUT_P: TAbmesFloatField
      FieldName = 'OUT_P'
    end
    object cdsTempParamsIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_NOT_ANNULED: TAbmesFloatField
      FieldName = 'IS_NOT_ANNULED'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_CLOSED: TAbmesFloatField
      FieldName = 'IS_CLOSED'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_NOT_CLOSED: TAbmesFloatField
      FieldName = 'IS_NOT_CLOSED'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
    end
    object cdsTempParamsIS_IN: TAbmesFloatField
      FieldName = 'IS_IN'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_OUT: TAbmesFloatField
      FieldName = 'IS_OUT'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_NOT_STORNO: TAbmesFloatField
      FieldName = 'IS_NOT_STORNO'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField
      FieldName = 'START_PERIOD_DATE'
    end
    object cdsTempParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_PERIOD_DATE'
    end
    object cdsTempParamsINCLUDE_PL_SECOND_LEVEL: TAbmesFloatField
      FieldName = 'INCLUDE_PL_SECOND_LEVEL'
    end
    object cdsTempParams_STORE_DEAL_DATE_2: TAbmesSQLTimeStampField
      FieldName = '_STORE_DEAL_DATE_2'
    end
    object cdsTempParamsIS_WASTE_BOUND: TAbmesFloatField
      FieldName = 'IS_WASTE_BOUND'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_NOT_WASTE_BOUND: TAbmesFloatField
      FieldName = 'IS_NOT_WASTE_BOUND'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsSHOW_INACTIVE: TAbmesFloatField
      FieldName = 'SHOW_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsPLANNED_STORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_TYPE_CODE'
    end
    object cdsTempParamsIS_GROUPED_BY_STORE: TAbmesFloatField
      FieldName = 'IS_GROUPED_BY_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsIS_TOWARDS_RESERVE: TAbmesFloatField
      FieldName = 'IS_TOWARDS_RESERVE'
      FieldValueType = fvtBoolean
    end
    object cdsTempParamsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object cdsTempParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object cdsTempParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsTempParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsTempParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
  end
  object dsVIMParams: TDataSource
    DataSet = pdsVIM
    Left = 250
    Top = 250
  end
end
