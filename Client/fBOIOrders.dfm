inherited fmBOIOrders: TfmBOIOrders
  Left = 246
  Top = 198
  ClientHeight = 520
  ClientWidth = 992
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 485
    Width = 992
    object lblValuesInBaseCurrency: TLabel [0]
      Left = 8
      Top = 8
      Width = 173
      Height = 13
      Caption = #1057#1090#1086#1081#1085#1086#1089#1090#1080#1090#1077' '#1089#1072' '#1074' %BaseCurrency%'
    end
    inherited pnlOKCancel: TPanel
      Left = 724
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 635
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 903
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 992
    Height = 485
    inherited sptDetail: TSplitter
      Top = 298
      Width = 976
      Height = 6
    end
    inherited pnlDetailGrid: TPanel
      Top = 304
      Width = 976
      Height = 173
      inherited pnlDetailNavigator: TPanel
        Width = 976
        object lblDetailGridTitle: TLabel [0]
          Left = 526
          Top = 6
          Width = 450
          Height = 13
          Alignment = taRightJustify
          Caption = 
            #1054#1088#1076#1077#1088#1080' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderAbbrev% (%BudgetOrderItemOrderAbb' +
            'rev%)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited navDetail: TDBColorNavigator
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 144
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
        object tlbDocs: TToolBar
          Left = 200
          Top = 0
          Width = 372
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 2
          object sepBeforeConsumerDeptDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblBOIOrderDoc: TLabel
            Left = 8
            Top = 0
            Width = 162
            Height = 24
            Caption = ' %BudgetOrderItemOrderAbbrev% '
            Layout = tlCenter
          end
          object btnBOIOrderDoc: TToolButton
            Left = 170
            Top = 0
            Action = actBOIOrderDoc
          end
          object sepAfterBOIOrderDoc: TToolButton
            Left = 207
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblConsumerDeptDoc: TLabel
            Left = 215
            Top = 0
            Width = 120
            Height = 24
            Caption = ' '#1058#1055' - '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088' '
            Layout = tlCenter
          end
          object btnConsumerDeptDoc: TToolButton
            Left = 335
            Top = 0
            Action = actConsumerDeptDoc
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 976
        Height = 116
        HorzScrollBar.VisibleMode = sbNeverShowEh
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 7
        OnGetCellParams = grdDetailGetCellParams
        OnSortMarkingChanged = grdDetailSortMarkingChanged
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BOI_ORDER_STATUS_CODE'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderItemOrderAbbrev%|'#1057#1090#1072#1090
            Width = 34
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BOI_ORDER_CODE'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderItemOrderAbbrev%|No'
            Width = 24
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CONSUMER_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
            Width = 66
          end>
      end
      object pnlBottomGridBottom: TPanel
        Left = 0
        Top = 140
        Width = 976
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btnAddOrder: TBitBtn
          Left = 0
          Top = 8
          Width = 137
          Height = 25
          Action = actInsertDetailRecord
          Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
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
        object btnEditOrder: TBitBtn
          Left = 144
          Top = 8
          Width = 137
          Height = 25
          Action = actEditDetailRecord
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
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
        object edtSumBOPricePercent: TDBEdit
          Left = 635
          Top = -2
          Width = 67
          Height = 21
          TabStop = False
          Color = 15258325
          DataSource = dsDetail
          TabOrder = 3
        end
        object edtDetailSumTotalPrice: TDBEdit
          Left = 547
          Top = -2
          Width = 67
          Height = 21
          TabStop = False
          Color = 15258325
          DataSource = dsDetail
          TabOrder = 2
        end
        object edtSumTotalAccountPrice: TDBEdit
          Left = 731
          Top = -2
          Width = 67
          Height = 21
          TabStop = False
          Color = 15258325
          DataSource = dsDetail
          TabOrder = 4
        end
      end
    end
    inherited pnlGrid: TPanel
      Width = 976
      Height = 290
      inherited pnlNavigator: TPanel
        Width = 976
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
        object tlbBudgetOrderDoc: TToolBar
          Left = 176
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
        object tlbBudgetOrderItemDoc: TToolBar
          Left = 337
          Top = 0
          Width = 181
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
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
            Height = 22
            Caption = ' %BudgetOrderItemAbbrev% '
            Layout = tlCenter
          end
          object btnBudgetOrderItemDoc: TToolButton
            Left = 144
            Top = 0
            Action = actBudgetOrderItemDoc
          end
        end
        object tlbBudgetClassDoc: TToolBar
          Left = 518
          Top = 0
          Width = 86
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 5
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
            Height = 22
            Caption = ' '#1057#1090#1072#1090#1080#1103' '
            Layout = tlCenter
          end
          object btnBudgetClassDoc: TToolButton
            Left = 49
            Top = 0
            Action = actBudgetClassDoc
          end
        end
        object tlbToggleButtons: TToolBar
          Left = 952
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          TabOrder = 6
          object btnToggleProductDisplay: TSpeedButton
            Tag = 2
            Left = 0
            Top = 0
            Width = 24
            Height = 24
            Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1054#1087#1080#1089#1072#1085#1080#1077'/'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            AllowAllUp = True
            GroupIndex = 2
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
        Width = 976
        Height = 234
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 7
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_STATUS_CODE'
            Footers = <>
            Title.Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%)|'#1057#1090#1072' '#1090#1091#1089
            Width = 26
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_IDENTIFIER'
            Footers = <>
            Title.Caption = 
              '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%)|ID %BudgetOrder' +
              'Abbrev%'
            Width = 61
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            Tag = 2
            Title.Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%)|'#1054#1087#1080#1089#1072#1085#1080#1077
            Width = 127
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_PRODUCT_NAME'
            Footers = <>
            Tag = 3
            Title.Caption = 
              '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%)|'#1059#1054#1073', '#1089#1074#1098#1088#1079#1072#1085' '#1089' ' +
              '%BudgetOrderAbbrev%'
            Visible = False
            Width = 127
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
            Footers = <>
            Title.Caption = '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%)|'#1057#1090#1072#1076#1080#1081
            Title.Orientation = tohVertical
            Width = 20
          end
          item
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = 
              '%BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%)|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090 +
              #1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev%'
            Width = 99
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ITEM_STATUS_CODE'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|ID' +
              ' %BudgetOrderItemAbbrev%|'#1057#1090#1072#1090
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_ITEM_CODE'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|ID' +
              ' %BudgetOrderItemAbbrev%|No'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_ORDER_ITEM_TYPE'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|ID' +
              ' %BudgetOrderItemAbbrev%|'#1042#1080#1076
            Width = 22
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_PRODUCT_NO'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1057#1090 +
              #1072#1090#1080#1103'|'#1050#1086#1076
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BUDGET_PRODUCT_NAME'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1057#1090 +
              #1072#1090#1080#1103'|'#1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 153
          end
          item
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'BOI_BEGIN_DATE'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1042#1088 +
              #1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev%'
            Width = 99
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1058#1055 +
              ' '#1050#1086#1085#1089#1091'- '#1084#1072#1090#1086#1088
            Width = 38
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1053#1072 +
              #1095#1080#1085
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1051#1080 +
              #1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderItemAbbrev%|'#1054#1073#1097#1072
            Width = 76
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1051#1080 +
              #1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderItemAbbrev%|'#1054#1089#1090' %'
            Width = 33
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BO_PRICE_PERCENT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 
              #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderItemAbbrev%)|'#1051#1080 +
              #1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1085#1072' %BudgetOrderItemAbbrev%|% '#1086#1090' %BudgetOrderAbbre' +
              'v%'
            Width = 33
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BOI_ORDER_COUNT'
            Footers = <>
            Title.Caption = '%BudgetOrderItemOrderAbbrev%'
            Title.Orientation = tohVertical
            Width = 17
          end>
      end
      object pnlUpperGridBottom: TPanel
        Left = 0
        Top = 258
        Width = 976
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btnBudgetOrderItem: TBitBtn
          Left = 0
          Top = 4
          Width = 137
          Height = 25
          Action = actEditRecord
          Caption = #1055#1088#1077#1075#1083#1077#1076' '#1085#1072' %BudgetOrderItemAbbrev%...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF0000000000000000000000000000000000FFFF
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000000000FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000000000FFFF
            FF00FF00FF00FF00FF00FF00FF00848484000000000000000000000000008484
            8400FF00FF00000000000000000000000000FF00FF00FF00FF0000000000FFFF
            FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FF00FF000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00008484840000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF008484840000000000FFFF0000000000000000000000000000FFFFFF000000
            0000FF00FF000000000084848400FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
            0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
            0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
            000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF000000
            0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00848484000000000000000000000000000000000000000000000000000000
            0000FF00FF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00848484000000000000000000000000008484
            8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
        end
        object edtSumTotalPrice: TDBEdit
          Left = 792
          Top = -2
          Width = 80
          Height = 21
          Color = 15258325
          DataField = 'SUM_TOTAL_PRICE'
          DataSource = dsGridData
          TabOrder = 1
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conBudget
    FieldDefs = <
      item
        Name = 'BUDGET_ORDER_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 182
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
        Name = 'BUDGET_ITEM_STATUS_CODE'
        DataType = ftFloat
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
        Name = 'DISTRIBUTION_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_DISTRIBUTION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'BOI_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'BO_PRICE_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_TOTAL_PRICE_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'BO_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BO_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BO_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'BOI_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_HAS_DOC'
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
        Name = 'BOI_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_ORDER_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BOI_DISTRIBUTION_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DISTRIBUTED_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_ITEM_TYPE'
        DataType = ftWideString
        Size = 205
      end
      item
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_ITEM_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'BUDGET_ORDER_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'BOI_IS_CONFIRMED'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '2'
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
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
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
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'MAX_ITEM_STATUS_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_PRODUCT_CODE'
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
        Name = 'IS_FILTERED_BY_BOI_ORDERS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MIN_BOIO_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_BOIO_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
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
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS_2'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrdersMaster'
    OnCalcFields = cdsGridDataCalcFields
    Left = 24
    Top = 152
    object cdsGridDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
      OnGetText = cdsGridDataBUDGET_ORDER_STATUS_CODEGetText
    end
    object cdsGridDataBUDGET_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_IDENTIFIER'
      Size = 182
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
    object cdsGridDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBUDGET_ITEM_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'BUDGET_ITEM_STATUS_CODE'
      OnGetText = cdsGridDataBUDGET_ITEM_STATUS_CODEGetText
    end
    object cdsGridDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsGridDataDISTRIBUTION_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DISTRIBUTION_DATE_UNIT_CODE'
    end
    object cdsGridDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsGridDataBOI_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_BEGIN_DATE'
      OnGetText = cdsGridDataBOI_BEGIN_DATEGetText
    end
    object cdsGridDataBOI_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_END_DATE'
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataBO_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_PRICE_PERCENT'
      OnGetText = cdsGridDataBO_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREMAINING_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'REMAINING_TOTAL_PRICE_PERCENT'
      OnGetText = cdsGridDataREMAINING_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataBO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_BRANCH_CODE'
    end
    object cdsGridDataBO_DOC_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_CODE'
    end
    object cdsGridDataBO_HAS_DOC: TAbmesFloatField
      FieldName = 'BO_HAS_DOC'
    end
    object cdsGridDataBOI_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOI_DOC_BRANCH_CODE'
    end
    object cdsGridDataBOI_DOC_CODE: TAbmesFloatField
      FieldName = 'BOI_DOC_CODE'
    end
    object cdsGridDataBOI_HAS_DOC: TAbmesFloatField
      FieldName = 'BOI_HAS_DOC'
    end
    object cdsGridDataBC_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_BRANCH_CODE'
    end
    object cdsGridDataBC_DOC_CODE: TAbmesFloatField
      FieldName = 'BC_DOC_CODE'
    end
    object cdsGridDataBC_HAS_DOC: TAbmesFloatField
      FieldName = 'BC_HAS_DOC'
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
    object cdsGridData_BOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BOI_DISTRIBUTION_TYPE_NAME'
      LookupDataSet = cdsBOIDistributionTypes
      LookupKeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      LookupResultField = 'BOI_DISTRIBUTION_TYPE_NAME'
      KeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      ProviderFlags = []
      Size = 100
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
    object cdsGridDataBOI_ORDER_COUNT: TAbmesFloatField
      FieldName = 'BOI_ORDER_COUNT'
      OnGetText = cdsGridDataBOI_ORDER_COUNTGetText
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsGridDataBOI_DISTRIBUTION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataDISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DISTRIBUTED_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridData_BUDGET_MODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BUDGET_MODE'
      Calculated = True
    end
    object cdsGridData_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object cdsGridData_DETAIL_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DETAIL_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object cdsGridDataBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object cdsGridDataBUDGET_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_NO'
    end
    object cdsGridDataBUDGET_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataBUDGET_ORDER_ITEM_TYPE: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
      Size = 205
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsGridDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsGridDataBUDGET_ORDER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataORG_TASK_PROPOSAL_STATE_ABBREV: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROPOSAL_STATE_ABBREV'
      Size = 100
    end
    object cdsGridDataBOI_IS_CONFIRMED: TAbmesFloatField
      FieldName = 'BOI_IS_CONFIRMED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSUM_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 88
    inherited actFilter: TAction
      Visible = True
    end
    inherited actEditRecord: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076' '#1085#1072' %BudgetOrderItemAbbrev%...'
      ImageIndex = 61
    end
    object actBudgetOrderDoc: TAction
      Caption = 'actBudgetOrderDoc'
      OnExecute = actBudgetOrderDocExecute
      OnUpdate = actBudgetOrderDocUpdate
    end
    object actBudgetOrderItemDoc: TAction
      Caption = 'actBudgetOrderItemDoc'
      OnExecute = actBudgetOrderItemDocExecute
      OnUpdate = actBudgetOrderItemDocUpdate
    end
    object actBudgetClassDoc: TAction
      Caption = 'actBudgetClassDoc'
      OnExecute = actBudgetClassDocExecute
      OnUpdate = actBudgetClassDocUpdate
    end
    object actConsumerDeptDoc: TAction
      Caption = 'actConsumerDeptDoc'
      OnExecute = actConsumerDeptDocExecute
      OnUpdate = actConsumerDeptDocUpdate
    end
    object actBOIOrderDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' %BudgetOrderItemOrderAbbrev%'
      ImageIndex = 98
      OnExecute = actBOIOrderDocExecute
      OnUpdate = actBOIOrderDocUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 24
    Top = 184
    object pdsGridDataParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
      ProviderFlags = []
    end
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
      DisplayLabel = #1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097'o %BudgetOrderAbbrev%'
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object pdsGridDataParamsDEVELOPER_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097'o %BudgetOrderAbbrev%'
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev% - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev% - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
    end
    object pdsGridDataParamsMIN_ITEM_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemAbbrev% - '#1054#1090
      FieldName = 'MIN_ITEM_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_ITEM_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemAbbrev% - '#1044#1086
      FieldName = 'MAX_ITEM_STATUS_CODE'
    end
    object pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
    end
    object pdsGridDataParamsBUDGET_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = '%BudgetClassName%'
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
      FieldName = 'DEPT_CODE'
    end
    object pdsGridDataParamsBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1095#1080#1085
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object pdsGridDataParamsITEM_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev% - '#1053#1072#1095#1072#1083#1086
      FieldName = 'ITEM_BEGIN_DATE'
    end
    object pdsGridDataParamsITEM_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev% - '#1050#1088#1072#1081
      FieldName = 'ITEM_END_DATE'
    end
    object pdsGridDataParams_BUDGET_ORDER_BRANCH: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_BUDGET_ORDER_BRANCH'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'BUDGET_ORDER_BRANCH_CODE'
      Size = 50
      Lookup = True
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
      LookupDataSet = cdsBOIDistributionTypes
      LookupKeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      LookupResultField = 'BOI_DISTRIBUTION_TYPE_NAME'
      KeyFields = 'BOI_DISTRIBUTION_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsIS_FILTERED_BY_BOI_ORDERS: TAbmesFloatField
      DisplayLabel = #1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090
      FieldName = 'IS_FILTERED_BY_BOI_ORDERS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsMIN_BOIO_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemOrderAbbrev% - '#1054#1090
      FieldName = 'MIN_BOIO_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_BOIO_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemOrderAbbrev% - '#1044#1086
      FieldName = 'MAX_BOIO_STATUS_CODE'
    end
    object pdsGridDataParamsBOI_ORDER_CODE: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'BOI_ORDER_CODE'
    end
    object pdsGridDataParamsCONSUMER_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
      FieldName = 'CONSUMER_DEPT_CODE'
    end
    object pdsGridDataParamsBOIO_BEGIN_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' %BudgetOrderItemOrderAbbrev% - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BOIO_BEGIN_PLAN_DATE'
    end
    object pdsGridDataParamsBOIO_END_PLAN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' %BudgetOrderItemOrderAbbrev% - '#1050#1088#1072#1081
      FieldName = 'BOIO_END_PLAN_DATE'
    end
    object pdsGridDataParamsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev%'
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object pdsGridDataParamsALL_FILTERED_PRODUCTS_2: TAbmesFloatField
      FieldName = 'ALL_FILTERED_PRODUCTS_2'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS_2: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS_2'
      Size = 4000
    end
    object pdsGridDataParamsBOIO_BEGIN_ACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOIO_BEGIN_ACCOUNT_DATE'
    end
    object pdsGridDataParamsBOIO_END_ACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOIO_END_ACCOUNT_DATE'
    end
    object pdsGridDataParamsDOCUMENT_ID_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_ID_TEXT'
      Size = 50
    end
    object pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev%'
      FieldName = 'ORG_TASK_PROPOSAL_STATE_CODE'
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
    object pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DEAL_TYPE_CODE'
    end
    object pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsGridDataParamsDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object pdsGridDataParams_DELIVERY_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DELIVERY_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'DCD_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 184
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 120
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conBudget
    Filter = 'ANNUL_EMPLOYEE_CODE is null'
    Params = <
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_BOI_ORDERS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_BOIO_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_BOIO_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CONSUMER_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_BEGIN_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BOIO_END_PLAN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_BEGIN_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BOIO_END_ACCOUNT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_ID_TEXT'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptUnknown
        Size = 4000
      end>
    ProviderName = 'prvBOIOrdersDetail'
    BeforeOpen = cdsDetailBeforeOpen
    Left = 88
    object cdsDetailBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_BRANCH_CODE'
    end
    object cdsDetailBOI_ORDER_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_CODE'
    end
    object cdsDetailBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailBOI_ORDER_STATUS_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'BOI_ORDER_STATUS_CODE'
      OnGetText = cdsDetailBOI_ORDER_STATUS_CODEGetText
    end
    object cdsDetailCONSUMER_DEPT_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_CODE'
    end
    object cdsDetailCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetailCONSUMER_DEPT_HAS_DOC: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_HAS_DOC'
    end
    object cdsDetailCONSUMER_DEPT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_DOC_BRANCH_CODE'
    end
    object cdsDetailCONSUMER_DEPT_DOC_CODE: TAbmesFloatField
      FieldName = 'CONSUMER_DEPT_DOC_CODE'
    end
    object cdsDetailPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailPRODUCT_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRODUCT_HAS_DOC'
    end
    object cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.#'
    end
    object cdsDetailPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsDetailPRODUCT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailPRODUCT_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'PRODUCT_BOI_PRICE_PERCENT'
      OnGetText = cdsDetailPRODUCT_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsDetailSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object cdsDetailPRODUCT_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY'
      DisplayFormat = ',0.##'
      EditFormat = ',0.##'
    end
    object cdsDetailPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_LAST_DEAL_DATE'
    end
    object cdsDetailCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsDetailDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object cdsDetailCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDetailCURRENCY_NAME: TAbmesWideStringField
      FieldName = 'CURRENCY_NAME'
      Size = 5
    end
    object cdsDetailPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object cdsDetailCOMPANY_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'COMPANY_BOI_PRICE_PERCENT'
      OnGetText = cdsDetailCOMPANY_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailDOCUMENT_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_TYPE_TEXT'
      Size = 50
    end
    object cdsDetailDOCUMENT_ID_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_ID_TEXT'
      Size = 50
    end
    object cdsDetailACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACCOUNT_DATE'
    end
    object cdsDetailPRICE_DEVIATION: TAbmesFloatField
      FieldName = 'PRICE_DEVIATION'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailDATES_DEVIATION: TAbmesFloatField
      FieldName = 'DATES_DEVIATION'
    end
    object cdsDetailCOMPANY_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_NAME'
      Size = 153
    end
    object cdsDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.#'
    end
    object cdsDetailPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.#'
    end
    object cdsDetailPRODUCT_REAL_QUANTITY_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY_DEV_P'
      OnGetText = cdsDetailPRODUCT_REAL_QUANTITY_DEV_PGetText
      DisplayFormat = ',0'
    end
    object cdsDetailPRODUCT_REAL_ACC_QTY_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACC_QTY_DEV_P'
      OnGetText = cdsDetailPRODUCT_REAL_ACC_QTY_DEV_PGetText
      DisplayFormat = ',0'
    end
    object cdsDetailPRODUCT_AVG_S_PRICE_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_AVG_S_PRICE_DEV_P'
      OnGetText = cdsDetailPRODUCT_AVG_S_PRICE_DEV_PGetText
      DisplayFormat = ',0'
    end
    object cdsDetailPRODUCT_REAL_PRICE_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_PRICE_DEV_P'
      OnGetText = cdsDetailPRODUCT_REAL_PRICE_DEV_PGetText
      DisplayFormat = ',0'
    end
    object cdsDetailPRODUCT_LAST_SD_DAYS_DEV: TAbmesFloatField
      FieldName = 'PRODUCT_LAST_SD_DAYS_DEV'
    end
    object cdsDetailWASTE_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'WASTE_BOI_PRICE_PERCENT'
      OnGetText = cdsDetailWASTE_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailPRODUCT_ACC_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_ACC_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsDetailPRODUCT_AVG_ACC_S_PRICE_DEV_P: TAbmesFloatField
      FieldName = 'PRODUCT_AVG_ACC_S_PRICE_DEV_P'
      OnGetText = cdsDetailPRODUCT_AVG_ACC_S_PRICE_DEV_PGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailPRICE_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'PRICE_DEVIATION_PERCENT'
      OnGetText = cdsDetailPRICE_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsDetailANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDetailNULL_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'NULL_WHEN_ANNULED'
    end
    object cdsDetailDELIVERY_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DELIVERY_IDENTIFIER'
      Size = 100
    end
    object cdsDetailHAS_FIN_ORDER: TAbmesFloatField
      FieldName = 'HAS_FIN_ORDER'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDetail_SUM_PRODUCT_REAL_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PRODUCT_REAL_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * PRODUCT_REAL_TOTAL_PRICE)'
    end
    object cdsDetailMAX_BOI_ORDER_CODE: TAggregateField
      FieldName = 'MAX_BOI_ORDER_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(BOI_ORDER_CODE)'
    end
    object cdsDetail_SUM_PRODUCT_BOI_PRICE_PERCENT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PRODUCT_BOI_PRICE_PERCENT'
      OnGetText = cdsDetail_SUM_PRODUCT_BOI_PRICE_PERCENTGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * PRODUCT_BOI_PRICE_PERCENT)'
    end
    object cdsDetail_SUM_COMPANY_BOI_PRICE_PERCENT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_COMPANY_BOI_PRICE_PERCENT'
      OnGetText = cdsDetail_SUM_COMPANY_BOI_PRICE_PERCENTGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * COMPANY_BOI_PRICE_PERCENT)'
    end
    object cdsDetail_SUM_WASTE_BOI_PRICE_PERCENT: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_WASTE_BOI_PRICE_PERCENT'
      OnGetText = cdsDetail_SUM_WASTE_BOI_PRICE_PERCENTGetText
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * WASTE_BOI_PRICE_PERCENT)'
    end
    object cdsDetail_SUM_PLAN_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PLAN_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * PLAN_TOTAL_PRICE)'
    end
    object cdsDetail_SUM_PRODUCT_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_PRODUCT_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * PRODUCT_TOTAL_PRICE)'
    end
    object cdsDetail_SUM_ACCOUNT_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = '_SUM_ACCOUNT_TOTAL_PRICE'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(NULL_WHEN_ANNULED * ACCOUNT_TOTAL_PRICE)'
    end
  end
  inherited dsDetail: TDataSource
    Left = 120
  end
  inherited tmrMaster: TTimer
    Left = 232
    Top = 144
  end
  object cdsBOIDistributionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIDistributionTypes'
    Left = 360
    Top = 208
    object cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
  end
  object cdsRegularityTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBORegularityTypes'
    Left = 360
    Top = 176
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
    Left = 392
    Top = 176
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
  object cdsTimeUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Filter = '(THE_DATE_UNIT_CODE > 1)'
    Filtered = True
    Params = <>
    ProviderName = 'prvTimeUnits'
    Left = 392
    Top = 208
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
  object cdsNewDetailRecordDefaults: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 376
    object cdsNewDetailRecordDefaultsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsNewDetailRecordDefaultsBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsNewDetailRecordDefaultsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsNewDetailRecordDefaultsBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsNewDetailRecordDefaultsBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
  end
  object cdsOrgTaskProposalStates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvOrgTaskProposalStates'
    Left = 424
    Top = 176
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
