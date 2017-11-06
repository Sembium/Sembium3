inherited fmBudgetOrder: TfmBudgetOrder
  Left = 260
  Top = 208
  Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
  ClientHeight = 551
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 516
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 3
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 2
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 4
      Visible = False
    end
    object btnCloseBudgetOrder: TBitBtn
      Left = 8
      Top = 2
      Width = 153
      Height = 25
      Action = actCloseBudgetOrder
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %BudgetOrderAbbrev%...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000007B7B7B007B7B7B00BDBDBD007B7B7B00000000007B7B
        7B00BDBDBD007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B00000000007B7B
        7B00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
        FF00000000007B7B7B007B7B7B007B7B7B00BDBDBD00BDBDBD0000000000BDBD
        BD00BDBDBD007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
        FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000000000000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
        FF00000000007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
        00007B7B7B007B7B7B007B7B7B007B7B7B0000000000FF00FF00FF00FF00FF00
        FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
        FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
        FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00
        FF0000000000BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007B7B7B007B7B7B00BDBDBD0000000000000000000000
        0000BDBDBD007B7B7B007B7B7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
    end
    object btnAnnulBudgetOrder: TBitBtn
      Left = 168
      Top = 2
      Width = 153
      Height = 25
      Action = actAnnulBudgetOrder
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderAbbrev%...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF000000000000000000FFFF
        FF0000FFFF00FFFFFF0000FFFF0000000000FFFF0000FFFF0000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000FFFF00FFFFFF0000FF
        FF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF0000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000000000000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000FF
        FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00000000000000000000000000000000000000000000FFFF00FFFF
        FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
        000000000000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF000000
        0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
        0000000000000000000000FFFF00FFFFFF000000000000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
        FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
        0000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
        FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
        000000000000FFFFFF0000000000000000000000000000000000FFFF00000000
        000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
        0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF00000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 516
    object bvlButtonSeparator: TBevel [0]
      Left = 8
      Top = 439
      Width = 769
      Height = 2
    end
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 500
      inherited pnlNavigator: TPanel
        Top = 201
        Width = 1003
        object lblBudgerOrderLimits: TLabel [0]
          Left = 643
          Top = 7
          Width = 360
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
        inherited pnlFilterButton: TPanel
          Left = 489
        end
        inherited navData: TDBColorNavigator
          Left = 345
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 513
          Width = 80
          object btnShowAnnuledLines: TSpeedButton
            Left = 56
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
          Left = 773
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
          Left = 593
          Top = 0
          Width = 180
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
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
          TabOrder = 5
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
            ImageIndex = 2
            Style = tbsSeparator
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 225
        Width = 1003
        Height = 242
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_BUDGET_ORDER_ITEM_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072'- '#1090#1091#1089
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_ITEM_CODE'
            Footers = <>
            Title.Caption = #8470
            Width = 27
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_BUDGET_ORDER_ITEM_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 22
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_PRODUCT_NO'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1050#1086#1076
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 241
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_BOI_ORDER_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1058#1080#1087
            Width = 38
          end
          item
            CellButtons = <>
            Color = 15532031
            DynProps = <>
            EditButtons = <>
            FieldName = 'BC_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1080#1103'|'#1048#1048#1054
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077'|'#1058#1055
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_BOI_DISTRIBUTION_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077'|'#1053#1072#1095#1080#1085
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_DAYS_TO_START'
            Footers = <>
            Title.Caption = #1056#1079#1088#1074'. '#1057#1090#1072#1088#1090
            Width = 37
          end
          item
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev%'
            Width = 105
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_REMAINING_TIME_PERCENT'
            Footers = <>
            Title.Caption = #1042#1088#1084' '#1054#1089#1090' %'
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1054#1073#1097#1072' '#1051#1080#1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' (%BaseCurrency%)'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_BO_PRICE_PERCENT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = '% '#1086#1090' %BudgetOrderAbbrev%'
            Width = 43
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083'.%|'#1054#1089#1090#1072#1090'.'
            Width = 41
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_DEVIATION_PERCENT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083'.%|+/-'
            Width = 24
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BOI_ORDER_COUNT'
            Footers = <>
            Title.Caption = '%BudgetOrderItemOrderAbbrev%'
            Title.Hint = #1054#1088#1076#1077#1088#1080' '#1087#1086' '#1041#1051' '#1079#1072' '#1042#1098#1090#1088#1077#1096#1085#1086' '#1058#1055
            Title.Orientation = tohVertical
            Width = 18
          end>
      end
      object pnlBudgetOrder: TPanel
        Left = 0
        Top = 0
        Width = 1003
        Height = 201
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object lblFormCaption: TLabel
          Left = 0
          Top = 192
          Width = 175
          Height = 13
          Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
          Visible = False
        end
        object gbGenerator: TGroupBox
          Left = 320
          Top = 0
          Width = 337
          Height = 65
          Caption = ' '#1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev% '
          TabOrder = 1
          inline frGeneratorDept: TfrDeptFieldEditFrameBald
            Left = 8
            Top = 32
            Width = 321
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            DesignSize = (
              321
              22)
            inherited gbTreeNode: TGroupBox
              Width = 337
              DesignSize = (
                337
                49)
              inherited pnlTreeNode: TPanel
                Width = 321
                inherited pnlTreeNodeName: TPanel
                  Width = 174
                  DesignSize = (
                    174
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 173
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 174
                end
                inherited pnlRightButtons: TPanel
                  Left = 285
                end
              end
            end
          end
        end
        object gbDates: TGroupBox
          Left = 296
          Top = 72
          Width = 209
          Height = 65
          Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev% '
          TabOrder = 4
          object lblDeviation: TLabel
            Left = 159
            Top = 16
            Width = 33
            Height = 13
            Caption = #1054#1089#1090'. %'
          end
          inline frDates: TfrDateIntervalFrame
            Left = 8
            Top = 32
            Width = 145
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 145
            Constraints.MinHeight = 21
            Constraints.MinWidth = 145
            TabOrder = 0
            TabStop = True
          end
          object edtDeviation: TDBEdit
            Left = 160
            Top = 32
            Width = 41
            Height = 21
            Color = 16115403
            DataField = '_REMAINING_TIME_PERCENT'
            DataSource = dsData
            TabOrder = 1
          end
        end
        object gbBudgetOrder: TGroupBox
          Left = 0
          Top = 0
          Width = 313
          Height = 65
          Caption = ' ID %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%) '
          TabOrder = 0
          object lblStatus: TLabel
            Left = 8
            Top = 16
            Width = 34
            Height = 13
            Caption = #1057#1090#1072#1090#1091#1089
          end
          object lblBudgetOrderBranch: TLabel
            Left = 56
            Top = 16
            Width = 33
            Height = 13
            Caption = #1058#1055' '#1043#1083'.'
          end
          object lblBudgetOrderCode: TLabel
            Left = 120
            Top = 16
            Width = 34
            Height = 13
            Caption = #1053#1086#1084#1077#1088
          end
          object lblRegularityType: TLabel
            Left = 176
            Top = 16
            Width = 79
            Height = 13
            Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1087#1091#1083#1089'.'
          end
          object edtStatus: TDBEdit
            Left = 8
            Top = 32
            Width = 41
            Height = 21
            Color = clBtnFace
            DataField = '_BUDGET_ORDER_STATUS_CODE'
            DataSource = dsData
            TabOrder = 0
          end
          object cbBudgetOrderBranch: TJvDBLookupCombo
            Left = 56
            Top = 32
            Width = 57
            Height = 21
            DataField = '_BUDGET_ORDER_BRANCH_IDENTIFIER'
            DataSource = dsData
            TabOrder = 1
          end
          object edtBudgetOrderCode: TDBEdit
            Left = 120
            Top = 32
            Width = 49
            Height = 21
            Color = clBtnFace
            DataField = 'BUDGET_ORDER_CODE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          object tlbDocs: TToolBar
            Left = 265
            Top = 31
            Width = 37
            Height = 22
            Align = alNone
            AutoSize = True
            ButtonWidth = 37
            Caption = 'tlbDocs'
            Images = dmMain.ilDocs
            TabOrder = 3
            object btnDocs: TToolButton
              Left = 0
              Top = 0
              Action = actDocumentation
            end
          end
          object cbRegularityType: TJvDBLookupCombo
            Left = 176
            Top = 32
            Width = 89
            Height = 21
            DataField = '_BO_REGULARITY_TYPE_NAME'
            DataSource = dsData
            TabOrder = 4
          end
        end
        object gbBudgetOrderDescription: TGroupBox
          Left = 0
          Top = 72
          Width = 289
          Height = 65
          Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' %BudgetOrderAbbrev% '
          TabOrder = 3
          object edtDescription: TDBEdit
            Left = 8
            Top = 32
            Width = 273
            Height = 21
            DataField = 'DESCRIPTION'
            DataSource = dsData
            TabOrder = 0
          end
        end
        object gbDeveloperDept: TGroupBox
          Left = 664
          Top = 0
          Width = 337
          Height = 65
          Caption = ' '#1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev% '
          TabOrder = 2
          inline frDeveloperDept: TfrDeptFieldEditFrameBald
            Left = 8
            Top = 32
            Width = 321
            Height = 22
            HorzScrollBar.Visible = False
            VertScrollBar.Visible = False
            Constraints.MaxHeight = 22
            Constraints.MinHeight = 22
            TabOrder = 0
            TabStop = True
            DesignSize = (
              321
              22)
            inherited gbTreeNode: TGroupBox
              Width = 337
              DesignSize = (
                337
                49)
              inherited pnlTreeNode: TPanel
                Width = 321
                inherited pnlTreeNodeName: TPanel
                  Width = 174
                  DesignSize = (
                    174
                    22)
                  inherited edtTreeNodeName: TDBEdit
                    Width = 173
                  end
                end
                inherited pnlTreeNodeNo: TPanel
                  Left = 174
                end
                inherited pnlRightButtons: TPanel
                  Left = 285
                end
              end
            end
          end
        end
        object gbBudgetOrderPrices: TGroupBox
          Left = 512
          Top = 72
          Width = 265
          Height = 65
          Caption = ' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' (%BaseCurrency%) '#1087#1086' %BudgetOrderAbbrev% '
          TabOrder = 5
          object lblTotalPrice: TLabel
            Left = 8
            Top = 16
            Width = 56
            Height = 13
            Caption = #1055#1088#1080#1085#1094#1080#1087#1085#1072
          end
          object lblPlanTotalPrice: TLabel
            Left = 72
            Top = 16
            Width = 45
            Height = 13
            Caption = #1051#1080#1084#1080#1090#1085#1072
          end
          object lblRealTotalPrice: TLabel
            Left = 200
            Top = 16
            Width = 41
            Height = 13
            Caption = #1054#1090#1095#1077#1090#1085#1072
          end
          object lblBOIOPlanTotalPrice: TLabel
            Left = 136
            Top = 16
            Width = 44
            Height = 13
            Caption = #1055#1083#1072#1085#1086#1074#1072
          end
          object edtTotalPrice: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'TOTAL_PRICE'
            DataSource = dsData
            TabOrder = 0
          end
          object edtPlanTotalPrice: TDBEdit
            Left = 72
            Top = 32
            Width = 57
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'SUM_TOTAL_PRICE'
            DataSource = dsGridData
            ReadOnly = True
            TabOrder = 1
          end
          object edtRealTotalPrice: TDBEdit
            Left = 200
            Top = 32
            Width = 57
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'ACCOUNT_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 2
          end
          object edtBOIOPlanTotalPrice: TDBEdit
            Left = 136
            Top = 32
            Width = 57
            Height = 21
            Color = clBtnFace
            DataField = 'BOIO_PLAN_TOTAL_PRICE'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 3
          end
        end
        inline frProduct: TfrProductFieldEditFrame
          Left = 0
          Top = 144
          Width = 561
          Height = 49
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 49
          TabOrder = 6
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 561
            Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
            DesignSize = (
              561
              49)
            inherited pnlTreeNode: TPanel
              Width = 545
              inherited pnlTreeNodeName: TPanel
                Width = 363
                DesignSize = (
                  363
                  22)
                inherited edtTreeNodeName: TDBEdit
                  Width = 362
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 363
              end
              inherited pnlRightButtons: TPanel
                Left = 486
              end
            end
          end
        end
        object gbTotalPriceDeviation: TGroupBox
          Left = 784
          Top = 72
          Width = 217
          Height = 65
          Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
          TabOrder = 7
          object lblExpenseSpeedPercentSymbol: TLabel
            Left = 204
            Top = 36
            Width = 8
            Height = 13
            Caption = '%'
          end
          object lblExpenseSpeedPercent: TLabel
            Left = 168
            Top = 16
            Width = 14
            Height = 13
            Caption = '+/-'
          end
          object lblPercents: TLabel
            Left = 148
            Top = 36
            Width = 8
            Height = 13
            Caption = '%'
          end
          object lblEqualTo: TLabel
            Left = 102
            Top = 34
            Width = 6
            Height = 13
            Caption = '='
          end
          object lblPrimaryCurrency: TLabel
            Left = 77
            Top = 36
            Width = 82
            Height = 13
            Caption = '%BaseCurrency%'
          end
          object lblTotalPriceDeviation: TLabel
            Left = 8
            Top = 16
            Width = 43
            Height = 13
            Caption = #1054#1089#1090#1072#1090#1098#1082
          end
          object edtExpenseSpeedPercent: TDBEdit
            Left = 168
            Top = 32
            Width = 33
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = '_EXPENSE_SPEED_PERCENT'
            DataSource = dsData
            TabOrder = 0
          end
          object edtPlanToAccountPricePercent: TDBEdit
            Left = 112
            Top = 32
            Width = 33
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = '_REMAINING_TOTAL_PRICE_PERCENT'
            DataSource = dsData
            TabOrder = 1
          end
          object edtTotalPriceDeviation: TDBEdit
            Left = 8
            Top = 32
            Width = 65
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = '_DEVIATION_PRICE'
            DataSource = dsData
            TabOrder = 2
          end
        end
        object gbOrgTaskProposalState: TGroupBox
          Left = 568
          Top = 144
          Width = 433
          Height = 49
          Caption = ' '#1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
          TabOrder = 8
          object cbOrgTaskProposalState: TJvDBLookupCombo
            Left = 8
            Top = 20
            Width = 145
            Height = 21
            DeleteKeyClear = False
            DataField = '_ORG_TASK_PROPOSAL_STATE_NAME'
            DataSource = dsData
            DisplayEmpty = ' '
            TabOrder = 0
          end
        end
      end
      object pnlBottomGridButtons: TPanel
        Left = 0
        Top = 467
        Width = 1003
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object btnAddBudgetOrderItem: TBitBtn
          Left = 0
          Top = 5
          Width = 153
          Height = 25
          Action = actInsertRecord
          Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev%...'
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
          TabOrder = 0
        end
        object btnEditBudgetOrderItem: TBitBtn
          Left = 160
          Top = 5
          Width = 153
          Height = 25
          Action = actEditRecord
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev%...'
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
          TabOrder = 1
        end
        object edtSumTotalPrice: TDBEdit
          Left = 784
          Top = 0
          Width = 70
          Height = 21
          TabStop = False
          Color = 15258325
          DataField = 'SUM_TOTAL_PRICE'
          DataSource = dsTotals
          TabOrder = 2
        end
        object edtSumBOPricePercent: TDBEdit
          Left = 855
          Top = 0
          Width = 43
          Height = 21
          TabStop = False
          Color = 15258325
          DataField = 'SUM_BO_PRICE_PERCENT'
          DataSource = dsTotals
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtTotalPriceDeviationPercent: TDBEdit
          Left = 899
          Top = 0
          Width = 41
          Height = 21
          TabStop = False
          Color = 15258325
          DataField = '_TOTAL_PRICE_DEV_PERCENT'
          DataSource = dsTotals
          TabOrder = 4
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 96
    Top = 280
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryBudgetOrderItems
    Filtered = True
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
        Name = 'BUDGET_ORDER_ITEM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_DISTRIBUTION_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BUDGET_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
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
        Name = 'DISTRIBUTION_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRICE'
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
        Name = 'DISTRIBUTED_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'IS_CONFIRMED'
        DataType = ftFloat
      end
      item
        Name = 'NULL_WHEN_ANNULED'
        DataType = ftFloat
      end
      item
        Name = 'NULL_WHEN_CLOSED'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_TOTAL_PRICE_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'BOI_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_ORDER_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BO_PRICE_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'BOI_ORDER_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'IS_CANCELED'
        DataType = ftFloat
      end
      item
        Name = 'IS_FOR_RECONSIDERATION'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_ENTER_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_ENTER_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DECISION_APPROVE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_APPROVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CAN_ANNUL'
        DataType = ftFloat
      end
      item
        Name = 'BOIO_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'BC_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BC_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BC_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_ITEM_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_WORKDAYS_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_ITEM_TYPE_DISPLAY'
        DataType = ftWideString
        Size = 63
      end>
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 64
    Top = 280
    object cdsGridDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1080#1085
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
      Required = True
    end
    object cdsGridDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataBUDGET_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1080#1103
      FieldName = 'BUDGET_PRODUCT_CODE'
      Required = True
      OnChange = cdsGridDataBUDGET_PRODUCT_CODEChange
    end
    object cdsGridDataBUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsGridDataBUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_CODE'
      Required = True
      OnChange = cdsGridDataDEPT_CODEChange
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
      OnChange = cdsGridDataEND_DATEChange
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnChange = cdsGridDataBEGIN_DATEChange
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      FieldName = 'DISTRIBUTION_DATE_UNIT_CODE'
      Required = True
      OnChange = cdsGridDataDISTRIBUTION_DATE_UNIT_CODEChange
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1051#1080#1084#1080#1090#1085#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'TOTAL_PRICE'
      Required = True
      OnChange = cdsGridDataTOTAL_PRICEChange
      OnValidate = cdsGridDataTOTAL_PRICEValidate
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
      ProviderFlags = []
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      ProviderFlags = []
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
      ProviderFlags = []
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
      ProviderFlags = []
    end
    object cdsGridDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
      ProviderFlags = []
    end
    object cdsGridDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
      ProviderFlags = []
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
      ProviderFlags = []
    end
    object cdsGridDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
      ProviderFlags = []
    end
    object cdsGridData_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BOI_DISTRIBUTION_TYPE_NAME'
      LookupDataSet = cdsBOIDistricutionTypes
      LookupKeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      LookupResultField = 'BOI_DISTRIBUTION_TYPE_NAME'
      KeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object cdsGridData_DISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DISTRIBUTION_DATE_UNIT_NAME'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'DISTRIBUTION_DATE_UNIT_CODE'
      ProviderFlags = []
      Size = 50
      Lookup = True
    end
    object cdsGridData_BUDGET_MODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_MODE'
      Calculated = True
    end
    object cdsGridData_DISTRIB_DATE_UNIT_AVG_WORKDAYS: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DISTRIB_DATE_UNIT_AVG_WORKDAYS'
      LookupDataSet = cdsTimeUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'AVERAGE_WORKDAYS'
      KeyFields = 'DISTRIBUTION_DATE_UNIT_CODE'
      ProviderFlags = []
      Lookup = True
    end
    object cdsGridData_REMAINING_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsGridData_DEVIATION_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEVIATION_PERCENT'
      OnGetText = cdsGridData_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldKind = fkCalculated
      FieldName = '_BUDGET_ORDER_ITEM_STATUS_CODE'
      OnGetText = cdsGridData_BUDGET_ORDER_ITEM_STATUS_CODEGetText
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsGridData_BOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_BOI_DISTRIBUTION_TYPE_ABBREV'
      LookupDataSet = cdsBOIDistricutionTypes
      LookupKeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      LookupResultField = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      KeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_REMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_TOTAL_PRICE_PERCENT'
      OnGetText = cdsGridData_REMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsGridDataIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
      OnValidate = cdsGridDataIS_CONFIRMEDValidate
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DISTRIBUTED_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = cdsGridDataDISTRIBUTED_SINGLE_PRICEChange
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsGridDataNULL_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'NULL_WHEN_ANNULED'
      ProviderFlags = []
    end
    object cdsGridDataNULL_WHEN_CLOSED: TAbmesFloatField
      FieldName = 'NULL_WHEN_CLOSED'
      ProviderFlags = []
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
      ProviderFlags = []
      OnGetText = cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsGridDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsGridDataBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      ProviderFlags = []
      Size = 100
    end
    object cdsGridDataBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
      ProviderFlags = []
      OnGetText = cdsGridDataBO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataBOI_ORDER_COUNT: TAbmesFloatField
      FieldName = 'BOI_ORDER_COUNT'
      ProviderFlags = []
      OnGetText = cdsGridDataBOI_ORDER_COUNTGetText
    end
    object cdsGridDataIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
      OnValidate = cdsGridDataIS_CANCELEDValidate
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FOR_RECONSIDERATION: TAbmesFloatField
      FieldName = 'IS_FOR_RECONSIDERATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDECISION_ENTER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_ENTER_EMPLOYEE_CODE'
    end
    object cdsGridDataDECISION_ENTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_ENTER_DATE'
    end
    object cdsGridDataDECISION_APPROVE_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_APPROVE_EMPLOYEE_CODE'
    end
    object cdsGridDataDECISION_APPROVE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'DECISION_APPROVE_DATE'
    end
    object cdsGridData_BO_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BO_PRICE_PERCENT'
      OnGetText = cdsGridData_BO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsGridDataCAN_ANNUL: TAbmesFloatField
      FieldName = 'CAN_ANNUL'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridData_DAYS_TO_START: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DAYS_TO_START'
      Calculated = True
    end
    object cdsGridData_REMAINING_TIME_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_TIME_PERCENT'
      OnGetText = cdsGridData_REMAINING_TIME_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsGridData_BOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BOI_ORDER_TYPE_ABBREV'
      LookupDataSet = cdsBOIOrderTypes
      LookupKeyFields = 'BOI_ORDER_TYPE_CODE'
      LookupResultField = 'BOI_ORDER_TYPE_ABBREV'
      KeyFields = 'BOI_ORDER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridDataBOIO_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOIO_TOTAL_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsGridDataBC_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_BRANCH_CODE'
      ProviderFlags = []
    end
    object cdsGridDataBC_DOC_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_CODE'
      ProviderFlags = []
    end
    object cdsGridDataBC_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'BC_HAS_DOC'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsGridData_BUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BUDGET_ORDER_ITEM_TYPE_ABBREV'
      LookupDataSet = cdsBudgetOrderItemTypes
      LookupKeyFields = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      LookupResultField = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      KeyFields = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_PRINT_SUM_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRINT_SUM_TOTAL_PRICE'
      OnGetText = cdsGridData_PRINT_SUM_TOTAL_PRICEGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_PRINT_SUM_BO_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRINT_SUM_BO_PRICE_PERCENT'
      OnGetText = cdsGridData_PRINT_SUM_BO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_PRINT_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRINT_TOTAL_PRICE_DEV_PERCENT'
      OnGetText = cdsGridData_PRINT_TOTAL_PRICE_DEV_PERCENTGetText
      Calculated = True
    end
    object cdsGridData_MAX_BUDGET_ORDER_ITEM_CODE: TAggregateField
      FieldName = '_MAX_BUDGET_ORDER_ITEM_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(BUDGET_ORDER_ITEM_CODE)'
    end
    object cdsGridDataSUM_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_TOTAL_PRICE'
      OnGetText = cdsGridDataSUM_TOTAL_PRICEGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE * NULL_WHEN_ANNULED)'
    end
    object cdsGridDataSUM_BO_PRICE_PERCENT: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_BO_PRICE_PERCENT'
      OnGetText = cdsGridDataSUM_BO_PRICE_PERCENTGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(BO_PRICE_PERCENT * NULL_WHEN_ANNULED)'
    end
    object cdsGridDataSUM_REMAINING_TOTAL_PR_PERCENT: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_REMAINING_TOTAL_PR_PERCENT'
      OnGetText = cdsGridDataSUM_REMAINING_TOTAL_PR_PERCENTGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(REMAINING_TOTAL_PRICE_PERCENT * NULL_WHEN_ANNULED)'
    end
  end
  inherited alActions: TActionList
    Left = 232
    Top = 248
    inherited actForm: TAction
      Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
    end
    inherited actInsertRecord: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev%...'
    end
    inherited actEditRecord: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev%...'
    end
    object actDocumentation: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% (%BudgetOrderItemAbbrev%)'
      OnExecute = actDocumentationExecute
    end
    object actReinitializeInEditMode: TAction
      Caption = 'actReinitializeInEditMode'
      OnExecute = actReinitializeInEditModeExecute
    end
    object actCloseBudgetOrder: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %BudgetOrderAbbrev%...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %BudgetOrderAbbrev%'
      ImageIndex = 17
      OnExecute = actCloseBudgetOrderExecute
      OnUpdate = actCloseBudgetOrderUpdate
    end
    object actAnnulBudgetOrder: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderAbbrev%...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderAbbrev%'
      ImageIndex = 16
      OnExecute = actAnnulBudgetOrderExecute
      OnUpdate = actAnnulBudgetOrderUpdate
    end
    object actBudgetOrderItemDoc: TAction
      Caption = 'actBudgetOrderItemDoc'
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072
      OnExecute = actBudgetOrderItemDocExecute
      OnUpdate = actBudgetOrderItemDocUpdate
    end
    object actBudgetClassDoc: TAction
      Caption = 'actBudgetClassDoc'
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1057#1090#1072#1090#1080#1103
      OnExecute = actBudgetClassDocExecute
      OnUpdate = actBudgetClassDocUpdate
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
    Left = 64
    Top = 312
  end
  inherited dsGridDataParams: TDataSource
    Left = 96
    Top = 312
  end
  inherited dsData: TDataSource
    Left = 96
    Top = 248
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conBudget
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBudgetOrder'
    AfterOpen = cdsDataAfterOpen
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 64
    Top = 248
    object cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnChange = cdsDataBUDGET_ORDER_BRANCH_CODEChange
    end
    object cdsDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataGENERATOR_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1041#1041' / '#1058#1055
      FieldName = 'GENERATOR_DEPT_CODE'
      Required = True
      OnChange = cdsDataGENERATOR_DEPT_CODEChange
    end
    object cdsDataGENERATOR_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1041#1041' / '#1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'GENERATOR_EMPLOYEE_CODE'
      Required = True
    end
    object cdsDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1041#1041' / '#1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsDataBEGIN_DATEGetText
    end
    object cdsDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' '#1041#1041' / '#1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsDataDESCRIPTION: TAbmesWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 50
    end
    object cdsDataBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1072#1090#1077#1075#1086#1088#1080#1103
      FieldName = 'BO_REGULARITY_TYPE_CODE'
      Required = True
    end
    object cdsDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object cdsDataCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsDataCLOSE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_TIME'
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataANNUL_DATE: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_DATE'
    end
    object cdsDataANNUL_TIME: TAbmesSQLTimeStampField
      FieldName = 'ANNUL_TIME'
    end
    object cdsDataqryBudgetOrderItems: TDataSetField
      FieldName = 'qryBudgetOrderItems'
    end
    object cdsData_BUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BUDGET_ORDER_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'BUDGET_ORDER_BRANCH_CODE'
      Lookup = True
    end
    object cdsData_BO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BO_REGULARITY_TYPE_NAME'
      LookupDataSet = cdsRegularityTypes
      LookupKeyFields = 'BO_REGULARITY_TYPE_CODE'
      LookupResultField = 'BO_REGULARITY_TYPE_NAME'
      KeyFields = 'BO_REGULARITY_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsData_BUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_BUDGET_ORDER_STATUS_CODE'
      OnGetText = cdsData_BUDGET_ORDER_STATUS_CODEGetText
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1085#1094#1080#1087#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'TOTAL_PRICE'
      Required = True
      OnValidate = cdsDataTOTAL_PRICEValidate
      DisplayFormat = ',0'
      EditFormat = '0'
    end
    object cdsDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
      OnGetText = cdsDataREMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDataPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDataDEVELOPER_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev%'
      FieldName = 'DEVELOPER_DEPT_CODE'
      OnChange = cdsDataDEVELOPER_DEPT_CODEChange
    end
    object cdsData_PLAN_TO_ACCOUNT_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PLAN_TO_ACCOUNT_PRICE_PERCENT'
      OnGetText = cdsData_PLAN_TO_ACCOUNT_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_EXPENSE_SPEED_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EXPENSE_SPEED_PERCENT'
      OnGetText = cdsData_EXPENSE_SPEED_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsDataBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object cdsDataCAN_ANNUL: TAbmesFloatField
      FieldName = 'CAN_ANNUL'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsData_REMAINING_TIME_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_TIME_PERCENT'
      OnGetText = cdsData_REMAINING_TIME_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsData_DEVIATION_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DEVIATION_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsData_REMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REMAINING_TOTAL_PRICE_PERCENT'
      OnGetText = cdsData_REMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsDataGENERATOR_DEPT_NAME: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataDEVELOPER_DEPT_NAME: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
    end
    object cdsData_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_TASK_PROPOSAL_STATE_NAME'
      LookupDataSet = cdsOrgTaskProposalStates
      LookupKeyFields = 'ORG_TASK_PROPOSAL_STATE_CODE'
      LookupResultField = 'ORG_TASK_PROPOSAL_STATE_NAME'
      KeyFields = 'ORG_TASK_PROPOSAL_STATE_CODE'
      Lookup = True
    end
    object cdsDataBOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOIO_PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
  end
  object cdsRegularityTypes: TAbmesClientDataSet [9]
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBORegularityTypes'
    Left = 208
    Top = 296
    object cdsRegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object cdsRegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
  end
  object cdsBranches: TAbmesClientDataSet [10]
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 240
    Top = 296
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      DisplayWidth = 10
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
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
  object cdsBOIDistricutionTypes: TAbmesClientDataSet [11]
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIDistributionTypes'
    Left = 208
    Top = 328
    object cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
    object cdsBOIDistricutionTypesBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsTimeUnits: TAbmesClientDataSet [12]
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Filter = '(THE_DATE_UNIT_CODE > 1)'
    Filtered = True
    Params = <>
    ProviderName = 'prvTimeUnits'
    Left = 240
    Top = 328
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
    object cdsTimeUnitsAVERAGE_WORKDAYS: TAbmesFloatField
      FieldName = 'AVERAGE_WORKDAYS'
    end
    object cdsTimeUnitsTHE_DATE_UNIT_ABBREV: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_ABBREV'
      Size = 50
    end
  end
  object cdsBOIOrderTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIOrderTypes'
    Left = 272
    Top = 328
    object cdsBOIOrderTypesBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_NAME'
      Size = 100
    end
    object cdsBOIOrderTypesBOI_ORDER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_ORDER_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsBudgetOrderItemTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Filtered = True
    Params = <>
    ProviderName = 'prvBudgetOrderItemTypes'
    OnFilterRecord = cdsBudgetOrderItemTypesFilterRecord
    Left = 272
    Top = 296
    object cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NO: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_NO'
      Required = True
    end
    object cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object cdsTotals: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsTotalsCalcFields
    Left = 680
    Top = 472
    object cdsTotalsSUM_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SUM_TOTAL_PRICE'
      OnGetText = cdsTotalsSUM_TOTAL_PRICEGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsTotalsSUM_BO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'SUM_BO_PRICE_PERCENT'
      OnGetText = cdsTotalsSUM_BO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsTotalsSUM_BOIO_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'SUM_BOIO_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsTotals_TOTAL_PRICE_DEV_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_PRICE_DEV_PERCENT'
      OnGetText = cdsTotals_TOTAL_PRICE_DEV_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
  end
  object dsTotals: TDataSource
    DataSet = cdsTotals
    Left = 712
    Top = 472
  end
  object cdsOrgTaskProposalStates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvOrgTaskProposalStates'
    Left = 304
    Top = 296
    object cdsOrgTaskProposalStatesORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
