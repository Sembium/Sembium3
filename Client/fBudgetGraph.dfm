inherited fmBudgetGraph: TfmBudgetGraph
  ActiveControl = nil
  Caption = 'fmBudgetGraph'
  ClientHeight = 545
  ClientWidth = 785
  ExplicitWidth = 791
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 510
    Width = 785
    ExplicitTop = 510
    ExplicitWidth = 785
    inherited pnlOKCancel: TPanel
      Left = 517
      Visible = False
      ExplicitLeft = 517
    end
    inherited pnlClose: TPanel
      Left = 428
      Visible = True
      ExplicitLeft = 428
    end
    inherited pnlApply: TPanel
      Left = 696
      Visible = False
      ExplicitLeft = 696
    end
  end
  inherited pnlMain: TPanel
    Width = 785
    Height = 510
    ExplicitWidth = 785
    ExplicitHeight = 510
    inherited pnlGrid: TPanel
      Width = 769
      Height = 494
      ExplicitWidth = 769
      ExplicitHeight = 494
      inherited pnlNavigator: TPanel
        Left = 184
        Top = 144
        Width = 329
        Align = alNone
        Visible = False
        ExplicitLeft = 184
        ExplicitTop = 144
        ExplicitWidth = 329
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Left = 192
        Top = 176
        Width = 265
        Height = 129
        Align = alNone
        Visible = False
      end
      object pnlParams: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 65
        Align = alTop
        TabOrder = 2
        inline frDept: TfrDeptFieldEditFrame
          Left = 8
          Top = 8
          Width = 305
          Height = 49
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 8
          ExplicitWidth = 305
          inherited gbTreeNode: TGroupBox
            Width = 305
            Caption = ' '#1058#1055' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088' '
            ExplicitWidth = 305
            inherited pnlTreeNode: TPanel
              Width = 289
              ExplicitWidth = 289
              inherited pnlTreeNodeName: TPanel
                Width = 142
                ExplicitWidth = 142
                inherited edtTreeNodeName: TDBEdit
                  Width = 141
                  ExplicitWidth = 141
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 142
                ExplicitLeft = 142
              end
              inherited pnlRightButtons: TPanel
                Left = 253
                ExplicitLeft = 253
              end
            end
          end
        end
        object gbDateInterval: TGroupBox
          Left = 320
          Top = 8
          Width = 161
          Height = 49
          Caption = ' '#1042#1088#1084#1048#1085#1090' '
          TabOrder = 1
          inline frDateInterval: TfrDateIntervalFrame
            Left = 8
            Top = 16
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            ExplicitLeft = 8
            ExplicitTop = 16
          end
        end
        inline frBudgetProduct: TfrProductFieldEditFrame
          Left = 489
          Top = 8
          Width = 272
          Height = 49
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 2
          ExplicitLeft = 489
          ExplicitTop = 8
          ExplicitWidth = 272
          inherited gbTreeNode: TGroupBox
            Width = 272
            Caption = ' '#1051#1080#1084#1080#1090#1085#1072' '#1057#1090#1072#1090#1080#1103' '
            ExplicitWidth = 272
            inherited pnlTreeNode: TPanel
              Width = 256
              ExplicitWidth = 256
              inherited pnlTreeNodeName: TPanel
                Width = 86
                ExplicitWidth = 86
                inherited edtTreeNodeName: TDBEdit
                  Width = 85
                  ExplicitWidth = 85
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 86
                ExplicitLeft = 86
              end
              inherited pnlRightButtons: TPanel
                Left = 197
                ExplicitLeft = 197
              end
            end
          end
        end
      end
      object pnlChart: TPanel
        Left = 0
        Top = 65
        Width = 769
        Height = 429
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        object chrBudget: TDBChart
          Left = 0
          Top = 0
          Width = 769
          Height = 429
          AllowPanning = pmNone
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Border.Visible = True
          BottomWall.Color = clSilver
          Foot.Alignment = taRightJustify
          Foot.Font.Charset = DEFAULT_CHARSET
          Foot.Font.Color = clBlack
          Foot.Font.Name = 'Times New Roman'
          Foot.Font.Style = []
          Gradient.EndColor = 9502719
          Gradient.Visible = True
          LeftWall.Color = clSilver
          MarginBottom = 5
          MarginLeft = 2
          MarginRight = 5
          MarginTop = 5
          PrintProportional = False
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -15
          Title.Font.Name = 'Times New Roman'
          Title.Text.Strings = (
            '')
          Title.Visible = False
          BottomAxis.ExactDateTime = False
          BottomAxis.Increment = 1.000000000000000000
          BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
          BottomAxis.LabelsFont.Height = -13
          BottomAxis.LabelsFont.Name = 'Times New Roman'
          BottomAxis.MinorTickCount = 0
          BottomAxis.MinorTickLength = 0
          BottomAxis.MinorTicks.Visible = False
          BottomAxis.TickOnLabelsOnly = False
          DepthAxis.Automatic = False
          DepthAxis.AutomaticMaximum = False
          DepthAxis.AutomaticMinimum = False
          DepthAxis.Maximum = 0.500000000000000000
          DepthAxis.Minimum = -0.500000000000000000
          LeftAxis.ExactDateTime = False
          LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
          LeftAxis.LabelsFont.Name = 'Times New Roman'
          LeftAxis.LabelStyle = talValue
          LeftAxis.MinorTickCount = 0
          LeftAxis.MinorTickLength = 0
          LeftAxis.Title.Caption = #1089#1090#1086#1081#1085#1086#1089#1090' '#1074' %BaseCurrency%'
          LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
          LeftAxis.Title.Font.Height = -12
          LeftAxis.Title.Font.Name = 'Times New Roman'
          LeftAxis.TitleSize = 16
          Legend.Alignment = laBottom
          Legend.DividingLines.Width = 0
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Height = -12
          Legend.LeftPercent = 15
          Legend.MaxNumRows = 3
          Legend.Shadow.HorizSize = 2
          Legend.Shadow.VertSize = 2
          Legend.Symbol.WidthUnits = lcsPixels
          Legend.TopPercent = 65
          Legend.VertMargin = 20
          RightAxis.Automatic = False
          RightAxis.AutomaticMaximum = False
          RightAxis.AutomaticMinimum = False
          TopAxis.ExactDateTime = False
          View3D = False
          Zoom.Animated = True
          OnGetAxisLabel = chrBudgetGetAxisLabel
          Align = alClient
          TabOrder = 0
          DesignSize = (
            769
            429)
          object btnPrintChart: TSpeedButton
            Left = 1
            Top = 405
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
            Left = 744
            Top = 405
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
          object serPlanPrice: TBarSeries
            Depth = 0
            Marks.Callout.Brush.Color = clBlack
            Marks.Font.Height = -9
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = cdsGridData
            SeriesColor = 3126523
            Title = #1051#1080#1084#1080#1090' '#1085#1072' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
            ValueFormat = '#,###'
            BarWidthPercent = 90
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'DATE_UNIT_NO'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'PLAN_PRICE'
          end
          object serBOIOPlanPrice: TBarSeries
            Marks.Callout.Brush.Color = clBlack
            Marks.Font.Height = -9
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = cdsGridData
            SeriesColor = 10354687
            Title = #1055#1083#1072#1085' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
            ValueFormat = '#,###'
            BarWidthPercent = 90
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'DATE_UNIT_NO'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'BOIO_PLAN_PRICE'
          end
          object serRealPrice: TBarSeries
            Marks.Callout.Brush.Color = clBlack
            Marks.Font.Height = -9
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = cdsGridData
            SeriesColor = 10485636
            Title = #1054#1090#1095#1077#1090' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
            ValueFormat = '#,###'
            BarWidthPercent = 90
            Gradient.Direction = gdTopBottom
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'DATE_UNIT_NO'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'REAL_PRICE'
          end
          object serAvgPlanPrice: TLineSeries
            Marks.Callout.Brush.Color = clBlack
            Marks.Visible = False
            DataSource = cdsGridData
            SeriesColor = 173307
            Title = #1057#1088#1077#1076#1085#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1051#1080#1084#1080#1090
            LinePen.Width = 2
            Pointer.InflateMargins = True
            Pointer.Style = psDiamond
            Pointer.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'DATE_UNIT_NO'
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'AVG_PLAN_PRICE'
          end
          object serAvgBOIOPlanPrice: TLineSeries
            Marks.Callout.Brush.Color = clBlack
            Marks.Visible = False
            DataSource = cdsGridData
            SeriesColor = clYellow
            Title = #1057#1088#1077#1076#1085#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1055#1083#1072#1085
            LinePen.Width = 2
            Pointer.InflateMargins = True
            Pointer.Style = psDiamond
            Pointer.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'DATE_UNIT_NO'
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'AVG_BOIO_PLAN_PRICE'
          end
          object serAvgRealPrice: TLineSeries
            Marks.Callout.Brush.Color = clBlack
            Marks.Visible = False
            DataSource = cdsGridData
            SeriesColor = clGreen
            Title = #1057#1088#1077#1076#1085#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1054#1090#1095#1077#1090
            LinePen.Width = 2
            Pointer.InflateMargins = True
            Pointer.Style = psDiamond
            Pointer.Visible = True
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'DATE_UNIT_NO'
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'AVG_REAL_PRICE'
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    object cdsGridDataDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object cdsGridDataPERIOD_LABEL: TAbmesWideStringField
      FieldName = 'PERIOD_LABEL'
    end
    object cdsGridDataPERIOD_LABEL_EX: TAbmesWideStringField
      FieldName = 'PERIOD_LABEL_EX'
      Size = 40
    end
    object cdsGridDataPLAN_PRICE: TAbmesFloatField
      FieldName = 'PLAN_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataBOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'BOIO_PLAN_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataAVG_PLAN_PRICE: TAbmesFloatField
      FieldName = 'AVG_PLAN_PRICE'
    end
    object cdsGridDataAVG_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'AVG_BOIO_PLAN_PRICE'
    end
    object cdsGridDataAVG_REAL_PRICE: TAbmesFloatField
      FieldName = 'AVG_REAL_PRICE'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'fmBudgetGraph'
    end
    object actPrintChart: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintChartExecute
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
  end
end
