inherited fmOrganisationTaskProposalsFilter: TfmOrganisationTaskProposalsFilter
  ActiveControl = cbMinProposalState
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
  ClientHeight = 650
  ClientWidth = 881
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 615
    Width = 881
    TabOrder = 8
    inherited pnlOKCancel: TPanel
      Left = 613
    end
    inherited pnlClose: TPanel
      Left = 524
    end
    inherited pnlApply: TPanel
      Left = 792
    end
  end
  object gbOrgTaskProposal: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 465
    Height = 65
    Caption = ' ID '#1055#1088#1086#1077#1082#1090' '
    TabOrder = 0
    object lblProposalStatus: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblMinProposalState: TLabel
      Left = 77
      Top = 36
      Width = 6
      Height = 13
      Caption = #8212
    end
    object lblNo: TLabel
      Left = 160
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtNo
    end
    object lblCrateDateInterval: TLabel
      Left = 240
      Top = 16
      Width = 123
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    end
    object cbMinProposalState: TDBComboBoxEh
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MIN_PROPOSAL_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 22
      DropDownBox.Width = 485
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxProposalState: TDBComboBoxEh
      Left = 87
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MAX_PROPOSAL_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 22
      DropDownBox.Width = 485
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
    object edtNo: TDBEdit
      Left = 160
      Top = 32
      Width = 73
      Height = 21
      DataField = 'ORG_TASK_PROPOSAL_NO'
      DataSource = dsData
      TabOrder = 2
    end
    inline frCreateDateInterval: TfrDateIntervalFrame
      Left = 240
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 3
      TabStop = True
    end
  end
  object gbProposalPresentation: TGroupBox [2]
    Left = 480
    Top = 8
    Width = 393
    Height = 465
    Caption = ' '#1055#1088#1077#1076#1089#1090#1072#1074#1103#1085#1077' '#1085#1072' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090' '
    TabOrder = 7
    object lblPlanProposalDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 125
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1077#1076#1089#1090#1072#1074#1103#1085#1077
    end
    object lblPlanProposalEmployee: TLabel
      Left = 160
      Top = 16
      Width = 49
      Height = 13
      Caption = #1057#1083#1091#1078#1080#1090#1077#1083
    end
    object lblResultType: TLabel
      Left = 160
      Top = 64
      Width = 67
      Height = 13
      Caption = #1042#1080#1076' '#1056#1077#1096#1077#1085#1080#1077
      FocusControl = cbResultType
    end
    object lblResultDateInterval: TLabel
      Left = 8
      Top = 64
      Width = 103
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077
    end
    object lblProposalCycles: TLabel
      Left = 272
      Top = 64
      Width = 107
      Height = 13
      Caption = #1062#1080#1082#1098#1083' '#1085#1072' '#1079#1072#1088#1072#1078#1076#1072#1085#1077
      FocusControl = edtCyclesFrom
    end
    object lblBetweenCycles: TLabel
      Left = 324
      Top = 84
      Width = 6
      Height = 13
      Caption = #8212
    end
    inline frPlanProposalDateInterval: TfrDateIntervalFrame
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
    inline frPlanProposalEmployee: TfrEmployeeFieldEditFrameBald
      Left = 160
      Top = 32
      Width = 225
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      DesignSize = (
        225
        22)
      inherited gbEmployee: TGroupBox
        Width = 244
        inherited pnlEmployeeName: TPanel
          Width = 169
          inherited pnlRightButtons: TPanel
            Left = 133
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 133
            DesignSize = (
              133
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 87
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 132
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 234
        end
      end
    end
    inline frResultDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 80
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 2
      TabStop = True
    end
    object cbResultType: TJvDBLookupCombo
      Left = 160
      Top = 80
      Width = 97
      Height = 21
      DropDownWidth = 220
      DisplayAllFields = True
      DataField = 'RESULT_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
      LookupDisplay = 'ORG_TASK_PROP_RESULT_TYPE_ABBR'
      LookupSource = dsOrgTaskProposalResultTypes
      TabOrder = 3
    end
    object edtCyclesFrom: TDBEdit
      Left = 272
      Top = 80
      Width = 44
      Height = 21
      DataField = 'MIN_CYCLES'
      DataSource = dsData
      TabOrder = 4
    end
    object edtCyclesTo: TDBEdit
      Left = 337
      Top = 80
      Width = 44
      Height = 21
      DataField = 'MAX_CYCLES'
      DataSource = dsData
      TabOrder = 5
    end
    inline frProduct: TfrParamProductFilter
      Left = 8
      Top = 112
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090' '
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
    inline frDept: TfrDeptFieldEditFrame
      Left = 8
      Top = 352
      Width = 377
      Height = 49
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 49
      TabOrder = 7
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 377
        Caption = ' '#1058#1055', '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' '#1055#1088#1086#1077#1082#1090#1072' '
        DesignSize = (
          377
          49)
        inherited pnlTreeNode: TPanel
          Width = 361
          inherited pnlTreeNodeName: TPanel
            Width = 214
            DesignSize = (
              214
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 213
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 214
          end
          inherited pnlRightButtons: TPanel
            Left = 325
          end
        end
      end
    end
    inline frManagerEmployee: TfrEmployeeFieldEditFrame
      Left = 8
      Top = 408
      Width = 377
      Height = 49
      Constraints.MaxHeight = 49
      Constraints.MinHeight = 49
      TabOrder = 8
      inherited gbEmployee: TGroupBox
        Width = 377
        Caption = ' '#1056#1098#1082#1086#1074#1086#1076#1080#1090#1077#1083' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1072' '
        inherited pnlEmployeeName: TPanel
          Width = 302
          inherited pnlRightButtons: TPanel
            Left = 266
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 266
            inherited edtEmployeeName: TDBEdit
              Width = 265
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 265
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 367
        end
      end
    end
  end
  object gbEngineeringOrder: TGroupBox [3]
    Left = 8
    Top = 152
    Width = 225
    Height = 81
    Caption = ' '#1054#1055#1048#1056' '
    TabOrder = 4
    object gbEngineeringOrderState: TGroupBox
      Left = 8
      Top = 24
      Width = 209
      Height = 49
      Caption = ' '#1057#1090#1072#1090#1091#1089' '
      TabOrder = 0
      Visible = False
      object lblBetweenEngineeringOrderState: TLabel
        Left = 101
        Top = 24
        Width = 6
        Height = 13
        Caption = #8212
      end
      object cbMinEngineeringOrderState: TDBComboBoxEh
        Left = 8
        Top = 20
        Width = 81
        Height = 21
        DataField = 'MIN_EO_STATE_CODE'
        DataSource = dsData
        DropDownBox.Rows = 13
        DropDownBox.Width = 450
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object cbMaxEngineeringOrderState: TDBComboBoxEh
        Left = 120
        Top = 20
        Width = 81
        Height = 21
        DataField = 'MAX_EO_STATE_CODE'
        DataSource = dsData
        DropDownBox.Rows = 13
        DropDownBox.Width = 450
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
    end
  end
  object gbProductionOrder: TGroupBox [4]
    Left = 248
    Top = 152
    Width = 225
    Height = 81
    Caption = ' '#1054#1055#1042' '
    TabOrder = 6
    object gbProductionOrderState: TGroupBox
      Left = 8
      Top = 24
      Width = 209
      Height = 49
      Caption = ' '#1057#1090#1072#1090#1091#1089' '
      TabOrder = 0
      Visible = False
      object lblMinProductionOrderState: TLabel
        Left = 101
        Top = 24
        Width = 6
        Height = 13
        Caption = #8212
      end
      object cbMinProductionOrderState: TDBComboBoxEh
        Left = 8
        Top = 20
        Width = 81
        Height = 21
        DataField = 'MIN_PO_STATE_CODE'
        DataSource = dsData
        DropDownBox.Rows = 13
        DropDownBox.Width = 450
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object cbMaxProductionOrderState: TDBComboBoxEh
        Left = 120
        Top = 20
        Width = 81
        Height = 21
        DataField = 'MAX_PO_STATE_CODE'
        DataSource = dsData
        DropDownBox.Rows = 13
        DropDownBox.Width = 450
        EditButtons = <>
        TabOrder = 1
        Visible = True
      end
    end
  end
  object cbHasEngineeringOrder: TJvDBComboBox [5]
    Left = 120
    Top = 148
    Width = 105
    Height = 21
    DataField = 'HAS_ENGINEERING_ORDER'
    DataSource = dsData
    DropDownCount = 3
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1048#1084#1072
      #1053#1103#1084#1072)
    TabOrder = 3
    Values.Strings = (
      '1'
      '2'
      '3')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
    ListSettings.OutfilteredValueFont.Style = []
    OnChange = cbHasEngineeringOrderChange
  end
  object cbHasProductionOrder: TJvDBComboBox [6]
    Left = 360
    Top = 148
    Width = 105
    Height = 21
    DataField = 'HAS_PRODUCTION_ORDER'
    DataSource = dsData
    DropDownCount = 3
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1048#1084#1072
      #1053#1103#1084#1072)
    TabOrder = 5
    Values.Strings = (
      '1'
      '2'
      '3')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
    ListSettings.OutfilteredValueFont.Style = []
    OnChange = cbHasProductionOrderChange
  end
  object gbEngineeringPlanDateInterval: TGroupBox [7]
    Left = 8
    Top = 80
    Width = 225
    Height = 57
    Caption = ' '#1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077' '
    TabOrder = 1
    inline frEngineeringPlanDateInterval: TfrDateIntervalFrame
      Left = 40
      Top = 24
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
  object gbProductionPlanDateInterval: TGroupBox [8]
    Left = 248
    Top = 80
    Width = 225
    Height = 57
    Caption = ' '#1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '
    TabOrder = 2
    inline frProductionPlanDateInterval: TfrDateIntervalFrame
      Left = 40
      Top = 24
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
  object gbPrcData: TGroupBox [9]
    Left = 8
    Top = 480
    Width = 865
    Height = 127
    Caption = ' '#1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090' '
    TabOrder = 9
    inline frPrcDataFilter: TfrPrcDataFilterFrame
      Left = 3
      Top = 10
      Width = 861
      Height = 124
      Constraints.MaxHeight = 124
      Constraints.MaxWidth = 866
      Constraints.MinHeight = 114
      Constraints.MinWidth = 861
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      inherited lblProcessBaseAction: TLabel
        Width = 110
      end
      inherited lblProcessConcreteAction: TLabel
        Width = 110
      end
      inherited lblProcessBaseOperation: TLabel
        Width = 128
      end
      inherited lblProcessKnowl: TLabel
        Width = 50
      end
      inherited lblProcessFunc: TLabel
        Width = 46
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 24
    Top = 408
  end
  inherited dsFilterVariants: TDataSource
    Left = 48
    Top = 408
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 424
  end
  object cdsOrgTaskProposalResultTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conOrganisationTasks
    Params = <>
    ProviderName = 'prvOrgTaskProposalResultTypes'
    Left = 592
    Top = 72
    object cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
    end
    object cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_NAME'
      Size = 250
    end
    object cdsOrgTaskProposalResultTypesORG_TASK_PROP_RESULT_TYPE_ABBR: TAbmesWideStringField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_ABBR'
      Size = 100
    end
  end
  object dsOrgTaskProposalResultTypes: TDataSource
    DataSet = cdsOrgTaskProposalResultTypes
    Left = 624
    Top = 72
  end
end
