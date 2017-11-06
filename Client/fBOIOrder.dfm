inherited fmBOIOrder: TfmBOIOrder
  Left = 257
  Top = 197
  ClientHeight = 596
  ClientWidth = 1001
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 561
    Width = 1001
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 733
      TabOrder = 6
    end
    inherited pnlClose: TPanel
      Left = 644
      TabOrder = 5
    end
    inherited pnlApply: TPanel
      Left = 912
      TabOrder = 7
      Visible = False
    end
    object pnlCloseButton: TPanel
      Left = 345
      Top = 0
      Width = 136
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnCloseOrderItem: TBitBtn
        Left = 8
        Top = 2
        Width = 121
        Height = 25
        Action = actClose
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
    end
    object pnlOrderIsClosed: TPanel
      Left = 0
      Top = 0
      Width = 177
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
      object chkOrderItemIsClosed: TCheckBox
        Left = 8
        Top = 7
        Width = 169
        Height = 17
        Caption = '%BudgetOrderItemOrderAbbrev% '#1077' '#1055#1088#1080#1082#1083#1102#1095#1077#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlOrderIsAnnuled: TPanel
      Left = 177
      Top = 0
      Width = 168
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      object chkOrderItemIsAnnuled: TCheckBox
        Left = 8
        Top = 7
        Width = 153
        Height = 17
        Caption = '%BudgetOrderItemOrderAbbrev% '#1077' '#1040#1085#1091#1083#1080#1088#1072#1085
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlAnnulButton: TPanel
      Left = 481
      Top = 0
      Width = 128
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object btnAnnulOrderItem: TBitBtn
        Left = 0
        Top = 2
        Width = 121
        Height = 25
        Action = actAnnul
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
        TabOrder = 0
      end
    end
    object pnlPrint: TPanel
      Left = 609
      Top = 0
      Width = 35
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      object pnlInnerPrint: TPanel
        Left = -53
        Top = 0
        Width = 88
        Height = 35
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object btnPrint: TBitBtn
          Left = 0
          Top = 2
          Width = 75
          Height = 25
          Action = actPrint
          Caption = #1055#1077#1095#1072#1090
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
          TabOrder = 0
        end
      end
    end
  end
  object gbBudgetOrderStuff: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 985
    Height = 89
    Caption = ' '#1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090' '#1085#1072' '#1051#1080#1084#1080#1090' '#1082#1098#1084' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblFormCaption: TLabel
      Left = 408
      Top = 0
      Width = 13
      Height = 13
      Caption = '%s'
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
      object lblBORegularityType: TLabel
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
        DataField = 'BUDGET_ORDER_STATUS_CODE'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtBudgetOrderCode: TDBEdit
        Left = 120
        Top = 32
        Width = 49
        Height = 21
        Color = clBtnFace
        DataField = 'BUDGET_ORDER_CODE'
        DataSource = dsBOIOrderInfo
        TabOrder = 1
      end
      object edtBudgetOrderBranch: TDBEdit
        Left = 56
        Top = 32
        Width = 57
        Height = 21
        Color = clBtnFace
        DataField = 'BUDGET_ORDER_BRANCH_IDENTIFIER'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 2
      end
      object edtBORegularityType: TDBEdit
        Left = 176
        Top = 32
        Width = 89
        Height = 21
        Color = clBtnFace
        DataField = 'BO_REGULARITY_TYPE_NAME'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 3
      end
      object tlbDocs: TToolBar
        Left = 266
        Top = 31
        Width = 37
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 37
        Caption = 'tlbDocs'
        Images = dmMain.ilDocs
        TabOrder = 4
        object btnDocs: TToolButton
          Left = 0
          Top = 0
          Action = actBODoc
        end
      end
    end
    object gbGenerator: TGroupBox
      Left = 328
      Top = 16
      Width = 321
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
        Width = 305
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 321
          inherited pnlTreeNode: TPanel
            Width = 305
            inherited pnlTreeNodeName: TPanel
              Width = 158
              inherited edtTreeNodeName: TDBEdit
                Width = 157
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 158
            end
            inherited pnlRightButtons: TPanel
              Left = 269
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
    object gbDeveloperDept: TGroupBox
      Left = 656
      Top = 16
      Width = 321
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
        Width = 305
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 321
          inherited pnlTreeNode: TPanel
            Width = 305
            inherited pnlTreeNodeName: TPanel
              Width = 158
              inherited edtTreeNodeName: TDBEdit
                Width = 157
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 158
            end
            inherited pnlRightButtons: TPanel
              Left = 269
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
    end
  end
  object gbBOIOrderStuff: TGroupBox [2]
    Left = 8
    Top = 272
    Width = 985
    Height = 281
    Caption = ' '#1045#1090#1080#1082#1077#1090' '#1085#1072' '#1057#1098#1086#1090#1074#1077#1090#1085#1080#1103' '#1054#1088#1076#1077#1088' '#1087#1086' '#1041#1086#1088#1076#1077#1088#1086' :) '
    TabOrder = 2
    inline frConsumerDept: TfrDeptFieldEditFrameLabeled
      Left = 160
      Top = 16
      Width = 289
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 1
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 289
        Caption = ' '#1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088' '
        inherited lblTreeNodeName: TLabel
          Width = 3
          Caption = ''
        end
        inherited lblTreeNodeNo: TLabel
          Width = 3
          Caption = ''
        end
        inherited pnlTreeNode: TPanel
          Width = 273
          inherited pnlTreeNodeName: TPanel
            Width = 126
            inherited edtTreeNodeName: TDBEdit
              Width = 125
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 126
          end
          inherited pnlRightButtons: TPanel
            Left = 237
          end
        end
      end
    end
    object gbBOIOrder: TGroupBox
      Left = 8
      Top = 16
      Width = 145
      Height = 65
      Caption = ' ID %BudgetOrderItemOrderAbbrev% '
      TabOrder = 0
      object lblBOIOrderStatus: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object lblBOIOrderCode: TLabel
        Left = 56
        Top = 16
        Width = 14
        Height = 13
        Caption = 'No'
      end
      object edtBOIOrderStatus: TDBEdit
        Left = 8
        Top = 32
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = '_BOI_ORDER_STATUS_CODE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtBOIOrderCode: TDBEdit
        Left = 56
        Top = 32
        Width = 33
        Height = 21
        Color = clBtnFace
        DataField = 'BOI_ORDER_CODE'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
      object tbDocButton: TToolBar
        Left = 98
        Top = 31
        Width = 36
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 36
        EdgeInner = esNone
        EdgeOuter = esNone
        Images = dmMain.ilDocs
        TabOrder = 2
        object btnDoc: TToolButton
          Left = 0
          Top = 0
          Action = actDoc
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
    object gbDecision: TGroupBox
      Left = 8
      Top = 208
      Width = 601
      Height = 65
      Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' %BudgetOrderItemOrderAbbrev% '
      TabOrder = 2
      object lblDecisionEmployee: TLabel
        Left = 240
        Top = 16
        Width = 73
        Height = 13
        Caption = #1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077
      end
      object lblDecisionDate: TLabel
        Left = 488
        Top = 16
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object btnConfirm: TBitBtn
        Left = 8
        Top = 30
        Width = 113
        Height = 25
        Action = actConfirm
        Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077'...'
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
        Left = 128
        Top = 30
        Width = 105
        Height = 25
        Action = actUnconfirm
        Caption = #1054#1090#1082#1072#1079#1074#1072#1085#1077'...'
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
        TabOrder = 1
      end
      inline frDecisionEmployee: TfrEmployeeFieldEditFrameBald
        Left = 240
        Top = 32
        Width = 241
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 2
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
        Left = 488
        Top = 32
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 3
        TabStop = True
      end
    end
  end
  object gbBudgetOrderItem: TGroupBox [3]
    Left = 8
    Top = 104
    Width = 985
    Height = 161
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1051#1080#1084#1080#1090' '#1086#1090' %BudgetOrderName% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderI' +
      'temAbbrev%) '
    TabOrder = 1
    object gbIdentification: TGroupBox
      Left = 8
      Top = 16
      Width = 121
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
        Left = 84
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
        DataField = 'BUDGET_ORDER_ITEM_STATUS_CODE'
        DataSource = dsBOIOrderInfo
        TabOrder = 0
      end
      object edtNo: TDBEdit
        Left = 56
        Top = 32
        Width = 28
        Height = 21
        Color = clBtnFace
        DataField = 'BUDGET_ORDER_ITEM_CODE'
        DataSource = dsBOIOrderInfo
        TabOrder = 1
      end
      object edtBudgetOrderItemType: TDBEdit
        Left = 84
        Top = 32
        Width = 29
        Height = 21
        Color = clBtnFace
        DataField = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 2
      end
    end
    object gbConsumer: TGroupBox
      Left = 504
      Top = 16
      Width = 473
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
      object lblBOIDistributionType: TLabel
        Left = 368
        Top = 16
        Width = 31
        Height = 13
        Caption = #1053#1072#1095#1080#1085
      end
      inline frBOIDept: TfrDeptFieldEditFrameBald
        Left = 8
        Top = 32
        Width = 353
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 0
        TabStop = True
        DesignSize = (
          353
          22)
        inherited gbTreeNode: TGroupBox
          Width = 369
          inherited pnlTreeNode: TPanel
            Width = 353
            inherited pnlTreeNodeName: TPanel
              Width = 206
              inherited edtTreeNodeName: TDBEdit
                Width = 205
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 206
            end
            inherited pnlRightButtons: TPanel
              Left = 317
            end
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
      object edtBOIDistributionType: TDBEdit
        Left = 368
        Top = 32
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'BOI_DISTRIBUTION_TYPE_NAME'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 1
      end
    end
    object gbItemDates: TGroupBox
      Left = 8
      Top = 88
      Width = 265
      Height = 65
      Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
      TabOrder = 3
      object lblBOIDaysToStart: TLabel
        Left = 8
        Top = 16
        Width = 57
        Height = 13
        Caption = #1056#1079#1088#1074'.'#1057#1090#1072#1088#1090
      end
      object lblBOIDaysLeftPercent: TLabel
        Left = 224
        Top = 16
        Width = 30
        Height = 13
        Caption = #1054#1089#1090'.%'
      end
      inline frItemDates: TfrDateIntervalFrame
        Left = 72
        Top = 32
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
        inherited dsData: TDataSource
          DataSet = cdsBOIOrderInfo
        end
      end
      object edtBOIDaysToStart: TDBEdit
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        Color = 14276044
        DataField = 'BOI_DAYS_TO_START'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 1
      end
      object edtBOIDaysLeftPercent: TDBEdit
        Left = 224
        Top = 32
        Width = 33
        Height = 21
        Color = 14276044
        DataField = 'BOI_DAYS_LEFT_PERCENT'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 2
      end
    end
    object gbPrices: TGroupBox
      Left = 280
      Top = 88
      Width = 361
      Height = 65
      Caption = ' '#1051#1080#1084#1080#1090#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '
      TabOrder = 4
      object lblDistributedSinglePrice: TLabel
        Left = 8
        Top = 16
        Width = 78
        Height = 13
        Caption = #1088#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      end
      object lblDistributionDateUnit: TLabel
        Left = 112
        Top = 16
        Width = 36
        Height = 13
        Caption = #1087#1077#1088#1080#1086#1076
      end
      object lblTotalPrice: TLabel
        Left = 192
        Top = 16
        Width = 79
        Height = 13
        Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblBaseCurrency: TLabel
        Left = 277
        Top = 36
        Width = 82
        Height = 13
        Caption = '%BaseCurrency%'
      end
      object lblTo: TLabel
        Left = 94
        Top = 35
        Width = 12
        Height = 13
        Caption = #1085#1072
      end
      object lblEqualTo2: TLabel
        Left = 181
        Top = 35
        Width = 6
        Height = 13
        Caption = '='
      end
      object lblBOTotalPricePercent: TLabel
        Left = 304
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
      object lblPercents: TLabel
        Left = 347
        Top = 36
        Width = 8
        Height = 13
        Caption = '%'
      end
      object edtDistributedSinglePrice: TDBEdit
        Left = 8
        Top = 32
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = 'BOI_DISTRIBUTED_SINGLE_PRICE'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtTotalPrice: TDBEdit
        Left = 192
        Top = 32
        Width = 81
        Height = 21
        Color = clBtnFace
        DataField = 'BOI_TOTAL_PRICE'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 1
      end
      object edtBOTotalPricePercent: TDBEdit
        Left = 304
        Top = 32
        Width = 41
        Height = 21
        Color = clBtnFace
        DataField = 'BO_TOTAL_PRICE_PERCENT'
        DataSource = dsBOIOrderInfo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtDistributionDateUnit: TDBEdit
        Left = 112
        Top = 32
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = 'DISTRIBUTION_DATE_UNIT_NAME'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 3
      end
    end
    object gbDeviation: TGroupBox
      Left = 776
      Top = 88
      Width = 201
      Height = 65
      Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' '
      TabOrder = 5
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
      object lblPercents2: TLabel
        Left = 147
        Top = 35
        Width = 8
        Height = 13
        Caption = '%'
      end
      object lblPercents3: TLabel
        Left = 181
        Top = 35
        Width = 8
        Height = 13
        Caption = '%'
      end
      object lblDeviationPercent: TLabel
        Left = 160
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
        DataField = 'BOI_REMAINING_PRICE'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 0
      end
      object edtRemainingTotalPricePercent: TDBEdit
        Left = 117
        Top = 31
        Width = 28
        Height = 21
        Color = clBtnFace
        DataField = 'BOI_REMAINING_PRICE_PERCENT'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 1
      end
      object edtDeviationPercent: TDBEdit
        Left = 159
        Top = 31
        Width = 20
        Height = 21
        Color = clBtnFace
        DataField = '_BOI_DEVIATION_PERCENT'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 2
      end
    end
    object grTrackingSummary: TGroupBox
      Left = 648
      Top = 88
      Width = 121
      Height = 65
      Caption = ' '#1054#1090#1095#1077#1090' '#1087#1086' %BudgetOrderItemOrderAbbrev% '
      TabOrder = 6
      object lblAccountTotalPrice: TLabel
        Left = 8
        Top = 16
        Width = 79
        Height = 13
        Caption = #1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      end
      object lblBaseCurrency3: TLabel
        Left = 92
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
        DataField = 'BOI_REAL_PRICE'
        DataSource = dsBOIOrderInfo
        ReadOnly = True
        TabOrder = 0
      end
    end
    inline frBudgetClass: TfrProductFieldEditFrameLabeled
      Left = 136
      Top = 16
      Width = 361
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 1
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 361
        Caption = ' '#1057#1090#1072#1090#1080#1103' '
        inherited pnlTreeNode: TPanel
          Width = 345
          inherited pnlTreeNodeName: TPanel
            Width = 163
            inherited edtTreeNodeName: TDBEdit
              Width = 162
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 163
          end
          inherited pnlRightButtons: TPanel
            Left = 286
          end
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsBOIOrderInfo
      end
    end
  end
  inherited alActions: TActionList
    Left = 184
    Top = 504
    object actConfirm: TAction
      Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077'...'
      Hint = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077' '#1085#1072' %BudgetOrderItemOrderAbbrev%'
      ImageIndex = 103
      OnExecute = actConfirmExecute
      OnUpdate = actConfirmUpdate
    end
    object actUnconfirm: TAction
      Caption = #1054#1090#1082#1072#1079#1074#1072#1085#1077'...'
      Hint = #1054#1090#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' %BudgetOrderItemOrderAbbrev%'
      ImageIndex = 104
      OnExecute = actUnconfirmExecute
      OnUpdate = actUnconfirmUpdate
    end
    object actClose: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077'...'
      Hint = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %BudgetOrderItemOrderAbbrev%'
      ImageIndex = 17
      OnExecute = actCloseExecute
      OnUpdate = actCloseUpdate
    end
    object actAnnul: TAction
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1077'...'
      Hint = #1040#1085#1091#1083#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemOrderAbbrev%'
      ImageIndex = 16
      OnExecute = actAnnulExecute
      OnUpdate = actAnnulUpdate
    end
    object actToggleDeviationDiffPercent: TAction
      GroupIndex = 2
      ImageIndex = 119
      OnExecute = actToggleDeviationDiffPercentExecute
    end
    object actBODoc: TAction
      Caption = 'actBODoc'
      OnExecute = actBODocExecute
    end
    object actDoc: TAction
      Hint = #1052#1048#1048#1054' '#1085#1072' '#1054#1088#1076#1077#1088' '#1087#1086' '#1051#1080#1084#1080#1090' '#1086#1090' '#1041#1086#1088#1076#1077#1088#1086' '#1079#1072' '#1057#1088#1077#1076#1072
      ImageIndex = 98
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 96
    Top = 504
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
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrder'
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 64
    Top = 504
    object cdsDataBOI_ORDER_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_BRANCH_CODE'
    end
    object cdsDataBOI_ORDER_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_OBJECT_CODE'
    end
    object cdsDataBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_BRANCH_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsDataBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
      ProviderFlags = []
    end
    object cdsDataDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_STATUS_CODE'
      ProviderFlags = []
    end
    object cdsDataBOI_DEPT_CODE: TAbmesFloatField
      FieldName = 'BOI_DEPT_CODE'
      ProviderFlags = []
    end
    object cdsDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataBOI_DAYS_TO_START: TAbmesFloatField
      FieldName = 'BOI_DAYS_TO_START'
      ProviderFlags = []
    end
    object cdsDataBOI_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_BEGIN_DATE'
      ProviderFlags = []
    end
    object cdsDataBOI_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_END_DATE'
      ProviderFlags = []
    end
    object cdsDataBOI_DAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DAYS_LEFT_PERCENT'
      ProviderFlags = []
    end
    object cdsDataDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'DISTRIBUTION_DATE_UNIT_NAME'
      ProviderFlags = []
      Size = 50
    end
    object cdsDataBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTED_SINGLE_PRICE'
      ProviderFlags = []
    end
    object cdsDataBOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_TOTAL_PRICE'
      ProviderFlags = []
    end
    object cdsDataBO_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_TOTAL_PRICE_PERCENT'
      ProviderFlags = []
    end
    object cdsDataBOI_REAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_REAL_PRICE'
      ProviderFlags = []
    end
    object cdsDataBOI_REMAINING_PRICE: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE'
      ProviderFlags = []
    end
    object cdsDataBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE_PERCENT'
      ProviderFlags = []
    end
    object cdsDataBOI_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DEVIATION_PERCENT'
      ProviderFlags = []
    end
    object cdsDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
      ProviderFlags = []
    end
    object cdsDataPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      ProviderFlags = []
      OnChange = cdsDataACCOUNT_QUANTITYChange
      DisplayFormat = ',0.#'
    end
    object cdsDataPRODUCT_REAL_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',#'
      EditFormat = ',#'
    end
    object cdsDataPRODUCT_REAL_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_ACCOUNT_QUANTITY'
      ProviderFlags = []
      DisplayFormat = ',#'
      EditFormat = ',#'
    end
    object cdsDataPRODUCT_REAL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_REAL_TOTAL_PRICE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsDataPRODUCT_LAST_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCT_LAST_DEAL_DATE'
      ProviderFlags = []
    end
    object cdsDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsDataCONSUMER_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
      FieldName = 'CONSUMER_DEPT_CODE'
      Required = True
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      OnChange = cdsDataQUANTITYChange
      OnValidate = cdsDataQUANTITYValidate
      DisplayFormat = ',0.#'
    end
    object cdsDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
    end
    object cdsDataDESCRIPTION: TAbmesWideStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object cdsDataCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDataDOCUMENT_TYPE_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_TYPE_TEXT'
      Size = 50
    end
    object cdsDataDOCUMENT_ID_TEXT: TAbmesWideStringField
      FieldName = 'DOCUMENT_ID_TEXT'
      Size = 50
    end
    object cdsDataPLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE'
      OnValidate = cdsDataPLAN_TOTAL_PRICEValidate
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object cdsDataACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE'
      OnValidate = cdsDataACCOUNT_TOTAL_PRICEValidate
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsDataACCOUNT_DATE: TAbmesSQLTimeStampField
      FieldName = 'ACCOUNT_DATE'
    end
    object cdsDataIS_CONFIRMED: TAbmesFloatField
      FieldName = 'IS_CONFIRMED'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_CANCELED: TAbmesFloatField
      FieldName = 'IS_CANCELED'
      FieldValueType = fvtBoolean
    end
    object cdsDataDECISION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_CODE'
    end
    object cdsDataDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
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
    object cdsData_BOI_ORDER_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_BOI_ORDER_STATUS_CODE'
      OnGetText = cdsData_BOI_ORDER_STATUS_CODEGetText
      Calculated = True
    end
    object cdsDataBOI_IS_CONFIRMED: TAbmesFloatField
      FieldName = 'BOI_IS_CONFIRMED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsData_PRICE_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRICE_DEVIATION'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsData_DAYS_DEVIATION: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DAYS_DEVIATION'
      OnGetText = cdsData_DAYS_DEVIATIONGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_BOI_PRICE_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOI_PRICE_PERCENT'
      OnGetText = cdsData_BOI_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_PRICE_DEVIATION_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRICE_DEVIATION_PERCENT'
      OnGetText = cdsData_PRICE_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
      Calculated = True
    end
    object cdsDataPLAN_TOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'PLAN_TOTAL_PRICE_BC'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsDataACCOUNT_TOTAL_PRICE_BC: TAbmesFloatField
      FieldName = 'ACCOUNT_TOTAL_PRICE_BC'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsData_BOI_PRICE_PERCENT_BC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOI_PRICE_PERCENT_BC'
      OnGetText = cdsData_BOI_PRICE_PERCENT_BCGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsData_PRICE_DEVIATION_BC: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRICE_DEVIATION_BC'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsDataBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
      ProviderFlags = []
    end
    object cdsDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsDataFO_BRANCH_CODE: TAbmesFloatField
      FieldName = 'FO_BRANCH_CODE'
    end
    object cdsDataFO_EXEC_DEPT_CODE: TAbmesFloatField
      FieldName = 'FO_EXEC_DEPT_CODE'
    end
    object cdsDataFO_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'FO_PRIORITY_CODE'
    end
    object cdsDataFO_WORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FO_WORK_FINANCIAL_PRODUCT_CODE'
    end
    object cdsDataFO_PARTNER_CODE: TAbmesFloatField
      FieldName = 'FO_PARTNER_CODE'
    end
    object cdsDataFO_STATUS_CODE: TAbmesFloatField
      FieldName = 'FO_STATUS_CODE'
    end
    object cdsDataSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsDataDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
    end
    object cdsDataDELIVERY_OBJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044
      FieldName = 'DELIVERY_OBJECT_CODE'
    end
    object cdsDataBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsDataBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  object cdsBOIOrderInfo: TAbmesClientDataSet
    Aggregates = <>
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
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBOIOrderInfo'
    OnCalcFields = cdsBOIOrderInfoCalcFields
    Left = 504
    Top = 88
    object cdsBOIOrderInfoBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsBOIOrderInfoBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsBOIOrderInfoBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
      OnGetText = cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODEGetText
    end
    object cdsBOIOrderInfoBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsBOIOrderInfoBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
    object cdsBOIOrderInfoGENERATOR_DEPT_CODE: TAbmesFloatField
      FieldName = 'GENERATOR_DEPT_CODE'
    end
    object cdsBOIOrderInfoDEVELOPER_DEPT_CODE: TAbmesFloatField
      FieldName = 'DEVELOPER_DEPT_CODE'
    end
    object cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'BUDGET_ORDER_ITEM_STATUS_CODE'
      OnGetText = cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODEGetText
    end
    object cdsBOIOrderInfoBOI_DEPT_CODE: TAbmesFloatField
      FieldName = 'BOI_DEPT_CODE'
    end
    object cdsBOIOrderInfoBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
    object cdsBOIOrderInfoBOI_DAYS_TO_START: TAbmesFloatField
      FieldName = 'BOI_DAYS_TO_START'
    end
    object cdsBOIOrderInfoBOI_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_BEGIN_DATE'
    end
    object cdsBOIOrderInfoBOI_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'BOI_END_DATE'
    end
    object cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DAYS_LEFT_PERCENT'
      OnGetText = cdsBOIOrderInfoBOI_DAYS_LEFT_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsBOIOrderInfoDISTRIBUTION_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'DISTRIBUTION_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsBOIOrderInfoBOI_DISTRIBUTED_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTED_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object cdsBOIOrderInfoBOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsBOIOrderInfoBO_TOTAL_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BO_TOTAL_PRICE_PERCENT'
      OnGetText = cdsBOIOrderInfoBO_TOTAL_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsBOIOrderInfoBOI_REAL_PRICE: TAbmesFloatField
      FieldName = 'BOI_REAL_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsBOIOrderInfoBOI_REMAINING_PRICE: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE'
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsBOIOrderInfoBOI_REMAINING_PRICE_PERCENT: TAbmesFloatField
      FieldName = 'BOI_REMAINING_PRICE_PERCENT'
      OnGetText = cdsBOIOrderInfoBOI_REMAINING_PRICE_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsBOIOrderInfoBOI_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'BOI_DEVIATION_PERCENT'
      OnGetText = cdsBOIOrderInfoBOI_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
      EditFormat = ',0'
    end
    object cdsBOIOrderInfoBC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BC_PRODUCT_CODE'
    end
    object cdsBOIOrderInfoBOI_IS_CONFIRMED: TAbmesFloatField
      FieldName = 'BOI_IS_CONFIRMED'
      FieldValueType = fvtBoolean
    end
    object cdsBOIOrderInfoBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsBOIOrderInfoBUDGET_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'BUDGET_PRODUCT_CODE'
    end
    object cdsBOIOrderInfoBO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_BRANCH_CODE'
    end
    object cdsBOIOrderInfoBO_DOC_CODE: TAbmesFloatField
      FieldName = 'BO_DOC_CODE'
    end
    object cdsBOIOrderInfoBO_HAS_DOC: TAbmesFloatField
      FieldName = 'BO_HAS_DOC'
    end
    object cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
      Required = True
    end
    object cdsBOIOrderInfoBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object cdsBOIOrderInfo_BOI_DEVIATION_PERCENT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_BOI_DEVIATION_PERCENT'
      OnGetText = cdsBOIOrderInfo_BOI_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsBOIOrderInfoBO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BO_PRODUCT_NO'
    end
    object cdsBOIOrderInfoBO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BO_PRODUCT_NAME'
      Size = 100
    end
  end
  object dsBOIOrderInfo: TDataSource
    DataSet = cdsBOIOrderInfo
    Left = 536
    Top = 88
  end
  object cdsPrintData: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 632
    Top = 504
    object cdsPrintDataBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsPrintDataBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object cdsPrintDataBUDGET_ORDER_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'BUDGET_ORDER_STATUS_CODE'
      OnGetText = cdsBOIOrderInfoBUDGET_ORDER_STATUS_CODEGetText
    end
    object cdsPrintDataBUDGET_ORDER_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_BRANCH_IDENTIFIER'
      Size = 46
    end
    object cdsPrintDataBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsPrintDataBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
    object cdsPrintDataBUDGET_ORDER_ITEM_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'BUDGET_ORDER_ITEM_STATUS_CODE'
      OnGetText = cdsBOIOrderInfoBUDGET_ORDER_ITEM_STATUS_CODEGetText
    end
    object cdsPrintDataGENERATOR_DEPT_NAME: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_NAME'
      Size = 100
    end
    object cdsPrintDataGENERATOR_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'GENERATOR_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsPrintDataDEVELOPER_DEPT_NAME: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_NAME'
      Size = 100
    end
    object cdsPrintDataDEVELOPER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEVELOPER_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsPrintDataBOI_DEPT_NAME: TAbmesWideStringField
      FieldName = 'BOI_DEPT_NAME'
      Size = 100
    end
    object cdsPrintDataBOI_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BOI_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsPrintDataBUDGET_CLASS_DEPT_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_CLASS_DEPT_NAME'
      Size = 100
    end
    object cdsPrintDataBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
    object cdsPrintDataBUDGET_CLASS_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BUDGET_CLASS_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsPrintDataCONSUMER_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_NAME'
      Size = 100
    end
    object cdsPrintDataCONSUMER_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CONSUMER_DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsPrintDataDECISION_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'DECISION_EMPLOYEE_NO'
    end
    object cdsPrintDataDECISION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'DECISION_EMPLOYEE_NAME'
      Size = 100
    end
    object cdsPrintDataDECISION_DATE: TAbmesSQLTimeStampField
      FieldName = 'DECISION_DATE'
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsPrintDataDECISION_NAME: TAbmesWideStringField
      FieldName = 'DECISION_NAME'
    end
    object cdsPrintDataBUDGET_MODE: TAbmesFloatField
      FieldName = 'BUDGET_MODE'
    end
    object cdsPrintDataBOI_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_TYPE_CODE'
    end
    object cdsPrintDataBUDGET_ORDER_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_CODE'
    end
    object cdsPrintDataBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
    object cdsPrintData_BOI_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = '_BOI_ORDER_STATUS_CODE'
      OnGetText = cdsPrintData_BOI_ORDER_STATUS_CODEGetText
    end
    object cdsPrintDataBO_PRODUCT_NO: TAbmesFloatField
      FieldName = 'BO_PRODUCT_NO'
    end
    object cdsPrintDataBO_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'BO_PRODUCT_NAME'
      Size = 100
    end
    object cdsPrintData_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = '_CURRENCY_ABBREV'
      Size = 5
    end
  end
end
