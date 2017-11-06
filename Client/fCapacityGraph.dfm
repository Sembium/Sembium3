inherited fmCapacityGraph: TfmCapacityGraph
  Left = 228
  Top = 164
  ActiveControl = btnParams
  Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
  ClientHeight = 530
  ClientWidth = 795
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 495
    Width = 795
    inherited pnlOKCancel: TPanel
      Left = 527
      TabOrder = 2
      Visible = False
      inherited btnCancel: TBitBtn
        Left = 106
      end
    end
    inherited pnlClose: TPanel
      Left = 438
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 706
      TabOrder = 3
      Visible = False
    end
    object pnlTime: TPanel
      Left = 8
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
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
          FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
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
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
          FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          000000000000000000000000000000000000000000000000FF000000FF000000
          FF000000FF000000FF000000000000000000FF00FF00FF00FF00000000000000
          FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
          FF000000FF000000FF000000FF000000FF000000000000000000000000000000
          000000000000000000000000000000000000000000000000FF000000FF000000
          FF000000FF000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
          FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphRight
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object pnlBeginDate: TPanel
        Left = 2
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14277081
        TabOrder = 2
      end
      object pnlEndDate: TPanel
        Left = 418
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14277081
        TabOrder = 3
      end
      object pnlBeginDateWeekFormat: TPanel
        Left = 74
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14277081
        TabOrder = 4
      end
      object pnlEndDateWeekFormat: TPanel
        Left = 490
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14277081
        TabOrder = 5
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 795
    Height = 495
    inherited pnlGrid: TPanel
      Width = 779
      Height = 479
      inherited pnlNavigator: TPanel
        Width = 741
        Align = alNone
        TabOrder = 2
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 67
        Width = 779
        Height = 412
        TabOrder = 4
        Visible = False
      end
      object pcMain: TPageControl
        Left = 0
        Top = 67
        Width = 779
        Height = 412
        ActivePage = tsGraph
        Align = alClient
        HotTrack = True
        TabOrder = 3
        object tsGraph: TTabSheet
          Caption = #1043#1088#1072#1092#1080#1082#1072' '#1085#1072' '#1050#1072#1087#1072#1094#1080#1090#1077#1090#1072
          object chartCapacity: TDBChart
            Left = 0
            Top = 0
            Width = 771
            Height = 384
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Border.Visible = True
            Gradient.EndColor = 12040119
            Gradient.Visible = True
            Title.Text.Strings = (
              #1050#1072#1087#1072#1094#1080#1090#1077#1090' '#1085#1072' '#1058#1055)
            BottomAxis.DateTimeFormat = 'hh:mm'
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Maximum = -0.310000000000000200
            DepthAxis.Minimum = -1.310000000000001000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.LabelsSize = 30
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 0
            LeftAxis.Title.Caption = #1095#1072#1089#1086#1074#1077
            Legend.Alignment = laBottom
            Legend.Font.Height = -9
            Legend.Inverted = True
            Legend.VertMargin = 18
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            View3D = False
            OnAfterDraw = chartCapacityAfterDraw
            OnBeforeDrawAxes = chartCapacityBeforeDrawAxes
            OnBeforeDrawSeries = chartCapacityBeforeDrawSeries
            OnGetAxisLabel = chartCapacityGetAxisLabel
            Align = alClient
            Color = 15658963
            TabOrder = 0
            OnMouseWheel = chartCapacityMouseWheel
            OnMouseWheelDown = chartCapacityMouseWheelDown
            DesignSize = (
              771
              384)
            object lblStartDate: TLabel
              Left = 2
              Top = 273
              Width = 49
              Height = 13
              Alignment = taCenter
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
            object lblEndDate: TLabel
              Left = 2
              Top = 286
              Width = 49
              Height = 13
              Alignment = taCenter
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
            object btnPrintPriceChart: TSpeedButton
              Left = 1
              Top = 360
              Width = 23
              Height = 22
              Action = actPrintChart
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
              ParentShowHint = False
              ShowHint = True
              Transparent = False
            end
            object btnShowLimitPercent: TSpeedButton
              Left = 746
              Top = 2
              Width = 23
              Height = 22
              Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1055#1088#1086#1094#1077#1085#1090' '#1085#1072' '#1079#1072#1077#1090#1086#1089#1090' '#1085#1072' '#1050#1072#1087#1072#1094#1080#1090#1077#1090#1072
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FF0000000000000000000000000000000000000000
                00000000000000000000FF00FFFF00FFFF00FFFF00FF000000000000000000FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FF
                000000000000000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FFFFFFFFFFFF000000000000000000000000FFFFFF000000FFFFFF000000FF
                FFFF000000FFFFFFFFFFFF000000FFFFFF000000FFFFFF000000000000FFFFFF
                000000FFFFFF000000FFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF0000
                00FFFFFFFFFFFF000000000000FFFFFF000000FFFFFF000000FFFFFF000000FF
                FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFF
                000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
                FFFFFFFFFFFFFF000000000000FFFFFF000000FFFFFF000000FFFFFF000000FF
                FFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFF000000000000FFFFFF
                000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFFFFFF
                FFFFFFFFFFFFFF000000000000FFFFFF000000FFFFFF000000FFFFFF000000FF
                FFFFFFFFFF000000FFFFFFFFFFFF000000000000000000000000000000FFFFFF
                000000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00FFFFFF000000FF00FF000000FFFFFF000000FFFFFF000000FFFFFF000000FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF00FFFF00FF000000FFFFFF
                000000FFFFFF000000FFFFFF0000000000000000000000000000000000000000
                00FF00FFFF00FFFF00FF000000FFFFFF000000FFFFFF00000000000000000000
                0000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFF
                000000000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF000000000000000000000000000000000000000000FF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
              ParentShowHint = False
              ShowHint = True
              OnClick = btnShowLimitPercentClick
            end
            object pnlTogglePeriodLabelsExtraInfo: TPanel
              Left = 746
              Top = 360
              Width = 23
              Height = 22
              Anchors = [akRight, akBottom]
              BevelOuter = bvNone
              TabOrder = 0
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
                GroupIndex = 1
                ParentShowHint = False
                ShowHint = True
                Transparent = False
              end
            end
            object serZeroLine: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = -1
              ShowInLegend = False
              XLabelsSource = '_THE_DATE_AS_STRING'
              LinePen.Width = 2
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_ZERO'
              object TeeFunction1: TMultiplyTeeFunction
              end
            end
            object serPlanExcessHours: TBarSeries
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.Callout.Length = 0
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 10461183
              Title = '%Plan% '#1044#1077#1092#1080#1094#1080#1090
              XLabelsSource = '_THE_DATE_AS_STRING'
              OnDblClick = serPlanExcessHoursDblClick
              OnGetMarkText = serPlanExcessHoursGetMarkText
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_PLAN_EXCESS_HOURS'
            end
            object serPlanFreeHours: TBarSeries
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.Callout.Length = -30
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 9888640
              Title = '%Plan% '#1057#1074#1086#1073#1086#1076#1077#1085
              XLabelsSource = '_THE_DATE_AS_STRING'
              OnDblClick = serPlanFreeHoursDblClick
              OnGetMarkText = serPlanFreeHoursGetMarkText
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_PLAN_FREE_HOURS'
            end
            object serPlanCreatingHours: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 14140592
              Title = '%Plan% '#1045#1082#1089#1087#1083#1086#1072#1090'.'
              OnDblClick = serPlanCreatingHoursDblClick
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'PLAN_EXPLOITATION_HOURS'
            end
            object serPlanSupportingHours: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 11004414
              Title = '%Plan% '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077
              OnDblClick = serPlanSupportingHoursDblClick
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'PLAN_LOGISTICS_HOURS'
            end
            object serRealExcessHours: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 16749567
              Title = #1054#1090#1095#1077#1090#1077#1085' '#1055#1088#1077#1085#1072#1090#1086#1074'.'
              OnDblClick = serRealExcessHoursDblClick
              OnGetMarkText = serRealExcessHoursGetMarkText
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_REAL_EXCESS_HOURS'
            end
            object serRealFreeHours: TBarSeries
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.Callout.Length = -30
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 6608706
              Title = #1054#1090#1095#1077#1090#1077#1085' '#1057#1074#1086#1073#1086#1076#1077#1085
              OnDblClick = serRealFreeHoursDblClick
              OnGetMarkText = serRealFreeHoursGetMarkText
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_REAL_FREE_HOURS'
            end
            object serRealCreatingHours: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 13085842
              Title = #1054#1090#1095#1077#1090#1077#1085' '#1045#1082#1089#1087#1083#1086#1072#1090'.'
              OnDblClick = serRealCreatingHoursDblClick
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'REAL_EXPLOITATION_HOURS'
            end
            object serRealSupportingHours: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 6018557
              Title = #1054#1090#1095#1077#1090#1077#1085' '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077
              OnDblClick = serRealSupportingHoursDblClick
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'REAL_LOGISTICS_HOURS'
            end
            object serEmpAvailLvlLimitHoursDiff: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = -15
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 10725429
              Title = #1055#1088#1089' - '#1054#1088#1075
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_EMP_AVAIL_LVL_LIMIT_HOURS_DIFF'
            end
            object serOccAssLvlLimitHoursDiff: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = -15
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 13225572
              Title = #1054#1088#1075' - '#1053#1088#1084
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_OCC_ASS_LVL_LIMIT_HOURS_DIFF'
            end
            object serOccLvlLimitHoursDiff: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = -15
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 14672549
              Title = #1053#1088#1084' - '#1056#1079#1095
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_OCC_LVL_LIMIT_HOURS_DIFF'
            end
            object serRealLimitPercent: TBarSeries
              Active = False
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = True
              DataSource = cdsGridData
              Title = 'Hidden serRealLimitPercent'
              XLabelsSource = '_LABEL'
              OnDblClick = serRealLimitPercentDblClick
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_REAL_LIMIT_PERCENT'
            end
            object serPlanLimitPercent: TBarSeries
              Active = False
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Visible = True
              DataSource = cdsGridData
              Title = 'Hidden serPlanLimitPercent'
              OnDblClick = serPlanLimitPercentDblClick
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_PLAN_LIMIT_PERCENT'
            end
          end
        end
        object tsGrid: TTabSheet
          Caption = #1058#1072#1073#1083#1080#1094#1072' '#1085#1072' '#1050#1072#1087#1072#1094#1080#1090#1077#1090#1072
          ImageIndex = 1
          object pnlGridNavigator: TPanel
            Left = 0
            Top = 0
            Width = 771
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navVG: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsGridData
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbTopGridButtons2: TToolBar
              Left = 96
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Caption = 'tlbTopGridButtons'
              Images = dmMain.ilActions
              TabOrder = 1
              object sepBeforeExcelExport2: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeExcelExport2'
                ImageIndex = 84
                Style = tbsSeparator
              end
              object btnExcelExport2: TToolButton
                Left = 8
                Top = 0
                Action = actExcelExport
              end
              object btnPrintGrid: TToolButton
                Left = 32
                Top = 0
                Action = actPrint
              end
            end
            object tlbButtons: TToolBar
              Left = 747
              Top = 0
              Width = 24
              Height = 24
              Align = alRight
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Caption = 'tlbTopGridButtons'
              Images = dmMain.ilActions
              TabOrder = 2
              object btnToggleLimitLevelColumnsVisible: TToolButton
                Left = 0
                Top = 0
                ImageIndex = 93
                Style = tbsCheck
              end
            end
          end
          object grdCapacity: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 771
            Height = 331
            TabStop = False
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdCapacityDblClick
            OnGetCellParams = grdCapacityGetCellParams
            Columns = <
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'THE_DATE'
                Footers = <>
                Title.Caption = 'PERIOD'
                Width = 66
              end
              item
                Color = 14346457
                EditButtons = <>
                FieldName = 'LIMIT_HOURS'
                Footer.Color = 13164231
                Footer.FieldName = '_SUM_LIMIT_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1056#1072#1079'- '#1087#1086#1083#1072#1075#1072#1077#1084
                Width = 71
              end
              item
                EditButtons = <>
                FieldName = '_REAL_LIMIT_PERCENT'
                Footer.FieldName = '_TOTAL_REAL_LIMIT_PERCENT'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1095#1072#1089#1086#1074#1077'|%'
                Visible = False
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'REAL_EXCESS_HOURS'
                Footer.Color = 15975164
                Footer.FieldName = '_SUM_REAL_EXCESS_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1095#1072#1089#1086#1074#1077'|'#1055#1088#1077#1085#1072#1090#1086#1074'.'
                Visible = False
                Width = 66
              end
              item
                Color = 13559807
                EditButtons = <>
                FieldName = 'REAL_LOGISTICS_HOURS'
                Footer.Color = 10473471
                Footer.FieldName = '_SUM_REAL_LOGISTICS_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1095#1072#1089#1086#1074#1077'|'#1054#1073#1089#1083#1091#1078'.'
                Visible = False
                Width = 66
              end
              item
                Color = 15261138
                EditButtons = <>
                FieldName = 'REAL_EXPLOITATION_HOURS'
                Footer.Color = 14470074
                Footer.FieldName = '_SUM_REAL_EXPLOITATION_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1095#1072#1089#1086#1074#1077'|'#1045#1082#1089#1087#1083#1086#1072#1090'.'
                Visible = False
                Width = 66
              end
              item
                Color = 14155735
                EditButtons = <>
                FieldName = 'REAL_FREE_HOURS'
                Footer.Color = 11075496
                Footer.FieldName = '_SUM_REAL_FREE_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090#1085#1080' '#1095#1072#1089#1086#1074#1077'|'#1057#1074#1086#1073#1086#1076#1077#1085
                Visible = False
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = '_PLAN_LIMIT_PERCENT'
                Footer.FieldName = '_TOTAL_PLAN_LIMIT_PERCENT'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = '%PlanHours%|%'
                Visible = False
                Width = 31
              end
              item
                Color = 14807295
                EditButtons = <>
                FieldName = 'PLAN_LOGISTICS_HOURS'
                Footer.Color = 12706047
                Footer.FieldName = '_SUM_PLAN_LOGISTICS_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = '%PlanHours%|'#1054#1073#1089#1083#1091#1078'.'
                Visible = False
                Width = 66
              end
              item
                Color = 15920358
                EditButtons = <>
                FieldName = 'PLAN_EXPLOITATION_HOURS'
                Footer.Color = 14733762
                Footer.FieldName = '_SUM_PLAN_EXPLOITATION_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = '%PlanHours%|'#1045#1082#1089#1087#1083#1086#1072#1090'.'
                Visible = False
                Width = 66
              end
              item
                Color = 15269864
                EditButtons = <>
                FieldName = 'PLAN_FREE_HOURS'
                Footer.Color = 12582847
                Footer.FieldName = '_SUM_PLAN_FREE_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = '%PlanHours%|'#1057#1074#1086#1073#1086#1076#1077#1085
                Visible = False
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_EXCESS_HOURS'
                Footer.Color = 13421823
                Footer.FieldName = '_SUM_PLAN_EXCESS_HOURS'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = '%PlanHours%|'#1044#1077#1092#1080#1094#1080#1090
                Visible = False
                Width = 66
              end
              item
                Color = clCream
                EditButtons = <>
                FieldName = 'DEPT_LVL_LIMIT_HOURS'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1056#1072#1079#1095#1077#1090#1077#1085
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'OCC_LVL_LIMIT_HOURS_DIFF'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1053#1088#1084' - '#1056#1079#1095
                Width = 60
              end
              item
                Color = clCream
                EditButtons = <>
                FieldName = 'OCC_LVL_LIMIT_HOURS'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1053#1086#1088#1084#1072#1090#1080#1074'.'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'OCC_ASS_LVL_LIMIT_HOURS_DIFF'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1054#1088#1075' - '#1053#1088#1084
                Width = 60
              end
              item
                Color = clCream
                EditButtons = <>
                FieldName = 'OCC_ASS_LVL_LIMIT_HOURS'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1054#1088#1075#1072#1085#1080#1079#1072#1094'.'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'EMP_AVAIL_LVL_LIMIT_HOURS_DIFF'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1055#1088#1089' - '#1054#1088#1075
                Width = 60
              end
              item
                Color = clCream
                EditButtons = <>
                FieldName = 'EMP_AVAIL_LVL_LIMIT_HOURS'
                Footers = <>
                Title.Caption = #1053#1080#1074#1072' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090'|'#1055#1088#1080#1089#1098#1089#1090#1074'.'
                Width = 60
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlBottomGridButtons: TPanel
            Left = 0
            Top = 355
            Width = 771
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnShowCapacityTable: TBitBtn
              Left = 0
              Top = 3
              Width = 127
              Height = 25
              Action = actShowCapacityTable
              Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085'...'
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000FF00
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
                FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
                0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
                FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
                000000000000840000000000000000000000FFFFFF000000000000000000FF00
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
                FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
                0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
                FF0000000000FFFFFF008400000084000000FFFFFF00FF00FF00FFFFFF000000
                000000000000840000000000000000000000FFFFFF000000000000000000FF00
                FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000FF00
                FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              TabOrder = 0
            end
          end
        end
      end
      object pnlFilter: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 62
        Align = alTop
        TabOrder = 0
        object lblTimeUnit: TLabel
          Left = 360
          Top = 37
          Width = 84
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
        end
        object imgMovementDate: TImage
          Left = 60
          Top = 34
          Width = 19
          Height = 21
          Picture.Data = {
            07544269746D617066010000424D660100000000000076000000280000001400
            0000140000000100040000000000F00000000000000000000000100000001000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00888888888888888888880000887777777777777777780000800000000000
            0000007800008099999999999999907800008090000000000000907800008090
            FFFFFFFFFFF0907800008090FFFFF0FFFFF0907800008090FFFFFFFF0FF09078
            00008090FFFFFFF0FFF0907800008090FFFFFF0FFFF0907800008090F0FFF0FF
            F0F0907800008090FFFFFF0FFFF0907800008090FFFFFFF0FFF0907800008090
            FFFFFFFF0FF0907800008090FFFFF0FFF0F0907800008090FFFFFFFFFFF09078
            0000809000000000000090780000809999999999999990780000800000000000
            000000880000888888888888888888880000}
          Transparent = True
        end
        object lblDateInterval: TLabel
          Left = 16
          Top = 37
          Width = 40
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090
        end
        object lblDeptName: TLabel
          Left = 16
          Top = 11
          Width = 33
          Height = 13
          Caption = #1058#1055
        end
        object btnParams: TBitBtn
          Left = 672
          Top = 20
          Width = 95
          Height = 25
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object pnlTimeUnitCountAndName: TDBEdit
          Left = 455
          Top = 34
          Width = 90
          Height = 22
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14277081
          Ctl3D = True
          DataField = '_DATE_UNITS'
          DataSource = dsGridDataParams
          ParentCtl3D = False
          TabOrder = 1
        end
        object edtDeptName: TDBEdit
          Left = 87
          Top = 8
          Width = 346
          Height = 22
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14277081
          Ctl3D = True
          DataField = '_DEPT_NAME'
          DataSource = dsGridDataParams
          ParentCtl3D = False
          TabOrder = 2
        end
        object edtDeptNo: TDBEdit
          Left = 434
          Top = 8
          Width = 111
          Height = 22
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14277081
          Ctl3D = True
          DataField = '_DEPT_NO'
          DataSource = dsGridDataParams
          ParentCtl3D = False
          TabOrder = 3
        end
        object edtDateInterval: TDBEdit
          Left = 87
          Top = 34
          Width = 154
          Height = 22
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14277081
          Ctl3D = True
          DataField = '_DATE_INTERVAL'
          DataSource = dsGridDataParams
          ParentCtl3D = False
          TabOrder = 4
        end
      end
      object pnlTopSpace: TPanel
        Left = 0
        Top = 62
        Width = 779
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 256
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conCapacity
    FieldDefs = <
      item
        Name = 'THE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'LIMIT_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_LOGISTICS_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_EXPLOITATION_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_FREE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'REAL_EXCESS_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_LOGISTICS_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_EXPLOITATION_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_FREE_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_EXCESS_HOURS'
        DataType = ftFloat
      end
      item
        Name = '_PLAN_LIMIT_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = '_REAL_LIMIT_PERCENT'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'OCC_LVL_LIMIT_HOURS_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'OCC_ASS_LVL_LIMIT_HOURS_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'EMP_AVAIL_LVL_LIMIT_HOURS_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_LVL_LIMIT_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OCC_LVL_LIMIT_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OCC_ASS_LVL_LIMIT_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'EMP_AVAIL_LVL_LIMIT_HOURS'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CAPACITY_LIMIT_LEVEL'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'CALC_ALL_LIMIT_LEVELS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'ASPECT_TYPE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
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
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvCapacityGraph'
    OnCalcFields = cdsGridDataCalcFields
    Left = 32
    Top = 256
    object cdsGridData_PLAN_EXCESS_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_EXCESS_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridData_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LABEL'
      Calculated = True
    end
    object cdsGridData_THE_DATE_AS_STRING: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_THE_DATE_AS_STRING'
      Calculated = True
    end
    object cdsGridData_REAL_FREE_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_FREE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridData_PLAN_FREE_HOURS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_FREE_HOURS'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridDataTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
      OnGetText = cdsGridDataTHE_DATEGetText
    end
    object cdsGridDataWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object cdsGridDataLIMIT_HOURS: TAbmesFloatField
      FieldName = 'LIMIT_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsGridDataREAL_FREE_HOURS: TAbmesFloatField
      FieldName = 'REAL_FREE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsGridDataREAL_EXCESS_HOURS: TAbmesFloatField
      FieldName = 'REAL_EXCESS_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsGridDataREAL_LOGISTICS_HOURS: TAbmesFloatField
      FieldName = 'REAL_LOGISTICS_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataREAL_EXPLOITATION_HOURS: TAbmesFloatField
      FieldName = 'REAL_EXPLOITATION_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPLAN_FREE_HOURS: TAbmesFloatField
      FieldName = 'PLAN_FREE_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPLAN_EXCESS_HOURS: TAbmesFloatField
      FieldName = 'PLAN_EXCESS_HOURS'
      OnGetText = HoursFieldsGetText
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPLAN_LOGISTICS_HOURS: TAbmesFloatField
      FieldName = 'PLAN_LOGISTICS_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPLAN_EXPLOITATION_HOURS: TAbmesFloatField
      FieldName = 'PLAN_EXPLOITATION_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridData_REAL_LIMIT_PERCENT: TAbmesFloatField
      FieldName = '_REAL_LIMIT_PERCENT'
      ReadOnly = True
      OnGetText = cdsGridData_REAL_LIMIT_PERCENTGetText
      DisplayFormat = ',0.#'
    end
    object cdsGridData_PLAN_LIMIT_PERCENT: TAbmesFloatField
      FieldName = '_PLAN_LIMIT_PERCENT'
      ReadOnly = True
      OnGetText = cdsGridData_PLAN_LIMIT_PERCENTGetText
      DisplayFormat = ',0.#'
    end
    object cdsGridDataOCC_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldName = 'OCC_LVL_LIMIT_HOURS_DIFF'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataOCC_ASS_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldName = 'OCC_ASS_LVL_LIMIT_HOURS_DIFF'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldName = 'EMP_AVAIL_LVL_LIMIT_HOURS_DIFF'
      DisplayFormat = ',0.##'
    end
    object cdsGridData_ABOVE_LIMIT_HOURS: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_ABOVE_LIMIT_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataDEPT_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'DEPT_LVL_LIMIT_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataOCC_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'OCC_LVL_LIMIT_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataOCC_ASS_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'OCC_ASS_LVL_LIMIT_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataEMP_AVAIL_LVL_LIMIT_HOURS: TAbmesFloatField
      FieldName = 'EMP_AVAIL_LVL_LIMIT_HOURS'
      DisplayFormat = ',0.##'
    end
    object cdsGridData_OCC_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OCC_LVL_LIMIT_HOURS_DIFF'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridData_OCC_ASS_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OCC_ASS_LVL_LIMIT_HOURS_DIFF'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridData_EMP_AVAIL_LVL_LIMIT_HOURS_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EMP_AVAIL_LVL_LIMIT_HOURS_DIFF'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridData_REAL_EXCESS_HOURS: TAbmesFloatField
      FieldKind = fkInternalCalc
      FieldName = '_REAL_EXCESS_HOURS'
    end
    object cdsGridData_ZERO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ZERO'
      Calculated = True
    end
    object cdsGridData_MAX_LIMIT_HOURS: TAggregateField
      FieldName = '_MAX_LIMIT_HOURS'
      Active = True
      Expression = 'Max(LIMIT_HOURS + _ABOVE_LIMIT_HOURS)'
    end
    object cdsGridData_MAX_PLAN_EXCESS_HOURS: TAggregateField
      FieldName = '_MAX_PLAN_EXCESS_HOURS'
      Active = True
      Expression = 'Max(PLAN_EXCESS_HOURS)'
    end
    object cdsGridData_MAX_REAL_EXCESS_HOURS: TAggregateField
      FieldName = '_MAX_REAL_EXCESS_HOURS'
      Active = True
      Expression = 'Max(REAL_EXCESS_HOURS)'
    end
    object cdsGridData_SUM_REAL_EXCESS_HOURS: TAggregateField
      FieldName = '_SUM_REAL_EXCESS_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(REAL_EXCESS_HOURS)'
    end
    object cdsGridData_SUM_REAL_FREE_HOURS: TAggregateField
      FieldName = '_SUM_REAL_FREE_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(REAL_FREE_HOURS)'
    end
    object cdsGridData_SUM_PLAN_FREE_HOURS: TAggregateField
      FieldName = '_SUM_PLAN_FREE_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(PLAN_FREE_HOURS)'
    end
    object cdsGridData_SUM_PLAN_EXCESS_HOURS: TAggregateField
      FieldName = '_SUM_PLAN_EXCESS_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(PLAN_EXCESS_HOURS)'
    end
    object cdsGridData_SUM_LIMIT_HOURS: TAggregateField
      FieldName = '_SUM_LIMIT_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(LIMIT_HOURS)'
    end
    object cdsGridData_SUM_REAL_LOGISTICS_HOURS: TAggregateField
      FieldName = '_SUM_REAL_LOGISTICS_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(REAL_LOGISTICS_HOURS)'
    end
    object cdsGridData_SUM_REAL_EXPLOITATION_HOURS: TAggregateField
      FieldName = '_SUM_REAL_EXPLOITATION_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(REAL_EXPLOITATION_HOURS)'
    end
    object cdsGridData_SUM_PLAN_LOGISTICS_HOURS: TAggregateField
      FieldName = '_SUM_PLAN_LOGISTICS_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(PLAN_LOGISTICS_HOURS)'
    end
    object cdsGridData_SUM_PLAN_EXPLOITATION_HOURS: TAggregateField
      FieldName = '_SUM_PLAN_EXPLOITATION_HOURS'
      Active = True
      DisplayFormat = ',0.##'
      Expression = 'Sum(PLAN_EXPLOITATION_HOURS)'
    end
    object cdsGridData_TOTAL_REAL_LIMIT_PERCENT: TAggregateField
      FieldName = '_TOTAL_REAL_LIMIT_PERCENT'
      OnGetText = cdsGridData_TOTAL_REAL_LIMIT_PERCENTGetText
      Active = True
      DisplayFormat = ',0'
      Expression = '(Sum(LIMIT_HOURS) - Sum(REAL_FREE_HOURS)) / Sum(LIMIT_HOURS)'
    end
    object cdsGridData_TOTAL_PLAN_LIMIT_PERCENT: TAggregateField
      FieldName = '_TOTAL_PLAN_LIMIT_PERCENT'
      OnGetText = cdsGridData_TOTAL_PLAN_LIMIT_PERCENTGetText
      Active = True
      DisplayFormat = ',0'
      Expression = '(Sum(LIMIT_HOURS) - Sum(PLAN_FREE_HOURS)) / Sum(LIMIT_HOURS)'
    end
  end
  inherited alActions: TActionList
    Left = 80
    Top = 136
    inherited actForm: TAction
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
    end
    inherited actFilter: TAction
      Caption = #1060#1080#1083#1090#1098#1088'...'
      Visible = True
    end
    object actPrintChart: TAction
      Hint = #1055#1077#1095#1072#1090' '#1085#1072' '#1043#1088#1072#1092#1080#1082#1072#1090#1072
      ImageIndex = 2
      OnExecute = actPrintChartExecute
      OnUpdate = actPrintChartUpdate
    end
    object actTogglePeriodLabelsExtraInfo: TAction
      Checked = True
      GroupIndex = 1
      Hint = 
        #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1076#1086#1087#1098#1083#1085#1080#1090#1077#1083#1085#1072' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1079#1072' '#1076#1072#1090#1080#1090#1077' '#1086#1090' '#1074#1088#1077#1084#1077#1074#1080#1103' '#1080#1085#1090 +
        #1077#1088#1074#1072#1083
      ImageIndex = 79
      OnExecute = actTogglePeriodLabelsExtraInfoExecute
      OnUpdate = actTogglePeriodLabelsExtraInfoUpdate
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
    object actShowCapacityTable: TAction
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085'...'
      Hint = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' %Capacity% '#1085#1072' '#1058#1055
      ImageIndex = 108
      OnExecute = actShowCapacityTableExecute
      OnUpdate = actShowCapacityTableUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 32
    Top = 288
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'CHOSEN_DEPTS'
      Required = True
      OnChange = pdsGridDataParamsCHOSEN_DEPTSChange
      Size = 4000
    end
    object pdsGridDataParamsCAPACITY_LIMIT_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1050#1072#1087#1072#1094#1080#1090#1077#1090
      FieldName = 'CAPACITY_LIMIT_LEVEL'
    end
    object pdsGridDataParamsCALC_ALL_LIMIT_LEVELS: TAbmesFloatField
      DisplayLabel = #1056#1072#1079#1087#1086#1083#1072#1075#1072#1077#1084' '#1086#1090' '#1074#1089#1080#1095#1082#1080' '#1085#1080#1074#1072
      FieldName = 'CALC_ALL_LIMIT_LEVELS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1052#1103#1089#1090#1086' ('#1054#1087#1052') '#1085#1072' '#1058#1055
      FieldName = 'CHOSEN_DEPT_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
      FieldName = 'BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'TIME_UNIT_COUNT'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsASPECT_TYPE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE'
      ProviderFlags = []
    end
    object pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_NAME'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'TIME_UNIT_CODE'
      Size = 30
      Lookup = True
    end
    object pdsGridDataParams_TIME_UNIT_DEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_DEFAULT_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'DEFAULT_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_TIME_UNIT_MIN_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_MIN_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'MIN_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_TIME_UNIT_MAX_UNIT_COUNT: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_TIME_UNIT_MAX_UNIT_COUNT'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'MAX_UNIT_COUNT'
      KeyFields = 'TIME_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
      Calculated = True
    end
    object pdsGridDataParams_DEPT_NAME: TAbmesWideStringField
      FieldName = '_DEPT_NAME'
      Size = 50
    end
    object pdsGridDataParams_DEPT_CODE: TAbmesFloatField
      FieldName = '_DEPT_CODE'
    end
    object pdsGridDataParams_DEPT_NO: TAbmesWideStringField
      FieldName = '_DEPT_NO'
    end
    object pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Calculated = True
    end
    object pdsGridDataParams_DATE_UNITS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNITS'
      Size = 30
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 288
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 224
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 224
  end
  object cdsTimeUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Filtered = True
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvTimeUnits'
    StoreDefs = True
    AfterOpen = cdsTimeUnitsAfterOpen
    Left = 128
    Top = 224
    object cdsTimeUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsTimeUnitsTABLE_NAME: TAbmesWideStringField
      FieldName = 'TABLE_NAME'
      Size = 50
    end
    object cdsTimeUnitsKEY_FIELD_NAME: TAbmesWideStringField
      FieldName = 'KEY_FIELD_NAME'
      Size = 50
    end
    object cdsTimeUnitsYEAR_UNIT_NO_NAME: TAbmesWideStringField
      FieldName = 'YEAR_UNIT_NO_NAME'
      Size = 50
    end
    object cdsTimeUnitsDEFAULT_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DEFAULT_UNIT_COUNT'
    end
    object cdsTimeUnitsMIN_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MIN_UNIT_COUNT'
    end
    object cdsTimeUnitsMAX_UNIT_COUNT: TAbmesFloatField
      FieldName = 'MAX_UNIT_COUNT'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME_PLURAL'
      Size = 50
    end
  end
  object cdsOuterFormParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 224
    object cdsOuterFormParams_IN_SPECIAL_CONTROL_TASKS_MODE: TAbmesFloatField
      FieldName = '_IN_SPECIAL_CONTROL_TASKS_MODE'
      FieldValueType = fvtBoolean
    end
    object cdsOuterFormParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsOuterFormParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsOuterFormParamsOM_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_BEGIN_DATE'
    end
    object cdsOuterFormParamsOM_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'OM_END_DATE'
    end
    object cdsOuterFormParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
  end
  object cdsCapacityTableParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 176
    object cdsCapacityTableParamsASPECT_TYPE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE'
    end
    object cdsCapacityTableParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsCapacityTableParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object cdsCapacityTableParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsCapacityTableParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsCapacityTableParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object cdsCapacityTableParamsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object cdsCapacityTableParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsCapacityTableParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPT_PRODUCTS'
      Size = 4000
    end
    object cdsCapacityTableParamsCAPACITY_LIMIT_LEVEL: TAbmesFloatField
      FieldName = 'CAPACITY_LIMIT_LEVEL'
    end
    object cdsCapacityTableParamsCALC_ALL_LIMIT_LEVELS: TAbmesFloatField
      FieldName = 'CALC_ALL_LIMIT_LEVELS'
      FieldValueType = fvtBoolean
    end
  end
end
