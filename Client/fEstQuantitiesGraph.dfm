inherited fmEstQuantitiesGraph: TfmEstQuantitiesGraph
  ActiveControl = nil
  Caption = 
    #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev' +
    '%'
  ClientHeight = 528
  ClientWidth = 795
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 493
    Width = 795
    DesignSize = (
      795
      35)
    inherited pnlOKCancel: TPanel
      Left = 527
      TabOrder = 2
      Visible = False
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
      object btnPrior: TBitBtn
        Left = 162
        Top = 3
        Width = 119
        Height = 23
        Action = actPrior
        Caption = 'actPrior'
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object btnNext: TBitBtn
        Left = 284
        Top = 3
        Width = 119
        Height = 23
        Action = actNext
        Caption = 'actNext'
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
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
      object pnlBeginDateWeekFormat: TPanel
        Left = 74
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 14281690
        TabOrder = 4
      end
      object pnlEndDateWeekFormat: TPanel
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
  inherited pnlMain: TPanel
    Width = 795
    Height = 493
    inherited pnlGrid: TPanel
      Width = 779
      Height = 477
      inherited pnlNavigator: TPanel
        Left = 80
        Top = 56
        Width = 353
        Align = alNone
        TabOrder = 4
        Visible = False
        inherited navData: TDBColorNavigator
          DataSource = nil
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Left = 48
        Top = 88
        Width = 305
        Height = 137
        Align = alNone
        TabOrder = 5
        Visible = False
      end
      object pcMain: TPageControl
        Left = 0
        Top = 66
        Width = 779
        Height = 411
        ActivePage = tsQuantity
        Align = alClient
        HotTrack = True
        TabOrder = 3
        object tsQuantity: TTabSheet
          BorderWidth = 3
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          object ChartQuantity: TDBChart
            Left = 0
            Top = 0
            Width = 765
            Height = 377
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Foot.Alignment = taRightJustify
            Foot.Font.Charset = DEFAULT_CHARSET
            Foot.Font.Color = clBlack
            Foot.Font.Name = 'Times New Roman'
            Foot.Font.Style = []
            Foot.Text.Strings = (
              #1082#1098#1084' '#1076#1072#1090#1072':')
            Foot.Visible = False
            Gradient.EndColor = 12441534
            Gradient.StartColor = 16053492
            Gradient.Visible = True
            MarginBottom = 21
            MarginTop = 2
            PrintProportional = False
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Times New Roman'
            Title.Font.Style = [fsItalic]
            Title.Text.Strings = (
              #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
              '')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.DateTimeFormat = 'hh:mm'
            BottomAxis.ExactDateTime = False
            BottomAxis.Increment = 1.000000000000000000
            BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
            BottomAxis.MinorTickCount = 0
            BottomAxis.MinorTickLength = 0
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Maximum = 0.169999999999999800
            DepthAxis.Minimum = -0.830000000000000300
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Grid.Visible = False
            LeftAxis.Maximum = 1493.250000000000000000
            LeftAxis.Minimum = 618.250000000000000000
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 0
            LeftAxis.Title.Caption = #1089#1090#1086#1081#1085#1086#1089#1090' '#1074' ...'
            LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
            LeftAxis.Title.Font.Height = -12
            LeftAxis.Title.Font.Name = 'Times New Roman'
            LeftAxis.TitleSize = 20
            Legend.Alignment = laBottom
            Legend.ColorWidth = 15
            Legend.Font.Height = -9
            Legend.LegendStyle = lsSeries
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
            OnAfterDraw = actDelRecordExecute
            OnGetAxisLabel = ChartGetAxisLabel
            Align = alClient
            BevelOuter = bvLowered
            Color = 15658963
            TabOrder = 0
            DesignSize = (
              765
              377)
            ColorPaletteIndex = 13
            object lblChartQuantityStartDate: TLabel
              Left = 2
              Top = 272
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Anchors = [akLeft, akBottom]
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
              Top = 285
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Anchors = [akLeft, akBottom]
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
              Left = 2
              Top = 354
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
              ParentShowHint = False
              ShowHint = True
              Transparent = False
            end
            object lblToDateOnChartQuantity: TLabel
              Left = 564
              Top = 363
              Width = 171
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              Caption = #1082#1098#1084' '#1076#1072#1090#1072': 00-00-0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object pnlChartQuantityLegend: TPanel
              Left = 96
              Top = 314
              Width = 631
              Height = 48
              Anchors = [akLeft, akRight, akBottom]
              BevelOuter = bvNone
              Color = 15658963
              TabOrder = 0
              object shpLegend2: TShape
                Left = 2
                Top = 2
                Width = 629
                Height = 46
                Brush.Color = 11054225
                Pen.Color = 11054225
              end
              object shpLegend: TShape
                Left = 0
                Top = 0
                Width = 629
                Height = 46
              end
              object lblInSaleCoverQuantity: TLabel
                Left = 27
                Top = 4
                Width = 93
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lblInConsignQuantity: TLabel
                Left = 180
                Top = 4
                Width = 92
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1042#1044#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpInSaleCoverQuantity: TShape
                Left = 6
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = 16760704
              end
              object shpInConsignQuantity: TShape
                Left = 158
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = 12615808
              end
              object shpPassiveQuantity2: TShape
                Left = 158
                Top = 31
                Width = 19
                Height = 9
                Brush.Color = 16759260
              end
              object lblPassiveQuantity: TLabel
                Left = 179
                Top = 30
                Width = 87
                Height = 12
                Caption = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
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
                Left = 158
                Top = 31
                Width = 19
                Height = 9
                Brush.Color = clBlack
                Brush.Style = bsBDiagonal
              end
              object shpInEnvCoverQuantity: TShape
                Left = 310
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = 4094843
              end
              object lblInEnvCoverQuantity: TLabel
                Left = 331
                Top = 4
                Width = 93
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1057
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpInModelQuantity: TShape
                Left = 462
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = clSilver
              end
              object lblInModelQuantity: TLabel
                Left = 484
                Top = 4
                Width = 107
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1042#1054' '#1048#1048#1056
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpDeficitQuantity: TShape
                Left = 6
                Top = 31
                Width = 19
                Height = 9
                Brush.Color = 328092
              end
              object lblDeficitQuantity: TLabel
                Left = 27
                Top = 30
                Width = 37
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
              object shpQuantity: TLabel
                Left = 364
                Top = 30
                Width = 46
                Height = 12
                Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpTotalQuantity2: TShape
                Left = 310
                Top = 34
                Width = 23
                Height = 3
                Brush.Color = 62708
                Pen.Color = 62708
              end
              object shpTotalQuantity: TShape
                Left = 311
                Top = 31
                Width = 21
                Height = 8
                Brush.Color = 62708
                Shape = stSquare
              end
              object shpNegativeQuantity2: TShape
                Left = 334
                Top = 34
                Width = 23
                Height = 3
                Brush.Color = clRed
                Pen.Color = clRed
              end
              object shpNegativeQuantity: TShape
                Left = 335
                Top = 31
                Width = 21
                Height = 8
                Brush.Color = clRed
                Shape = stSquare
              end
              object shpOutSaleAcquireQuantity: TShape
                Left = 6
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 4604671
              end
              object lblOutSaleAcquireQuantity: TLabel
                Left = 27
                Top = 17
                Width = 88
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1055#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpOutSaleConsignQuantity: TShape
                Left = 158
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 12961023
              end
              object lblOutSaleConsignQuantity: TLabel
                Left = 180
                Top = 17
                Width = 88
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1048#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpOutSpecAcquireQuantity: TShape
                Left = 310
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 4227327
              end
              object lblOutSpecAcquireQuantity: TLabel
                Left = 331
                Top = 17
                Width = 89
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1055#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpOutSpecConsignQuantity: TShape
                Left = 462
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 12642046
              end
              object lblOutSpecConsignQuantity: TLabel
                Left = 484
                Top = 17
                Width = 89
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1048#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
            end
            object pnlTogglePeriodLabelsExtraInfo: TPanel
              Left = 741
              Top = 353
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
                GroupIndex = 1
                ParentShowHint = False
                ShowHint = True
                Transparent = False
              end
            end
            object serPassiveQuantity: TAreaSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 16759260
              Title = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
              AreaBrush = bsBDiagonal
              AreaChartBrush.Style = bsBDiagonal
              AreaLinesPen.Style = psDash
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_PASSIVE_QUANTITY'
            end
            object serQuantityZeroArea: TAreaSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 14937059
              ShowInLegend = False
              Title = 'ZeroArea'
              AreaColor = 14937059
              AreaLinesPen.Style = psDot
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_ZERO'
            end
            object serInModelQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = clSilver
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1052#1054#1044#1045#1083
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_IN_MODEL_QUANTITY'
            end
            object serInEnvCoverQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 4094843
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1057
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_IN_ENV_COVER_QUANTITY'
            end
            object serInConsignQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 12615808
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1042#1044#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_IN_CONSIGN_QUANTITY'
            end
            object serInSaleCoverQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 16760704
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_IN_SALE_COVER_QUANTITY'
            end
            object serOutSpecConsignQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 12642046
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1048#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_OUT_SPEC_CONSIGN_QUANTITY'
            end
            object serOutSpecAcquireQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 4227327
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1055#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY'
            end
            object serOutSaleConsignQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 12961023
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1048#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_OUT_SALE_CONSIGN_QUANTITY'
            end
            object serOutSaleAcquireQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 4604671
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1055#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_OUT_SALE_ACQUIRE_QUANTITY'
            end
            object serDeficitQuantity: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 328092
              Title = #1044#1077#1092#1080#1094#1080#1090
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 15
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_DEFICIT_QUANTITY'
            end
            object serQuantityZeroLine: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Visible = False
              SeriesColor = clBlack
              ShowInLegend = False
              Title = 'ZeroLine'
              LinePen.Width = 2
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_ZERO'
              object TeeFunction1: TMultiplyTeeFunction
              end
            end
            object serTotalQuantity: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 62708
              Title = #1053#1072#1083#1080#1095#1085#1086#1089#1090
              AfterDrawValues = LineSeriesAfterDrawValues
              OnDblClick = LineSeriesDblClick
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_TOTAL_QUANTITY'
            end
            object serNegativeQuantity: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
              OnDblClick = LineSeriesDblClick
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_NEGATIVE_QUANTITY'
            end
            object serPositiveQuantity: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 62708
              Title = #1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
              OnDblClick = LineSeriesDblClick
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_POSITIVE_QUANTITY'
            end
          end
        end
        object tsPrice: TTabSheet
          BorderWidth = 3
          Caption = #1042#1057'1'
          ImageIndex = 1
          object ChartPrice: TDBChart
            Left = 0
            Top = 0
            Width = 765
            Height = 377
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Foot.Alignment = taRightJustify
            Foot.Font.Charset = DEFAULT_CHARSET
            Foot.Font.Color = clBlack
            Foot.Font.Name = 'Times New Roman'
            Foot.Font.Style = []
            Foot.Text.Strings = (
              #1082#1098#1084' '#1076#1072#1090#1072':')
            Foot.Visible = False
            Gradient.EndColor = 12441534
            Gradient.StartColor = 16053492
            Gradient.Visible = True
            MarginBottom = 21
            MarginTop = 2
            PrintProportional = False
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Times New Roman'
            Title.Font.Style = [fsItalic]
            Title.Text.Strings = (
              #1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' 1-'#1074#1080' '#1056#1077#1076
              '')
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.DateTimeFormat = 'hh:mm'
            BottomAxis.ExactDateTime = False
            BottomAxis.Increment = 1.000000000000000000
            BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
            BottomAxis.MinorTickCount = 0
            BottomAxis.MinorTickLength = 0
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Maximum = 0.500000000000000000
            DepthAxis.Minimum = -0.500000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Grid.Visible = False
            LeftAxis.Maximum = 897.999999999999900000
            LeftAxis.Minimum = 19.999999999999860000
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 0
            LeftAxis.Title.Caption = #1089#1090#1086#1081#1085#1086#1089#1090' '#1074' ...'
            LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
            LeftAxis.Title.Font.Height = -12
            LeftAxis.Title.Font.Name = 'Times New Roman'
            LeftAxis.TitleSize = 20
            Legend.Alignment = laBottom
            Legend.ColorWidth = 15
            Legend.Font.Height = -9
            Legend.LegendStyle = lsSeries
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
            OnAfterDraw = actDelRecordExecute
            OnGetAxisLabel = ChartGetAxisLabel
            Align = alClient
            BevelOuter = bvLowered
            Color = 15658963
            TabOrder = 0
            DesignSize = (
              765
              377)
            ColorPaletteIndex = 13
            object lblChartPriceStartDate: TLabel
              Left = 2
              Top = 272
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Anchors = [akLeft, akBottom]
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
            object lblChartPriceEndDate: TLabel
              Left = 2
              Top = 285
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Anchors = [akLeft, akBottom]
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
              Left = 2
              Top = 354
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
              ParentShowHint = False
              ShowHint = True
              Transparent = False
            end
            object lblToDateOnChartPrice: TLabel
              Left = 564
              Top = 363
              Width = 171
              Height = 12
              Alignment = taRightJustify
              Anchors = [akLeft, akBottom]
              AutoSize = False
              Caption = #1082#1098#1084' '#1076#1072#1090#1072': 00-00-0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object pnlLegend: TPanel
              Left = 96
              Top = 314
              Width = 631
              Height = 48
              Anchors = [akLeft, akBottom]
              BevelOuter = bvNone
              Color = 15658963
              TabOrder = 1
              object shpLegend3: TShape
                Left = 2
                Top = 2
                Width = 629
                Height = 46
                Brush.Color = 11054225
                Pen.Color = 11054225
              end
              object shpLegend4: TShape
                Left = 0
                Top = 0
                Width = 629
                Height = 46
              end
              object lblInSaleCoverPrice: TLabel
                Left = 27
                Top = 4
                Width = 93
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object lblInConsignPrice: TLabel
                Left = 180
                Top = 4
                Width = 92
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1042#1044#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpInSaleCoverPrice: TShape
                Left = 6
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = 16760704
              end
              object shpInConsignPrice: TShape
                Left = 158
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = 12615808
              end
              object shpPassivePrice2: TShape
                Left = 158
                Top = 31
                Width = 19
                Height = 9
                Brush.Color = 16759260
              end
              object lblPassivePrice: TLabel
                Left = 179
                Top = 30
                Width = 87
                Height = 12
                Caption = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
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
                Left = 158
                Top = 31
                Width = 19
                Height = 9
                Brush.Color = clBlack
                Brush.Style = bsBDiagonal
              end
              object shpInEnvCoverPrice: TShape
                Left = 310
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = 4094843
              end
              object lblInEnvCoverPrice: TLabel
                Left = 331
                Top = 4
                Width = 93
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1057
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpInModelPrice: TShape
                Left = 462
                Top = 5
                Width = 19
                Height = 9
                Brush.Color = clSilver
              end
              object lblInModelPrice: TLabel
                Left = 484
                Top = 4
                Width = 107
                Height = 12
                Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1042#1054' '#1048#1048#1056
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpDeficitPrice: TShape
                Left = 6
                Top = 31
                Width = 19
                Height = 9
                Brush.Color = 328092
              end
              object lblDeficitPrice: TLabel
                Left = 27
                Top = 30
                Width = 37
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
              object lblPrice: TLabel
                Left = 364
                Top = 30
                Width = 46
                Height = 12
                Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpTotalPrice2: TShape
                Left = 310
                Top = 34
                Width = 23
                Height = 3
                Brush.Color = 62708
                Pen.Color = 62708
              end
              object shpTotalPrice: TShape
                Left = 311
                Top = 31
                Width = 21
                Height = 8
                Brush.Color = 62708
                Shape = stSquare
              end
              object shpNegativePrice2: TShape
                Left = 334
                Top = 34
                Width = 23
                Height = 3
                Brush.Color = clRed
                Pen.Color = clRed
              end
              object shpNegativePrice: TShape
                Left = 335
                Top = 31
                Width = 21
                Height = 8
                Brush.Color = clRed
                Shape = stSquare
              end
              object shpOutSaleAcquirePrice: TShape
                Left = 6
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 4604671
              end
              object lblOutSaleAcquirePrice: TLabel
                Left = 27
                Top = 17
                Width = 88
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1055#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpOutSaleConsignPrice: TShape
                Left = 158
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 12961023
              end
              object lblOutSaleConsignPrice: TLabel
                Left = 180
                Top = 17
                Width = 88
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1048#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpOutSPecAcquirePrice: TShape
                Left = 310
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 4227327
              end
              object lblOutSPecAcquirePrice: TLabel
                Left = 331
                Top = 17
                Width = 89
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1055#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object shpOutSpecConsignPrice: TShape
                Left = 462
                Top = 18
                Width = 19
                Height = 9
                Brush.Color = 12642046
              end
              object lblOutSpecConsignPrice: TLabel
                Left = 484
                Top = 17
                Width = 89
                Height = 12
                Caption = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1048#1055
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 7566195
                Font.Height = -9
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
            end
            object pnlTogglePeriodLabelsExtraInfo2: TPanel
              Left = 741
              Top = 353
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
                GroupIndex = 1
                ParentShowHint = False
                ShowHint = True
                Transparent = False
              end
            end
            object serPassivePrice: TAreaSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 16759260
              Title = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
              AreaBrush = bsBDiagonal
              AreaChartBrush.Style = bsBDiagonal
              AreaLinesPen.Style = psDash
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_PASSIVE_PRICE'
            end
            object serPriceZeroArea: TAreaSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 14937059
              ShowInLegend = False
              Title = 'ZeroArea'
              AreaColor = 14937059
              AreaLinesPen.Style = psDot
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_ZERO'
            end
            object serInModelPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = clSilver
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1052#1054#1044#1045#1083
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_IN_MODEL_PRICE'
            end
            object serInEnvCoverPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 4094843
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1057
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_IN_ENV_COVER_PRICE'
            end
            object serInConsignPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 12615808
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1042#1044#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_IN_CONSIGN_PRICE'
            end
            object serInSaleCoverPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 16760704
              Title = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103' '#1086#1090' '#1055#1044#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = -30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_IN_SALE_COVER_PRICE'
            end
            object serOutSpecConsignPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 12642046
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1048#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_OUT_SPEC_CONSIGN_PRICE'
            end
            object serOutSpecAcquirePrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 4227327
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1053#1057#1063' '#1055#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_OUT_SPEC_ACQUIRE_PRICE'
            end
            object serOutSaleConsignPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 12961023
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1048#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_OUT_SALE_CONSIGN_PRICE'
            end
            object serOutSaleAcquirePrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 4604671
              Title = #1058#1077#1075#1083#1077#1085#1080#1103' '#1086#1090' '#1048#1048#1056' '#1055#1055
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 30
              MultiBar = mbNone
              OffsetPercent = 30
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_OUT_SALE_ACQUIRE_PRICE'
            end
            object serDeficitPrice: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 328092
              Title = #1044#1077#1092#1080#1094#1080#1090
              OnDblClick = BarSeriesDblClick
              BarWidthPercent = 15
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_DEFICIT_PRICE'
            end
            object serPriceZeroLine: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 3
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Visible = False
              SeriesColor = clBlack
              ShowInLegend = False
              Title = 'ZeroLine'
              LinePen.Width = 2
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_ZERO'
              object MultiplyTeeFunction1: TMultiplyTeeFunction
              end
            end
            object serTotalPrice: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 62708
              Title = #1053#1072#1083#1080#1095#1085#1086#1089#1090
              AfterDrawValues = LineSeriesAfterDrawValues
              OnDblClick = LineSeriesDblClick
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_TOTAL_PRICE'
            end
            object serNegativePrice: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              Title = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
              OnDblClick = LineSeriesDblClick
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_NEGATIVE_PRICE'
            end
            object serPositivePrice: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 62708
              Title = #1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
              OnDblClick = LineSeriesDblClick
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_POSITIVE_PRICE'
            end
          end
        end
        object tsRegister: TTabSheet
          BorderWidth = 3
          Caption = #1056#1077#1075#1080#1089#1090#1098#1088
          ImageIndex = 2
          object pnlRegisterTop: TPanel
            Left = 0
            Top = 0
            Width = 765
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lblMeasureAbbrev: TLabel
              Left = 612
              Top = 5
              Width = 103
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = #1052#1077#1088#1085#1072' '#1045#1076#1080#1085#1080#1094#1072':'
            end
            object edtMeasureAbbrev: TDBText
              Left = 720
              Top = 5
              Width = 44
              Height = 13
              Alignment = taCenter
              Color = clBtnFace
              DataField = 'MEASURE_ABBREV'
              DataSource = dsGridData
              ParentColor = False
            end
            object navRegister: TDBColorNavigator
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
            object tlbRegister: TToolBar
              Left = 96
              Top = 0
              Width = 433
              Height = 24
              Align = alLeft
              ButtonHeight = 24
              ButtonWidth = 24
              Caption = 'tlbRegister'
              Images = dmMain.ilActions
              TabOrder = 1
              object sepExcelExport2: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepExcelExport2'
                Style = tbsSeparator
              end
              object btnExcelExport2: TToolButton
                Left = 8
                Top = 0
                Action = actExcelExport
              end
              object sepRegisterQuantities: TToolButton
                Left = 32
                Top = 0
                Width = 8
                Caption = 'sepRegisterQuantities'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object btnRegisterQuantities: TSpeedButton
                Left = 40
                Top = 0
                Width = 105
                Height = 24
                Action = actRegisterQuantities
                GroupIndex = 2
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
                Spacing = 5
                Transparent = False
              end
              object btnRegisterPrices: TSpeedButton
                Left = 145
                Top = 0
                Width = 105
                Height = 24
                Action = actRegisterPrices
                GroupIndex = 2
                Flat = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00393900002121210000000000FF00FF00FF00FF00FF00
                  FF000000000000000000FF00FF000000000000000000FF00FF00FF00FF00FF00
                  FF00FF00FF00393900005A5A0000BDBDBD00B5B5B50000000000FF00FF000000
                  000039BDBD0063DEDE0031313100CECECE00C6C6C60031313100FF00FF00FF00
                  FF00393900009C9C000052523100B5B5B500BDBDBD0042424200212121000000
                  00006BEFEF006BEFEF0063636300DEDEDE00CECECE0063636300FF00FF003939
                  00009C9C000084BD630063DE6300215A0000424200007B7B0000636363002121
                  210000393900316B6B0031313100CECECE00CECECE0031313100000000009C9C
                  000073AD310063DE630063DE630052CE310052CE310052CE31009C9C00006363
                  630021212100FF00FF00FF00FF000000000000000000FF00FF00FF00FF000000
                  00009C9C000042BD000052CE310063DE630084BD630073AD310042BD00009C9C
                  00006363630021212100FF00FF000000000000000000FF00FF00000000009C9C
                  0000737331009C9C000042BD000052CE310042BD000042BD00008484000052CE
                  31009C9C0000636363002121210063636300CECECE0000000000FF00FF003939
                  00007BBD0000528C31009C9C000042BD000084840000639C000042BD000063DE
                  630052CE31009C9C000063636300525252006363630000000000FF00FF00FF00
                  FF00393900007BBD0000427B00009C9C000042BD0000639C000084BD630084BD
                  630063DE630073AD31007BBD00006363630021212100FF00FF00FF00FF00FF00
                  FF00FF00FF00393900007BBD0000639C63009C9C000042BD000052CE310063DE
                  630084BD630052CE31009C9C00005A5A210021212100FF00FF00FF00FF00FF00
                  FF000000000000000000393900007BBD0000639C63009C9C000042BD000063DE
                  630084BD63009C9C00003939000063636300FF00FF00FF00FF00FF00FF000039
                  39006BEFEF0039BDBD0000000000393900007BBD0000528C31009C9C000042BD
                  00009C9C00005A5A00009C9C00005A5A210042424200FF00FF00FF00FF00316B
                  6B006BEFEF006BEFEF0000000000FF00FF00393900007BBD0000427B00009C9C
                  00005A5A0000848400009C9C000042424200FF00FF00FF00FF00FF00FF000000
                  0000316B6B00003939000000000000000000FF00FF00393900007BBD00008484
                  6300848400009C9C000042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF0063636300CECECE0000000000FF00FF00393900007BBD
                  00009C9C000042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00313131006363630000000000FF00FF00FF00FF003939
                  000042424200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                Spacing = 5
                Transparent = False
              end
            end
          end
          object grdRegister: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 765
            Height = 320
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
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
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 9
            OnDblClick = grdRegisterDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdRegisterGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = '_DATE_UNIT_SHOW_NAME_FOR_REG'
                Footers = <>
                Title.Caption = 'DateUnitName'
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'IN_SALE_COVER_QUANTITY'
                Footer.FieldName = '_SUM_IN_SALE_COVER_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1055#1044#1055
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_CONSIGN_QUANTITY'
                Footer.FieldName = '_SUM_IN_CONSIGN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1042#1044#1055
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_ENV_COVER_QUANTITY'
                Footer.FieldName = '_SUM_IN_ENV_COVER_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1055#1044#1057
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_MODEL_QUANTITY'
                Footer.FieldName = '_SUM_IN_MODEL_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1042#1054' '#1048#1048#1056
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SALE_ACQUIRE_QUANTITY'
                Footer.FieldName = '_SUM_OUT_SALE_ACQUIRE_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1048#1048#1056' '#1055#1055
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SALE_CONSIGN_QUANTITY'
                Footer.FieldName = '_SUM_OUT_SALE_CONSIGN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1048#1048#1056' '#1048#1055
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SPEC_ACQUIRE_QUANTITY'
                Footer.FieldName = '_SUM_OUT_SPEC_ACQUIRE_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1053#1057#1063' '#1055#1055
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SPEC_CONSIGN_QUANTITY'
                Footer.FieldName = '_SUM_OUT_SPEC_CONSIGN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1053#1057#1063' '#1048#1055
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'NEGATIVE_QUANTITY'
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1054#1090#1088#1080#1094'.'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'POSITIVE_QUANTITY'
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1055#1086#1083#1086#1078'.'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'DEFICIT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1077#1092#1080#1094#1080#1090
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'PASSIVE_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095'.'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_IN_SALE_COVER_QUANTITY'
                Footer.FieldName = '_SUM_ACC_IN_SALE_COVER_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1055#1044#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_IN_CONSIGN_QUANTITY'
                Footer.FieldName = '_SUM_ACC_IN_CONSIGN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1042#1044#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_IN_ENV_COVER_QUANTITY'
                Footer.FieldName = '_SUM_ACC_IN_ENV_COVER_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1055#1044#1057
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_IN_MODEL_QUANTITY'
                Footer.FieldName = '_SUM_ACC_IN_MODEL_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1042#1054' '#1048#1048#1056
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_OUT_SALE_ACQUIRE_QUANTITY'
                Footer.FieldName = '_SUM_ACC_OUT_SALE_ACQUIRE_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1048#1048#1056' '#1055#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_OUT_SALE_CONSIGN_QUANTITY'
                Footer.FieldName = '_SUM_ACC_OUT_SALE_CONSIGN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1048#1048#1056' '#1048#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_OUT_SPEC_ACQUIRE_QUANTITY'
                Footer.FieldName = '_SUM_ACC_OUT_SPEC_ACQUIRE_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1053#1057#1063' '#1055#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_OUT_SPEC_CONSIGN_QUANTITY'
                Footer.FieldName = '_SUM_ACC_OUT_SPEC_CONSIGN_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1053#1057#1063' '#1048#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_TOTAL_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_NEGATIVE_QUANTITY'
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1054#1090#1088#1080#1094'.'
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_POSITIVE_QUANTITY'
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1055#1086#1083#1086#1078'.'
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_DEFICIT_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1077#1092#1080#1094#1080#1090
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACC_PASSIVE_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095'.'
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_SALE_COVER_PRICE'
                Footer.FieldName = '_SUM_IN_SALE_COVER_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1055#1044#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_CONSIGN_PRICE'
                Footer.FieldName = '_SUM_IN_CONSIGN_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1042#1044#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_ENV_COVER_PRICE'
                Footer.FieldName = '_SUM_IN_ENV_COVER_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1055#1044#1057
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'IN_MODEL_PRICE'
                Footer.FieldName = '_SUM_IN_MODEL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103'|'#1042#1054' '#1048#1048#1056
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SALE_ACQUIRE_PRICE'
                Footer.FieldName = '_SUM_OUT_SALE_ACQUIRE_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1048#1048#1056' '#1055#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SALE_CONSIGN_PRICE'
                Footer.FieldName = '_SUM_OUT_SALE_CONSIGN_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1048#1048#1056' '#1048#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SPEC_ACQUIRE_PRICE'
                Footer.FieldName = '_SUM_OUT_SPEC_ACQUIRE_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1053#1057#1063' '#1055#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'OUT_SPEC_CONSIGN_PRICE'
                Footer.FieldName = '_SUM_OUT_SPEC_CONSIGN_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1075#1083#1077#1085#1080#1103'|'#1053#1057#1063' '#1048#1055
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'NEGATIVE_PRICE'
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1054#1090#1088#1080#1094'.'
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'POSITIVE_PRICE'
                Footers = <>
                Title.Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090'|'#1055#1086#1083#1086#1078'.'
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'DEFICIT_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1077#1092#1080#1094#1080#1090
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'PASSIVE_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095'.'
                Visible = False
                Width = 54
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlGridButtons: TPanel
            Left = 0
            Top = 344
            Width = 765
            Height = 33
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object btnEstQuantitiesTable: TBitBtn
              Left = 0
              Top = 7
              Width = 137
              Height = 25
              Action = actEstQuantitiesTable
              Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085'...'
              DoubleBuffered = True
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
              ParentDoubleBuffered = False
              Spacing = -1
              TabOrder = 0
            end
          end
        end
      end
      object pnlTopSeparator: TPanel
        Left = 0
        Top = 61
        Width = 779
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
      object pnlFilter: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 61
        Align = alTop
        TabOrder = 0
        object lblProduct: TLabel
          Left = 10
          Top = 10
          Width = 106
          Height = 13
          Caption = '%ProductClassName%'
        end
        object lblRounderQuantity: TLabel
          Left = 495
          Top = 11
          Width = 103
          Height = 13
          Caption = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1082'-'#1074#1086
        end
        object lblPeriod: TLabel
          Left = 314
          Top = 37
          Width = 84
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1089#1090#1098#1087#1082#1080
        end
        object lblRounderPrice: TLabel
          Left = 495
          Top = 37
          Width = 103
          Height = 13
          Caption = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1042#1057'1'
        end
        object btnFilter2: TBitBtn
          Left = 680
          Top = 21
          Width = 95
          Height = 22
          Action = actFilter
          Caption = #1060#1080#1083#1090#1098#1088'...'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          ParentShowHint = False
          ShowHint = True
          Spacing = -1
          TabOrder = 3
        end
        object edtProductName: TDBEdit
          Left = 112
          Top = 8
          Width = 245
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14281690
          DataField = '_PRODUCT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductNo: TDBEdit
          Left = 358
          Top = 8
          Width = 95
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14281690
          DataField = '_PRODUCT_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object tlbFilterProductDocs: TToolBar
          Left = 453
          Top = 8
          Width = 36
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object btnFilterProductDocs: TToolButton
            Left = 0
            Top = 0
            Action = actFilterProductDocs
          end
        end
        object edtTimeUnits: TDBEdit
          Left = 402
          Top = 32
          Width = 87
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14281690
          DataField = '_DATE_UNITS'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 4
        end
        object edtRoundeQuantity: TDBEdit
          Left = 602
          Top = 8
          Width = 71
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14281690
          DataField = '_REAL_QUANTITY_ROUNDER_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 5
        end
        object edtRounderPrice: TDBEdit
          Left = 602
          Top = 32
          Width = 71
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 14281690
          DataField = '_REAL_PRICE_ROUNDER_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 6
        end
      end
      object pnlTogglesToolbar: TPanel
        Left = 264
        Top = 62
        Width = 515
        Height = 24
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 2
        object tlbToggles: TToolBar
          Left = 243
          Top = 0
          Width = 272
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object btnWorkMeasure: TToolButton
            Left = 0
            Top = 0
            Action = actWorkMeasure
            Style = tbsCheck
          end
          object btnAccountMeasure: TToolButton
            Left = 24
            Top = 0
            Action = actAccountMeasure
            Style = tbsCheck
          end
          object sepTotal: TToolButton
            Left = 48
            Top = 0
            Width = 8
            Caption = 'sepTotal'
            ImageIndex = 31
            Style = tbsSeparator
          end
          object btnTotal: TToolButton
            Left = 56
            Top = 0
            Action = actTotal
            AllowAllUp = True
            Style = tbsCheck
          end
          object btnTotalMarks: TToolButton
            Left = 80
            Top = 0
            Action = actTotalMarks
            AllowAllUp = True
            Style = tbsCheck
          end
          object sepMovements: TToolButton
            Left = 104
            Top = 0
            Width = 8
            Caption = 'sepMovements'
            ImageIndex = 69
            Style = tbsSeparator
          end
          object btnMovements: TToolButton
            Left = 112
            Top = 0
            Action = actMovements
            AllowAllUp = True
            Style = tbsCheck
          end
          object btnMovementMarks: TToolButton
            Left = 136
            Top = 0
            Action = actMovementMarks
            AllowAllUp = True
            Style = tbsCheck
          end
          object sepDeficit: TToolButton
            Left = 160
            Top = 0
            Width = 8
            Caption = 'sepDeficit'
            ImageIndex = 71
            Style = tbsSeparator
          end
          object btnDeficit: TToolButton
            Left = 168
            Top = 0
            Action = actDeficit
            AllowAllUp = True
            Style = tbsCheck
          end
          object btnDeficitMarks: TToolButton
            Left = 192
            Top = 0
            Action = actDeficitMarks
            AllowAllUp = True
            Style = tbsCheck
          end
          object sepPassive: TToolButton
            Left = 216
            Top = 0
            Width = 8
            Caption = 'sepPassive'
            ImageIndex = 73
            Style = tbsSeparator
          end
          object btnPassive: TToolButton
            Left = 224
            Top = 0
            Action = actPassive
            AllowAllUp = True
            Style = tbsCheck
          end
          object btnPassiveMarks: TToolButton
            Left = 248
            Top = 0
            Action = actPassiveMarks
            AllowAllUp = True
            Style = tbsCheck
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 152
    Top = 224
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conParRelProducts
    FieldDefs = <
      item
        Name = 'DATE_UNIT_FIRST_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATE_UNIT_NO'
        DataType = ftFloat
      end
      item
        Name = 'WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'IN_SALE_COVER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'IN_ENV_COVER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'IN_CONSIGN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OUT_SALE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'OUT_SPEC_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'DEFICIT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PASSIVE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_IN_SALE_COVER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_IN_ENV_COVER_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_IN_CONSIGN_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_OUT_SALE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_OUT_SPEC_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_TOTAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_DEFICIT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_PASSIVE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'IN_SALE_COVER_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'IN_ENV_COVER_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'IN_CONSIGN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'OUT_SALE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'OUT_SPEC_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DEFICIT_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PASSIVE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'SAME_MEASURE'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PROJECT_QUANTITIES'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
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
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
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
        Name = 'BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
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
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvEstQuantitiesGraph'
    OnCalcFields = cdsGridDataCalcFields
    AfterGetRecords = cdsGridDataAfterGetRecords
    Left = 120
    Top = 224
    object cdsGridDataDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object cdsGridDataDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_LAST_DATE'
    end
    object cdsGridDataDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object cdsGridDataWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object cdsGridDataIN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'IN_SALE_COVER_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'IN_ENV_COVER_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'IN_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_MODEL_QUANTITY: TAbmesFloatField
      FieldName = 'IN_MODEL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SALE_ACQUIRE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SALE_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SPEC_ACQUIRE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'OUT_SPEC_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataTOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataNEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'NEGATIVE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataPOSITIVE_QUANTITY: TAbmesFloatField
      FieldName = 'POSITIVE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataDEFICIT_QUANTITY: TAbmesFloatField
      FieldName = 'DEFICIT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataPASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'PASSIVE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_IN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_SALE_COVER_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_IN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_ENV_COVER_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_IN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_IN_MODEL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_IN_MODEL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SALE_ACQUIRE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SALE_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SPEC_ACQUIRE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_OUT_SPEC_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_TOTAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_NEGATIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_NEGATIVE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_POSITIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_POSITIVE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_DEFICIT_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_DEFICIT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataACC_PASSIVE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_PASSIVE_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_SALE_COVER_PRICE: TAbmesFloatField
      FieldName = 'IN_SALE_COVER_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_ENV_COVER_PRICE: TAbmesFloatField
      FieldName = 'IN_ENV_COVER_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'IN_CONSIGN_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataIN_MODEL_PRICE: TAbmesFloatField
      FieldName = 'IN_MODEL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OUT_SALE_ACQUIRE_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SALE_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'OUT_SALE_CONSIGN_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OUT_SPEC_ACQUIRE_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataOUT_SPEC_CONSIGN_PRICE: TAbmesFloatField
      FieldName = 'OUT_SPEC_CONSIGN_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataNEGATIVE_PRICE: TAbmesFloatField
      FieldName = 'NEGATIVE_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPOSITIVE_PRICE: TAbmesFloatField
      FieldName = 'POSITIVE_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataDEFICIT_PRICE: TAbmesFloatField
      FieldName = 'DEFICIT_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPASSIVE_PRICE: TAbmesFloatField
      FieldName = 'PASSIVE_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataSAME_MEASURE: TAbmesFloatField
      FieldName = 'SAME_MEASURE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'MEASURE_ABBREV'
      OnGetText = MeasureAbbrevGetText
      Size = 5
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      OnGetText = MeasureAbbrevGetText
      Size = 5
    end
    object cdsGridDataSINGLE_PRODUCT: TAbmesFloatField
      FieldName = 'SINGLE_PRODUCT'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_GRAPH_IN_SALE_COVER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_SALE_COVER_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_ENV_COVER_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_MODEL_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_MODEL_QUANTITY'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SALE_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SALE_ACQUIRE_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SALE_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SPEC_CONSIGN_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_TOTAL_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_TOTAL_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_NEGATIVE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_NEGATIVE_QUANTITY'
      Calculated = True
    end
    object cdsGridData_GRAPH_POSITIVE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_POSITIVE_QUANTITY'
      Calculated = True
    end
    object cdsGridData_GRAPH_DEFICIT_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_DEFICIT_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PASSIVE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PASSIVE_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_SALE_COVER_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_SALE_COVER_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_ENV_COVER_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_ENV_COVER_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_CONSIGN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_CONSIGN_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_IN_MODEL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_IN_MODEL_PRICE'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SALE_ACQUIRE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SALE_ACQUIRE_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SALE_CONSIGN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SALE_CONSIGN_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SPEC_ACQUIRE_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_OUT_SPEC_CONSIGN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_OUT_SPEC_CONSIGN_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_NEGATIVE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_NEGATIVE_PRICE'
      Calculated = True
    end
    object cdsGridData_GRAPH_POSITIVE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_POSITIVE_PRICE'
      Calculated = True
    end
    object cdsGridData_GRAPH_DEFICIT_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_DEFICIT_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PASSIVE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PASSIVE_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_IN_CONSIGN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_IN_CONSIGN_QUANTITY'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_IN_ENV_COVER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_IN_ENV_COVER_QUANTITY'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_IN_MODEL_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_IN_MODEL_QUANTITY'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_OUT_SALE_CONSIGN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_OUT_SALE_CONSIGN_QUANTITY'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_OUT_SPEC_ACQUIRE_QUANTITY'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_OUT_SPEC_CONSIGN_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_OUT_SPEC_CONSIGN_QUANTITY'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_IN_CONSIGN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_IN_CONSIGN_PRICE'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_IN_ENV_COVER_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_IN_ENV_COVER_PRICE'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_IN_MODEL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_IN_MODEL_PRICE'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_OUT_SALE_CONSIGN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_OUT_SALE_CONSIGN_PRICE'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_OUT_SPEC_ACQUIRE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_OUT_SPEC_ACQUIRE_PRICE'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_OUT_SPEC_CONSIGN_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_OUT_SPEC_CONSIGN_PRICE'
      Calculated = True
    end
    object cdsGridData_ZERO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ZERO'
      Calculated = True
    end
    object cdsGridData_DATE_UNIT_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNIT_SHOW_NAME'
      Size = 50
      Calculated = True
    end
    object cdsGridData_DATE_UNIT_SHOW_NAME_EX: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNIT_SHOW_NAME_EX'
      Size = 50
      Calculated = True
    end
    object cdsGridData_DATE_UNIT_SHOW_NAME_FOR_REG: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNIT_SHOW_NAME_FOR_REG'
      Size = 50
      Calculated = True
    end
    object cdsGridData_SUM_IN_SALE_COVER_QUANTITY: TAggregateField
      FieldName = '_SUM_IN_SALE_COVER_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_SALE_COVER_QUANTITY)'
    end
    object cdsGridData_SUM_IN_ENV_COVER_QUANTITY: TAggregateField
      FieldName = '_SUM_IN_ENV_COVER_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_ENV_COVER_QUANTITY)'
    end
    object cdsGridData_SUM_IN_CONSIGN_QUANTITY: TAggregateField
      FieldName = '_SUM_IN_CONSIGN_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_CONSIGN_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_IN_SALE_COVER_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_IN_SALE_COVER_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_IN_SALE_COVER_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_IN_ENV_COVER_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_IN_ENV_COVER_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_IN_ENV_COVER_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_IN_CONSIGN_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_IN_CONSIGN_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_IN_CONSIGN_QUANTITY)'
    end
    object cdsGridData_SUM_IN_SALE_COVER_PRICE: TAggregateField
      FieldName = '_SUM_IN_SALE_COVER_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_SALE_COVER_PRICE)'
    end
    object cdsGridData_SUM_IN_ENV_COVER_PRICE: TAggregateField
      FieldName = '_SUM_IN_ENV_COVER_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_ENV_COVER_PRICE)'
    end
    object cdsGridData_SUM_IN_CONSIGN_PRICE: TAggregateField
      FieldName = '_SUM_IN_CONSIGN_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_CONSIGN_PRICE)'
    end
    object cdsGridData_SUM_OUT_SALE_ACQUIRE_QUANTITY: TAggregateField
      FieldName = '_SUM_OUT_SALE_ACQUIRE_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SALE_ACQUIRE_QUANTITY)'
    end
    object cdsGridData_SUM_OUT_SALE_CONSIGN_QUANTITY: TAggregateField
      FieldName = '_SUM_OUT_SALE_CONSIGN_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SALE_CONSIGN_QUANTITY)'
    end
    object cdsGridData_SUM_OUT_SPEC_ACQUIRE_QUANTITY: TAggregateField
      FieldName = '_SUM_OUT_SPEC_ACQUIRE_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SPEC_ACQUIRE_QUANTITY)'
    end
    object cdsGridData_SUM_OUT_SPEC_CONSIGN_QUANTITY: TAggregateField
      FieldName = '_SUM_OUT_SPEC_CONSIGN_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SPEC_CONSIGN_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_OUT_SALE_ACQUIRE_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_OUT_SALE_ACQUIRE_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_OUT_SALE_ACQUIRE_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_OUT_SALE_CONSIGN_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_OUT_SALE_CONSIGN_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_OUT_SALE_CONSIGN_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_OUT_SPEC_ACQUIRE_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_OUT_SPEC_ACQUIRE_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_OUT_SPEC_ACQUIRE_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_OUT_SPEC_CONSIGN_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_OUT_SPEC_CONSIGN_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_OUT_SPEC_CONSIGN_QUANTITY)'
    end
    object cdsGridData_SUM_OUT_SPEC_CONSIGN_PRICE: TAggregateField
      FieldName = '_SUM_OUT_SPEC_CONSIGN_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SPEC_CONSIGN_PRICE)'
    end
    object cdsGridData_SUM_OUT_SPEC_ACQUIRE_PRICE: TAggregateField
      FieldName = '_SUM_OUT_SPEC_ACQUIRE_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SPEC_ACQUIRE_PRICE)'
    end
    object cdsGridData_SUM_OUT_SALE_CONSIGN_PRICE: TAggregateField
      FieldName = '_SUM_OUT_SALE_CONSIGN_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SALE_CONSIGN_PRICE)'
    end
    object cdsGridData_SUM_OUT_SALE_ACQUIRE_PRICE: TAggregateField
      FieldName = '_SUM_OUT_SALE_ACQUIRE_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(OUT_SALE_ACQUIRE_PRICE)'
    end
    object cdsGridData_SUM_IN_MODEL_QUANTITY: TAggregateField
      FieldName = '_SUM_IN_MODEL_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_MODEL_QUANTITY)'
    end
    object cdsGridData_SUM_ACC_IN_MODEL_QUANTITY: TAggregateField
      FieldName = '_SUM_ACC_IN_MODEL_QUANTITY'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACC_IN_MODEL_QUANTITY)'
    end
    object cdsGridData_SUM_IN_MODEL_PRICE: TAggregateField
      FieldName = '_SUM_IN_MODEL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(IN_MODEL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 240
    Top = 192
    inherited actForm: TAction
      Caption = 
        #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev' +
        '%'
    end
    inherited actFilter: TAction
      Caption = #1060#1080#1083#1090#1098#1088'...'
      Visible = True
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
    end
    object actRegisterQuantities: TAction
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Checked = True
      GroupIndex = 2
      ImageIndex = 23
      OnExecute = actRegisterQuantitiesExecute
      OnUpdate = actRegisterQuantitiesUpdate
    end
    object actRegisterPrices: TAction
      Caption = #1042#1057'1'
      GroupIndex = 2
      ImageIndex = 38
      OnExecute = actRegisterPricesExecute
      OnUpdate = actRegisterPricesUpdate
    end
    object actPrior: TAction
      Caption = 'actPrior'
      ImageIndex = 36
      OnExecute = actPriorExecute
      OnUpdate = actPriorUpdate
    end
    object actNext: TAction
      Caption = 'actNext'
      ImageIndex = 37
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actFilterProductDocs: TAction
      Caption = 'actFilterProductDocs'
      ImageIndex = 1
      OnExecute = actFilterProductDocsExecute
      OnUpdate = actFilterProductDocsUpdate
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
    object actMovements: TAction
      Checked = True
      GroupIndex = 3
      Hint = #1044#1074#1080#1078#1077#1085#1080#1103
      ImageIndex = 69
      OnExecute = actMovementsExecute
      OnUpdate = ShowHideSeriesActionUpdate
    end
    object actMovementMarks: TAction
      GroupIndex = 4
      Hint = #1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1103#1090#1072
      ImageIndex = 70
      OnExecute = actMovementMarksExecute
      OnUpdate = actMovementMarksUpdate
    end
    object actTotal: TAction
      Checked = True
      GroupIndex = 5
      Hint = #1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 74
      OnExecute = actTotalExecute
      OnUpdate = ShowHideSeriesActionUpdate
    end
    object actTotalMarks: TAction
      GroupIndex = 6
      Hint = #1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1090#1072
      ImageIndex = 68
      OnExecute = actTotalMarksExecute
      OnUpdate = actTotalMarksUpdate
    end
    object actDeficit: TAction
      Checked = True
      GroupIndex = 7
      Hint = #1044#1077#1092#1080#1094#1080#1090
      ImageIndex = 71
      OnExecute = actDeficitExecute
      OnUpdate = ShowHideSeriesActionUpdate
    end
    object actDeficitMarks: TAction
      GroupIndex = 8
      Hint = #1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1044#1077#1092#1080#1094#1080#1090#1072
      ImageIndex = 72
      OnExecute = actDeficitMarksExecute
      OnUpdate = actDeficitMarksUpdate
    end
    object actPassive: TAction
      Checked = True
      GroupIndex = 9
      Hint = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 73
      OnExecute = actPassiveExecute
      OnUpdate = ShowHideSeriesActionUpdate
    end
    object actPassiveMarks: TAction
      GroupIndex = 10
      Hint = #1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1085#1072' '#1055#1072#1089#1080#1074#1085#1072#1090#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 67
      OnExecute = actPassiveMarksExecute
      OnUpdate = actPassiveMarksUpdate
    end
    object actPrintQuantityChart: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintQuantityChartExecute
    end
    object actPrintPriceChart: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintPriceChartExecute
    end
    object actEstQuantitiesTable: TAction
      Caption = #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085'...'
      ImageIndex = 108
      OnExecute = actEstQuantitiesTableExecute
      OnUpdate = actEstQuantitiesTableUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 120
    Top = 256
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056'/'#1048#1044' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056'/'#1048#1044' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056'/'#1048#1044' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056'/'#1048#1044' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      Required = True
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParamsUSE_DEFAULT_ROUNDERS: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1042#1080#1076
      FieldName = 'USE_DEFAULT_ROUNDERS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsQUANTITY_ROUNDER: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1047#1072' '#1088#1072#1073'. '#1082'-'#1074#1086
      FieldName = 'QUANTITY_ROUNDER'
    end
    object pdsGridDataParamsACCOUNT_QUANTITY_ROUNDER: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1047#1072' '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FieldName = 'ACCOUNT_QUANTITY_ROUNDER'
    end
    object pdsGridDataParamsPRICE_ROUNDER: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077' - '#1047#1072' '#1042#1057'1'
      FieldName = 'PRICE_ROUNDER'
    end
    object pdsGridDataParamsDEFAULT_QUANTITY_ROUNDER: TAbmesFloatField
      FieldName = 'DEFAULT_QUANTITY_ROUNDER'
      ProviderFlags = []
    end
    object pdsGridDataParamsDEFAULT_ACCOUNT_QUANTITY_ROUNDER: TAbmesFloatField
      FieldName = 'DEFAULT_ACCOUNT_QUANTITY_ROUNDER'
      ProviderFlags = []
    end
    object pdsGridDataParamsDEFAULT_PRICE_ROUNDER: TAbmesFloatField
      FieldName = 'DEFAULT_PRICE_ROUNDER'
      ProviderFlags = []
    end
    object pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DATE_UNIT_COUNT'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      ConstraintErrorMessage = 'DATE_UNIT_CODE'
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      OnChange = pdsGridDataParamsBEGIN_DATEChange
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object pdsGridDataParamsBASE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1080' - '#1050#1098#1084' '#1076#1072#1090#1072
      FieldName = 'BASE_DATE'
      Required = True
    end
    object pdsGridDataParamsINCLUDE_PROJECT_QUANTITIES: TAbmesFloatField
      DisplayLabel = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1080' - '#1055#1088#1086#1077#1082#1090#1085#1080
      FieldName = 'INCLUDE_PROJECT_QUANTITIES'
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = '_PRODUCT_CODE'
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = '_PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_QUANTITY_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_QUANTITY_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'QUANTITY_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_ACCOUNT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_QUANTITY_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'ACCOUNT_QUANTITY_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_PRICE_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRICE_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'PRICE_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_DEFAULT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEFAULT_QUANTITY_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'DEFAULT_QUANTITY_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_DEFAULT_ACCOUNT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEFAULT_ACCOUNT_QUANTITY_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'DEFAULT_ACCOUNT_QUANTITY_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_DEFAULT_PRICE_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEFAULT_PRICE_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'DEFAULT_PRICE_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_REAL_QUANTITY_ROUNDER: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_QUANTITY_ROUNDER'
      Calculated = True
    end
    object pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACCOUNT_QUANTITY_ROUNDER'
      Calculated = True
    end
    object pdsGridDataParams_REAL_PRICE_ROUNDER: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_PRICE_ROUNDER'
      Calculated = True
    end
    object pdsGridDataParams_REAL_QUANTITY_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL_QUANTITY_ROUNDER_NAME'
      Size = 100
      Calculated = True
    end
    object pdsGridDataParams_REAL_ACCOUNT_QUANTITY_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACCOUNT_QUANTITY_ROUNDER_NAME'
      Size = 100
      Calculated = True
    end
    object pdsGridDataParams_REAL_PRICE_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL_PRICE_ROUNDER_NAME'
      Size = 100
      Calculated = True
    end
    object pdsGridDataParams_DATE_UNITS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNITS'
      Size = 50
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 152
    Top = 256
  end
  inherited dsData: TDataSource
    Left = 152
    Top = 192
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 120
    Top = 192
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
    Left = 208
    Top = 256
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
  object cdsRounders: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvRounders'
    Left = 240
    Top = 256
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
  object cdsEstQuantitiesTableParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 288
    object cdsEstQuantitiesTableParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsEstQuantitiesTableParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsEstQuantitiesTableParamsDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object cdsEstQuantitiesTableParamsDATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DATE_UNIT_COUNT'
    end
  end
end
