inherited fmBudgetFilter: TfmBudgetFilter
  Left = 351
  Top = 309
  Caption = '%s '#1085#1072' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
  ClientHeight = 629
  ClientWidth = 618
  PixelsPerInch = 96
  TextHeight = 13
  object lblFormCaption: TLabel [0]
    Left = 248
    Top = -8
    Width = 203
    Height = 13
    Caption = '%s '#1085#1072' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
    Visible = False
  end
  inherited pnlBottomButtons: TPanel
    Top = 594
    Width = 618
    TabOrder = 10
    inherited pnlOKCancel: TPanel
      Left = 350
    end
    inherited pnlClose: TPanel
      Left = 261
    end
    inherited pnlApply: TPanel
      Left = 529
    end
  end
  object rgIsLocal: TDBRadioGroup [2]
    Left = 392
    Top = 352
    Width = 217
    Height = 57
    Caption = ' '#1048#1079#1074#1077#1078#1076#1072#1085#1077' '#1085#1072' %BudgetModeNounPlural% '#1079#1072' '#1058#1055' '
    DataField = 'IS_LOCAL'
    DataSource = dsData
    Items.Strings = (
      #1089#1080#1085#1090#1077#1079#1080#1088#1072#1085#1086
      #1083#1086#1082#1072#1083#1085#1086)
    ParentBackground = True
    TabOrder = 8
    Values.Strings = (
      'False'
      'True')
  end
  inline frDateUnitsInterval: TfrDateUnitsIntervalEditFrame [3]
    Left = 8
    Top = 136
    Width = 601
    Height = 137
    TabOrder = 3
    TabStop = True
    inherited gbTimeUnits: TGroupBox
      Height = 82
      inherited lblTimeUnit: TLabel
        Width = 84
      end
      inherited lblTimeUnitCount: TLabel
        Width = 111
      end
    end
    inherited gbDates: TGroupBox
      Top = 88
    end
    inherited alActions: TActionList
      Left = 72
      Top = 48
    end
    inherited dsData: TDataSource
      Left = 104
      Top = 48
    end
    inherited cdsLocal: TAbmesClientDataSet
      Left = 256
      Top = 56
    end
    inherited dsLocal: TDataSource
      Left = 288
      Top = 56
    end
    inherited cdsTimeUnits: TAbmesClientDataSet
      Left = 352
      Top = 56
    end
  end
  object rgIsExpanded: TDBRadioGroup [4]
    Left = 392
    Top = 417
    Width = 217
    Height = 56
    Caption = ' '#1048#1079#1074#1077#1078#1076#1072#1085#1077' '#1085#1072' '#1050#1083#1072#1089#1080#1092#1080#1082#1072#1090#1086#1088' '
    DataField = 'IS_EXPANDED'
    DataSource = dsData
    Items.Strings = (
      #1088#1072#1079#1075#1098#1088#1085#1072#1090
      #1089#1074#1080#1090)
    ParentBackground = True
    TabOrder = 9
    Values.Strings = (
      'True'
      'False')
  end
  object gbConsumption: TGroupBox [5]
    Left = 8
    Top = 8
    Width = 601
    Height = 65
    Caption = ' '#1050#1086#1085#1089#1091#1084#1080#1088#1072#1085#1077' '#1085#1072' %BudgetOrderItemAbbrev% '
    TabOrder = 0
    object lblTreeNodeName: TLabel
      Left = 8
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055
    end
    object lblDistributionType: TLabel
      Left = 472
      Top = 16
      Width = 31
      Height = 13
      Caption = #1053#1072#1095#1080#1085
    end
    inline frDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 457
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 473
        inherited pnlTreeNode: TPanel
          Width = 457
          inherited pnlTreeNodeName: TPanel
            Width = 310
            inherited edtTreeNodeName: TDBEdit
              Width = 309
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 310
          end
          inherited pnlRightButtons: TPanel
            Left = 421
          end
        end
      end
      inherited alActions: TActionList
        Left = 72
        Top = 0
      end
      inherited dsData: TDataSource
        Left = 104
        Top = 0
      end
      inherited cdsTreeNode: TAbmesClientDataSet
        Left = 216
        Top = 65528
      end
      inherited dsTreeNode: TDataSource
        Left = 248
        Top = 65528
      end
    end
    object cbDistributionType: TJvDBLookupCombo
      Left = 472
      Top = 32
      Width = 121
      Height = 21
      DataField = 'BOI_DISTRIBUTION_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'BOI_DISTRIBUTION_TYPE_CODE'
      LookupDisplay = 'BOI_DISTRIBUTION_TYPE_NAME'
      LookupSource = dsBOIDistributionTypes
      TabOrder = 1
    end
  end
  object gbBOIOrderType: TGroupBox [6]
    Left = 328
    Top = 80
    Width = 281
    Height = 49
    Caption = ' '#1057#1098#1076#1098#1088#1078#1072#1090#1077#1083#1077#1085' '#1090#1080#1087' '#1085#1072' %BudgetMode% '#1057#1090#1072#1090#1080#1103' '
    TabOrder = 2
    object cbBOIOrderType: TJvDBLookupCombo
      Left = 8
      Top = 20
      Width = 137
      Height = 21
      DeleteKeyClear = False
      DataField = '_BOI_ORDER_TYPE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbState: TGroupBox [7]
    Left = 8
    Top = 280
    Width = 129
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' %BudgetOrderAbbrev% '
    TabOrder = 4
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
      DataField = 'MIN_BO_STATUS'
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
      DataField = 'MAX_BO_STATUS'
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
  object gbBudgetOrderID: TGroupBox [8]
    Left = 144
    Top = 280
    Width = 241
    Height = 65
    Caption = ' ID %BudgetOrderAbbrev% '
    TabOrder = 5
    object lblBudgetOrderBranch: TLabel
      Left = 8
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblBudgetOrderCode: TLabel
      Left = 80
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object lblRegularityType: TLabel
      Left = 136
      Top = 16
      Width = 79
      Height = 13
      Caption = #1056#1077#1078#1080#1084' '#1085#1072' '#1087#1091#1083#1089'.'
    end
    object cbBudgetOrderBranch: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 'BUDGET_ORDER_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
    object edtBudgetOrderCode: TDBEdit
      Left = 80
      Top = 32
      Width = 49
      Height = 21
      DataField = 'BUDGET_ORDER_CODE'
      DataSource = dsData
      TabOrder = 1
    end
    object cbRegularityType: TJvDBLookupCombo
      Left = 136
      Top = 32
      Width = 97
      Height = 21
      DataField = 'BO_REGULARITY_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'BO_REGULARITY_TYPE_CODE'
      LookupDisplay = 'BO_REGULARITY_TYPE_NAME'
      LookupSource = dsRegularityTypes
      TabOrder = 2
    end
  end
  object gbDept: TGroupBox [9]
    Left = 392
    Top = 280
    Width = 217
    Height = 65
    Caption = ' '#1058#1055' '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' %BudgetOrderAbbrev% '
    TabOrder = 6
    inline frGeneratorDept: TfrDeptFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 201
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 217
        inherited pnlTreeNode: TPanel
          Width = 201
          inherited pnlTreeNodeName: TPanel
            Width = 54
            inherited edtTreeNodeName: TDBEdit
              Width = 53
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 54
          end
          inherited pnlRightButtons: TPanel
            Left = 165
          end
        end
      end
      inherited alActions: TActionList
        Left = 72
        Top = 0
      end
      inherited dsData: TDataSource
        Left = 104
        Top = 0
      end
      inherited cdsTreeNode: TAbmesClientDataSet
        Left = 216
        Top = 65528
      end
      inherited dsTreeNode: TDataSource
        Left = 248
        Top = 65528
      end
    end
  end
  inline frBOProductFilter: TfrParamProductFilter [10]
    Left = 8
    Top = 352
    Width = 377
    Height = 233
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
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
    inherited alActions: TActionList
      Left = 112
      Top = 65528
    end
    inherited dsData: TDataSource
      Left = 144
      Top = 65528
    end
    inherited cdsChosenNodes: TAbmesClientDataSet
      Left = 232
      Top = 65528
    end
    inherited dsChosenNodes: TDataSource
      Left = 264
      Top = 65528
    end
    inherited cdsChosenNodesParams: TAbmesClientDataSet
      Left = 232
      Top = 24
    end
    inherited dsChosenNodesParams: TDataSource
      Left = 264
      Top = 24
    end
    inherited dsChosenNodeParams: TDataSource
      Left = 264
      Top = 120
    end
    inherited cdsProductOrigins: TAbmesClientDataSet
      Left = 264
      Top = 176
    end
    inherited dsProductOrigins: TDataSource
      Left = 296
      Top = 176
    end
    inherited cdsUsedBy: TAbmesClientDataSet
      Left = 56
      Top = 176
    end
    inherited cdsProvidedBy: TAbmesClientDataSet
      Left = 168
      Top = 176
    end
    inherited dsUsedBy: TDataSource
      Left = 88
      Top = 176
    end
    inherited dsProvidedBy: TDataSource
      Left = 200
      Top = 176
    end
  end
  inline frBudgetClass: TfrProductFieldEditFrame [11]
    Left = 8
    Top = 80
    Width = 313
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 313
      Caption = ' %BudgetMode% '#1057#1090#1072#1090#1080#1103' '
      inherited pnlTreeNode: TPanel
        Width = 297
        inherited pnlTreeNodeName: TPanel
          Width = 127
          inherited edtTreeNodeName: TDBEdit
            Width = 126
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 127
        end
        inherited pnlRightButtons: TPanel
          Left = 238
        end
      end
    end
  end
  object gbBudgetOrderItemType: TGroupBox [12]
    Left = 392
    Top = 480
    Width = 217
    Height = 49
    Caption = ' '#1042#1080#1076' %BudgetOrderItemAbbrev% '
    TabOrder = 11
    object cbBudgetOrderItemType: TJvDBLookupCombo
      Left = 8
      Top = 20
      Width = 121
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
  object gbOrgTaskProposalState: TGroupBox [13]
    Left = 393
    Top = 536
    Width = 216
    Height = 49
    Caption = ' '#1057#1090#1072#1076#1080#1081' '#1085#1072' '#1055#1088#1086#1077#1082#1090', '#1089#1074#1098#1088#1079#1072#1085' '#1089' %BudgetOrderAbbrev% '
    TabOrder = 12
    object cbOrgTaskProposalState: TJvDBLookupCombo
      Left = 8
      Top = 20
      Width = 145
      Height = 21
      DeleteKeyClear = False
      DataField = '_ORG_TASK_PROPOSAL_STATE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [14]
    Left = 416
    Top = 128
    inherited actForm: TAction
      Caption = '%s '#1085#1072' %BudgetModeNounPlural% '#1074' '#1057#1088#1077#1076#1072
    end
  end
  inherited cdsData: TAbmesClientDataSet [15]
    Left = 336
    Top = 128
  end
  inherited dsData: TDataSource [16]
    Left = 368
    Top = 128
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 584
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
    Top = 584
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 600
  end
  object cdsRegularityTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBORegularityTypes'
    Left = 280
    Top = 320
    object cdsRegularityTypesBO_REGULARITY_TYPE_CODE: TAbmesFloatField
      FieldName = 'BO_REGULARITY_TYPE_CODE'
    end
    object cdsRegularityTypesBO_REGULARITY_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BO_REGULARITY_TYPE_NAME'
      Size = 100
    end
  end
  object cdsBOIDistributionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conBudget
    Params = <>
    ProviderName = 'prvBOIDistributionTypes'
    Left = 520
    Top = 40
    object cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_CODE: TAbmesFloatField
      FieldName = 'BOI_DISTRIBUTION_TYPE_CODE'
    end
    object cdsBOIDistributionTypesBOI_DISTRIBUTION_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BOI_DISTRIBUTION_TYPE_NAME'
      Size = 100
    end
  end
  object dsRegularityTypes: TDataSource
    DataSet = cdsRegularityTypes
    Left = 312
    Top = 320
  end
  object dsBOIDistributionTypes: TDataSource
    DataSet = cdsBOIDistributionTypes
    Left = 552
    Top = 40
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 136
    Top = 320
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
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 168
    Top = 320
  end
  object dsFilterBudgetOrderItemTypes: TDataSource
    DataSet = cdsFilterBudgetOrderItemTypes
    Left = 568
    Top = 512
  end
  object cdsFilterBudgetOrderItemTypes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsFilterBudgetOrderItemTypesAfterOpen
    Left = 536
    Top = 512
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
end
