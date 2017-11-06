inherited fmDeliveryDecisions: TfmDeliveryDecisions
  Caption = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1044' - %s'
  ClientHeight = 339
  ClientWidth = 755
  ExplicitWidth = 761
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 304
    Width = 755
    ExplicitTop = 304
    ExplicitWidth = 755
    inherited pnlOKCancel: TPanel
      Left = 487
      Visible = False
      ExplicitLeft = 487
    end
    inherited pnlClose: TPanel
      Left = 398
      Visible = True
      ExplicitLeft = 398
    end
    inherited pnlApply: TPanel
      Left = 666
      Visible = False
      ExplicitLeft = 666
    end
  end
  inherited pnlMain: TPanel
    Width = 755
    Height = 304
    ExplicitWidth = 755
    ExplicitHeight = 304
    inherited pnlGrid: TPanel
      Width = 739
      Height = 288
      ExplicitWidth = 739
      ExplicitHeight = 288
      inherited pnlNavigator: TPanel
        Width = 739
        ExplicitWidth = 739
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
        Width = 739
        Height = 264
        ParentFont = False
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DELIVERY_DECISION_NO'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'DELIVERY_DECISION_NAME'
            Footers = <>
            Width = 292
          end
          item
            EditButtons = <>
            FieldName = 'DELIVERY_DECISION_ABBREV'
            Footers = <>
            Width = 81
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
            FieldName = 'ALLOWS_DELIVERY_CONTRACT'
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
        Name = 'DELIVERY_DECISION_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_DECISION_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DELIVERY_DECISION_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DELIVERY_DECISION_NO'
        DataType = ftFloat
      end
      item
        Name = 'ALLOWS_DELIVERY_CONTRACT'
        DataType = ftFloat
      end
      item
        Name = 'IS_ESTIMATION_BOUND'
        DataType = ftFloat
      end
      item
        Name = 'IS_REALIZATION_BOUND'
        DataType = ftFloat
      end
      item
        Name = 'REQUIRES_FINISHING'
        DataType = ftFloat
      end>
    ProviderName = 'prvDeliveryDecisions'
    ConnectionBroker = dmMain.conDeliveries
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataDELIVERY_DECISION_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_DECISION_CODE'
      Required = True
    end
    object cdsGridDataDELIVERY_DECISION_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'DELIVERY_DECISION_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataDELIVERY_DECISION_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DELIVERY_DECISION_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataDELIVERY_DECISION_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DELIVERY_DECISION_NO'
      Required = True
    end
    object cdsGridDataALLOWS_DELIVERY_CONTRACT: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1055#1086#1079#1074#1086#1083#1103#1074#1072' '#1054#1055#1044
      FieldName = 'ALLOWS_DELIVERY_CONTRACT'
      Required = True
      OnChange = cdsGridDataALLOWS_DELIVERY_CONTRACTChange
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
    object cdsGridData_MAX_DELIVERY_DECISION_NO: TAggregateField
      FieldName = '_MAX_DELIVERY_DECISION_NO'
      Active = True
      Expression = 'Max(DELIVERY_DECISION_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1056#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1054#1044#1044' - %s'
    end
  end
end
