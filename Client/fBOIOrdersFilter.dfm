inherited fmBOIOrdersFilter: TfmBOIOrdersFilter
  Left = 285
  Top = 173
  ClientHeight = 571
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 536
    Width = 1019
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 751
    end
    inherited pnlClose: TPanel
      Left = 662
    end
    inherited pnlApply: TPanel
      Left = 930
    end
  end
  object gbBudgetOrder: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 617
    Height = 161
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' %BudgetOrderNamePlural% '#1079#1072' '#1057#1088#1077#1076#1072' (%BudgetOrderAbbr' +
      'ev%) '
    TabOrder = 0
    object lblFormCaption: TLabel
      Left = 400
      Top = 0
      Width = 13
      Height = 13
      Caption = '%s'
      Visible = False
    end
    object gbState: TGroupBox
      Left = 8
      Top = 16
      Width = 129
      Height = 65
      Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% '
      TabOrder = 0
      object lblDash2: TLabel
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
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbMaxStatus: TJvDBComboBox
        Left = 72
        Top = 32
        Width = 49
        Height = 21
        DataField = 'MAX_STATUS_CODE'
        DataSource = dsData
        DropDownCount = 7
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
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object gbBudgetOrderID: TGroupBox
      Left = 144
      Top = 16
      Width = 217
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
        Left = 120
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
        Width = 41
        Height = 21
        DataField = 'BUDGET_ORDER_CODE'
        DataSource = dsData
        TabOrder = 1
      end
      object cbRegularityType: TJvDBLookupCombo
        Left = 120
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
      Left = 368
      Top = 16
      Width = 241
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 2
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 241
        Caption = ' '#1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev% '
        DesignSize = (
          241
          65)
        inherited lblTreeNodeName: TLabel
          Width = 3
          Caption = ' '
        end
        inherited lblTreeNodeNo: TLabel
          Left = 104
          Width = 3
          Caption = ' '
        end
        inherited pnlTreeNode: TPanel
          Width = 225
          inherited pnlTreeNodeName: TPanel
            Width = 78
            DesignSize = (
              78
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 77
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 78
          end
          inherited pnlRightButtons: TPanel
            Left = 189
          end
        end
      end
    end
    inline frDeveloperDept: TfrDeptFieldEditFrameLabeled
      Left = 8
      Top = 88
      Width = 353
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 65
      TabOrder = 3
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 353
        Caption = ' '#1058#1055' '#1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1097#1086' %BudgetOrderAbbrev% '
        DesignSize = (
          353
          65)
        inherited lblTreeNodeName: TLabel
          Width = 76
        end
        inherited lblTreeNodeNo: TLabel
          Width = 19
        end
        inherited pnlTreeNode: TPanel
          Width = 337
          inherited pnlTreeNodeName: TPanel
            Width = 190
            DesignSize = (
              190
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 189
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 190
          end
          inherited pnlRightButtons: TPanel
            Left = 301
          end
        end
      end
    end
    object gbDateInterval: TGroupBox
      Left = 368
      Top = 88
      Width = 241
      Height = 65
      Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderAbbrev% '
      TabOrder = 4
      inline frDates: TfrDateIntervalFrame
        Left = 40
        Top = 32
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
      end
    end
  end
  object gbBudgetOrderItems: TGroupBox [2]
    Left = 8
    Top = 176
    Width = 617
    Height = 145
    Caption = 
      ' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNamePlural% '#1079#1072' '#1057#1088#1077#1076#1072' (%Budge' +
      'tOrderItemAbbrev%) '
    TabOrder = 1
    object pnlBudgetOrderItems: TPanel
      Left = 2
      Top = 15
      Width = 613
      Height = 122
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbBudgetOrderStatus: TGroupBox
        Left = 8
        Top = 0
        Width = 130
        Height = 49
        Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 0
        object lblDash: TLabel
          Left = 59
          Top = 19
          Width = 9
          Height = 13
          Caption = '---'
        end
        object cbMinBOIStatus: TJvDBComboBox
          Left = 8
          Top = 16
          Width = 49
          Height = 21
          DataField = 'MIN_ITEM_STATUS_CODE'
          DataSource = dsData
          DropDownCount = 7
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
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbMaxBOIStatus: TJvDBComboBox
          Left = 72
          Top = 16
          Width = 49
          Height = 21
          DataField = 'MAX_ITEM_STATUS_CODE'
          DataSource = dsData
          DropDownCount = 7
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
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
      object gbConsume: TGroupBox
        Left = 8
        Top = 56
        Width = 402
        Height = 65
        Caption = ' '#1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 4
        object lblTreeNodeName: TLabel
          Left = 8
          Top = 16
          Width = 97
          Height = 13
          Caption = #1058#1055' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
        end
        object lblBudgetOrderItemDistributionType: TLabel
          Left = 296
          Top = 16
          Width = 31
          Height = 13
          Caption = #1053#1072#1095#1080#1085
        end
        inline frBudgetOrderItemDept: TfrDeptFieldEditFrameBald
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
            DesignSize = (
              297
              49)
            inherited pnlTreeNode: TPanel
              Width = 281
              inherited pnlTreeNodeName: TPanel
                Width = 134
                DesignSize = (
                  134
                  22)
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
        object cbBudgetOrderItemDistributionType: TJvDBLookupCombo
          Left = 296
          Top = 32
          Width = 97
          Height = 21
          DataField = '_BOI_DISTRIBUTION_TYPE_NAME'
          DataSource = dsData
          DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
          TabOrder = 1
        end
      end
      object gbBudgetOrderTimeInt: TGroupBox
        Left = 416
        Top = 56
        Width = 191
        Height = 65
        Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1076#1077#1081#1089#1090#1074#1080#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
        TabOrder = 5
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
          DesignSize = (
            153
            21)
          inherited edtInterval: TJvDBComboEdit
            Width = 153
          end
        end
      end
      inline frBudgetClass: TfrProductFieldEditFrame
        Left = 264
        Top = 0
        Width = 343
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 49
        TabOrder = 3
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 343
          Caption = ' %BudgetClassName% '
          DesignSize = (
            343
            49)
          inherited pnlTreeNode: TPanel
            Width = 327
            inherited pnlTreeNodeName: TPanel
              Width = 157
              DesignSize = (
                157
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 156
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 157
            end
            inherited pnlRightButtons: TPanel
              Left = 268
            end
          end
        end
      end
      object gbBudgetOrderItemType: TGroupBox
        Left = 192
        Top = 0
        Width = 65
        Height = 49
        Caption = ' '#1042#1080#1076' '
        TabOrder = 2
        object cbBudgetOrderItemType: TJvDBLookupCombo
          Left = 8
          Top = 16
          Width = 49
          Height = 21
          DropDownWidth = 300
          DeleteKeyClear = False
          DataField = 'BUDGET_ORDER_ITEM_TYPE'
          DataSource = dsData
          LookupField = 'BUDGET_ORDER_ITEM_TYPE'
          LookupDisplay = 'BUDGET_ORDER_ITEM_TYPE_ABBREV;BUDGET_ORDER_ITEM_TYPE_NAME'
          LookupSource = dsFilterBudgetOrderItemTypes
          TabOrder = 0
        end
      end
      object gbBudgetOrderItemCode: TGroupBox
        Left = 144
        Top = 0
        Width = 41
        Height = 49
        Caption = ' No '
        TabOrder = 1
        object edtBudgetOrderItemCode: TDBEdit
          Left = 8
          Top = 16
          Width = 25
          Height = 21
          DataField = 'BUDGET_ORDER_ITEM_CODE'
          DataSource = dsData
          TabOrder = 0
        end
      end
    end
  end
  object gbBOIOrders: TGroupBox [3]
    Left = 8
    Top = 328
    Width = 617
    Height = 193
    TabOrder = 3
    Visible = False
    object gbBOIOStatus: TGroupBox
      Left = 7
      Top = 16
      Width = 130
      Height = 49
      Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderItemOrderAbbrev% '
      TabOrder = 0
      object lblDash3: TLabel
        Left = 59
        Top = 19
        Width = 9
        Height = 13
        Caption = '---'
      end
      object cbMinBOIOStatus: TJvDBComboBox
        Left = 8
        Top = 16
        Width = 49
        Height = 21
        DataField = 'MIN_BOIO_STATUS_CODE'
        DataSource = dsData
        DropDownCount = 7
        Items.Strings = (
          #1055#1088
          #1055#1088'!'
          'X'
          #1055#1083
          #1055'/'#1054
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
          '7')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbMaxBOIOStatus: TJvDBComboBox
        Left = 72
        Top = 16
        Width = 49
        Height = 21
        DataField = 'MAX_BOIO_STATUS_CODE'
        DataSource = dsData
        DropDownCount = 7
        Items.Strings = (
          #1055#1088
          #1055#1088'!'
          'X'
          #1055#1083
          #1055'/'#1054
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
          '7')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    inline frConsumerDept: TfrDeptFieldEditFrame
      Left = 192
      Top = 16
      Width = 369
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 2
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 369
        Caption = ' '#1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088' '
        DesignSize = (
          369
          49)
        inherited pnlTreeNode: TPanel
          Width = 353
          inherited pnlTreeNodeName: TPanel
            Width = 206
            DesignSize = (
              206
              22)
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
    end
    object gbBOIOPlanDate: TGroupBox
      Left = 8
      Top = 72
      Width = 209
      Height = 49
      Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1072' '#1076#1072#1090#1072' '#1085#1072' %BudgetOrderItemOrderAbbrev% '
      TabOrder = 3
      inline frBOIOPlanDate: TfrDateIntervalFrame
        Left = 32
        Top = 16
        Width = 145
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 145
        Constraints.MinHeight = 21
        Constraints.MinWidth = 145
        TabOrder = 0
        TabStop = True
      end
    end
    object gbBOIOrderCode: TGroupBox
      Left = 144
      Top = 16
      Width = 41
      Height = 49
      Caption = ' No '
      TabOrder = 1
      object edtBOIOrderCode: TDBEdit
        Left = 8
        Top = 16
        Width = 25
        Height = 21
        DataField = 'BOI_ORDER_CODE'
        DataSource = dsData
        TabOrder = 0
      end
    end
  end
  inline frBOProductFilter: TfrParamProductFilter [4]
    Left = 632
    Top = 8
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
      inherited lblUsedBy: TLabel
        Width = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
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
  object pnlFilterByBOIOrdersExistance: TPanel [5]
    Left = 16
    Top = 326
    Width = 281
    Height = 17
    BevelOuter = bvNone
    TabOrder = 2
    object chbFilterByBOIOrdersExistance: TAbmesDBCheckBox
      Left = 4
      Top = 0
      Width = 269
      Height = 17
      Caption = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '
      DataField = 'IS_FILTERED_BY_BOI_ORDERS'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
  end
  object gbOrgTaskProposalState: TGroupBox [6]
    Left = 633
    Top = 250
    Width = 376
    Height = 71
    Caption = ' '#1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
    TabOrder = 5
    object cbOrgTaskProposalState: TJvDBLookupCombo
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      DeleteKeyClear = False
      DataField = '_ORG_TASK_PROPOSAL_STATE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [7]
    Left = 600
    Top = 160
  end
  inherited dsData: TDataSource [8]
    Left = 568
    Top = 160
  end
  inherited cdsData: TAbmesClientDataSet [9]
    Left = 536
    Top = 160
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [10]
    Left = 16
    Top = 528
  end
  inherited dsFilterVariants: TDataSource [11]
    Left = 40
    Top = 528
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 544
  end
  object cdsFilterBudgetOrderItemTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsFilterBudgetOrderItemTypesAfterOpen
    Left = 168
    Top = 224
    object cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE'
    end
    object cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_ABBREV'
      Size = 100
    end
    object cdsFilterBudgetOrderItemTypesBUDGET_ORDER_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BUDGET_ORDER_ITEM_TYPE_NAME'
      Size = 100
    end
  end
  object dsFilterBudgetOrderItemTypes: TDataSource
    DataSet = cdsFilterBudgetOrderItemTypes
    Left = 200
    Top = 224
  end
end
