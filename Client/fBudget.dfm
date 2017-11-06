inherited fmBudget: TfmBudget
  Left = 252
  Top = 187
  BorderStyle = bsSizeable
  Caption = '%BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
  ClientHeight = 597
  ClientWidth = 968
  Constraints.MinHeight = 633
  Constraints.MinWidth = 984
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 562
    Width = 968
    object lblBaseCurrency: TLabel [0]
      Left = 9
      Top = 8
      Width = 200
      Height = 13
      Caption = #1042#1089#1080#1095#1082#1080' '#1089#1090#1086#1081#1085#1086#1089#1090#1080' '#1089#1072' '#1074' %BaseCurrency%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    inherited pnlOKCancel: TPanel
      Left = 700
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 611
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 879
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 968
    Height = 562
    inherited sptDetail: TSplitter
      Top = 325
      Width = 952
    end
    inherited pnlDetailGrid: TPanel
      Top = 328
      Width = 952
      Height = 226
      inherited pnlDetailNavigator: TPanel
        Width = 806
        Align = alNone
        Visible = False
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Top = 0
        Width = 952
        Height = 226
        Visible = False
      end
      object pcDetailViews: TPageControl
        Left = 0
        Top = 0
        Width = 952
        Height = 226
        ActivePage = tsDeptBudgetView
        Align = alClient
        HotTrack = True
        TabOrder = 2
        object tsDeptBudgetView: TTabSheet
          Caption = #1057#1080#1085#1090#1077#1090#1080#1095#1077#1085' '#1088#1072#1079#1088#1077#1079
          object pnlDeptBudgetViewNavigator: TPanel
            Left = 0
            Top = 0
            Width = 944
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navDeptBudgetView: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsDetail
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbDeptBudgetView: TToolBar
              Left = 96
              Top = 0
              Width = 88
              Height = 24
              Align = alNone
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Caption = 'tlbTopGridButtons'
              Images = dmMain.ilActions
              TabOrder = 1
              object sepBeforeExcelExportDeptBudgetView: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeExcelExportButton'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object btnExcelExportDeptBudgetView: TToolButton
                Left = 8
                Top = 0
                Action = actExcelExportDeptBudgetView
                ParentShowHint = False
                ShowHint = True
              end
              object btnPrintDeptBudgetView: TToolButton
                Left = 32
                Top = 0
                Action = actPrintDeptBudgetView
                ParentShowHint = False
                ShowHint = True
              end
              object sepBudgetGraph: TToolButton
                Left = 56
                Top = 0
                Width = 8
                ImageIndex = 3
                Style = tbsSeparator
              end
              object btnShowBudgetGraph: TToolButton
                Left = 64
                Top = 0
                Action = actShowBudgetGraph
                ParentShowHint = False
                ShowHint = True
              end
            end
            object btnOneLevelUp: TBitBtn
              Left = 200
              Top = 1
              Width = 33
              Height = 21
              Action = actOneLevelUp
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
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000000000000000000000000000C6C60000C6C60000C6C600000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
                0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C6
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000C6C60000C6C60000C6C600000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C6000000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object btnOneLevelDown: TBitBtn
              Left = 240
              Top = 1
              Width = 33
              Height = 21
              Action = actOneLevelDown
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
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
                0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000000000000000000000000000BDBD0000BDBD0000BDBD00000000
                0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD00000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
            end
          end
          object grdDeptBudgetView: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 944
            Height = 174
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 9
            OnDblClick = grdDeptBudgetViewDblClick
            OnGetCellParams = grdDeptBudgetViewGetCellParams
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsBudgetOrderItems: TTabSheet
          Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1085' '#1088#1072#1079#1088#1077#1079
          ImageIndex = 1
          object pnlBudgetOrderItemsNavigator: TPanel
            Left = 0
            Top = 0
            Width = 945
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navBudgetOrderItems: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 96
              Height = 24
              DataSource = dsDetail2
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbBudgetOrderItems: TToolBar
              Left = 96
              Top = 0
              Width = 56
              Height = 24
              Align = alNone
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Images = dmMain.ilActions
              TabOrder = 1
              object sepBeforeExcelExportBudgetOrderItems: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeExcelExportButton'
                ImageIndex = 3
                Style = tbsSeparator
              end
              object btnExcelExportBudgetOrderItems: TToolButton
                Left = 8
                Top = 0
                Action = actExcelExportBudgetOrderItems
              end
              object btnPrintBudgetOrderItems: TToolButton
                Left = 32
                Top = 0
                Action = actPrintBudgetOrderItems
              end
            end
          end
          object grdBudgetOrderItems: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 945
            Height = 174
            Align = alClient
            ColumnDefValues.ToolTips = True
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail2
            Flat = False
            FooterColor = 15258325
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
            VTitleMargin = 5
            OnDblClick = grdBudgetOrderItemsDblClick
            OnGetCellParams = grdBudgetOrderItemsGetCellParams
            OnGetFooterParams = grdBudgetOrderItemsGetFooterParams
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    inherited pnlGrid: TPanel
      Top = 81
      Width = 952
      Height = 244
      inherited pnlNavigator: TPanel
        Width = 952
        Font.Color = 10485760
        ParentFont = False
        DesignSize = (
          952
          24)
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
        object tlbDocButton: TToolBar
          Left = 176
          Top = 0
          Width = 85
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeDocumentation: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeDocumentation'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblDocumentation: TLabel
            Left = 8
            Top = 0
            Width = 41
            Height = 24
            Caption = ' '#1057#1090#1072#1090#1080#1103' '
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object btnDocumentation: TToolButton
            Left = 49
            Top = 0
            Action = actDocumentation
          end
        end
        object tlbMaster: TToolBar
          Left = 742
          Top = 4
          Width = 208
          Height = 20
          Align = alNone
          Anchors = [akTop, akRight]
          ButtonHeight = 20
          Caption = 'tlbView'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object btnMasterBOIOPlanPrice: TSpeedButton
            Tag = 4
            Left = 0
            Top = 0
            Width = 32
            Height = 20
            Hint = #1055#1083#1072#1085
            GroupIndex = 2
            Down = True
            Caption = #1055
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object btnMasterBOIOPlanPriceDeviation: TSpeedButton
            Tag = 6
            Left = 32
            Top = 0
            Width = 32
            Height = 20
            Hint = #1054#1082#1090#1083#1086#1085#1077#1085#1080#1077' '#1055#1083#1072#1085' - '#1051#1080#1084#1080#1090
            GroupIndex = 2
            Caption = #1055'-'#1051
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object sepMasterRealPriceDeviation: TToolButton
            Left = 64
            Top = 0
            Width = 8
            Caption = 'sepRealPriceDeviation'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnMasterRealPrice: TSpeedButton
            Tag = 8
            Left = 72
            Top = 0
            Width = 32
            Height = 20
            Hint = #1054#1090#1095#1077#1090
            GroupIndex = 3
            Down = True
            Caption = #1054
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object btnMasterRealToPlanDeviation: TSpeedButton
            Tag = 10
            Left = 104
            Top = 0
            Width = 32
            Height = 20
            Hint = #1054#1082#1090#1083#1086#1085#1077#1085#1080#1077' '#1054#1090#1095#1077#1090' - '#1051#1080#1084#1080#1090
            GroupIndex = 3
            Caption = #1054'-'#1051
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object btnMasterRealToBOIOPlanDeviation: TSpeedButton
            Tag = 12
            Left = 136
            Top = 0
            Width = 32
            Height = 20
            Hint = #1054#1082#1090#1083#1086#1085#1077#1085#1080#1077' '#1054#1090#1095#1077#1090' - '#1055#1083#1072#1085
            GroupIndex = 3
            Caption = #1054'-'#1055
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object sepShowDeviationPercents: TToolButton
            Left = 168
            Top = 0
            Width = 8
            ImageIndex = 4
            Style = tbsSeparator
          end
          object btnShowDeviationPercents: TSpeedButton
            Tag = 2
            Left = 176
            Top = 0
            Width = 32
            Height = 20
            Hint = #1054#1082#1090#1083#1086#1085#1077#1085#1080#1077' '#1055#1088#1086#1094#1077#1085#1090#1080'/'#1057#1090#1086#1081#1085#1086#1089#1090
            AllowAllUp = True
            GroupIndex = 4
            Caption = '%'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 952
        Height = 220
        Columns = <
          item
            EditButtons = <>
            FieldName = '_BUDGET_CLASS_TREE_DISPLAY_NAME'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PLAN_PRICE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_LOCAL_PLAN_PRICE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_DEVIATION'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_LOCAL_DEVIATION'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'AVG_DEVIATION_PERCENT'
            Footers = <>
          end>
      end
      object grdBudgetClasses: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 952
        Height = 220
        Align = alClient
        AutoFitColWidths = True
        BorderStyle = bsNone
        DataGrouping.GroupLevels = <>
        DataSource = dsGridData
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 25
        OnDrawColumnCell = grdBudgetClassesDrawColumnCell
        OnGetCellParams = grdBudgetClassesGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = '_BUDGET_CLASS_TREE_DISPLAY_NAME'
            Footers = <>
            Title.Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
            Width = 616
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_PLAN_PRICE'
            Footers = <>
            Title.Caption = #1051#1080#1084#1080#1090
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_BOIO_PLAN_PRICE'
            Footers = <>
            Tag = 5
            Title.Caption = #1055#1083#1072#1085
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV'
            Footers = <>
            Tag = 702
            Title.Caption = #1054#1090#1082#1083'. ('#1055'-'#1051')'
            Visible = False
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P'
            Footers = <>
            Tag = 703
            Title.Caption = #1054#1090#1082#1083'. ('#1055'-'#1051') %'
            Visible = False
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_REAL_PRICE'
            Footers = <>
            Tag = 9
            Title.Caption = #1054#1090#1095#1077#1090
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_TOTAL_REAL_TO_PLAN_DEV'
            Footers = <>
            Tag = 1102
            Title.Caption = #1054#1090#1082#1083'. ('#1054'-'#1051')'
            Visible = False
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_TOTAL_REAL_TO_PLAN_DEV_P'
            Footers = <>
            Tag = 1103
            Title.Caption = #1054#1090#1082#1083'. ('#1054'-'#1051') %'
            Visible = False
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_TOTAL_REAL_TO_BOIO_PLAN_DEV'
            Footers = <>
            Tag = 1302
            Title.Caption = #1054#1090#1082#1083'. ('#1054'-'#1055')'
            Visible = False
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = '_TOTAL_REAL_TO_BOIO_PLAN_DEV_P'
            Footers = <>
            Tag = 1303
            Title.Caption = #1054#1090#1082#1083'. ('#1054'-'#1055') %'
            Visible = False
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object pnlParams: TPanel
      Left = 8
      Top = 8
      Width = 952
      Height = 73
      Align = alTop
      TabOrder = 2
      TabStop = True
      DesignSize = (
        952
        73)
      object DBRadioGroup1: TDBRadioGroup
        Left = 438
        Top = 9
        Width = 139
        Height = 56
        Anchors = [akTop, akRight]
        Caption = ' %BudgetModeNounPlural% '#1079#1072' '#1058#1055' '
        DataField = 'IS_LOCAL'
        DataSource = dsGridDataParams
        Items.Strings = (
          #1089#1080#1085#1090#1077#1079#1080#1088#1072#1085#1086
          #1083#1086#1082#1072#1083#1085#1086)
        ParentBackground = True
        ReadOnly = True
        TabOrder = 0
        Values.Strings = (
          'False'
          'True')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 582
        Top = 9
        Width = 99
        Height = 56
        Anchors = [akTop, akRight]
        Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '
        DataField = 'IS_EXPANDED'
        DataSource = dsGridDataParams
        Items.Strings = (
          #1088#1072#1079#1075#1098#1085#1072#1090
          #1089#1074#1080#1090)
        ParentBackground = True
        ReadOnly = True
        TabOrder = 1
        Values.Strings = (
          'True'
          'False')
      end
      object gbDept: TGroupBox
        Left = 8
        Top = 8
        Width = 249
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = ' '#1058#1055' '
        TabOrder = 2
        DesignSize = (
          249
          57)
        inline frDept: TfrDeptFieldEditFrameBald
          Left = 8
          Top = 25
          Width = 233
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Anchors = [akLeft, akTop, akRight]
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            233
            22)
          inherited gbTreeNode: TGroupBox
            Width = 249
            DesignSize = (
              249
              49)
            inherited pnlTreeNode: TPanel
              Width = 233
              inherited pnlTreeNodeName: TPanel
                Width = 86
                DesignSize = (
                  86
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 85
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 86
              end
              inherited pnlRightButtons: TPanel
                Left = 197
              end
            end
          end
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
      end
      object gbDateInterval: TGroupBox
        Left = 264
        Top = 8
        Width = 169
        Height = 57
        Anchors = [akTop, akRight]
        Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
        TabOrder = 3
        inline frDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 25
          Width = 153
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 153
          Constraints.MinHeight = 21
          Constraints.MinWidth = 153
          TabOrder = 0
          TabStop = True
          DesignSize = (
            153
            21)
          inherited edtInterval: TJvDBComboEdit
            Width = 153
          end
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
      end
      object gbBOIOrderTypes: TGroupBox
        Left = 688
        Top = 8
        Width = 257
        Height = 57
        Anchors = [akTop, akRight]
        Caption = ' '#1057#1098#1076#1098#1088#1078#1072#1090#1077#1083#1077#1085' '#1090#1080#1087' '#1085#1072' %BudgetModePlural% '#1057#1090#1072#1090#1080#1080' '
        TabOrder = 4
        object edtBOIOrderTypeName: TDBEdit
          Left = 16
          Top = 24
          Width = 225
          Height = 21
          Color = clBtnFace
          DataField = '_BOI_ORDER_TYPE_NAME'
          DataSource = dsGridDataParams
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 264
    Top = 168
  end
  inherited cdsGridData: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        AggregateName = 'SUM_TOTAL_PLAN_PRICE'
        Expression = 'Sum(TOTAL_PLAN_PRICE)'
        GroupingLevel = 1
        IndexName = 'idxDefault'
        Visible = False
      end>
    AggregatesActive = True
    ConnectionBroker = dmMain.conBudget
    FieldDefs = <
      item
        Name = 'NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_GROUP'
        DataType = ftFloat
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'IS_INACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_REAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_BOIO_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOM_CODE_AS_TEXT'
        DataType = ftWideString
        Size = 40
      end
      item
        Name = 'IS_LAST_CHILD'
        DataType = ftFloat
      end
      item
        Name = 'HAS_CHILDREN'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_PRODUCT_LEVEL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'PARENT_CODE'
      end
      item
        Name = 'idxPrint'
        Fields = 'CUSTOM_CODE_AS_TEXT'
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBudgetMaster'
    OnCalcFields = cdsGridDataCalcFields
    Left = 232
    Top = 168
    object cdsGridDataNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
    object cdsGridDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsGridDataIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataTOTAL_REAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_REAL_PRICE'
      OnGetText = cdsGridDataTOTAL_REAL_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataTOTAL_PLAN_PRICE: TAbmesFloatField
      DisplayLabel = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'TOTAL_PLAN_PRICE'
      OnGetText = cdsGridDataTOTAL_PLAN_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridData_BUDGET_CLASS_TREE_ICON: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_CLASS_TREE_ICON'
      Calculated = True
    end
    object cdsGridData_BUDGET_CLASS_TREE_DISPLAY_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_CLASS_TREE_DISPLAY_NAME'
      ProviderFlags = []
      Size = 100
      Calculated = True
    end
    object cdsGridData_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object cdsGridData_BUDGET_MODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_MODE'
      Calculated = True
    end
    object cdsGridDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsGridDataBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object cdsGridDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsGridDataCUSTOM_CODE: TAbmesFloatField
      FieldName = 'CUSTOM_CODE'
    end
    object cdsGridDataTOTAL_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_BOIO_PLAN_PRICE'
      OnGetText = cdsGridDataTOTAL_BOIO_PLAN_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV'
      OnGetText = cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEVGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_REAL_TO_BOIO_PLAN_DEV'
      OnGetText = cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEVGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_TOTAL_REAL_TO_PLAN_DEV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_REAL_TO_PLAN_DEV'
      OnGetText = cdsGridData_TOTAL_REAL_TO_PLAN_DEVGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P'
      OnGetText = cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_TOTAL_REAL_TO_PLAN_DEV_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_REAL_TO_PLAN_DEV_P'
      OnGetText = cdsGridData_TOTAL_REAL_TO_PLAN_DEV_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_REAL_TO_BOIO_PLAN_DEV_P'
      OnGetText = cdsGridData_TOTAL_REAL_TO_BOIO_PLAN_DEV_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridDataCUSTOM_CODE_AS_TEXT: TAbmesWideStringField
      FieldName = 'CUSTOM_CODE_AS_TEXT'
      Size = 40
    end
    object cdsGridData_BUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_PRODUCT_NAME'
      Size = 100
      Calculated = True
    end
    object cdsGridData_BUDGET_PRODUCT_NO: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_PRODUCT_NO'
      Size = 50
      Calculated = True
    end
    object cdsGridData_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Size = 50
      Calculated = True
    end
    object cdsGridDataIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBUDGET_PRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_LEVEL'
    end
    object cdsGridDataSUM_TOTAL_PLAN_PRICE: TAggregateField
      FieldName = 'SUM_TOTAL_PLAN_PRICE'
      Active = True
      Expression = 'Sum(TOTAL_PLAN_PRICE)'
    end
    object cdsGridDataSUM_TOTAL_REAL_PRICE: TAggregateField
      FieldName = 'SUM_TOTAL_REAL_PRICE'
      Active = True
      Expression = 'Sum(TOTAL_REAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1041#1102#1076#1078#1077#1090
    end
    inherited actFilter: TAction [3]
      Visible = True
    end
    inherited actInsertRecord: TAction [4]
    end
    inherited actDelRecord: TAction [5]
    end
    inherited actEditRecord: TAction [6]
    end
    inherited actInsertDetailRecord: TAction [7]
    end
    inherited actDelDetailRecord: TAction [8]
    end
    inherited actEditDetailRecord: TAction [9]
    end
    object actDocumentation: TAction [10]
      Hint = #1048#1048#1054' '#1085#1072' '#1057#1090#1072#1090#1080#1103
      OnExecute = actDocumentationExecute
      OnUpdate = actDocumentationUpdate
    end
    inherited actPrint: TAction [11]
    end
    inherited actPrintDetails: TAction [12]
    end
    object actPrintDeptBudgetView: TAction [13]
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintDeptBudgetViewExecute
    end
    object actPrintBudgetOrderItems: TAction [14]
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintBudgetOrderItemsExecute
    end
    inherited actExcelExport: TAction [15]
    end
    inherited actToggleFormHeight: TAction [16]
    end
    inherited actInsertLike: TAction [17]
    end
    inherited actInsertMenu: TAction [18]
    end
    inherited actToggleFormWidth: TAction [19]
    end
    inherited actRefresh: TAction [20]
    end
    object actExcelExportDeptBudgetView: TAction
      Caption = 'actExcelExportDeptBudgetView'
      ImageIndex = 83
      OnExecute = actExcelExportDeptBudgetViewExecute
    end
    object actExcelExportBudgetOrderItems: TAction
      Caption = 'actExcelExportBudgetOrderItems'
      ImageIndex = 83
      OnExecute = actExcelExportBudgetOrderItemsExecute
    end
    object actOneLevelUp: TAction
      Hint = #1053#1080#1074#1086' '#1085#1072#1075#1086#1088#1077' '#1074' '#1081#1077#1088#1072#1088#1093#1080#1103#1090#1072' '#1085#1072' '#1058#1055
      ImageIndex = 43
      OnExecute = actOneLevelUpExecute
      OnUpdate = actOneLevelUpUpdate
    end
    object actOneLevelDown: TAction
      Hint = #1053#1080#1074#1086' '#1085#1072#1076#1086#1083#1091' '#1074' '#1081#1077#1088#1072#1088#1093#1080#1103#1090#1072' '#1085#1072' '#1058#1055
      ImageIndex = 44
      OnExecute = actOneLevelDownExecute
      OnUpdate = actOneLevelDownUpdate
    end
    object actShowBudgetGraph: TAction
      Hint = #1042#1048#1052
      ImageIndex = 97
      OnExecute = actShowBudgetGraphExecute
      OnUpdate = actShowBudgetGraphUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 232
    Top = 200
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev% - '#1058#1055
      FieldName = 'DEPT_CODE'
      OnChange = pdsGridDataParamsDEPT_CODEChange
    end
    object pdsGridDataParamsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev% - '#1053#1072#1095#1080#1085
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object pdsGridDataParamsBUDGET_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%BudgetMode% '#1057#1090#1072#1090#1080#1103
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object pdsGridDataParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1098#1076#1098#1088#1078#1072#1090#1077#1083#1077#1085' '#1090#1080#1087' '#1085#1072' %BudgetMode% '#1057#1090#1072#1090#1080#1103
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = 'END_DATE'
      Calculated = True
    end
    object pdsGridDataParamsTIME_UNIT_CODE: TAbmesFloatField
      FieldName = 'TIME_UNIT_CODE'
    end
    object pdsGridDataParamsTIME_UNIT_COUNT: TAbmesFloatField
      FieldName = 'TIME_UNIT_COUNT'
    end
    object pdsGridDataParamsMIN_BO_STATUS: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% - '#1054#1090
      FieldName = 'MIN_BO_STATUS'
    end
    object pdsGridDataParamsMAX_BO_STATUS: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% - '#1044#1086
      FieldName = 'MAX_BO_STATUS'
    end
    object pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object pdsGridDataParamsBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1056#1077#1078#1080#1084' '#1085#1072' '#1087#1091#1083#1089'.'
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object pdsGridDataParamsGENERATOR_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev%'
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsIS_LOCAL: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1077#1078#1076#1072#1085#1077' '#1085#1072' %BudgetModeNounPlural% '#1079#1072' '#1058#1055
      FieldName = 'IS_LOCAL'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_EXPANDED: TAbmesFloatField
      DisplayLabel = #1048#1079#1074#1077#1078#1076#1072#1085#1077' '#1085#1072' '#1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088
      FieldName = 'IS_EXPANDED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' %BudgetOrderItemAbbrev%'
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
    end
    object pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev%'
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
    end
    object pdsGridDataParamsPARENT_DEPT_CODE: TAbmesFloatField
      FieldName = 'PARENT_DEPT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_BOIO_PLAN_COLUMN_TYPE_CODE: TAbmesFloatField
      FieldName = '_BOIO_PLAN_COLUMN_TYPE_CODE'
    end
    object pdsGridDataParams_REAL_COLUMN_TYPE_CODE: TAbmesFloatField
      FieldName = '_REAL_COLUMN_TYPE_CODE'
    end
    object pdsGridDataParams_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_TASK_PROPOSAL_STATE_NAME'
      LookupDataSet = cdsOrgTaskProposalStates
      LookupKeyFields = 'ORG_TASK_PROPOSAL_STATE_CODE'
      LookupResultField = 'ORG_TASK_PROPOSAL_STATE_NAME'
      KeyFields = 'ORG_TASK_PROPOSAL_STATE_CODE'
      Lookup = True
    end
    object pdsGridDataParamsIS_CHOSEN_PRODUCTS_READ_ONLY: TAbmesFloatField
      FieldName = 'IS_CHOSEN_PRODUCTS_READ_ONLY'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_OTP_STATE_CODE_READ_ONLY: TAbmesFloatField
      FieldName = 'IS_OTP_STATE_CODE_READ_ONLY'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_BOI_TYPE_READ_ONLY: TAbmesFloatField
      FieldName = 'IS_BOI_TYPE_READ_ONLY'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_BOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BOI_ORDER_TYPE_NAME'
      LookupDataSet = cdsBOIOrderTypes
      LookupKeyFields = 'BOI_ORDER_TYPE_CODE'
      LookupResultField = 'BOI_ORDER_TYPE_NAME'
      KeyFields = 'BOI_ORDER_TYPE_CODE'
      OnGetText = pdsGridDataParams_BOI_ORDER_TYPE_NAMEGetText
      Lookup = True
      Size = 100
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 264
    Top = 200
  end
  inherited dsData: TDataSource
    Left = 264
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 232
    Top = 136
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conBudget
    FieldDefs = <
      item
        Name = 'BUDGET_PRODUCT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_NOT_PARENT_DEPT'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 112
      end
      item
        Name = 'PARENT_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'THE_DATE_1'
        DataType = ftTimeStamp
      end
      item
        Name = 'LOCAL_DEPT_PLAN_PRICE_1'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PLAN_PRICE_1'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_REAL_PRICE_1'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_REAL_PRICE_1'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_PRICE_1'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_PRICE_DEV_P_1'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PRICE_DEV_P_1'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_TO_PLAN_DEV_P_1'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TO_BOIO_PLAN_DEV_P_1'
        DataType = ftFloat
      end
      item
        Name = 'THE_DATE_2'
        DataType = ftTimeStamp
      end
      item
        Name = 'LOCAL_DEPT_PLAN_PRICE_2'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PLAN_PRICE_2'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_REAL_PRICE_2'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_REAL_PRICE_2'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_PRICE_2'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_PRICE_DEV_P_2'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PRICE_DEV_P_2'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_TO_PLAN_DEV_P_2'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TO_BOIO_PLAN_DEV_P_2'
        DataType = ftFloat
      end
      item
        Name = 'THE_DATE_3'
        DataType = ftTimeStamp
      end
      item
        Name = 'LOCAL_DEPT_PLAN_PRICE_3'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PLAN_PRICE_3'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_REAL_PRICE_3'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_REAL_PRICE_3'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_PRICE_3'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_PRICE_DEV_P_3'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PRICE_DEV_P_3'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_TO_PLAN_DEV_P_3'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TO_BOIO_PLAN_DEV_P_3'
        DataType = ftFloat
      end
      item
        Name = 'THE_DATE_4'
        DataType = ftTimeStamp
      end
      item
        Name = 'LOCAL_DEPT_PLAN_PRICE_4'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PLAN_PRICE_4'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_REAL_PRICE_4'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_REAL_PRICE_4'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_PRICE_4'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_PRICE_DEV_P_4'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PRICE_DEV_P_4'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_PLAN_TO_PLAN_DEV_P_4'
        DataType = ftFloat
      end
      item
        Name = 'REAL_TO_BOIO_PLAN_DEV_P_4'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_LOCAL_DEPT_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DEPT_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'LOCAL_DEPT_PLAN_PRICE_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_LOCAL_DEPT_REAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DEPT_REAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_BOIO_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'AVG_LOCAL_DEPT_PRICE_DEV_P'
        DataType = ftFloat
      end
      item
        Name = 'AVG_DEPT_PRICE_DEV_P'
        DataType = ftFloat
      end
      item
        Name = 'AVG_BOIO_PLAN_TO_PLAN_DEV_P'
        DataType = ftFloat
      end
      item
        Name = 'AVG_REAL_TO_BOIO_PLAN_DEV_P'
        DataType = ftFloat
      end
      item
        Name = 'AVG_DEVIATION_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'AVG_BOIO_PLAN_TO_PLAN_DEV_P_1'
        DataType = ftFloat
      end
      item
        Name = 'AVG_RAEL_TO_BOIO_PLAN_DEV_P'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'BUDGET_PRODUCT_CODE;IS_NOT_PARENT_DEPT;DEPT_IDENTIFIER'
        GroupingLevel = 1
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LOCAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
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
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_BO_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_BO_STATUS'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
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
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'IS_LOCAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_LOCAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptBudget'
    StoreDefs = True
    BeforeOpen = cdsDetailBeforeOpen
    AfterOpen = cdsDetailAfterOpen
    BeforeClose = cdsDetailBeforeClose
    AfterClose = cdsDetailAfterClose
  end
  inherited tmrMaster: TTimer
    Left = 512
    Top = 168
  end
  object cdsDetail2: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'BUDGET_PRODUCT_CODE;CUSTOM_CODE; BUDGET_ORDER_IDENTIFIER; BUDGET' +
          '_ORDER_CODE; BUDGET_ORDER_ITEM_CODE'
        GroupingLevel = 1
      end>
    IndexName = 'idxDefault'
    Params = <
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
        Name = 'DEPT_CODE'
        ParamType = ptInput
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
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'TIME_UNIT_COUNT'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BO_REGULARITY_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_BO_STATUS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_BO_STATUS'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvBudgetOrderItemsByTimeUnits'
    StoreDefs = True
    BeforeOpen = cdsDetail2BeforeOpen
    AfterOpen = cdsDetail2AfterOpen
    BeforeClose = cdsDetail2BeforeClose
    AfterClose = cdsDetail2AfterClose
    Left = 164
    Top = 432
  end
  object dsDetail2: TDataSource
    DataSet = cdsDetail2
    Left = 196
    Top = 432
  end
  object printDeptBudgetViewExpense: TPrintDBGridEh
    DBGridEh = grdDeptBudgetView
    Options = [pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 108
    Top = 395
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C204359
      523B7D7B5C66315C666E696C5C66636861727365743020417269616C3B7D7D0D
      0A5C766965776B696E64345C7563315C706172645C71635C625C695C66305C66
      73323420706C626C4465707442756467657456696577457870656E73655C6230
      5C69305C66315C667331365C7061720D0A7D0D0A00}
  end
  object printBudgetOrderItemsExpense: TPrintDBGridEh
    DBGridEh = grdBudgetOrderItems
    Options = [pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 260
    Top = 395
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C204359
      523B7D7B5C66315C666E696C5C66636861727365743020417269616C3B7D7D0D
      0A5C766965776B696E64345C7563315C706172645C71635C625C695C66305C66
      73323420706C626C4275646765744F726465724974656D73457870656E73655C
      62305C69305C66315C667331365C7061720D0A7D0D0A00}
  end
  object printDeptBudgetViewInvest: TPrintDBGridEh
    DBGridEh = grdDeptBudgetView
    Options = [pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 108
    Top = 427
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C204359
      523B7D7B5C66315C666E696C5C66636861727365743020417269616C3B7D7D0D
      0A5C766965776B696E64345C7563315C706172645C71635C625C695C66305C66
      73323420706C626C4465707442756467657456696577496E766573745C62305C
      69305C66315C667331365C7061720D0A7D0D0A00}
  end
  object printBudgetOrderItemsInvest: TPrintDBGridEh
    DBGridEh = grdBudgetOrderItems
    Options = [pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 260
    Top = 427
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743230347B5C2A5C666E616D6520417269616C3B7D417269616C204359
      523B7D7B5C66315C666E696C5C66636861727365743020417269616C3B7D7D0D
      0A5C766965776B696E64345C7563315C706172645C71635C625C695C66305C66
      73323420706C626C4275646765744F726465724974656D73496E766573745C62
      305C69305C66315C667331365C7061720D0A7D0D0A00}
  end
  object cdsBudgetGraph: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 96
    object cdsBudgetGraphDATE_UNIT_NO: TAbmesFloatField
      FieldName = 'DATE_UNIT_NO'
    end
    object cdsBudgetGraphPERIOD_LABEL: TAbmesWideStringField
      FieldName = 'PERIOD_LABEL'
    end
    object cdsBudgetGraphPERIOD_LABEL_EX: TAbmesWideStringField
      FieldName = 'PERIOD_LABEL_EX'
      Size = 40
    end
    object cdsBudgetGraphPLAN_PRICE: TAbmesFloatField
      FieldName = 'PLAN_PRICE'
    end
    object cdsBudgetGraphBOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'BOIO_PLAN_PRICE'
    end
    object cdsBudgetGraphREAL_PRICE: TAbmesFloatField
      FieldName = 'REAL_PRICE'
    end
    object cdsBudgetGraphAVG_PLAN_PRICE: TAbmesFloatField
      FieldName = 'AVG_PLAN_PRICE'
    end
    object cdsBudgetGraphAVG_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'AVG_BOIO_PLAN_PRICE'
    end
    object cdsBudgetGraphAVG_REAL_PRICE: TAbmesFloatField
      FieldName = 'AVG_REAL_PRICE'
    end
  end
  object cdsBudgetGraphParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 96
    object cdsBudgetGraphParamsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsBudgetGraphParamsBEGIN_DATE: TAbmesDateTimeField
      FieldName = 'BEGIN_DATE'
    end
    object cdsBudgetGraphParamsEND_DATE: TAbmesFloatField
      FieldName = 'END_DATE'
    end
    object cdsBudgetGraphParamsBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object cdsBudgetGraphParamsBUDGET_MODE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_MODE_CODE'
    end
  end
  object cdsOrgTaskProposalStates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvOrgTaskProposalStates'
    Left = 416
    Top = 96
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
      Required = True
    end
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_NO'
      Required = True
    end
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_NAME'
      Required = True
    end
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object cdsBOIOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIOrderTypes'
    Left = 448
    Top = 96
    object cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_NAME'
      Size = 100
    end
  end
  object cdsBOIOrdersParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 432
  end
end
