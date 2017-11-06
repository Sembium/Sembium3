inherited fmBudgetOrders: TfmBudgetOrders
  Left = 323
  Top = 223
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' %BudgetModePlural% '#1041#1086#1088#1076#1077#1088#1072' '#1079#1072' '#1057#1088#1077#1076#1072
  ClientHeight = 651
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 616
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 616
    inherited sptDetail: TSplitter
      Top = 345
      Width = 1003
      Height = 6
    end
    inherited pnlDetailGrid: TPanel
      Top = 351
      Width = 1003
      Height = 257
      inherited pnlDetailNavigator: TPanel
        Width = 1003
        object lblLimits: TLabel [0]
          Left = 642
          Top = 8
          Width = 361
          Height = 13
          Alignment = taRightJustify
          Caption = #1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderAbbrev% (%BudgetOrderItemAbbrev%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited navDetail: TDBColorNavigator
          Left = 345
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 441
          Width = 56
          object btnShowAnnuledLines: TSpeedButton
            Left = 32
            Top = 0
            Width = 24
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
            AllowAllUp = True
            GroupIndex = 1
            Caption = #1040#1085
            Flat = True
            Transparent = False
            OnClick = btnShowAnnuledLinesClick
          end
        end
        object tlbBudgetClassDoc: TToolBar
          Left = 678
          Top = 0
          Width = 86
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 2
          object sepBeforeBudgetClassDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblBudgetClassDoc: TLabel
            Left = 8
            Top = 0
            Width = 41
            Height = 24
            Caption = ' '#1057#1090#1072#1090#1080#1103' '
            Layout = tlCenter
          end
          object btnBudgetClassDoc: TToolButton
            Left = 49
            Top = 0
            Action = actBudgetClassDoc
          end
        end
        object tlbBudgetOrderItemDoc: TToolBar
          Left = 497
          Top = 0
          Width = 181
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeBudgetOrderItemDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeBudgetOrderItemDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblBudgetOrderItemDoc: TLabel
            Left = 8
            Top = 0
            Width = 136
            Height = 24
            Caption = ' %BudgetOrderItemAbbrev% '
            Layout = tlCenter
          end
          object btnBudgetOrderItemDoc: TToolButton
            Left = 144
            Top = 0
            Action = actBudgetOrderItemDoc
          end
        end
        object tlbBudgetOrderItemTypes: TToolBar
          Left = 0
          Top = 0
          Width = 345
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 73
          TabOrder = 4
          object btnIntroducingItems: TSpeedButton
            Left = 0
            Top = 0
            Width = 97
            Height = 25
            Action = actIntroducingItems
            GroupIndex = 1
            Down = True
            Flat = True
          end
          object btnExpenseItems: TSpeedButton
            Left = 97
            Top = 0
            Width = 88
            Height = 25
            Action = actExpenseItems
            GroupIndex = 1
            Flat = True
          end
          object btnExploitationItems: TSpeedButton
            Left = 185
            Top = 0
            Width = 152
            Height = 25
            Action = actExploitationItems
            GroupIndex = 1
            Flat = True
          end
          object sepNavigator: TToolButton
            Left = 337
            Top = 0
            Width = 8
            Style = tbsSeparator
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1003
        Height = 211
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDetailGetCellParams
        OnSortMarkingChanged = grdDetailSortMarkingChanged
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'BUDGET_ITEM_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072'- '#1090#1091#1089
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_ITEM_CODE'
            Footers = <>
            Title.Caption = #8470
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_ITEM_TYPE_DISPLAY'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 22
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'BUDGET_PRODUCT_NO'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1050#1086#1076
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'BUDGET_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 183
          end
          item
            EditButtons = <>
            FieldName = 'BOI_ORDER_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1058#1080#1087
            Width = 44
          end
          item
            Color = 15532031
            EditButtons = <>
            FieldName = 'BC_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1048#1048#1054
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077'|'#1058#1055
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077'|'#1053#1072#1095#1080#1085
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'DAYS_TO_START'
            Footers = <>
            Title.Caption = #1056#1079#1088#1074'. '#1057#1090#1072#1088#1090
            Width = 41
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev%'
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'DAYS_LEFT_PERCENT'
            Footers = <>
            Title.Caption = #1042#1088#1084' '#1054#1089#1090' %'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1054#1073#1097#1072' '#1051#1080#1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' (%BaseCurrency%)'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'BO_PRICE_PERCENT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '% '#1086#1090' %BudgetOrderAbbrev%'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083'.%|'#1054#1089#1090#1072#1090'.'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = '_DEVIATION_PERCENT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083'.%|+/-'
            Width = 29
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'BOI_ORDER_COUNT'
            Footers = <>
            Title.Caption = '%BudgetOrderItemOrderAbbrev%'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -9
            Title.Font.Name = 'Microsoft Sans Serif'
            Title.Font.Style = []
            Title.Orientation = tohVertical
            Width = 22
          end>
      end
      object pnlDetailGridBottom: TPanel
        Left = 0
        Top = 235
        Width = 1003
        Height = 22
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object lblCurrency: TLabel
          Left = 0
          Top = 8
          Width = 173
          Height = 13
          Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1089#1072' '#1074' %BaseCurrency%'
        end
        object edtSumTotalPrice: TDBEdit
          Left = 760
          Top = 0
          Width = 84
          Height = 21
          TabStop = False
          Color = 15258325
          DataField = 'SUM_TOTAL_PRICE'
          DataSource = dsDetailTotals
          TabOrder = 0
        end
        object edtSumBOPricePercent: TDBEdit
          Left = 845
          Top = 0
          Width = 41
          Height = 21
          TabStop = False
          Color = 15258325
          DataField = 'SUM_BO_PRICE_PERCENT'
          DataSource = dsDetailTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edtDetailTotalPriceDeviationPercent: TDBEdit
          Left = 887
          Top = 0
          Width = 44
          Height = 21
          TabStop = False
          Color = 15258325
          DataField = '_TOTAL_PRICE_DEV_PERCENT'
          DataSource = dsDetailTotals
          TabOrder = 2
        end
      end
    end
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 337
      inherited pnlNavigator: TPanel
        Width = 1003
        inherited navData: TDBColorNavigator
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Hints.Strings = ()
        end
        object tlbBudgetOrderDoc: TToolBar
          Left = 248
          Top = 0
          Width = 161
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeBudgetOrderDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblBudgetOrderDoc: TLabel
            Left = 8
            Top = 0
            Width = 116
            Height = 22
            Caption = ' %BudgetOrderAbbrev% '
            Layout = tlCenter
          end
          object btnBudgetOrderDoc: TToolButton
            Left = 124
            Top = 0
            Action = actBudgetOrderDoc
          end
        end
        object tlbToggleButtons: TToolBar
          Left = 763
          Top = 0
          Width = 240
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
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
            Height = 24
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
            Height = 24
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
            Height = 24
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
            Height = 24
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
            Height = 24
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
            Height = 24
            Hint = #1054#1082#1090#1083#1086#1085#1077#1085#1080#1077' '#1055#1088#1086#1094#1077#1085#1090#1080'/'#1057#1090#1086#1081#1085#1086#1089#1090
            AllowAllUp = True
            GroupIndex = 4
            Caption = '%'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
          object sepToggleProductDisplay: TToolButton
            Left = 208
            Top = 0
            Width = 8
            ImageIndex = 4
            Style = tbsSeparator
          end
          object btnToggleProductDisplay: TSpeedButton
            Tag = 20
            Left = 216
            Top = 0
            Width = 24
            Height = 24
            Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1054#1087#1080#1089#1072#1085#1080#1077'/'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            AllowAllUp = True
            GroupIndex = 5
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000000000FF0000FF00
              00FF0000FF0000FF0000000000FF00FFFF00FFFFFF00FFFF00FFFF00FFFF00FF
              FF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF0000000000FF00FF
              FF80808000FFFFFF00FFFF00FFFF00FFFF00FF0000FF00000000000000000000
              00000000000000000000000000FF00FFFF80808080808000FFFFFF00FFFF00FF
              FF00FF0000FF0000FF0000000000FF0000FF0000FF0000000000FF0000FF00FF
              FF80808080808000FFFFFF00FFFF00FFFF00FF0000FF0000FF00000000000000
              00FF0000000000000000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
              FF00FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF00FF
              FF80808000FFFF00FFFFFF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF00
              00000000FF0000FF0000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
              FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
              FF00FFFF80808000FFFFFF00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF000000FFFF00FFFF00FFFFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF000000FFFF00FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FFFFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 284
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072'- '#1090#1091#1089
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderAbbrev%'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'HAS_DOCUMENTATION'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = 'GENERATOR_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev%'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'DEVELOPER_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev%'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            Tag = 20
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Tag = 21
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev%'
            Visible = False
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1090#1072#1076#1080#1081
            Title.Orientation = tohVertical
            Width = 20
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev%'
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'DAYS_LEFT_PERCENT'
            Footers = <>
            Title.Caption = #1042#1088#1084' '#1054#1089#1090' %'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'PROJECT_TOTAL_PRICE'
            Footer.FieldName = 'SUM_PROJECT_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1055#1088#1080#1085#1094#1080#1087#1085#1072
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_TOTAL_PRICE'
            Footer.FieldName = 'SUM_PLAN_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1051#1080#1084#1080#1090#1085#1072
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'BOIO_PLAN_TOTAL_PRICE'
            Footer.FieldName = 'SUM_BOIO_PLAN_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 5
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1055#1083#1072#1085#1086#1074#1072
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = '_BOIO_PLAN_TO_PLAN_DEV'
            Footer.FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 702
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1082#1083'. ('#1055'-'#1051')'
            Visible = False
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = '_BOIO_PLAN_TO_PLAN_DEV_P'
            Footer.FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 703
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1082#1083'. ('#1055'-'#1051') %'
            Visible = False
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_TOTAL_PRICE'
            Footer.FieldName = 'SUM_ACCOUNT_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 9
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1095#1077#1090#1085#1072
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_TO_PLAN_DEV'
            Footer.FieldName = '_TOTAL_ACCOUNT_TO_PLAN_DEV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 1102
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1082#1083'. ('#1054'-'#1051')'
            Visible = False
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_TO_PLAN_DEV_P'
            Footer.FieldName = '_TOTAL_ACCOUNT_TO_PLAN_DEV_P'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 1103
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1082#1083'. ('#1054'-'#1051') %'
            Visible = False
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_TO_BOIO_PLAN_DEV'
            Footer.FieldName = '_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 1302
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1082#1083'. ('#1054'-'#1055')'
            Visible = False
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_TO_BOIO_PLAN_DEV_P'
            Footer.FieldName = '_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_P'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 1303
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderAbbrev%|'#1054#1090#1082#1083'. ('#1054'-'#1055') %'
            Visible = False
            Width = 71
          end>
      end
      object pnlMasterGridFooter: TPanel
        Left = 0
        Top = 308
        Width = 1003
        Height = 29
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btnInsertRecord: TBitBtn
          Left = 0
          Top = 4
          Width = 113
          Height = 25
          Action = actInsertRecord
          Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentDoubleBuffered = False
          TabOrder = 0
        end
        object btnEditRecord: TBitBtn
          Left = 120
          Top = 4
          Width = 113
          Height = 25
          Action = actEditRecord
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
          DoubleBuffered = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
            FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
            00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
            0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
            00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
            0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
            000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
          ParentDoubleBuffered = False
          TabOrder = 1
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 288
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conBudget
    FieldDefs = <
      item
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 182
      end
      item
        Name = 'GENERATOR_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'GENERATOR_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEVELOPER_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEVELOPER_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'BUDGET_ORDER_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PROJECT_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_TOTAL_PRICE_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLOSE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLOSE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLOSE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ANNUL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ANNUL_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'HAS_DOCUMENTATION'
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
        Name = 'DAYS_LEFT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BOIO_PLAN_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'qryBudgetOrdersDetail'
        DataType = ftDataSet
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '3'
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
        Name = 'GENERATOR_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEVELOPER_DEPT_CODE'
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
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '10'
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
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ITEM_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
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
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvBudgetOrders'
    OnCalcFields = cdsGridDataCalcFields
    Left = 256
    Top = 152
    object cdsGridDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsGridDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsGridDataBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_IDENTIFIER'
      Size = 182
    end
    object cdsGridDataGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object cdsGridDataGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object cdsGridDataDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
      OnGetText = cdsGridDataBUDGET_ORDER_STATUS_CODEGetText
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsGridDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 50
    end
    object cdsGridDataPROJECT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROJECT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
      OnGetText = cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsGridDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsGridDataqryBudgetOrdersDetail: TDataSetField
      FieldName = 'qryBudgetOrdersDetail'
    end
    object cdsGridData_BUDGET_MODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_MODE'
      Calculated = True
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataDAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'DAYS_LEFT_PERCENT'
      OnGetText = cdsGridDataDAYS_LEFT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Size = 100
    end
    object cdsGridDataBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOIO_PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridData_ACCOUNT_TO_PLAN_DEV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_TO_PLAN_DEV'
      OnGetText = cdsGridData_ACCOUNT_TO_PLAN_DEVGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_BOIO_PLAN_TO_PLAN_DEV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOIO_PLAN_TO_PLAN_DEV'
      OnGetText = cdsGridData_BOIO_PLAN_TO_PLAN_DEVGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_TO_BOIO_PLAN_DEV'
      OnGetText = cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEVGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_TO_PLAN_DEV_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_TO_PLAN_DEV_P'
      OnGetText = cdsGridData_ACCOUNT_TO_PLAN_DEV_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_BOIO_PLAN_TO_PLAN_DEV_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOIO_PLAN_TO_PLAN_DEV_P'
      OnGetText = cdsGridData_BOIO_PLAN_TO_PLAN_DEV_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV_P: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_TO_BOIO_PLAN_DEV_P'
      OnGetText = cdsGridData_ACCOUNT_TO_BOIO_PLAN_DEV_PGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_BOIO_PLAN_COLUMN_TYPE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOIO_PLAN_COLUMN_TYPE_CODE'
      Calculated = True
    end
    object cdsGridData_ACCOUNT_COLUMN_TYPE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_COLUMN_TYPE_CODE'
      Calculated = True
    end
    object cdsGridDataSUM_PROJECT_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_PROJECT_TOTAL_PRICE'
      OnGetText = cdsGridDataSUM_PROJECT_TOTAL_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PROJECT_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_PLAN_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_PLAN_TOTAL_PRICE'
      OnGetText = cdsGridDataSUM_PLAN_TOTAL_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PLAN_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_ACCOUNT_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_ACCOUNT_TOTAL_PRICE'
      OnGetText = cdsGridDataSUM_ACCOUNT_TOTAL_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACCOUNT_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_BOIO_PLAN_TOTAL_PRICE'
      OnGetText = cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICEGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(BOIO_PLAN_TOTAL_PRICE)'
    end
    object cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV: TAggregateField
      FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV'
      OnGetText = cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEVGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(BOIO_PLAN_TOTAL_PRICE)-Sum(PLAN_TOTAL_PRICE)'
    end
    object cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P: TAggregateField
      FieldName = '_TOTAL_BOIO_PLAN_TO_PLAN_DEV_P'
      OnGetText = cdsGridData_TOTAL_BOIO_PLAN_TO_PLAN_DEV_PGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        '(Sum(BOIO_PLAN_TOTAL_PRICE)-Sum(PLAN_TOTAL_PRICE))/Sum(PLAN_TOTA' +
        'L_PRICE)'
    end
    object cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV: TAggregateField
      FieldName = '_TOTAL_ACCOUNT_TO_PLAN_DEV'
      OnGetText = cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEVGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACCOUNT_TOTAL_PRICE)-Sum(PLAN_TOTAL_PRICE)'
    end
    object cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV_P: TAggregateField
      FieldName = '_TOTAL_ACCOUNT_TO_PLAN_DEV_P'
      OnGetText = cdsGridData_TOTAL_ACCOUNT_TO_PLAN_DEV_PGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        '(Sum(ACCOUNT_TOTAL_PRICE)-Sum(PLAN_TOTAL_PRICE))/Sum(PLAN_TOTAL_' +
        'PRICE)'
    end
    object cdsGridData_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEV: TAggregateField
      FieldName = '_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEV'
      OnGetText = cdsGridData_TOTAL_ACCOUNT_TO_BOIO_PLAN_DEVGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(ACCOUNT_TOTAL_PRICE)-Sum(BOIO_PLAN_TOTAL_PRICE)'
    end
    object cdsGridData_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_P: TAggregateField
      FieldName = '_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_P'
      OnGetText = cdsGridData_TOT_ACCOUNT_TO_BOIO_PLAN_DEV_PGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        '(Sum(ACCOUNT_TOTAL_PRICE)-Sum(BOIO_PLAN_TOTAL_PRICE))/Sum(BOIO_P' +
        'LAN_TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 248
    Top = 360
    inherited actFilter: TAction
      Visible = True
    end
    object actAnnulBudgetOrder: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
    end
    object actCloseBudgetOrder: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
    end
    object actBudgetOrderItemDoc: TAction
      OnExecute = actBudgetOrderItemDocExecute
      OnUpdate = actBudgetOrderItemDocUpdate
    end
    object actBudgetClassDoc: TAction
      OnExecute = actBudgetClassDocExecute
      OnUpdate = actBudgetClassDocUpdate
    end
    object actBudgetOrderDoc: TAction
      OnExecute = actBudgetOrderDocExecute
      OnUpdate = actBudgetOrderDocUpdate
    end
    object actIntroducingItems: TAction
      Caption = #1055#1088#1080#1074#1083#1080#1095#1072#1085#1077' '#1074' '#1048#1055
      GroupIndex = 1
      OnExecute = actIntroducingItemsExecute
      OnUpdate = actIntroducingItemsUpdate
    end
    object actExpenseItems: TAction
      Caption = #1056#1072#1079#1093#1086#1076#1080' '#1087#1086' '#1048#1055
      GroupIndex = 1
      OnExecute = actExpenseItemsExecute
      OnUpdate = actExpenseItemsUpdate
    end
    object actExploitationItems: TAction
      Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103
      GroupIndex = 1
      OnExecute = actExploitationItemsExecute
      OnUpdate = actExploitationItemsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 256
    Top = 184
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
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
    object pdsGridDataParamsDEVELOPER_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev%'
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1041#1041
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1041#1041
      FieldName = 'END_DATE'
    end
    object pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev%'
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
    end
    object pdsGridDataParamsMIN_ITEM_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemAbbrev% - '#1054#1090
      FieldName = 'MIN_ITEM_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_ITEM_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemAbbrev% - '#1044#1086
      FieldName = 'MAX_ITEM_STATUS_CODE'
    end
    object pdsGridDataParamsBUDGET_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%BudgetClassName%'
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object pdsGridDataParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1098#1076#1098#1088#1078#1072#1090#1077#1083#1077#1085' '#1090#1080#1087
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' - '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
      FieldName = 'DEPT_CODE'
    end
    object pdsGridDataParamsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1080#1085
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object pdsGridDataParamsITEM_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1041#1051
      FieldName = 'ITEM_BEGIN_DATE'
    end
    object pdsGridDataParamsITEM_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1041#1051
      FieldName = 'ITEM_END_DATE'
    end
    object pdsGridDataParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField
      FieldName = 'ALL_FILTERED_PRODUCTS'
      ProviderFlags = []
    end
    object pdsGridDataParams_BO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BO_REGULARITY_TYPE_NAME'
      LookupDataSet = cdsRegularityTypes
      LookupKeyFields = 'BO_REGULARITY_TYPE_CODE'
      LookupResultField = 'BO_REGULARITY_TYPE_NAME'
      KeyFields = 'BO_REGULARITY_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BOI_DISTRIBUTION_TYPE_NAME'
      LookupDataSet = cdsBOIDistricutionTypes
      LookupKeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      LookupResultField = 'BOI_DISTRIBUTION_TYPE_NAME'
      KeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      Lookup = True
      Size = 100
    end
    object pdsGridDataParams_BUDGET_ORDER_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BUDGET_ORDER_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'BUDGET_ORDER_BRANCH_CODE'
      Lookup = True
    end
    object pdsGridDataParams_BOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BOI_ORDER_TYPE_NAME'
      LookupDataSet = cdsBOIOrderTypes
      LookupKeyFields = 'BOI_ORDER_TYPE_CODE'
      LookupResultField = 'BOI_ORDER_TYPE_NAME'
      KeyFields = 'BOI_ORDER_TYPE_CODE'
      Lookup = True
      Size = 100
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
  end
  inherited dsGridDataParams: TDataSource
    Left = 288
    Top = 184
  end
  inherited dsData: TDataSource
    Left = 288
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 256
    Top = 120
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsGridDataqryBudgetOrdersDetail
    Filtered = True
    BeforeOpen = cdsDetailBeforeOpen
    OnCalcFields = cdsDetailCalcFields
    OnFilterRecord = cdsDetailFilterRecord
    Left = 248
    Top = 320
    object cdsDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsDetailBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsDetailBUDGET_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ITEM_STATUS_CODE'
      OnGetText = cdsDetailBUDGET_ITEM_STATUS_CODEGetText
    end
    object cdsDetailBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object cdsDetailBUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_NO'
    end
    object cdsDetailBUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 100
    end
    object cdsDetailBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsDetailBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
    object cdsDetailDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      OnGetText = cdsDetailBEGIN_DATEGetText
    end
    object cdsDetailEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsDetailDAYS_TO_START: TAbmesFloatField
      FieldName = 'DAYS_TO_START'
    end
    object cdsDetailDAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'DAYS_LEFT_PERCENT'
      OnGetText = cdsDetailDAYS_LEFT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDetailIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
    end
    object cdsDetailBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
      OnGetText = cdsDetailBO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
      OnGetText = cdsDetailREMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetailBOI_ORDER_COUNT: TAbmesFloatField
      FieldName = 'BOI_ORDER_COUNT'
      OnGetText = cdsDetailBOI_ORDER_COUNTGetText
    end
    object cdsDetailCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDetailCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDetailCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDetailCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDetailCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDetailCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDetailCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object cdsDetailCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsDetailCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object cdsDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDetailANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDetailANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDetailBC_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_BRANCH_CODE'
    end
    object cdsDetailBC_DOC_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_CODE'
    end
    object cdsDetailBC_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'BC_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetail_BUDGET_MODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_MODE'
      Calculated = True
    end
    object cdsDetailNULL_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'NULL_WHEN_ANNULED'
    end
    object cdsDetailNULL_WHEN_CLOSED: TAbmesFloatField
      FieldName = 'NULL_WHEN_CLOSED'
    end
    object cdsDetailBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsDetail_PRINT_SUM_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRINT_SUM_TOTAL_PRICE'
      OnGetText = cdsDetail_PRINT_SUM_TOTAL_PRICEGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetail_PRINT_SUM_BO_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRINT_SUM_BO_PRICE_PERCENT'
      OnGetText = cdsDetail_PRINT_SUM_BO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetail_DEVIATION_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEVIATION_PERCENT'
      OnGetText = cdsDetail_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
    end
    object cdsDetail_PRINT_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRINT_TOTAL_PRICE_DEV_PERCENT'
      OnGetText = cdsDetail_PRINT_TOTAL_PRICE_DEV_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetailBUDGET_ORDER_ITEM_TYPE_DISPLAY: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_DISPLAY'
      Size = 205
    end
  end
  inherited dsDetail: TDataSource
    Left = 280
    Top = 320
  end
  inherited tmrMaster: TTimer
    Left = 152
    Top = 32
  end
  object cdsRegularityTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBORegularityTypes'
    Left = 384
    Top = 152
    object cdsRegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object cdsRegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 416
    Top = 152
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 2
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object cdsBOIDistricutionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIDistributionTypes'
    Left = 384
    Top = 184
    object cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
  end
  object cdsBOIOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIOrderTypes'
    Left = 416
    Top = 184
    object cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_NAME'
      Size = 100
    end
  end
  object cdsDetailTotals: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsDetailTotalsCalcFields
    Left = 504
    Top = 472
    object cdsDetailTotalsSUM_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SUM_TOTAL_PRICE'
      OnGetText = cdsDetailTotalsSUM_TOTAL_PRICEGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailTotalsSUM_BO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'SUM_BO_PRICE_PERCENT'
      OnGetText = cdsDetailTotalsSUM_BO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailTotalsSUM_ACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SUM_ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailTotals_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_DEV_PERCENT'
      OnGetText = cdsDetailTotals_TOTAL_PRICE_DEV_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
  end
  object dsDetailTotals: TDataSource
    DataSet = cdsDetailTotals
    Left = 536
    Top = 472
  end
  object cdsOrgTaskProposalStates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvOrgTaskProposalStates'
    Left = 448
    Top = 152
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
end
