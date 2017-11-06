inherited fmSaleDecisionTypes: TfmSaleDecisionTypes
  Caption = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1050' - %s'
  ClientHeight = 338
  ClientWidth = 744
  ExplicitWidth = 750
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 303
    Width = 744
    ExplicitTop = 303
    ExplicitWidth = 744
    inherited pnlOKCancel: TPanel
      Left = 476
      Visible = False
      ExplicitLeft = 476
    end
    inherited pnlClose: TPanel
      Left = 387
      Visible = True
      ExplicitLeft = 387
    end
    inherited pnlApply: TPanel
      Left = 655
      Visible = False
      ExplicitLeft = 655
    end
  end
  inherited pnlMain: TPanel
    Width = 744
    Height = 303
    ExplicitWidth = 744
    ExplicitHeight = 303
    inherited pnlGrid: TPanel
      Width = 728
      Height = 287
      ExplicitWidth = 728
      ExplicitHeight = 287
      inherited pnlNavigator: TPanel
        Width = 728
        ExplicitWidth = 728
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 728
        Height = 263
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DECISION_TYPE_NO'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'DECISION_TYPE_NAME'
            Footers = <>
            Width = 292
          end
          item
            EditButtons = <>
            FieldName = 'DECISION_TYPE_ABBREV'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'IS_ESTIMATION_BOUND'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'IS_REALIZATION_BOUND'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'ALLOWS_SALE'
            Footers = <>
            Width = 70
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'REQUIRES_FINISHING'
            Footers = <>
            Title.Caption = #1048#1079#1080#1089#1082#1074#1072' '#1087#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1087#1088#1080' '#1074#1079#1077#1084#1072#1085#1077' '#1085#1072' '#1088#1077#1096#1077#1085#1080#1077
            Width = 70
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'DECISION_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DECISION_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DECISION_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DECISION_TYPE_NO'
        DataType = ftFloat
      end
      item
        Name = 'ALLOWS_SALE'
        DataType = ftFloat
      end
      item
        Name = 'IS_ESTIMATION_BOUND'
        DataType = ftFloat
      end
      item
        Name = 'IS_REALIZATION_BOUND'
        DataType = ftFloat
      end>
    ProviderName = 'prvDecisionTypes'
    ConnectionBroker = dmMain.conSaleOrders
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
      Required = True
    end
    object cdsGridDataDECISION_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'DECISION_TYPE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataDECISION_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DECISION_TYPE_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataDECISION_TYPE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DECISION_TYPE_NO'
      Required = True
    end
    object cdsGridDataALLOWS_SALE: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1055#1086#1079#1074#1086#1083#1103#1074#1072' '#1054#1055#1055
      FieldName = 'ALLOWS_SALE'
      Required = True
      OnChange = cdsGridDataALLOWS_SALEChange
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_ESTIMATION_BOUND: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072
      FieldName = 'IS_ESTIMATION_BOUND'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_REALIZATION_BOUND: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1040#1089#1087#1077#1082#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
      FieldName = 'IS_REALIZATION_BOUND'
      Required = True
      OnChange = cdsGridDataIS_REALIZATION_BOUNDChange
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataREQUIRES_FINISHING: TAbmesFloatField
      FieldName = 'REQUIRES_FINISHING'
      OnChange = cdsGridDataREQUIRES_FINISHINGChange
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_MAX_DECISION_TYPE_NO: TAggregateField
      FieldName = '_MAX_DECISION_TYPE_NO'
      Active = True
      Expression = 'Max(DECISION_TYPE_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1050' - %s'
    end
  end
end
