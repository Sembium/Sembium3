inherited fmFinModelLineReasons: TfmFinModelLineReasons
  Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1044#1074#1080#1078#1077#1085#1080#1103
  ClientHeight = 349
  ClientWidth = 498
  ExplicitWidth = 504
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 498
    ExplicitTop = 314
    ExplicitWidth = 498
    inherited pnlOKCancel: TPanel
      Left = 230
      Visible = False
      ExplicitLeft = 230
    end
    inherited pnlClose: TPanel
      Left = 141
      Visible = True
      ExplicitLeft = 141
    end
    inherited pnlApply: TPanel
      Left = 409
      Visible = False
      ExplicitLeft = 409
    end
  end
  inherited pnlMain: TPanel
    Width = 498
    Height = 314
    ExplicitWidth = 498
    ExplicitHeight = 314
    inherited pnlGrid: TPanel
      Width = 482
      Height = 298
      ExplicitWidth = 482
      ExplicitHeight = 298
      inherited pnlNavigator: TPanel
        Width = 482
        ExplicitWidth = 482
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
        Width = 482
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FIN_MODEL_LINE_REASON_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FIN_MODEL_LINE_REASON_NAME'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
            Footers = <>
            Width = 79
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'FIN_MODEL_LINE_REASON_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_REASON_NO'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_REASON_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'FIN_MODEL_LINE_REASON_ABBREV'
        DataType = ftWideString
        Size = 5
      end>
    ProviderName = 'prvFinModelLineReasons'
    ConnectionBroker = dmMain.conFinance
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataFIN_MODEL_LINE_REASON_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_REASON_CODE'
      Required = True
    end
    object cdsGridDataFIN_MODEL_LINE_REASON_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'FIN_MODEL_LINE_REASON_NO'
      Required = True
    end
    object cdsGridDataFIN_MODEL_LINE_REASON_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'FIN_MODEL_LINE_REASON_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridData_MAX_FIN_MODEL_LINE_REASON_CODE: TAggregateField
      FieldName = '_MAX_FIN_MODEL_LINE_REASON_CODE'
      Active = True
      Expression = 'Max(FIN_MODEL_LINE_REASON_CODE)'
    end
    object cdsGridData_MAX_FIN_MODEL_LINE_REASON_NO: TAggregateField
      FieldName = '_MAX_FIN_MODEL_LINE_REASON_NO'
      Active = True
      Expression = 'Max(FIN_MODEL_LINE_REASON_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1044#1074#1080#1078#1077#1085#1080#1103
    end
  end
end
