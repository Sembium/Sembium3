inherited fmBudgetOrdersFilter: TfmBudgetOrdersFilter
  Left = 323
  Top = 249
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' %BudgetModePlural% '#1041#1086#1088#1076#1077#1088#1072' '#1079#1072' '#1057#1088#1077#1076#1072
  ClientHeight = 548
  ClientWidth = 681
  ExplicitWidth = 687
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 513
    Width = 681
    ExplicitTop = 513
    ExplicitWidth = 681
    inherited pnlOKCancel: TPanel
      Left = 413
      ExplicitLeft = 413
    end
    inherited pnlClose: TPanel
      Left = 324
      ExplicitLeft = 324
    end
    inherited pnlApply: TPanel
      Left = 592
      ExplicitLeft = 592
    end
  end
  object gbBudgetOrder: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 665
    Height = 337
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %BudgetOrderNamePlural% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbr' +
      'ev%) '
    TabOrder = 1
    object gbState: TGroupBox
      Left = 8
      Top = 16
      Width = 129
      Height = 65
      Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% '
      TabOrder = 0
      object lblStatusDash: TLabel
        Left = 59
        Top = 35
        Width = 9
        Height = 13
        Caption = '---'
      end
      object cbMinStatus: TJvDBComboBox
        Left = 8
        Top = 32
        Width = 49
        Height = 21
        DataField = 'MIN_STATUS_CODE'
        DataSource = dsData
        DropDownCount = 7
        ItemHeight = 13
        Items.Strings = (
          #1055#1083
          #1055'/'#1054
          #1048#1079#1090
          #1055#1082
          #1040#1085)
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object cbMaxStatus: TJvDBComboBox
        Left = 72
        Top = 32
        Width = 49
        Height = 21
        DataField = 'MAX_STATUS_CODE'
        DataSource = dsData
        DropDownCount = 7
        ItemHeight = 13
        Items.Strings = (
          #1055#1083
          #1055'/'#1054
          #1048#1079#1090
          #1055#1082
          #1040#1085)
        TabOrder = 1
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
      end
    end
    object gbBudgetOrderID: TGroupBox
      Left = 144
      Top = 16
      Width = 241
      Height = 65
      Caption = ' ID %BudgetOrderAbbrev% '
      TabOrder = 1
      object lblBudgetOrderBranch: TLabel
        Left = 8
        Top = 16
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
      end
      object lblBudgetOrderCode: TLabel
        Left = 72
        Top = 16
        Width = 34
        Height = 13
        Caption = #1053#1086#1084#1077#1088
      end
      object lblRegularityType: TLabel
        Left = 144
        Top = 16
        Width = 79
        Height = 13
        Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1087#1091#1083#1089'.'
      end
      object cbBudgetOrderBranch: TJvDBLookupCombo
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        DataField = '_BUDGET_ORDER_BRANCH'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089' >'
        TabOrder = 0
      end
      object edtBudgetOrderCode: TDBEdit
        Left = 72
        Top = 32
        Width = 65
        Height = 21
        DataField = 'BUDGET_ORDER_CODE'
        DataSource = dsData
        TabOrder = 1
      end
      object cbRegularityType: TJvDBLookupCombo
        Left = 144
        Top = 32
        Width = 89
        Height = 21
        DataField = '_BO_REGULARITY_TYPE_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 2
      end
    end
    inline frGeneratorDept: TfrDeptFieldEditFrameLabeled
      Left = 392
      Top = 16
      Width = 265
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 2
      TabStop = True
      ExplicitLeft = 392
      ExplicitTop = 16
      ExplicitWidth = 265
      inherited gbTreeNode: TGroupBox
        Width = 265
        Caption = ' '#1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev% '
        ExplicitWidth = 265
        inherited lblTreeNodeName: TLabel
          Width = 76
          ExplicitWidth = 76
        end
        inherited lblTreeNodeNo: TLabel
          Left = 104
          Width = 19
          ExplicitLeft = 104
          ExplicitWidth = 19
        end
        inherited pnlTreeNode: TPanel
          Width = 249
          ExplicitWidth = 249
          inherited pnlTreeNodeName: TPanel
            Width = 102
            ExplicitWidth = 102
            inherited edtTreeNodeName: TDBEdit
              Width = 101
              ExplicitWidth = 101
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 102
            ExplicitLeft = 102
          end
          inherited pnlRightButtons: TPanel
            Left = 213
            ExplicitLeft = 213
          end
        end
      end
    end
    inline frDeveloperDept: TfrDeptFieldEditFrameLabeled
      Left = 392
      Top = 88
      Width = 265
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 4
      TabStop = True
      ExplicitLeft = 392
      ExplicitTop = 88
      ExplicitWidth = 265
      inherited gbTreeNode: TGroupBox
        Width = 265
        Caption = ' '#1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev% '
        ExplicitWidth = 265
        inherited lblTreeNodeName: TLabel
          Width = 76
          ExplicitWidth = 76
        end
        inherited lblTreeNodeNo: TLabel
          Left = 144
          Width = 19
          ExplicitLeft = 144
          ExplicitWidth = 19
        end
        inherited pnlTreeNode: TPanel
          Width = 249
          ExplicitWidth = 249
          inherited pnlTreeNodeName: TPanel
            Width = 102
            ExplicitWidth = 102
            inherited edtTreeNodeName: TDBEdit
              Width = 101
              ExplicitWidth = 101
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 102
            ExplicitLeft = 102
          end
          inherited pnlRightButtons: TPanel
            Left = 213
            ExplicitLeft = 213
          end
        end
      end
    end
    object gbDateInterval: TGroupBox
      Left = 392
      Top = 160
      Width = 265
      Height = 65
      Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev% '
      TabOrder = 5
      inline frDates: TfrDateIntervalFrame
        Left = 48
        Top = 32
        Width = 153
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 153
        Constraints.MinHeight = 21
        Constraints.MinWidth = 153
        TabOrder = 0
        TabStop = True
        ExplicitLeft = 48
        ExplicitTop = 32
        ExplicitWidth = 153
        inherited edtInterval: TJvDBComboEdit
          Width = 153
          ExplicitWidth = 153
        end
      end
    end
    inline frParamProductFilter: TfrParamProductFilter
      Left = 8
      Top = 88
      Width = 377
      Height = 236
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 88
      ExplicitHeight = 236
      inherited grpTreeNodeFilter: TGroupBox
        Height = 236
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
        ExplicitHeight = 236
        inherited lblUsedBy: TLabel
          Width = 61
          ExplicitWidth = 61
        end
        inherited lblProductOrigin: TLabel
          Width = 23
          ExplicitWidth = 23
        end
        inherited lblCommonStatus: TLabel
          Width = 45
          ExplicitWidth = 45
        end
        inherited lblIsActive: TLabel
          Width = 53
          ExplicitWidth = 53
        end
        inherited pnlNodes: TPanel
          inherited grdChosenNodes: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlParams: TPanel
          inherited grdChosenNodeParams: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
      end
    end
    object gbOrgTaskProposalState: TGroupBox
      Left = 392
      Top = 232
      Width = 265
      Height = 49
      Caption = ' '#1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
      TabOrder = 6
      object cbOrgTaskProposalState: TJvDBLookupCombo
        Left = 8
        Top = 20
        Width = 145
        Height = 21
        EscapeClear = False
        DataField = '_ORG_TASK_PROPOSAL_STATE_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 0
      end
    end
  end
  object gbBudgetOrderItems: TGroupBox [2]
    Left = 8
    Top = 352
    Width = 665
    Height = 153
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNamePlural% '#1079#1072' '#1057#1088#1077#1076#1072' (%Budge' +
      'tOrderItemAbbrev%) '
    TabOrder = 2
    object pnlBudgetOrderItems: TPanel
      Left = 2
      Top = 21
      Width = 661
      Height = 130
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object gbItemStatus: TGroupBox
        Left = 7
        Top = 0
        Width = 130
        Height = 49
        Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 0
        object lblStatusCodeDash: TLabel
          Left = 59
          Top = 19
          Width = 9
          Height = 13
          Caption = '---'
        end
        object cbMinItemStatusCode: TJvDBComboBox
          Left = 8
          Top = 16
          Width = 49
          Height = 21
          DataField = 'MIN_ITEM_STATUS_CODE'
          DataSource = dsData
          DropDownCount = 7
          ItemHeight = 13
          Items.Strings = (
            #1055#1088
            #1055#1088'?'
            #1055#1088'!'
            #1055#1088'?!'
            'X'
            #1055#1083
            #1055'/'#1054
            #1048#1079#1090
            #1055#1082
            #1040#1085)
          TabOrder = 0
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
        end
        object cbMaxItemStatusCode: TJvDBComboBox
          Left = 72
          Top = 16
          Width = 49
          Height = 21
          DataField = 'MAX_ITEM_STATUS_CODE'
          DataSource = dsData
          DropDownCount = 7
          ItemHeight = 13
          Items.Strings = (
            #1055#1088
            #1055#1088'?'
            #1055#1088'!'
            #1055#1088'?!'
            'X'
            #1055#1083
            #1055'/'#1054
            #1048#1079#1090
            #1055#1082
            #1040#1085)
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10')
        end
      end
      object gbBOIOrderType: TGroupBox
        Left = 520
        Top = 0
        Width = 129
        Height = 49
        Caption = ' '#1057#1098#1076#1098#1088#1078#1072#1090#1077#1083#1077#1085' '#1090#1080#1087' '
        TabOrder = 2
        object cbBOIOrderType: TJvDBLookupCombo
          Left = 8
          Top = 20
          Width = 113
          Height = 21
          DropDownWidth = 150
          DataField = '_BOI_ORDER_TYPE_NAME'
          DataSource = dsData
          DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
          LookupField = 'BOI_ORDER_TYPE_CODE'
          LookupDisplay = 'BOI_ORDER_TYPE_NAME'
          TabOrder = 0
        end
      end
      object gbConsume: TGroupBox
        Left = 7
        Top = 56
        Width = 450
        Height = 65
        Caption = ' '#1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 3
        object lblTreeNodeName: TLabel
          Left = 8
          Top = 16
          Width = 103
          Height = 13
          Caption = #1058#1055' - '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
        end
        object lblBudgetOrderItemDistributionType: TLabel
          Left = 336
          Top = 16
          Width = 31
          Height = 13
          Caption = #1053#1072#1095#1080#1085
        end
        inline frBudgetOrderItemDept: TfrDeptFieldEditFrameBald
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
          ExplicitLeft = 8
          ExplicitTop = 32
          ExplicitWidth = 321
          inherited gbTreeNode: TGroupBox
            Width = 337
            ExplicitWidth = 337
            inherited pnlTreeNode: TPanel
              Width = 321
              ExplicitWidth = 321
              inherited pnlTreeNodeName: TPanel
                Width = 174
                ExplicitWidth = 174
                inherited edtTreeNodeName: TDBEdit
                  Width = 173
                  ExplicitWidth = 173
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = 174
                ExplicitLeft = 174
              end
              inherited pnlRightButtons: TPanel
                Left = 285
                ExplicitLeft = 285
              end
            end
          end
        end
        object cbBudgetOrderItemDistributionType: TJvDBLookupCombo
          Left = 336
          Top = 32
          Width = 102
          Height = 21
          DataField = '_BOI_DISTRIBUTION_TYPE_NAME'
          DataSource = dsData
          DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
          TabOrder = 1
        end
      end
      object gbDates: TGroupBox
        Left = 464
        Top = 56
        Width = 185
        Height = 65
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 4
        inline frBudgetOrderItemDates: TfrDateIntervalFrame
          Left = 16
          Top = 32
          Width = 153
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 153
          Constraints.MinHeight = 21
          Constraints.MinWidth = 153
          TabOrder = 0
          TabStop = True
          ExplicitLeft = 16
          ExplicitTop = 32
          ExplicitWidth = 153
          inherited edtInterval: TJvDBComboEdit
            Width = 153
            ExplicitWidth = 153
          end
        end
      end
      inline frBudgetClass: TfrProductFieldEditFrame
        Left = 144
        Top = 0
        Width = 369
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 1
        TabStop = True
        ExplicitLeft = 144
        ExplicitWidth = 369
        inherited gbTreeNode: TGroupBox
          Width = 369
          Caption = ' %BudgetClassName% '
          ExplicitWidth = 369
          inherited pnlTreeNode: TPanel
            Width = 353
            ExplicitWidth = 353
            inherited pnlTreeNodeName: TPanel
              Width = 183
              ExplicitWidth = 183
              inherited edtTreeNodeName: TDBEdit
                Width = 182
                ExplicitWidth = 182
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 183
              ExplicitLeft = 183
            end
            inherited pnlRightButtons: TPanel
              Left = 294
              ExplicitLeft = 294
            end
          end
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 224
    Top = 512
  end
  inherited dsData: TDataSource
    Left = 136
    Top = 512
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 104
    Top = 512
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 512
  end
  inherited dsFilterVariants: TDataSource
    Top = 512
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 528
  end
end
