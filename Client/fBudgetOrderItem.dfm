inherited fmBudgetOrderItem: TfmBudgetOrderItem
  Left = 267
  Top = 222
  Caption = '(%s)'
  ClientHeight = 499
  ClientWidth = 951
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 464
    Width = 951
    inherited pnlOKCancel: TPanel
      Left = 683
      TabOrder = 4
    end
    inherited pnlClose: TPanel
      Left = 594
      TabOrder = 3
    end
    inherited pnlApply: TPanel
      Left = 862
      TabOrder = 5
      Visible = False
    end
    object pnlBudgetOrderItemIsAnnuled: TPanel
      Left = 385
      Top = 0
      Width = 128
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object chkBudgetOrderItemIsAnnuled: TCheckBox
        Left = 12
        Top = 7
        Width = 196
        Height = 17
        Caption = '%BudgetOrderItemAbbrev% '#1077' '#1040#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlBudgetOrderItemIsClosed: TPanel
      Left = 241
      Top = 0
      Width = 144
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 2
      object chkBudgetOrderItemIsClosed: TCheckBox
        Left = 12
        Top = 7
        Width = 196
        Height = 17
        Caption = '%BudgetOrderItemAbbrev% '#1077' '#1055#1088#1080#1082#1083#1102#1095#1077#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlCloseAndAnnulButtons: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnCloseBudgetOrderItem: TBitBtn
        Left = 8
        Top = 2
        Width = 113
        Height = 25
        Action = actCloseBudgetOrderItem
        Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
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
      object btnAnnulBudgetOrderItem: TBitBtn
        Left = 128
        Top = 2
        Width = 113
        Height = 25
        Action = actAnnulBudgetOrderItem
        Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
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
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 951
    Height = 464
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 1
    object gbLimitBelonging: TGroupBox
      Left = 8
      Top = 8
      Width = 937
      Height = 161
      Caption = ' '#1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1051#1080#1084#1080#1090' '#1082#1098#1084' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblFormCaption: TLabel
        Left = 400
        Top = 0
        Width = 225
        Height = 13
        Caption = #1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' - %s'
        Visible = False
      end
      object gbBudgetOrder: TGroupBox
        Left = 8
        Top = 16
        Width = 313
        Height = 65
        Caption = ' ID %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbrev%) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lblBOStatus: TLabel
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
        object edtBOStatus: TDBEdit
          Left = 8
          Top = 32
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = '_BUDGET_ORDER_STATUS_CODE'
          DataSource = dsBudgetOrder
          TabOrder = 0
        end
        object cbBudgetOrderBranch: TJvDBLookupCombo
          Left = 56
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_BUDGET_ORDER_BRANCH_IDENTIFIER'
          DataSource = dsBudgetOrder
          ReadOnly = True
          TabOrder = 1
        end
        object edtBudgetOrderCode: TDBEdit
          Left = 120
          Top = 32
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = 'BUDGET_ORDER_CODE'
          DataSource = dsBudgetOrder
          ReadOnly = True
          TabOrder = 2
        end
        object tlbDocs: TToolBar
          Left = 265
          Top = 31
          Width = 36
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          TabOrder = 3
          object btnDocs: TToolButton
            Left = 0
            Top = 0
            Action = actBODoc
            ParentShowHint = False
            ShowHint = True
          end
        end
        object cbRegularityType: TJvDBLookupCombo
          Left = 176
          Top = 32
          Width = 89
          Height = 21
          Color = clBtnFace
          DataField = '_BO_REGULARITY_TYPE_NAME'
          DataSource = dsBudgetOrder
          ReadOnly = True
          TabOrder = 4
        end
      end
      object gbGenerator: TGroupBox
        Left = 328
        Top = 16
        Width = 297
        Height = 65
        Caption = ' '#1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        inline frGeneratorDept: TfrDeptFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 281
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 297
            inherited pnlTreeNode: TPanel
              Width = 281
              inherited pnlTreeNodeName: TPanel
                Width = 134
                inherited edtTreeNodeName: TDBEdit
                  Width = 133
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 134
              end
              inherited pnlRightButtons: TPanel
                Left = 245
              end
            end
          end
        end
      end
      object gbDeveloperDept: TGroupBox
        Left = 632
        Top = 16
        Width = 297
        Height = 65
        Caption = ' '#1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        inline frDeveloperDept: TfrDeptFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 281
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 297
            inherited pnlTreeNode: TPanel
              Width = 281
              inherited pnlTreeNodeName: TPanel
                Width = 134
                inherited edtTreeNodeName: TDBEdit
                  Width = 133
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 134
              end
              inherited pnlRightButtons: TPanel
                Left = 245
              end
            end
          end
        end
      end
      object gbBudgetOrderDescription: TGroupBox
        Left = 8
        Top = 88
        Width = 201
        Height = 65
        Caption = ' '#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' %BudgetOrderAbbrev% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object edtDescription: TDBEdit
          Left = 8
          Top = 32
          Width = 185
          Height = 21
          Color = clBtnFace
          DataField = 'DESCRIPTION'
          DataSource = dsBudgetOrder
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbDates: TGroupBox
        Left = 216
        Top = 88
        Width = 209
        Height = 65
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
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
          DataSource = dsBudgetOrder
          TabOrder = 1
        end
      end
      object gbBudgetOrderPrices: TGroupBox
        Left = 432
        Top = 88
        Width = 265
        Height = 65
        Caption = ' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' (%BaseCurrency%) '#1087#1086' %BudgetOrderAbbrev% '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
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
        object edTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'TOTAL_PRICE'
          DataSource = dsBudgetOrder
          ReadOnly = True
          TabOrder = 0
        end
        object edtPlanTotalPrice: TDBEdit
          Left = 72
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'SUM_TOTAL_PRICE'
          DataSource = dsData
          TabOrder = 1
        end
        object edtRealTotalPrice: TDBEdit
          Left = 200
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'ACCOUNT_TOTAL_PRICE'
          DataSource = dsBudgetOrder
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
          DataSource = dsBudgetOrder
          ReadOnly = True
          TabOrder = 3
        end
      end
      object gbTotalPriceDeviation: TGroupBox
        Left = 704
        Top = 88
        Width = 225
        Height = 65
        Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
        TabOrder = 6
        object lblPercents2: TLabel
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
        object lblPercents1: TLabel
          Left = 148
          Top = 36
          Width = 8
          Height = 13
          Caption = '%'
        end
        object lblPrimaryCurrency: TLabel
          Left = 77
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblEqualTo3: TLabel
          Left = 102
          Top = 34
          Width = 6
          Height = 13
          Caption = '='
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
          Color = clBtnFace
          DataField = '_EXPENSE_SPEED_PERCENT'
          DataSource = dsBudgetOrder
          TabOrder = 0
        end
        object edtPlanToAccountPricePercent: TDBEdit
          Left = 112
          Top = 32
          Width = 33
          Height = 21
          Color = clBtnFace
          DataField = '_REMAINING_TOTAL_PRICE_PERCENT'
          DataSource = dsBudgetOrder
          TabOrder = 1
        end
        object edtTotalPriceDeviation: TDBEdit
          Left = 8
          Top = 32
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = '_DEVIATION_PRICE'
          DataSource = dsBudgetOrder
          TabOrder = 2
        end
      end
    end
    object gbBudgetOrderItemStuff: TGroupBox
      Left = 8
      Top = 176
      Width = 937
      Height = 281
      Caption = 
        ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderI' +
        'temAbbrev%) '
      TabOrder = 1
      object gbIdentification: TGroupBox
        Left = 8
        Top = 16
        Width = 185
        Height = 65
        Caption = ' ID %BudgetOrderItemAbbrev% '
        TabOrder = 0
        object lblStatus: TLabel
          Left = 8
          Top = 16
          Width = 34
          Height = 13
          Caption = #1057#1090#1072#1090#1091#1089
        end
        object lblNo: TLabel
          Left = 56
          Top = 16
          Width = 11
          Height = 13
          Caption = #8470
        end
        object lblBudgetOrderItemType: TLabel
          Left = 90
          Top = 16
          Width = 19
          Height = 13
          Caption = #1042#1080#1076
        end
        object edtStatus: TDBEdit
          Left = 8
          Top = 32
          Width = 41
          Height = 21
          Color = clBtnFace
          DataField = '_BUDGET_ORDER_ITEM_STATUS_CODE'
          DataSource = dsData
          TabOrder = 0
        end
        object edtNo: TDBEdit
          Left = 56
          Top = 32
          Width = 33
          Height = 21
          Color = clBtnFace
          DataField = 'BUDGET_ORDER_ITEM_CODE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object tlbItemDocs: TToolBar
          Left = 139
          Top = 31
          Width = 36
          Height = 22
          Align = alNone
          AutoSize = True
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          TabOrder = 2
          object btnItemDocs: TToolButton
            Left = 0
            Top = 0
            Action = actDocumentation
            ParentShowHint = False
            ShowHint = True
          end
        end
        object cbBudgetOrderItemType: TJvDBLookupCombo
          Left = 90
          Top = 32
          Width = 47
          Height = 21
          DeleteKeyClear = False
          DataField = '_BUDGET_ORDER_ITEM_TYPE_ABBREV'
          DataSource = dsData
          TabOrder = 3
        end
      end
      object gbConsumer: TGroupBox
        Left = 528
        Top = 16
        Width = 401
        Height = 65
        Caption = ' '#1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 2
        object lblTreeNodeName: TLabel
          Left = 8
          Top = 16
          Width = 79
          Height = 13
          Caption = #1058#1055' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
        end
        object lblDistributionType: TLabel
          Left = 296
          Top = 16
          Width = 31
          Height = 13
          Caption = #1053#1072#1095#1080#1085
        end
        inline frConsumerDept: TfrDeptFieldEditFrameBald
          Left = 8
          Top = 32
          Width = 281
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 0
          TabStop = True
          DesignSize = (
            281
            22)
          inherited gbTreeNode: TGroupBox
            Width = 297
            inherited pnlTreeNode: TPanel
              Width = 281
              inherited pnlTreeNodeName: TPanel
                Width = 134
                inherited edtTreeNodeName: TDBEdit
                  Width = 133
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 134
              end
              inherited pnlRightButtons: TPanel
                Left = 245
              end
            end
          end
        end
        object cbDistributionType: TJvDBLookupCombo
          Left = 296
          Top = 32
          Width = 97
          Height = 21
          DropDownWidth = 150
          DataField = '_BOI_DISTRIBUTION_TYPE_NAME'
          DataSource = dsData
          TabOrder = 1
        end
      end
      object gbItemDates: TGroupBox
        Left = 8
        Top = 88
        Width = 209
        Height = 65
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 3
        object lblRemainingWorkdaysPercent: TLabel
          Left = 160
          Top = 16
          Width = 33
          Height = 13
          Caption = #1054#1089#1090'. %'
        end
        inline frItemDates: TfrDateIntervalFrame
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
        object edtRemainingWorkdaysPercent: TDBEdit
          Left = 160
          Top = 32
          Width = 33
          Height = 21
          Color = 16115403
          DataField = '_REMAINING_TIME_PERCENT'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
      object gbPrices: TGroupBox
        Left = 224
        Top = 88
        Width = 361
        Height = 65
        Caption = ' '#1051#1080#1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
        TabOrder = 4
        object lblTo: TLabel
          Left = 87
          Top = 35
          Width = 12
          Height = 13
          Caption = #1085#1072
        end
        object lblBaseCurrency4: TLabel
          Left = 60
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblDistributedSinglePrice: TLabel
          Left = 8
          Top = 16
          Width = 79
          Height = 13
          Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
        end
        object lblDistributionDateUnit: TLabel
          Left = 104
          Top = 16
          Width = 38
          Height = 13
          Caption = #1055#1077#1088#1080#1086#1076
        end
        object lblTotalPrice2: TLabel
          Left = 200
          Top = 16
          Width = 79
          Height = 13
          Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
        end
        object lblBaseCurrency: TLabel
          Left = 269
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblEqualTo2: TLabel
          Left = 185
          Top = 35
          Width = 6
          Height = 13
          Caption = '='
        end
        object lblBOPricePercent: TLabel
          Left = 296
          Top = 16
          Width = 135
          Height = 13
          Caption = '% '#1086#1090' %BudgetOrderAbbrev%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblPercents3: TLabel
          Left = 347
          Top = 36
          Width = 8
          Height = 13
          Caption = '%'
        end
        object edtDistributedSinglePrice: TDBEdit
          Left = 8
          Top = 32
          Width = 49
          Height = 21
          DataField = 'DISTRIBUTED_SINGLE_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object cbDistributionDateUnit: TJvDBLookupCombo
          Left = 104
          Top = 32
          Width = 73
          Height = 21
          DataField = '_DISTRIBUTION_DATE_UNIT_NAME'
          DataSource = dsData
          TabOrder = 1
        end
        object edtTotalPrice: TDBEdit
          Left = 200
          Top = 32
          Width = 65
          Height = 21
          DataField = 'TOTAL_PRICE'
          DataSource = dsData
          TabOrder = 2
        end
        object edtBOPricePercent: TDBEdit
          Left = 296
          Top = 32
          Width = 49
          Height = 21
          Color = clBtnFace
          DataField = '_BO_PRICE_PERCENT'
          DataSource = dsData
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object gbDeviation: TGroupBox
        Left = 720
        Top = 88
        Width = 209
        Height = 65
        Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
        TabOrder = 6
        object lblRemainingTotalPrice: TLabel
          Left = 8
          Top = 16
          Width = 43
          Height = 13
          Caption = #1054#1089#1090#1072#1090#1098#1082
        end
        object lblBaseCurrency2: TLabel
          Left = 68
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object lblEqualTo: TLabel
          Left = 98
          Top = 35
          Width = 6
          Height = 13
          Caption = '='
        end
        object lblPercents4: TLabel
          Left = 147
          Top = 35
          Width = 8
          Height = 13
          Caption = '%'
        end
        object lblPercents5: TLabel
          Left = 195
          Top = 35
          Width = 8
          Height = 13
          Caption = '%'
        end
        object lblDeviationPercent: TLabel
          Left = 166
          Top = 16
          Width = 14
          Height = 13
          Caption = '+/-'
        end
        object edtRemainingTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = '_REMAINING_TOTAL_PRICE'
          DataSource = dsData
          TabOrder = 0
        end
        object edtRemainingTotalPricePercent: TDBEdit
          Left = 117
          Top = 31
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = 'REMAINING_TOTAL_PRICE_PERCENT'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object edtDeviationPercent: TDBEdit
          Left = 165
          Top = 31
          Width = 28
          Height = 21
          Color = clBtnFace
          DataField = '_DEVIATION_PERCENT'
          DataSource = dsData
          TabOrder = 2
        end
      end
      object gbBudgetOrderItemOrders: TGroupBox
        Left = 744
        Top = 160
        Width = 185
        Height = 113
        Caption = 
          ' '#1054#1088#1076#1077#1088#1080' '#1087#1086' %BudgetOrderItemAbbrev% (%BudgetOrderItemOrderAbbrev%' +
          ') '
        TabOrder = 8
        object btnOrders: TBitBtn
          Left = 88
          Top = 29
          Width = 83
          Height = 25
          Action = actBOIOrders
          Caption = #1054#1088#1076#1077#1088#1080'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
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
          TabOrder = 0
        end
        object edtOrderCount: TDBEdit
          Left = 16
          Top = 32
          Width = 67
          Height = 21
          Color = clBtnFace
          DataField = 'BOI_ORDER_COUNT'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
        object btnDeliveries: TBitBtn
          Left = 16
          Top = 72
          Width = 153
          Height = 25
          Action = actDeliveries
          Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1044'...'
          TabOrder = 2
        end
      end
      object grTrackingSummary: TGroupBox
        Left = 592
        Top = 88
        Width = 121
        Height = 65
        Caption = ' '#1054#1090#1095#1077#1090' '#1087#1086' %BudgetOrderItemOrderAbbrev% '
        TabOrder = 5
        object lblAccountTotalPrice: TLabel
          Left = 8
          Top = 16
          Width = 79
          Height = 13
          Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
        end
        object lblBaseCurrency3: TLabel
          Left = 93
          Top = 36
          Width = 82
          Height = 13
          Caption = '%BaseCurrency%'
        end
        object edtAccountTotalPrice: TDBEdit
          Left = 8
          Top = 32
          Width = 81
          Height = 21
          Color = clBtnFace
          DataField = 'BOIO_TOTAL_PRICE'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
      end
      object gbConfirm: TGroupBox
        Left = 8
        Top = 160
        Width = 729
        Height = 113
        Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' %BudgetOrderItemAbbrev% '
        TabOrder = 7
        object lblDecisionEnterEmployee: TLabel
          Left = 368
          Top = 16
          Width = 80
          Height = 13
          Caption = #1042#1098#1074#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
        end
        object lblDecisionEnterDate: TLabel
          Left = 616
          Top = 16
          Width = 26
          Height = 13
          Caption = #1044#1072#1090#1072
        end
        object lblDecisionEmployee: TLabel
          Left = 368
          Top = 64
          Width = 73
          Height = 13
          Caption = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
        end
        object lblDecisionDate: TLabel
          Left = 616
          Top = 64
          Width = 89
          Height = 13
          Caption = #1044#1072#1090#1072' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077
        end
        object btnConfirm: TBitBtn
          Left = 8
          Top = 30
          Width = 113
          Height = 25
          Action = actConfirm
          Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000FF000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000FF000000FF000000FF000000000000FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000FF000000FF00000000000000FF0000000000000000
            0000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            00000000000000FF000000FF0000000000000000000000FF000000FF00000000
            000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            000000FF000000FF000000000000FFFFFF00FFFFFF000000000000FF000000FF
            000000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            000000FF000000000000FFFFFF000000000000000000000000000000000000FF
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
            000000FF00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFFFF000000
            000000FF00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            000000FF000000FF000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
            00000000000000FF000000FF000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            0000000000000000000000FF000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000FF00FF000000000000FF000000FF000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FF000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00}
          TabOrder = 0
        end
        object btnUnconfirm: TBitBtn
          Left = 256
          Top = 30
          Width = 105
          Height = 25
          Action = actUnconfirm
          Caption = #1054#1090#1082#1072#1079#1074#1072#1085#1077
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000FF000000FF0000000000FFFFFF00FFFFFF000000
            00000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000000000000000FF000000FF0000000000000080000000
            FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000FF000000FF000000FF000000
            0000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00000000000000FF000000FF000000
            8000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000FF00000000000000FF000000
            FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000000000000000FF000000000000000000000000000000
            FF000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000008000FFFFFF00FFFFFF00FFFFFF000000
            00000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
        end
        object btnReconsider: TBitBtn
          Left = 128
          Top = 30
          Width = 121
          Height = 25
          Action = actReconsider
          Caption = #1055#1088#1077#1088#1072#1079#1075#1083#1077#1078#1076#1072#1085#1077
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
          TabOrder = 1
        end
        inline frDecisionEnterEmployee: TfrEmployeeFieldEditFrameBald
          Left = 368
          Top = 32
          Width = 241
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 3
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 260
            inherited pnlEmployeeName: TPanel
              Width = 185
              inherited pnlRightButtons: TPanel
                Left = 149
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 149
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 148
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 250
            end
          end
        end
        inline frDecisionEnterDate: TfrDateFieldEditFrame
          Left = 616
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 4
          TabStop = True
        end
        inline frDecisionEmployee: TfrEmployeeFieldEditFrameBald
          Left = 368
          Top = 80
          Width = 241
          Height = 22
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 22
          Constraints.MinHeight = 22
          TabOrder = 5
          TabStop = True
          inherited gbEmployee: TGroupBox
            Width = 260
            inherited pnlEmployeeName: TPanel
              Width = 185
              inherited pnlRightButtons: TPanel
                Left = 149
              end
              inherited pnlEmpoyeeNameInner: TPanel
                Width = 149
                inherited cbEmployee: TJvDBLookupCombo
                  Width = 148
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 250
            end
          end
        end
        inline frDecisionDate: TfrDateFieldEditFrame
          Left = 616
          Top = 80
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 6
          TabStop = True
        end
      end
      inline frBudgetClass: TfrProductFieldEditFrameLabeled
        Left = 200
        Top = 16
        Width = 321
        Height = 65
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 65
        TabOrder = 1
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 321
          Caption = ' '#1057#1090#1072#1090#1080#1103' '
          inherited pnlTreeNode: TPanel
            Width = 305
            inherited pnlTreeNodeName: TPanel
              Width = 123
              inherited edtTreeNodeName: TDBEdit
                Width = 122
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 123
            end
            inherited pnlRightButtons: TPanel
              Left = 246
            end
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 440
    Top = 72
    inherited actForm: TAction
      Caption = '(%s)'
    end
    object actConfirm: TAction
      Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
      ImageIndex = 103
      OnExecute = actConfirmExecute
      OnUpdate = actConfirmUpdate
    end
    object actUnconfirm: TAction
      Caption = #1054#1090#1082#1072#1079#1074#1072#1085#1077
      ImageIndex = 104
      OnExecute = actUnconfirmExecute
      OnUpdate = actUnconfirmUpdate
    end
    object actDocumentation: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072
      OnExecute = actDocumentationExecute
    end
    object actCloseBudgetOrderItem: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
      ImageIndex = 17
      OnExecute = actCloseBudgetOrderItemExecute
      OnUpdate = actCloseBudgetOrderItemUpdate
    end
    object actAnnulBudgetOrderItem: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077
      ImageIndex = 16
      OnExecute = actAnnulBudgetOrderItemExecute
      OnUpdate = actAnnulBudgetOrderItemUpdate
    end
    object actReconsider: TAction
      Caption = #1055#1088#1077#1088#1072#1079#1075#1083#1077#1078#1076#1072#1085#1077
      ImageIndex = 61
      OnExecute = actReconsiderExecute
      OnUpdate = actReconsiderUpdate
    end
    object actBOIOrders: TAction
      Caption = #1054#1088#1076#1077#1088#1080'...'
      ImageIndex = 47
      OnExecute = actBOIOrdersExecute
      OnUpdate = actBOIOrdersUpdate
    end
    object actBODoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072
      OnExecute = actBODocExecute
    end
    object actDeliveries: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1044'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1055#1044
      OnExecute = actDeliveriesExecute
      OnUpdate = actDeliveriesUpdate
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 352
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 320
    Top = 72
  end
  object dsBudgetOrder: TDataSource
    Left = 160
    Top = 48
  end
  object cdsBOIOrdersParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 912
    Top = 344
    object cdsBOIOrdersParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsBOIOrdersParamsBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsBOIOrdersParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsBOIOrdersParamsBUDGET_ORDER_CLASS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CLASS_CODE'
    end
    object cdsBOIOrdersParamsMIN_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_STATUS_CODE'
    end
    object cdsBOIOrdersParamsMAX_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_STATUS_CODE'
    end
    object cdsBOIOrdersParamsMIN_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_ITEM_STATUS_CODE'
    end
    object cdsBOIOrdersParamsMAX_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_ITEM_STATUS_CODE'
    end
    object cdsBOIOrdersParamsMIN_BOIO_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_BOIO_STATUS_CODE'
    end
    object cdsBOIOrdersParamsMAX_BOIO_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_BOIO_STATUS_CODE'
    end
    object cdsBOIOrdersParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
    end
  end
  object cdsDeliveriesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 912
    Top = 392
    object cdsDeliveriesParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsDeliveriesParamsBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsDeliveriesParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsDeliveriesParamsMAX_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_STATUS_CODE'
    end
  end
end
