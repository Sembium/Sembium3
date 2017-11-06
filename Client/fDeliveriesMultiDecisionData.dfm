inherited fmDeliveriesMultiDecisionData: TfmDeliveriesMultiDecisionData
  Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1079#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1103' '#1080' '#1054#1055#1044
  ClientHeight = 196
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 161
    TabOrder = 3
    inherited pnlApply: TPanel
      Visible = False
    end
  end
  object gbDecision: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 225
    Height = 65
    Caption = ' '#1056#1077#1096#1077#1085#1080#1077' '
    TabOrder = 0
    object lblRealDecisionDate: TLabel
      Left = 16
      Top = 16
      Width = 70
      Height = 13
      Caption = #1054#1090#1095#1077#1090#1085#1072' '#1044#1072#1090#1072
    end
    object lblDecision: TLabel
      Left = 136
      Top = 16
      Width = 45
      Height = 13
      Caption = #1056#1077#1096#1077#1085#1080#1077
    end
    object cbDecisionType: TJvDBLookupCombo
      Left = 136
      Top = 32
      Width = 73
      Height = 21
      DropDownWidth = 300
      DataField = 'DELIVERY_DECISION_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      FieldsDelimiter = '-'
      ListStyle = lsDelimited
      LookupField = 'DELIVERY_DECISION_CODE'
      LookupDisplay = 'DELIVERY_DECISION_ABBREV;DELIVERY_DECISION_NAME'
      LookupSource = dsDecisionTypes
      TabOrder = 1
    end
    inline frRealDecisionDate: TfrDateFieldEditFrame
      Left = 16
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
    end
  end
  inline frDecisionEmployee: TfrEmployeeFieldEditFrameLabeled [2]
    Left = 240
    Top = 8
    Width = 289
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 1
    TabStop = True
    DesignSize = (
      289
      65)
    inherited gbEmployee: TGroupBox
      Width = 289
      Caption = ' '#1042#1079#1077#1083' '#1056#1077#1096#1077#1085#1080#1077' '
      inherited pnlEmployeeName: TPanel
        Width = 214
        inherited pnlRightButtons: TPanel
          Left = 178
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 178
          DesignSize = (
            178
            33)
          inherited edtEmployeeName: TDBEdit
            Width = 203
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 177
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 279
      end
      inherited pnlLabels: TPanel
        Width = 285
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  object gbDeliveryContract: TGroupBox [3]
    Left = 8
    Top = 83
    Width = 521
    Height = 70
    Caption = ' '#1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1044#1086#1089#1090#1072#1074#1082#1072' ('#1054#1055#1044') '
    TabOrder = 2
    object lblPriority: TLabel
      Left = 159
      Top = 20
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    object lblType: TLabel
      Left = 111
      Top = 20
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object btnCreateDeliveryContract: TButton
      Left = 16
      Top = 34
      Width = 81
      Height = 25
      Action = actCreateDeliveryContract
      TabOrder = 0
    end
    object cbPriority: TJvDBLookupCombo
      Left = 160
      Top = 36
      Width = 57
      Height = 21
      DataField = 'PRIORITY_CODE'
      DataSource = dsData
      DisplayEmpty = ' '
      LookupField = 'PRIORITY_CODE'
      LookupDisplay = 'PRIORITY_NO'
      LookupSource = dsPriorities
      TabOrder = 2
    end
    object cbType: TJvDBLookupCombo
      Left = 112
      Top = 36
      Width = 41
      Height = 21
      DeleteKeyClear = False
      DataField = 'DELIVERY_TYPE_CODE'
      DataSource = dsData
      LookupField = 'DELIVERY_TYPE_CODE'
      LookupDisplay = 'DELIVERY_TYPE_ABBREV'
      LookupSource = dsDeliveryTypes
      TabOrder = 1
    end
    object btnFinOrder: TButton
      Left = 432
      Top = 30
      Width = 73
      Height = 25
      Action = actFinOrder
      TabOrder = 3
    end
  end
  inherited alActions: TActionList [4]
    inherited actForm: TAction
      Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1086' '#1079#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1103' '#1080' '#1054#1055#1044
    end
    object actCreateDeliveryContract: TAction
      Caption = #1057#1098#1079#1076#1072#1074#1072#1085#1077
      OnExecute = actCreateDeliveryContractExecute
      OnUpdate = actCreateDeliveryContractUpdate
    end
    object actFinOrder: TAction
      Caption = #1054#1055#1060'...'
      OnExecute = actFinOrderExecute
      OnUpdate = actFinOrderUpdate
    end
  end
  inherited dsData: TDataSource [5]
  end
  object cdsDecisionTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryDecisions'
    Left = 140
    Top = 56
    object cdsDecisionTypesDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
    end
    object cdsDecisionTypesDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Size = 5
    end
    object cdsDecisionTypesDELIVERY_DECISION_NAME: TAbmesWideStringField
      FieldName = 'DELIVERY_DECISION_NAME'
      Size = 50
    end
    object cdsDecisionTypesDELIVERY_DECISION_NO: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_NO'
    end
    object cdsDecisionTypesIS_ESTIMATION_BOUND: TAbmesFloatField
      FieldName = 'IS_ESTIMATION_BOUND'
    end
    object cdsDecisionTypesIS_REALIZATION_BOUND: TAbmesFloatField
      FieldName = 'IS_REALIZATION_BOUND'
    end
    object cdsDecisionTypesALLOWS_DELIVERY_CONTRACT: TAbmesFloatField
      FieldName = 'ALLOWS_DELIVERY_CONTRACT'
    end
    object cdsDecisionTypesREQUIRES_FINISHING: TAbmesFloatField
      FieldName = 'REQUIRES_FINISHING'
    end
  end
  object dsDecisionTypes: TDataSource
    DataSet = cdsDecisionTypes
    Left = 172
    Top = 56
  end
  object cdsDeliveryTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeliveries
    Params = <>
    ProviderName = 'prvDeliveryTypes'
    Left = 256
    Top = 104
    object cdsDeliveryTypesDELIVERY_TYPE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_TYPE_CODE'
    end
    object cdsDeliveryTypesDELIVERY_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_TYPE_ABBREV'
      Size = 5
    end
  end
  object dsDeliveryTypes: TDataSource
    DataSet = cdsDeliveryTypes
    Left = 288
    Top = 104
  end
  object cdsPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPriorities'
    Left = 336
    Top = 104
    object cdsPrioritiesPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsPrioritiesPRIORITY_NO: TAbmesFloatField
      FieldName = 'PRIORITY_NO'
    end
    object cdsPrioritiesPRIORITY_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_NAME'
      Size = 50
    end
    object cdsPrioritiesPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsPrioritiesPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
  end
  object dsPriorities: TDataSource
    DataSet = cdsPriorities
    Left = 368
    Top = 104
  end
end
