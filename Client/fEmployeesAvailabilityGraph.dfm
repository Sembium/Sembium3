inherited fmEmployeesAvailabilityGraph: TfmEmployeesAvailabilityGraph
  Left = 304
  Top = 202
  ActiveControl = nil
  Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
  ClientHeight = 541
  ClientWidth = 849
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 506
    Width = 849
    inherited pnlOKCancel: TPanel
      Left = 581
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 492
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 760
      TabOrder = 3
      Visible = False
    end
    object pnlTime: TPanel
      Left = 6
      Top = 1
      Width = 475
      Height = 28
      Anchors = [akLeft, akBottom]
      TabOrder = 0
      object btnPrev: TBitBtn
        Left = 141
        Top = 3
        Width = 94
        Height = 23
        Action = actPrev
        Caption = 'actPrev'
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
        Spacing = 0
        TabOrder = 0
      end
      object btnNext: TBitBtn
        Left = 239
        Top = 3
        Width = 94
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
        Color = 13624559
        TabOrder = 2
      end
      object pnlEndDate: TPanel
        Left = 337
        Top = 2
        Width = 71
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 13624559
        TabOrder = 3
      end
      object pnlBeginDateWeekFormat: TPanel
        Left = 74
        Top = 2
        Width = 63
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 13624559
        TabOrder = 4
      end
      object pnlEndDateWeekFormat: TPanel
        Left = 409
        Top = 2
        Width = 63
        Height = 24
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = 13624559
        TabOrder = 5
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 849
    Height = 506
    inherited pnlGrid: TPanel
      Width = 833
      Height = 490
      inherited pnlNavigator: TPanel
        Top = 65
        Width = 790
        Align = alNone
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 69
        Width = 833
        Height = 421
        UseMultiTitle = True
        Visible = False
        VTitleMargin = 6
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 833
        Height = 61
        Align = alTop
        TabOrder = 2
        object lblIncludeDeptDescendants: TLabel
          Left = 8
          Top = 11
          Width = 177
          Height = 13
          Caption = #1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088#1072
        end
        object lblOccupationDept: TLabel
          Left = 8
          Top = 35
          Width = 110
          Height = 13
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1086#1085#1085#1072' '#1095#1072#1089#1090
        end
        object lblShift: TLabel
          Left = 640
          Top = 35
          Width = 33
          Height = 13
          Caption = #1057#1084#1103#1085#1072
        end
        object lblTimeUnits: TLabel
          Left = 536
          Top = 11
          Width = 84
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1089#1090#1098#1087#1082#1080
        end
        object edtIncludeDeptDescendants: TDBEdit
          Left = 192
          Top = 8
          Width = 321
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 13624559
          DataField = '_INCLUDE_DEPT_DESCENDANTS'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
        object edtShift: TDBEdit
          Left = 680
          Top = 32
          Width = 41
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 13624559
          DataField = '_SHIFT_IDENTIFIER'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 1
        end
        object btnFilter2: TBitBtn
          Left = 736
          Top = 21
          Width = 89
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
          TabOrder = 2
        end
        object edtTimeUnits: TDBEdit
          Left = 624
          Top = 8
          Width = 97
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 13624559
          DataField = '_TIME_UNITS'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 3
        end
        object edtOccupationDeptName: TDBEdit
          Left = 192
          Top = 32
          Width = 321
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 13624559
          DataField = '_OCCUPATION_DEPT_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 4
        end
        object edtOccupationDeptNo: TDBEdit
          Left = 514
          Top = 32
          Width = 89
          Height = 21
          TabStop = False
          BevelKind = bkTile
          BevelWidth = 2
          BorderStyle = bsNone
          Color = 13624559
          DataField = '_OCCUPATION_DEPT_NO'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 5
        end
      end
      object pcMain: TPageControl
        Left = 0
        Top = 69
        Width = 833
        Height = 421
        ActivePage = tsChart
        Align = alClient
        HotTrack = True
        TabOrder = 3
        object tsChart: TTabSheet
          Caption = #1043#1088#1072#1092#1080#1082#1072' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103#1090#1072' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103#1090#1072
          ImageIndex = 1
          object chartMain: TDBChart
            Left = 0
            Top = 0
            Width = 825
            Height = 393
            AllowPanning = pmNone
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Gradient.EndColor = 11919604
            Gradient.Visible = True
            MarginBottom = 3
            MarginLeft = 5
            PrintProportional = False
            Title.Text.Strings = (
              #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103)
            BottomAxis.Title.Caption = ' '
            DepthAxis.Automatic = False
            DepthAxis.AutomaticMaximum = False
            DepthAxis.AutomaticMinimum = False
            DepthAxis.Maximum = 0.530000000000000000
            DepthAxis.Minimum = -0.470000000000000000
            LeftAxis.Automatic = False
            LeftAxis.AutomaticMaximum = False
            LeftAxis.AutomaticMinimum = False
            LeftAxis.Title.Caption = #1095#1086#1074#1077#1082#1086#1076#1085#1080
            Legend.Alignment = laBottom
            Legend.Font.Height = -9
            Legend.Shadow.HorizSize = 2
            Legend.Shadow.VertSize = 2
            RightAxis.Automatic = False
            RightAxis.AutomaticMaximum = False
            RightAxis.AutomaticMinimum = False
            View3D = False
            OnBeforeDrawAxes = chartMainBeforeDrawAxes
            OnBeforeDrawSeries = chartMainBeforeDrawSeries
            OnGetAxisLabel = chartMainGetAxisLabel
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15658963
            TabOrder = 0
            DesignSize = (
              825
              393)
            object lblStartDate: TLabel
              Left = 8
              Top = 295
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
              Left = 8
              Top = 308
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
            object btnPrintChart: TSpeedButton
              Left = 2
              Top = 369
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
            object btnTogglePeriodLabelsExtraInfo: TSpeedButton
              Left = 800
              Top = 369
              Width = 23
              Height = 22
              Action = actTogglePeriodLabelsExtraInfo
              AllowAllUp = True
              Anchors = [akRight, akBottom]
              GroupIndex = 1
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
                0000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF0000000000FFFFFF00000000000000000000000000FFFFFF000000
                00007B7B7B0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
                00007B7B7B0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
                0000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
                00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
                FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
                0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              Transparent = False
            end
            object pnlShowSelfAbsencePercent: TPanel
              Left = 800
              Top = 1
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              Color = 6579455
              ParentBackground = False
              TabOrder = 0
              DesignSize = (
                23
                22)
              object btnShowSelfAbsencePercent: TSpeedButton
                Left = 0
                Top = 0
                Width = 23
                Height = 22
                Action = actShowSelfAbsencePercent
                AllowAllUp = True
                Anchors = [akTop, akRight]
                GroupIndex = 2
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
            end
            object pnlShowAbsencePercent: TPanel
              Left = 777
              Top = 1
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              Color = 5753853
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                23
                22)
              object btnShowAbsencePercent: TSpeedButton
                Left = 0
                Top = 0
                Width = 23
                Height = 22
                Action = actShowAbsencePercent
                AllowAllUp = True
                Anchors = [akTop, akRight]
                GroupIndex = 2
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
            end
            object pnlShowPresencePercent: TPanel
              Left = 731
              Top = 1
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              Color = clGreen
              ParentBackground = False
              TabOrder = 2
              DesignSize = (
                23
                22)
              object btnShowPresencePercent: TSpeedButton
                Left = 0
                Top = 0
                Width = 23
                Height = 22
                Action = actShowPresencePercent
                AllowAllUp = True
                Anchors = [akTop, akRight]
                GroupIndex = 2
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
            end
            object pnlShowPlanPresencePercent: TPanel
              Left = 754
              Top = 1
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              BevelOuter = bvNone
              Color = clYellow
              ParentBackground = False
              TabOrder = 3
              DesignSize = (
                23
                22)
              object btnShowPlanPresencePercent: TSpeedButton
                Left = 0
                Top = 0
                Width = 23
                Height = 22
                Action = actShowPlanPresencePercent
                AllowAllUp = True
                Anchors = [akTop, akRight]
                GroupIndex = 2
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Microsoft Sans Serif'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
            end
            object serPresence: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Font.Height = -9
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = clGreen
              Title = #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103
              OnDblClick = serPresenceDblClick
              BarWidthPercent = 60
              Gradient.Direction = gdTopBottom
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'PRESENCE_DAYS'
            end
            object serPlannedPresence: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.Font.Height = -9
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = clYellow
              Title = #1055#1083#1072#1085#1080#1088#1072#1085#1080' '#1087#1088#1080#1089#1098#1089#1090#1074#1080#1103
              OnDblClick = serPlannedPresenceDblClick
              BarWidthPercent = 60
              Gradient.Direction = gdTopBottom
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'PLAN_PRESENCE_DAYS'
            end
            object serAbsence: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = cdsGridData
              SeriesColor = 5753853
              Title = #1054#1089#1085#1086#1074#1072#1090#1077#1083#1085#1080' '#1086#1090#1089#1098#1089#1090#1074#1080#1103
              XLabelsSource = 'THE_DATE'
              OnDblClick = serAbsenceDblClick
              BarWidthPercent = 60
              Gradient.Direction = gdTopBottom
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_OK_ABSENCE_DAYS'
            end
            object serSelfAbsence: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.Font.Height = -9
              Marks.Style = smsValue
              Marks.Visible = False
              DataSource = cdsGridData
              Title = #1057#1072#1084#1086#1086#1090#1083#1098#1095#1082#1080
              XLabelsSource = 'THE_DATE'
              OnDblClick = serSelfAbsenceDblClick
              BarWidthPercent = 60
              Gradient.Direction = gdTopBottom
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = 'SELF_ABSENCE_DAYS'
            end
            object serAlwaysZero: TBarSeries
              Marks.Arrow.Visible = True
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = True
              Marks.Callout.Length = 2
              Marks.Font.Height = -9
              Marks.Visible = True
              DataSource = cdsGridData
              SeriesColor = clBlack
              ShowInLegend = False
              OnGetMarkText = serAlwaysZeroGetMarkText
              BarWidthPercent = 60
              Gradient.Direction = gdTopBottom
              MultiBar = mbStacked
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'THE_DATE'
              YValues.Name = 'Bar'
              YValues.Order = loNone
              YValues.ValueSource = '_ALWAYS_ZERO'
            end
          end
        end
        object tsGrid: TTabSheet
          Caption = #1058#1072#1073#1083#1080#1094#1072' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103#1090#1072' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103#1090#1072
          object grdData2: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 825
            Height = 369
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
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdData2GetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'THE_DATE'
                Footers = <>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'NESSESARY_PRESENCE_DAYS'
                Footers = <>
                Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103'|'#1063#1076#1085
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'PRESENCE_DAYS'
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' (x)|'#1063#1076#1085' '#1054#1090#1095#1077#1090
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_PRESENCE_DAYS'
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' (x)|'#1063#1076#1085' '#1055#1083#1072#1085
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = '_PLAN_PLUS_REAL_PRESENCE_DAYS_P'
                Footers = <>
                Title.Caption = #1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' (x)|%'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'VACATION_DAYS'
                Footers = <>
                Title.Caption = #1054#1090#1087#1091#1089#1082' (O)|'#1063#1076#1085
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = '_VACATION_DAYS_P'
                Footers = <>
                Title.Caption = #1054#1090#1087#1091#1089#1082' (O)|%'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'MATERNITY_DAYS'
                Footers = <>
                Title.Caption = #1052#1072#1081#1095#1080#1085#1089#1090#1074#1086' (M)|'#1063#1076#1085
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = '_MATERNITY_DAYS_P'
                Footers = <>
                Title.Caption = #1052#1072#1081#1095#1080#1085#1089#1090#1074#1086' (M)|%'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'SICKNESS_DAYS'
                Footers = <>
                Title.Caption = #1041#1086#1083#1085#1080#1095#1085#1080' ('#1041')|'#1063#1076#1085
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = '_SICKNESS_DAYS_P'
                Footers = <>
                Title.Caption = #1041#1086#1083#1085#1080#1095#1085#1080' ('#1041')|%'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'STATE_DAYS'
                Footers = <>
                Title.Caption = #1044#1098#1088#1078#1072#1074#1085#1080' ('#1044')|'#1063#1076#1085
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = '_STATE_DAYS_P'
                Footers = <>
                Title.Caption = #1044#1098#1088#1078#1072#1074#1085#1080' ('#1044')|%'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'ADMINISTRATIVE_DAYS'
                Footers = <>
                Title.Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072'- '#1090#1080#1074#1085#1080' ('#1040')|'#1063#1076#1085
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = '_ADMINISTRATIVE_DAYS_P'
                Footers = <>
                Title.Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072'- '#1090#1080#1074#1085#1080' ('#1040')|%'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'SELF_ABSENCE_DAYS'
                Footers = <>
                Title.Caption = #1057#1072#1084#1086#1086#1090#1083#1098#1095#1082#1072' (?)|'#1063#1076#1085
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = '_SELF_ABSENCE_DAYS_P'
                Footers = <>
                Title.Caption = #1057#1072#1084#1086#1086#1090#1083#1098#1095#1082#1072' (?)|%'
                Width = 27
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlGridTop: TPanel
            Left = 0
            Top = 0
            Width = 825
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object btnEmployeesAvailability: TSpeedButton
              Left = 562
              Top = 0
              Width = 263
              Height = 24
              Action = actEmployeesAvailability
              Flat = True
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00F8C4
                B000F8C4B000F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5B100F8C5
                B100F8C4B000FF00FF0080FFF20080FFF200FF00FF00F495FF00F6AB9000F6B1
                9700F6B49B00F6B69D00F6B59C00F6B59C00F6B69D00F6B59C00F6B59C00F6B6
                9D00F6B39A00F6AB9000FF00FF00FF00FF00FF00FF00FF00FF00F3957100F49E
                7E00F5A48700F5A78900F5A68900F5A68900F5A78900F5A68900F5A68900F5A7
                8900F4A28400F394710080FFF20080FFF200FF00FF00F495FF0093FF8A00DA8F
                7300F3957200F4957200F3957200F3957200F4957200F3957200F3957200F495
                7200DA8F7300FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
                FF00FF00FF00FF00FF00BB9D9300BAABAA00BAABAA00BB9D9300FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
                8A00FF00FF0099B8C60083BED5008AD5EE0098D9F0008FC1D60099B8C60080FF
                F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
                8A00FF00FF0077C9EC0089D8EE0092DAEF009CDDF100A5E0F20081D0ED0080FF
                F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
                FF0090B4C60077C8EB0089D7EE0092DAEF009CDDF100A5E0F20083D4EE0090B4
                C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
                8A007B8890007A94A0007F98A0008198A1008499A100869AA1007C95A0007B88
                900080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
                8A00969899006F75790073797D00747A7E00747B7F0073797D006F7579009698
                990080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
                FF00FF00FF00777C80006A6F73006D7276006D7276006A6F7300777C8000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
                8A00FF00FF0093FF8A0093979A006F7478006F74780093979A00FF00FF0080FF
                F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
                8A00FF00FF0093FF8A0093FF8A00FF00FF00FFBE9F00FFBE9F00FF00FF0080FF
                F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0093FF8A0093FF
                8A00FF00FF0093FF8A0093FF8A00FF00FF00FFBE9F00FFBE9F00FF00FF0080FF
                F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF0093FF8A0093FF
                8A00FF00FF0093FF8A0093FF8A00FF00FF00FFBE9F00FFBE9F00FF00FF0080FF
                F20080FFF200FF00FF0080FFF20080FFF200FF00FF00F495FF00}
            end
            object navGrid: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsGridData
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
              BeforeAction = navDataBeforeAction
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
                Caption = 'sepBeforeExcelExportButton'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object tbExcelExport2: TToolButton
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
          end
        end
      end
      object pnlTopFill: TPanel
        Left = 0
        Top = 61
        Width = 833
        Height = 8
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 240
    Top = 288
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conEmployeeAvailability
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
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '10'
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_DEPT_DESCENDANTS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_EXTERNAL'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeesAvailabilityByDateUnits'
    OnCalcFields = cdsGridDataCalcFields
    Left = 208
    Top = 288
    object cdsGridDataTHE_DATE: TAbmesSQLTimeStampField
      Alignment = taCenter
      FieldName = 'THE_DATE'
      OnGetText = cdsGridDataTHE_DATEGetText
    end
    object cdsGridDataWORKDAYS: TAbmesFloatField
      FieldName = 'WORKDAYS'
    end
    object cdsGridDataNESSESARY_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'NESSESARY_PRESENCE_DAYS'
      OnGetText = cdsGridDataNESSESARY_PRESENCE_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPLAN_PRESENCE_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PRESENCE_DAYS'
      OnGetText = cdsGridDataPLAN_PRESENCE_DAYSGetText
    end
    object cdsGridDataPRESENCE_DAYS: TAbmesFloatField
      FieldName = 'PRESENCE_DAYS'
      OnGetText = cdsGridDataPRESENCE_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSELF_ABSENCE_DAYS: TAbmesFloatField
      FieldName = 'SELF_ABSENCE_DAYS'
      OnGetText = cdsGridDataSELF_ABSENCE_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataVACATION_DAYS: TAbmesFloatField
      FieldName = 'VACATION_DAYS'
      OnGetText = cdsGridDataVACATION_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMATERNITY_DAYS: TAbmesFloatField
      FieldName = 'MATERNITY_DAYS'
      OnGetText = cdsGridDataMATERNITY_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSICKNESS_DAYS: TAbmesFloatField
      FieldName = 'SICKNESS_DAYS'
      OnGetText = cdsGridDataSICKNESS_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataSTATE_DAYS: TAbmesFloatField
      FieldName = 'STATE_DAYS'
      OnGetText = cdsGridDataSTATE_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataADMINISTRATIVE_DAYS: TAbmesFloatField
      FieldName = 'ADMINISTRATIVE_DAYS'
      OnGetText = cdsGridDataADMINISTRATIVE_DAYSGetText
      DisplayFormat = ',0'
    end
    object cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_PLUS_REAL_PRESENCE_DAYS'
      Calculated = True
    end
    object cdsGridData_OK_ABSENCE_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OK_ABSENCE_DAYS'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_PRESENCE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRESENCE_DAYS_P'
      OnGetText = cdsGridData_PRESENCE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_PLAN_PRESENCE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_PRESENCE_DAYS_P'
      OnGetText = cdsGridData_PLAN_PRESENCE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_PLUS_REAL_PRESENCE_DAYS_P'
      OnGetText = cdsGridData_PLAN_PLUS_REAL_PRESENCE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SELF_ABSENCE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SELF_ABSENCE_DAYS_P'
      OnGetText = cdsGridData_SELF_ABSENCE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_VACATION_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_VACATION_DAYS_P'
      OnGetText = cdsGridData_VACATION_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_MATERNITY_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_MATERNITY_DAYS_P'
      OnGetText = cdsGridData_MATERNITY_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_SICKNESS_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SICKNESS_DAYS_P'
      OnGetText = cdsGridData_SICKNESS_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_STATE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STATE_DAYS_P'
      OnGetText = cdsGridData_STATE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_ADMINISTRATIVE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ADMINISTRATIVE_DAYS_P'
      OnGetText = cdsGridData_ADMINISTRATIVE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_LABEL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_LABEL'
      Calculated = True
    end
    object cdsGridData_OK_ABSENCE_DAYS_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_OK_ABSENCE_DAYS_P'
      OnGetText = cdsGridData_OK_ABSENCE_DAYS_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_ALWAYS_ZERO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ALWAYS_ZERO'
      Calculated = True
    end
    object cdsGridData_MAX_DAYS: TAggregateField
      FieldName = '_MAX_DAYS'
      Active = True
      Expression = 'Max(NESSESARY_PRESENCE_DAYS)'
    end
  end
  inherited alActions: TActionList
    Left = 304
    Top = 272
    inherited actForm: TAction
      Caption = #1042#1048#1052' - '#1043#1088#1072#1092#1080#1095#1077#1085' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083#1080
    end
    inherited actFilter: TAction
      Caption = #1060#1080#1083#1090#1098#1088'...'
      Visible = True
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
      Caption = 'actPrev'
      ImageIndex = 36
      OnExecute = actPrevExecute
      OnUpdate = actPrevUpdate
    end
    object actNext: TAction
      Caption = 'actNext'
      ImageIndex = 37
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actShowSelfAbsencePercent: TAction
      Caption = '%'
      GroupIndex = 2
      Hint = #1055#1086#1082#1072#1079#1074#1072' % '#1057#1072#1084#1086#1086#1090#1083#1098#1095#1082#1080
      OnExecute = actShowSelfAbsencePercentExecute
    end
    object actShowAbsencePercent: TAction
      Caption = '%'
      GroupIndex = 2
      Hint = #1055#1086#1082#1072#1079#1074#1072' % '#1054#1089#1085#1086#1074#1072#1090#1077#1083#1085#1080' '#1086#1090#1089#1098#1089#1090#1074#1080#1103
      OnExecute = actShowAbsencePercentExecute
    end
    object actShowPresencePercent: TAction
      Caption = '%'
      GroupIndex = 2
      Hint = #1055#1086#1082#1072#1079#1074#1072' % '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103
      OnExecute = actShowPresencePercentExecute
    end
    object actShowPlanPresencePercent: TAction
      Caption = '%'
      GroupIndex = 2
      Hint = #1055#1086#1082#1072#1079#1074#1072' % '#1055#1083#1072#1085#1086#1074#1080' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103
      OnExecute = actShowPlanPresencePercentExecute
    end
    object actEmployeesAvailability: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103
      ImageIndex = 134
      OnExecute = actEmployeesAvailabilityExecute
      OnUpdate = actEmployeesAvailabilityUpdate
    end
    object actPrintChart: TAction
      Hint = #1055#1077#1095#1072#1090' '#1085#1072' '#1075#1088#1072#1092#1080#1082#1072#1090#1072
      ImageIndex = 2
      OnExecute = actPrintChartExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 208
    Top = 320
    object pdsGridDataParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1080#1085' '#1085#1072' '#1080#1079#1074#1077#1078#1076#1072#1085#1077
      FieldName = 'INCLUDE_DEPT_DESCENDANTS'
    end
    object pdsGridDataParamsOCCUPATION_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086
      FieldName = 'OCCUPATION_DEPT_CODE'
      OnChange = pdsGridDataParamsOCCUPATION_DEPT_CODEChange
    end
    object pdsGridDataParamsSHIFT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1084#1103#1085#1072
      FieldName = 'SHIFT_CODE'
    end
    object pdsGridDataParamsIS_EXTERNAL: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1074' '#1048#1055
      FieldName = 'IS_EXTERNAL'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_SHIFT_IDENTIFIER'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_IDENTIFIER'
      KeyFields = 'SHIFT_CODE'
      Size = 10
      Lookup = True
    end
    object pdsGridDataParams_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_END_DATE'
      Calculated = True
    end
    object pdsGridDataParams_INCLUDE_DEPT_DESCENDANTS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_INCLUDE_DEPT_DESCENDANTS'
      Size = 100
      Calculated = True
    end
    object pdsGridDataParams_TIME_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TIME_UNIT_NAME'
      Calculated = True
    end
    object pdsGridDataParams_OCCUPATION_DEPT_NO: TAbmesWideStringField
      FieldName = '_OCCUPATION_DEPT_NO'
    end
    object pdsGridDataParams_TIME_UNITS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TIME_UNITS'
      Calculated = True
    end
    object pdsGridDataParams_OCCUPATION_DEPT_NAME: TAbmesWideStringField
      FieldName = '_OCCUPATION_DEPT_NAME'
      Size = 100
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 240
    Top = 320
  end
  inherited dsData: TDataSource
    Left = 240
    Top = 256
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 208
    Top = 256
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    Params = <>
    ProviderName = 'prvShifts'
    Left = 304
    Top = 304
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
  end
  object cdsEmployeesAvailabilityParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 304
    object cdsEmployeesAvailabilityParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object cdsEmployeesAvailabilityParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsEmployeesAvailabilityParamsOCCUPATION_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077' - '#1054#1089#1085#1086#1074#1085#1086
      FieldName = 'OCCUPATION_DEPT_CODE'
    end
    object cdsEmployeesAvailabilityParamsINCLUDE_DEPT_DESCENDANTS: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'INCLUDE_DEPT_DESCENDANTS'
    end
    object cdsEmployeesAvailabilityParamsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsEmployeesAvailabilityParamsIS_EXTERNAL: TAbmesFloatField
      FieldName = 'IS_EXTERNAL'
    end
  end
end
