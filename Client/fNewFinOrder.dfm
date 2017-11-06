inherited fmNewFinOrder: TfmNewFinOrder
  ActiveControl = cbBranch
  Caption = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
  ClientHeight = 268
  ClientWidth = 529
  PixelsPerInch = 96
  TextHeight = 13
  object btnCopyBranchToExecDept: TSpeedButton [0]
    Left = 84
    Top = 13
    Width = 17
    Height = 43
    Action = actCopyBranchToExecDept
    Flat = True
  end
  inherited pnlBottomButtons: TPanel
    Top = 233
    Width = 529
    TabOrder = 6
    inherited pnlOKCancel: TPanel
      Left = 261
    end
    inherited pnlClose: TPanel
      Left = 172
    end
    inherited pnlApply: TPanel
      Left = 440
      Visible = False
    end
  end
  object gbPriority: TGroupBox [2]
    Left = 440
    Top = 8
    Width = 81
    Height = 49
    Caption = ' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '
    TabOrder = 2
    DesignSize = (
      81
      49)
    object cbPriority: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 65
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'FO_PRIORITY_CODE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'PRIORITY_CODE'
      LookupDisplay = 'PRIORITY_NO;PRIORITY_NAME'
      LookupSource = dsPriorities
      TabOrder = 0
    end
  end
  inline frExecDept: TfrDeptFieldEditFrame [3]
    Left = 104
    Top = 8
    Width = 329
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 1
    inherited gbTreeNode: TGroupBox
      Width = 329
      Caption = ' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '
      inherited pnlTreeNode: TPanel
        Width = 313
        inherited pnlTreeNodeName: TPanel
          Width = 166
          inherited edtTreeNodeName: TDBEdit
            Width = 165
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 166
        end
        inherited pnlRightButtons: TPanel
          Left = 277
        end
      end
    end
  end
  inline frFinProduct: TfrProductFieldEditFrame [4]
    Left = 8
    Top = 64
    Width = 513
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 3
    inherited gbTreeNode: TGroupBox
      Width = 513
      Caption = ' '#1054#1087#1077#1088#1072#1090#1080#1074#1077#1085' '#1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090' '
      DesignSize = (
        513
        49)
      inherited pnlTreeNode: TPanel
        Width = 497
        inherited pnlTreeNodeName: TPanel
          Width = 315
          DesignSize = (
            315
            22)
          inherited edtTreeNodeName: TDBEdit
            Width = 314
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 315
        end
        inherited pnlRightButtons: TPanel
          Left = 438
        end
      end
    end
  end
  object gbSpecFinModel: TGroupBox [5]
    Left = 8
    Top = 176
    Width = 513
    Height = 49
    Caption = ' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055'-'#1052#1054#1044#1045#1083' - '#1060#1080#1085#1072#1085#1089#1086#1074' '
    TabOrder = 5
    DesignSize = (
      513
      49)
    object cbSpecFinModel: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 497
      Height = 21
      DeleteKeyClear = False
      DataField = 'SPEC_FIN_MODEL_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'SPEC_FIN_MODEL_CODE'
      LookupDisplay = 'SPEC_FIN_MODEL_NAME'
      LookupSource = dsSpecFinModels
      TabOrder = 0
    end
  end
  object gbBranch: TGroupBox [6]
    Left = 8
    Top = 8
    Width = 73
    Height = 49
    Caption = ' '#1058#1055' '#1043#1083'. '
    TabOrder = 0
    DesignSize = (
      73
      49)
    object cbBranch: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 57
      Height = 21
      DropDownWidth = 250
      EscapeKeyReset = False
      DeleteKeyClear = False
      DataField = 'FO_BRANCH_CODE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_NO;BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 0
    end
  end
  inline frFinPartner: TfrPartnerFieldEditFrame [7]
    Left = 8
    Top = 120
    Width = 513
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 4
    inherited gbPartner: TGroupBox
      Width = 513
      Caption = ' '#1057#1090#1088#1072#1085#1072' '#1087#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1054#1090#1085#1086#1096#1077#1085#1080#1077' '
      inherited pnlNameAndButtons: TPanel
        Width = 424
        inherited pnlRightButtons: TPanel
          Left = 388
          inherited tlbDocButton: TToolBar
            Height = 32
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 388
          inherited edtPartnerName: TDBEdit
            Width = 389
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 389
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 505
      end
    end
  end
  inherited alActions: TActionList
    Left = 72
    Top = 184
    inherited actForm: TAction
      Caption = #1053#1086#1074' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
    end
    object actCopyBranchToExecDept: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055' '#1043#1083#1072#1074#1085#1086' '#1074' '#1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      ImageIndex = 40
      OnExecute = actCopyBranchToExecDeptExecute
      OnUpdate = actCopyBranchToExecDeptUpdate
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 40
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 8
    Top = 184
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 448
    Top = 32
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      DisplayWidth = 2
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 480
    Top = 32
  end
  object cdsSpecFinModels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecFinModels'
    BeforeOpen = cdsSpecFinModelsBeforeOpen
    Left = 320
    Top = 184
    object cdsSpecFinModelsSPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'SPEC_FIN_MODEL_CODE'
    end
    object cdsSpecFinModelsFINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'FINANCIAL_PRODUCT_CODE'
    end
    object cdsSpecFinModelsSPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'SPEC_FIN_MODEL_NAME'
      Size = 100
    end
  end
  object dsSpecFinModels: TDataSource
    DataSet = cdsSpecFinModels
    Left = 352
    Top = 184
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Filtered = True
    Params = <>
    ProviderName = 'prvBranches'
    Left = 16
    Top = 32
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_CODE'
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
      Alignment = taLeftJustify
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 48
    Top = 32
  end
end
