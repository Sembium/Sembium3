inherited fmEstPricesCompareGraph: TfmEstPricesCompareGraph
  ActiveControl = nil
  Caption = 'fmEstPricesCompareGraph'
  ClientHeight = 529
  ClientWidth = 795
  DesignSize = (
    795
    529)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 494
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
        TabOrder = 0
      end
      object btnNext: TBitBtn
        Left = 284
        Top = 3
        Width = 119
        Height = 23
        Action = actNext
        Caption = 'actNext'
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
        Color = 16052441
        TabOrder = 2
      end
      object pnlEndDate: TPanel
        Left = 418
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 16052441
        TabOrder = 3
      end
      object pnlBeginDateWeekFormat: TPanel
        Left = 74
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 16052441
        TabOrder = 4
      end
      object pnlEndDateWeekFormat: TPanel
        Left = 490
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 16052441
        TabOrder = 5
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 795
    Height = 494
    inherited pnlGrid: TPanel
      Width = 779
      Height = 478
      inherited pnlNavigator: TPanel
        Left = 200
        Top = 136
        Width = 313
        Align = alNone
        Visible = False
        inherited navData: TDBColorNavigator
          DataSource = nil
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Left = 208
        Top = 176
        Width = 249
        Height = 129
        Align = alNone
        Visible = False
      end
      object pnlFilter: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 62
        Align = alTop
        TabOrder = 2
        object lblProduct: TLabel
          Left = 10
          Top = 11
          Width = 106
          Height = 13
          Caption = '%ProductClassName%'
        end
        object lblPeriod: TLabel
          Left = 488
          Top = 37
          Width = 84
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1089#1090#1098#1087#1082#1080
        end
        object lblRounder: TLabel
          Left = 488
          Top = 12
          Width = 73
          Height = 13
          Caption = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077
        end
        object lblPartner: TLabel
          Left = 10
          Top = 36
          Width = 50
          Height = 13
          Caption = '%Partner%'
        end
        object btnFilter2: TBitBtn
          Left = 680
          Top = 20
          Width = 87
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
          ParentShowHint = False
          ShowHint = True
          Spacing = -1
          TabOrder = 5
        end
        object edtProductName: TDBEdit
          Left = 112
          Top = 8
          Width = 234
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16052441
          DataField = '_PRODUCT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtProductNo: TDBEdit
          Left = 347
          Top = 8
          Width = 90
          Height = 21
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16052441
          DataField = '_PRODUCT_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object tlbFilterProductDocs: TToolBar
          Left = 437
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
        object edtPartnerShortName: TDBEdit
          Left = 112
          Top = 33
          Width = 234
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16052441
          DataField = '_COMPANY_SHORT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 3
        end
        object edtPartnerNo: TDBEdit
          Left = 347
          Top = 33
          Width = 126
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16052441
          DataField = '_COMPANY_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 4
        end
        object edtRounder: TDBEdit
          Left = 583
          Top = 8
          Width = 82
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16052441
          Ctl3D = True
          DataField = '_USE_ROUNDER_NAME'
          DataSource = dsGridDataParams
          ParentCtl3D = False
          TabOrder = 6
        end
        object pnlTimeUnitCountAndName: TDBEdit
          Left = 583
          Top = 33
          Width = 82
          Height = 22
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 16052441
          Ctl3D = True
          DataField = '_DATE_UNITS'
          DataSource = dsGridDataParams
          ParentCtl3D = False
          TabOrder = 7
        end
      end
      object pnlTopSeparator: TPanel
        Left = 0
        Top = 62
        Width = 779
        Height = 5
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
      end
      object pcMain: TPageControl
        Left = 0
        Top = 67
        Width = 779
        Height = 411
        ActivePage = tsPrice
        Align = alClient
        HotTrack = True
        TabOrder = 4
        object tsPrice: TTabSheet
          BorderWidth = 3
          Caption = #1043#1088#1072#1092#1080#1082#1072
          ImageIndex = 1
          object ChartPrice: TDBChart
            Left = 0
            Top = 0
            Width = 765
            Height = 377
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Border.Visible = True
            BottomWall.Color = clSilver
            Foot.Alignment = taRightJustify
            Foot.Font.Color = clBlack
            Foot.Font.Name = 'Times New Roman'
            Foot.Font.Style = []
            Foot.Text.Strings = (
              #1082#1098#1084'  '#1076#1072#1090#1072':  ')
            Gradient.EndColor = 15983499
            Gradient.Visible = True
            LeftWall.Color = clSilver
            MarginBottom = 1
            MarginRight = 2
            MarginTop = 5
            PrintProportional = False
            Title.Font.Color = clBlack
            Title.Font.Height = -15
            Title.Font.Name = 'Times New Roman'
            Title.Text.Strings = (
              #1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090)
            Title.Visible = False
            BottomAxis.ExactDateTime = False
            BottomAxis.Increment = 1.000000000000000000
            BottomAxis.LabelsFont.Height = -13
            BottomAxis.LabelsFont.Name = 'Times New Roman'
            BottomAxis.MinorTickCount = 0
            BottomAxis.MinorTickLength = 0
            BottomAxis.MinorTicks.Visible = False
            BottomAxis.TickOnLabelsOnly = False
            LeftAxis.ExactDateTime = False
            LeftAxis.LabelsFont.Name = 'Times New Roman'
            LeftAxis.LabelStyle = talValue
            LeftAxis.MinorTickCount = 0
            LeftAxis.MinorTickLength = 0
            LeftAxis.Title.Caption = #1089#1090#1086#1081#1085#1086#1089#1090' '#1074' '#1093#1080#1083'. XXX'
            LeftAxis.Title.Font.Height = -12
            LeftAxis.Title.Font.Name = 'Times New Roman'
            LeftAxis.TitleSize = 16
            Legend.Alignment = laBottom
            Legend.Font.Height = -9
            Legend.Shadow.HorizSize = 2
            Legend.Shadow.VertSize = 2
            Legend.TopPos = 15
            Legend.VertMargin = 18
            TopAxis.ExactDateTime = False
            View3D = False
            Zoom.Animated = True
            OnAfterDraw = ChartPriceAfterDraw
            OnGetAxisLabel = ChartPriceGetAxisLabel
            Align = alClient
            TabOrder = 0
            DesignSize = (
              765
              377)
            object btnPrintChart: TSpeedButton
              Left = 1
              Top = 353
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
            object lblStartDate: TLabel
              Left = 2
              Top = 267
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
            object lblEndDate: TLabel
              Left = 2
              Top = 280
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
            object pnlTogglePeriodLabelsExtraInfo: TPanel
              Left = 740
              Top = 353
              Width = 23
              Height = 22
              HelpType = htKeyword
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
            object serFutureEstAcquireIV: TBarSeries
              BarBrush.Color = 16559719
              BarBrush.Style = bsDiagCross
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 16559719
              Title = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '#1042#1057'1 '#1074' '#1073#1098#1076#1077#1097#1077#1090#1086
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = -60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_EST_ACQUIRE_IV'
            end
            object serFutureEstAcquireVA: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 16559719
              Title = #1055#1077#1088#1089#1087#1077#1082#1090'. '#1048#1056'1 '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1074' '#1073#1098#1076#1077#1097#1077#1090#1086
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = -60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_EST_ACQUIRE_VA'
            end
            object serFutureEstLeaseVG: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 16701105
              Title = #1055#1077#1088#1089#1087#1077#1082#1090#1074#1080#1074#1072' '#1055#1057' '#1053#1072#1077#1084' '#1074' '#1073#1098#1076#1077#1097#1077#1090#1086
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = -60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_EST_LEASE_VG'
            end
            object serPastEstAcquireIV: TBarSeries
              BarBrush.Color = 13328280
              BarBrush.Style = bsDiagCross
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 13328280
              Title = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '#1042#1057'1 '#1074' '#1084#1080#1085#1072#1083#1086#1090#1086
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = -60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_PAST_EST_ACQUIRE_IV'
            end
            object serPastEstAcquireVA: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 13328280
              Title = #1055#1077#1088#1089#1087#1077#1082#1090'. '#1048#1056'1 '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1074' '#1084#1080#1085#1072#1083#1086#1090#1086
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = -60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_PAST_EST_ACQUIRE_VA'
            end
            object serPastEstLeaseVG: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 15318227
              Title = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '#1055#1057' '#1053#1072#1077#1084' '#1074' '#1084#1080#1085#1072#1083#1086#1090#1086
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = -60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_PAST_EST_LEASE_VG'
            end
            object serFuturePlanRemAcquireIV: TBarSeries
              BarBrush.Color = clYellow
              BarBrush.Style = bsDiagCross
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = clYellow
              Title = #1055#1083#1072#1085' '#1042#1057'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV'
            end
            object serFutureRealAcquireIV: TBarSeries
              BarBrush.Color = 4227072
              BarBrush.Style = bsDiagCross
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 4227072
              Title = #1054#1090#1095#1077#1090' '#1042#1057'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_IV'
            end
            object serFuturePlanRemAcquireVA: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = clYellow
              Title = #1055#1083#1072#1085' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1048#1056'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA'
            end
            object serFuturePlanRemLeaseVG: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 11862015
              Title = #1055#1083#1072#1085' '#1053#1072#1077#1084' '#1055#1057
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_PLAN_REM_LEASE_VG'
            end
            object serFutureRealAcquireVA: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 4227072
              Title = #1054#1090#1095#1077#1090' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1048#1056'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_VA'
            end
            object serFutureRealLeaseVG: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 8579214
              Title = #1054#1090#1095#1077#1090' '#1053#1072#1077#1084' '#1055#1057
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_FUTURE_REAL_LEASE_VG'
            end
            object serPastPlanRemAcquireIV: TBarSeries
              BarBrush.Color = clYellow
              BarBrush.Style = bsDiagCross
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = clYellow
              ShowInLegend = False
              Title = #1055#1083#1072#1085' '#1042#1057'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_IV'
            end
            object serPastRealAcquireIV: TBarSeries
              BarBrush.Color = 4227072
              BarBrush.Style = bsDiagCross
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 4227072
              ShowInLegend = False
              Title = #1054#1090#1095#1077#1090' '#1042#1057'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_PAST_REAL_ACQUIRE_IV'
            end
            object serPastPlanRemAcquireVA: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = clYellow
              ShowInLegend = False
              Title = #1055#1083#1072#1085' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1048#1056'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_VA'
            end
            object serPastPlanRemLeaseVG: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 11862015
              ShowInLegend = False
              Title = #1055#1083#1072#1085' '#1053#1072#1077#1084' '#1055#1057
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_STACKED_GRAPH_PAST_PLAN_REM_LEASE_VG'
            end
            object serPastRealAcquireVA: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 4227072
              ShowInLegend = False
              Title = #1054#1090#1095#1077#1090' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077' '#1048#1056'1'
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_PAST_REAL_ACQUIRE_VA'
            end
            object serPastRealLeaseVG: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 8579214
              ShowInLegend = False
              Title = #1054#1090#1095#1077#1090' '#1053#1072#1077#1084' '#1055#1057
              OnDblClick = BarSeriesDblClick
              OnGetMarkText = BarSeriesGetMarkText
              BarWidthPercent = 40
              MultiBar = mbNone
              OffsetPercent = 60
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_PAST_REAL_LEASE_VG'
            end
            object serZeroLine: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
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
            object serDensityWithoutLatePlan: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 12279296
              Title = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1055#1083#1098#1090#1085#1086#1089#1090' '#1079#1072' '#1075#1086#1076#1080#1085#1072#1090#1072
              AfterDrawValues = LineSeriesAfterDrawValues
              OnClick = LineSeriesClick
              OnGetMarkText = LineSeriesGetMarkText
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_DENSITY_WITHOUT_LATE_PLAN'
            end
            object serDensityWithLatePlan: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 12279296
              Title = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1055#1083#1098#1090#1085#1086#1089#1090' '#1079#1072' '#1075#1086#1076#1080#1085#1072#1090#1072
              AfterDrawValues = LineSeriesAfterDrawValues
              OnClick = LineSeriesClick
              OnGetMarkText = LineSeriesGetMarkText
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_DENSITY_WITH_LATE_PLAN'
            end
            object serValueAddedDensity: TLineSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = 57600
              Title = #1055#1083#1098#1090#1085#1086#1089#1090' '#1085#1072' '#1048#1056'1 '#1079#1072' '#1075#1086#1076#1080#1085#1072#1090#1072
              AfterDrawValues = LineSeriesAfterDrawValues
              OnClick = LineSeriesClick
              OnGetMarkText = LineSeriesGetMarkText
              Dark3D = False
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psDiamond
              Pointer.Visible = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'DATE_UNIT_NO'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = '_GRAPH_VALUE_ADDED_DENSITY'
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
            object lblBaseCurrencyValues: TLabel
              Left = 496
              Top = 2
              Width = 269
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = #1042#1089#1080#1095#1082#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1089#1072' '#1074' %s'
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
            end
          end
          object grdRegister: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 765
            Height = 353
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
            VTitleMargin = 7
            OnDblClick = grdRegisterDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdRegisterGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = '_DATE_UNIT_SHOW_NAME_FOR_REG'
                Footers = <>
                Title.Caption = 'DateUnitName'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1055#1057
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_ACQUIRE_IV'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_ACQUIRE_IV_PART'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1 %'
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_ACQUIRE_VA'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056'1'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1055#1057
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_IV'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1'
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_IV_PART'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1 %'
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_LEASE_VG'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VG'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1055#1057
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_IV'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_ACQUIRE_IV'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_IV_PART'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_ACQUIRE_IV'
                Footers = <>
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1 %'
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VA'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1'
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VA'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_ACQUIRE_VA'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1048#1056'1'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1054#1090#1095#1077#1090'|'#1053#1072#1077#1084
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1055#1057
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_ACQUIRE_IV'
                Footers = <>
                Tag = 1
                Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_ACQUIRE_IV_PART'
                Footers = <>
                Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077'|'#1042#1057'1 %'
                Visible = False
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_ACQUIRE_VA'
                Footers = <>
                Tag = 1
                Title.Caption = #1054#1090#1095#1077#1090'|'#1048#1056'1'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_EST_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_LEASE_VG'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1053#1072#1077#1084
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VG'
                Footer.FieldName = '_TOTAL_FUTURE_PLAN_REM_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1055#1083#1072#1085'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_LEASE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1054#1090#1095#1077#1090'|'#1053#1072#1077#1084
                Visible = False
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = '_REGISTER_REAL_ACQUIRE_VG'
                Footers = <>
                Tag = 1
                Title.Caption = #1054#1090#1095#1077#1090'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
                Visible = False
                Width = 111
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  object pnlButtons: TPanel [2]
    Left = 512
    Top = 72
    Width = 275
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 2
    object btnLatePlan: TSpeedButton
      Left = 67
      Top = 0
      Width = 147
      Height = 23
      Action = actLatePlan
      Align = alRight
      AllowAllUp = True
      GroupIndex = 3
      Down = True
      Flat = True
    end
    object btnInvestedValuePercent: TSpeedButton
      Left = 214
      Top = 0
      Width = 61
      Height = 23
      Action = actInvestedValuePercent
      Align = alRight
      AllowAllUp = True
      GroupIndex = 2
      Flat = True
    end
  end
  inherited dsGridData: TDataSource
    Left = 208
    Top = 272
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conParRelProducts
    Filtered = True
    FieldDefs = <
      item
        Name = 'PAST_EST_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_EST_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'PAST_PLAN_REM_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_PLAN_REM_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'PAST_REAL_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_REAL_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'PLAN_REM_BUDGET_PRICE'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EST_ACQUIRE_VG'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EST_LEASE_VG'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EST_ACQUIRE_IV'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_EST_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PLAN_REM_ACQUIRE_VG'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PLAN_REM_LEASE_VG'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PLAN_REM_ACQUIRE_IV'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PLAN_REM_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_REAL_ACQUIRE_VG'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_REAL_LEASE_VG'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_REAL_ACQUIRE_IV'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_REAL_ACQUIRE_VA'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'DATE_UNIT_FIRST_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATE_UNIT_LAST_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATE_UNIT_NO'
        DataType = ftFloat
      end
      item
        Name = 'YEAR_DATE_UNIT_NO'
        DataType = ftFloat
      end
      item
        Name = 'DATE_UNIT_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'PAST_EST_ACQUIRE_VG'
        DataType = ftFloat
      end
      item
        Name = 'PAST_EST_LEASE_VG'
        DataType = ftFloat
      end
      item
        Name = 'PAST_EST_ACQUIRE_IV'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_EST_ACQUIRE_VG'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_EST_LEASE_VG'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_EST_ACQUIRE_IV'
        DataType = ftFloat
      end
      item
        Name = 'PAST_PLAN_REM_ACQUIRE_VG'
        DataType = ftFloat
      end
      item
        Name = 'PAST_PLAN_REM_LEASE_VG'
        DataType = ftFloat
      end
      item
        Name = 'PAST_PLAN_REM_ACQUIRE_IV'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_PLAN_REM_ACQUIRE_VG'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_PLAN_REM_LEASE_VG'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_PLAN_REM_ACQUIRE_IV'
        DataType = ftFloat
      end
      item
        Name = 'PAST_REAL_ACQUIRE_VG'
        DataType = ftFloat
      end
      item
        Name = 'PAST_REAL_LEASE_VG'
        DataType = ftFloat
      end
      item
        Name = 'PAST_REAL_ACQUIRE_IV'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_REAL_ACQUIRE_VG'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_REAL_LEASE_VG'
        DataType = ftFloat
      end
      item
        Name = 'FUTURE_REAL_ACQUIRE_IV'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_BUDGET_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REAL_BUDGET_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DENSITY_WITH_LATE_PLAN'
        DataType = ftFloat
      end
      item
        Name = 'DENSITY_WITHOUT_LATE_PLAN'
        DataType = ftFloat
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
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INVESTED_VALUES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
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
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
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
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_PROD_ORDER_BASE_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALUES_ORIGIN'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'YEAR_FIRST_DATE_UNIT_DATE'
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
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvEstPricesCompareGraph'
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    AfterGetRecords = cdsGridDataAfterGetRecords
    Left = 176
    Top = 272
    object cdsGridDataDATE_UNIT_FIRST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_FIRST_DATE'
    end
    object cdsGridDataDATE_UNIT_LAST_DATE: TAbmesSQLTimeStampField
      FieldName = 'DATE_UNIT_LAST_DATE'
    end
    object cdsGridDataDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object cdsGridDataYEAR_DATE_UNIT_NO: TAbmesFloatField
      FieldName = 'YEAR_DATE_UNIT_NO'
    end
    object cdsGridDataDATE_UNIT_WORKDAYS: TAbmesFloatField
      FieldName = 'DATE_UNIT_WORKDAYS'
    end
    object cdsGridDataPAST_EST_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'PAST_EST_ACQUIRE_VG'
    end
    object cdsGridDataPAST_EST_LEASE_VG: TAbmesFloatField
      FieldName = 'PAST_EST_LEASE_VG'
    end
    object cdsGridDataPAST_EST_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'PAST_EST_ACQUIRE_IV'
    end
    object cdsGridDataPAST_EST_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'PAST_EST_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataFUTURE_EST_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'FUTURE_EST_ACQUIRE_VG'
    end
    object cdsGridDataFUTURE_EST_LEASE_VG: TAbmesFloatField
      FieldName = 'FUTURE_EST_LEASE_VG'
    end
    object cdsGridDataFUTURE_EST_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'FUTURE_EST_ACQUIRE_IV'
    end
    object cdsGridDataFUTURE_EST_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'FUTURE_EST_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataPAST_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'PAST_REAL_ACQUIRE_VG'
    end
    object cdsGridDataPAST_REAL_LEASE_VG: TAbmesFloatField
      FieldName = 'PAST_REAL_LEASE_VG'
    end
    object cdsGridDataPAST_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'PAST_REAL_ACQUIRE_IV'
    end
    object cdsGridDataPAST_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'PAST_REAL_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataFUTURE_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'FUTURE_REAL_ACQUIRE_VG'
    end
    object cdsGridDataFUTURE_REAL_LEASE_VG: TAbmesFloatField
      FieldName = 'FUTURE_REAL_LEASE_VG'
    end
    object cdsGridDataFUTURE_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'FUTURE_REAL_ACQUIRE_IV'
    end
    object cdsGridDataFUTURE_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'FUTURE_REAL_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataPAST_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_ACQUIRE_VG'
      ReadOnly = True
    end
    object cdsGridDataPAST_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_LEASE_VG'
      ReadOnly = True
    end
    object cdsGridDataPAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_ACQUIRE_IV'
      ReadOnly = True
    end
    object cdsGridDataPAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'PAST_PLAN_REM_ACQUIRE_VA'
    end
    object cdsGridDataFUTURE_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_ACQUIRE_VG'
      ReadOnly = True
    end
    object cdsGridDataFUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_LEASE_VG'
      ReadOnly = True
    end
    object cdsGridDataFUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_ACQUIRE_IV'
      ReadOnly = True
    end
    object cdsGridDataFUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'FUTURE_PLAN_REM_ACQUIRE_VA'
    end
    object cdsGridDataPLAN_BUDGET_PRICE: TAbmesFloatField
      FieldName = 'PLAN_BUDGET_PRICE'
    end
    object cdsGridDataREAL_BUDGET_PRICE: TAbmesFloatField
      FieldName = 'REAL_BUDGET_PRICE'
    end
    object cdsGridDataPLAN_REM_BUDGET_PRICE: TAbmesFloatField
      FieldName = 'PLAN_REM_BUDGET_PRICE'
      ReadOnly = True
    end
    object cdsGridDataDENSITY_WITH_LATE_PLAN: TAbmesFloatField
      FieldName = 'DENSITY_WITH_LATE_PLAN'
    end
    object cdsGridDataDENSITY_WITHOUT_LATE_PLAN: TAbmesFloatField
      FieldName = 'DENSITY_WITHOUT_LATE_PLAN'
    end
    object cdsGridDataTOTAL_EST_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'TOTAL_EST_ACQUIRE_VG'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_EST_LEASE_VG: TAbmesFloatField
      FieldName = 'TOTAL_EST_LEASE_VG'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_EST_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'TOTAL_EST_ACQUIRE_IV'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_EST_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'TOTAL_EST_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'TOTAL_PLAN_REM_ACQUIRE_VG'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldName = 'TOTAL_PLAN_REM_LEASE_VG'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'TOTAL_PLAN_REM_ACQUIRE_IV'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'TOTAL_PLAN_REM_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldName = 'TOTAL_REAL_ACQUIRE_VG'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_REAL_LEASE_VG: TAbmesFloatField
      FieldName = 'TOTAL_REAL_LEASE_VG'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldName = 'TOTAL_REAL_ACQUIRE_IV'
      ReadOnly = True
    end
    object cdsGridDataTOTAL_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldName = 'TOTAL_REAL_ACQUIRE_VA'
      ReadOnly = True
    end
    object cdsGridDataVALUE_ADDED_DENSITY: TAbmesFloatField
      FieldName = 'VALUE_ADDED_DENSITY'
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
    object cdsGridData_GRAPH_PAST_EST_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_EST_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_EST_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_EST_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_EST_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_EST_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_EST_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_EST_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_EST_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_EST_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_EST_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_EST_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_REAL_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_REAL_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_REAL_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_REAL_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_REAL_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_REAL_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_REAL_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_REAL_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_REAL_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_REAL_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_PLAN_REM_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_PLAN_REM_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_PLAN_REM_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_PAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_PAST_PLAN_REM_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_PLAN_REM_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_EST_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_EST_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_EST_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_EST_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_EST_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_EST_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_EST_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_EST_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_REAL_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_PLAN_REM_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_REAL_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_PAST_PLAN_REM_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_REAL_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_REAL_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_PLAN_REM_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_REAL_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STACKED_GRAPH_FUTURE_PLAN_REM_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_EST_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_EST_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_EST_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_EST_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_EST_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_EST_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_EST_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_EST_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_EST_ACQUIRE_IV_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_EST_ACQUIRE_IV_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_PLAN_REM_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_PLAN_REM_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_PLAN_REM_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_PLAN_REM_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_PLAN_REM_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_PLAN_REM_ACQUIRE_IV_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_PLAN_REM_ACQUIRE_IV_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_REAL_ACQUIRE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_REAL_ACQUIRE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_REAL_LEASE_VG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_REAL_LEASE_VG'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_REAL_ACQUIRE_IV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_REAL_ACQUIRE_IV'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_REAL_ACQUIRE_VA: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_REAL_ACQUIRE_VA'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REGISTER_REAL_ACQUIRE_IV_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REGISTER_REAL_ACQUIRE_IV_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData__GRAPH_VALUE_ADDED: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '__GRAPH_VALUE_ADDED'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_DENSITY_WITH_LATE_PLAN: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_DENSITY_WITH_LATE_PLAN'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_GRAPH_DENSITY_WITHOUT_LATE_PLAN: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_DENSITY_WITHOUT_LATE_PLAN'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData__GRAPH_PLAN_AND_REAL_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '__GRAPH_PLAN_AND_REAL_LABEL'
      Size = 50
      Calculated = True
    end
    object cdsGridData__GRAPH_EST_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '__GRAPH_EST_LABEL'
      Size = 50
      Calculated = True
    end
    object cdsGridData_VALUE_ADDED: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_VALUE_ADDED'
      Calculated = True
    end
    object cdsGridData_GRAPH_VALUE_ADDED_DENSITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_GRAPH_VALUE_ADDED_DENSITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_DATE_UNIT_SHOW_NAME_FOR_REG: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNIT_SHOW_NAME_FOR_REG'
      Size = 50
      Calculated = True
    end
  end
  inherited alActions: TActionList
    Left = 296
    Top = 240
    inherited actForm: TAction
      Caption = 'fmEstPricesCompareGraph'
    end
    inherited actFilter: TAction
      Caption = #1060#1080#1083#1090#1098#1088'...'
      Visible = True
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
    object actFilterProductDocs: TAction
      Caption = 'actFilterProductDocs'
      ImageIndex = 1
      OnExecute = actFilterProductDocsExecute
      OnUpdate = actFilterProductDocsUpdate
    end
    object actPrintChart: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintChartExecute
    end
    object actLatePlan: TAction
      Caption = '+ '#1047#1072#1082#1098#1089#1085#1103#1074#1072#1097#1080' %BorderRelTypeMultiAction%'
      Checked = True
      GroupIndex = 3
      OnExecute = actLatePlanExecute
    end
    object actInvestedValuePercent: TAction
      Caption = #1042#1057'1 %'
      GroupIndex = 2
      OnExecute = actInvestedValuePercentExecute
      OnUpdate = actInvestedValuePercentUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 176
    Top = 304
    object pdsGridDataParamsVALUES_ORIGIN: TAbmesFloatField
      FieldName = 'VALUES_ORIGIN'
    end
    object pdsGridDataParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087' %BorderRelTypeAction%'
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %ParRelProductAbbrev% - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %ParRelProductAbbrev% - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = '%ProductClassName%'
      FieldName = 'CHOSEN_PRODUCTS'
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = '%Partner%'
      FieldName = 'CHOSEN_COMPANIES'
      OnChange = pdsGridDataParamsCHOSEN_COMPANIESChange
      Size = 4000
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
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object pdsGridDataParamsUSE_DEFAULT_ROUNDER: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077
      FieldName = 'USE_DEFAULT_ROUNDER'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsROUNDER: TAbmesFloatField
      DisplayLabel = #1047#1072#1082#1088#1098#1075#1083#1103#1074#1072#1085#1077
      FieldName = 'ROUNDER'
    end
    object pdsGridDataParamsDEFAULT_ROUNDER: TAbmesFloatField
      FieldName = 'DEFAULT_ROUNDER'
      ProviderFlags = []
    end
    object pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsBORDER_PROD_ORDER_BASE_TYPE: TAbmesFloatField
      FieldName = 'BORDER_PROD_ORDER_BASE_TYPE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = '_PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = '_PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_DEFAULT_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEFAULT_ROUNDER_NAME'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_NAME'
      KeyFields = 'DEFAULT_ROUNDER'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_USE_ROUNDER: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_USE_ROUNDER'
      Calculated = True
    end
    object pdsGridDataParams_USE_ROUNDER_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_USE_ROUNDER_NAME'
      Size = 100
      Calculated = True
    end
    object pdsGridDataParams_OBTAINMENT_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OBTAINMENT_TYPE_NAME'
      LookupDataSet = cdsBorderDealTypes
      LookupKeyFields = 'OBTAINMENT_TYPE_CODE'
      LookupResultField = 'BORDER_DEAL_TYPE_ABBREV'
      KeyFields = 'OBTAINMENT_TYPE_CODE'
      OnGetText = pdsGridDataParams_OBTAINMENT_TYPE_NAMEGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_BORDER_PROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BORDER_PROD_ORDER_BASE_TYPE_ABBREV'
      LookupDataSet = cdsProductionOrderBaseTypes
      LookupKeyFields = 'PROD_ORDER_BASE_TYPE_CODE'
      LookupResultField = 'PROD_ORDER_BASE_TYPE_ABBREV'
      KeyFields = 'BORDER_PROD_ORDER_BASE_TYPE'
      OnGetText = pdsGridDataParams_BORDER_PROD_ORDER_BASE_TYPE_ABBREVGetText
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_DATE_UNITS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_UNITS'
      Size = 50
      Calculated = True
    end
    object pdsGridDataParams_COMPANY_CODE: TAbmesFloatField
      FieldName = '_COMPANY_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_COMPANY_SHORT_NAME: TAbmesWideStringField
      FieldName = '_COMPANY_SHORT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object pdsGridDataParams_COMPANY_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = '_COMPANY_NO'
      ProviderFlags = []
    end
    object pdsGridDataParamsBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 208
    Top = 304
  end
  inherited dsData: TDataSource
    Left = 208
    Top = 240
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 176
    Top = 240
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
    Left = 264
    Top = 272
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
    Left = 296
    Top = 272
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
  object cdsProductionOrderBaseTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conMfgReports
    Filtered = True
    Params = <>
    ProviderName = 'prvProductionOrderBaseTypes'
    OnFilterRecord = cdsProductionOrderBaseTypesFilterRecord
    Left = 360
    Top = 272
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_CODE'
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NO: TAbmesFloatField
      FieldName = 'PROD_ORDER_BASE_TYPE_NO'
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_NAME'
      Size = 100
    end
    object cdsProductionOrderBaseTypesPROD_ORDER_BASE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'PROD_ORDER_BASE_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsSaleExpGroupsParams: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 264
    Top = 304
    object cdsSaleExpGroupsParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleExpGroupsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsSaleExpGroupsParamsMIN_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_SALE_SHIPMENT_STATE_CODE'
    end
    object cdsSaleExpGroupsParamsMAX_SALE_SHIPMENT_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_SALE_SHIPMENT_STATE_CODE'
    end
    object cdsSaleExpGroupsParamsBEGIN_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_SHIPMENT_DATE'
    end
    object cdsSaleExpGroupsParamsEND_SHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_SHIPMENT_DATE'
    end
    object cdsSaleExpGroupsParamsCHOSEN_COMPANIES: TAbmesWideStringField
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object cdsSaleExpGroupsParamsBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
  end
  object cdsParRelProductsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 304
    object cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsParRelProductsParamsMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
  end
  object cdsDeliveriesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 304
    object cdsDeliveriesParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object cdsDeliveriesParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsDeliveriesParamsBEGIN_DELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DELIVERY_DATE'
    end
    object cdsDeliveriesParamsEND_DELIVERY_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DELIVERY_DATE'
    end
    object cdsDeliveriesParamsMIN_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_STATUS_CODE'
    end
    object cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_STATUS_CODE'
    end
    object cdsDeliveriesParamsCHOSEN_COMPANIES: TAbmesWideStringField
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
  end
  object cdsBorderDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBorderDealTypes'
    BeforeOpen = cdsBorderDealTypesBeforeOpen
    OnFilterRecord = cdsBorderDealTypesFilterRecord
    Left = 328
    Top = 272
    object cdsBorderDealTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsBorderDealTypesBORDER_DEAL_TYPE_ABBREV: TAbmesWideStringField
      DisplayWidth = 8
      FieldName = 'BORDER_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsBorderDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
  end
end
