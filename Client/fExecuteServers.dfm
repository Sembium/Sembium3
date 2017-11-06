inherited fmExecuteServers: TfmExecuteServers
  Caption = #1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1080' '#1089#1098#1088#1074#1098#1088#1080
  ClientWidth = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 465
    inherited pnlOKCancel: TPanel
      Left = 197
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 108
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 376
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 465
    inherited pnlGrid: TPanel
      Width = 449
      inherited pnlNavigator: TPanel
        Width = 449
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 449
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'EXECUTE_SERVER_CODE'
            Footers = <>
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'EXECUTE_SERVER_NAME'
            Footers = <>
            Width = 324
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = '_IS_UNAVAILABLE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'X'
            Title.Hint = #1053#1077#1076#1086#1089#1090#1098#1087#1077#1085
            Width = 25
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conDoc
    FieldDefs = <
      item
        Name = 'EXECUTE_SERVER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXECUTE_SERVER_NAME'
        DataType = ftWideString
        Size = 50
      end>
    ProviderName = 'prvExecuteServers'
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataEXECUTE_SERVER_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EXECUTE_SERVER_CODE'
    end
    object cdsGridDataEXECUTE_SERVER_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1088#1077#1078#1086#1074#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'EXECUTE_SERVER_NAME'
      Size = 50
    end
    object cdsGridDataIS_UNAVAILABLE: TAbmesFloatField
      FieldName = 'IS_UNAVAILABLE'
      DisplayBoolValues = 'X;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataUNAVAILABLE_MESSAGE: TAbmesWideStringField
      FieldName = 'UNAVAILABLE_MESSAGE'
      Size = 1000
    end
    object cdsGridData_IS_UNAVAILABLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_IS_UNAVAILABLE'
      Size = 1000
      Calculated = True
    end
    object cdsGridData_MAX_EXECUTE_SERVER_CODE: TAggregateField
      FieldName = '_MAX_EXECUTE_SERVER_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(EXECUTE_SERVER_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1087#1098#1083#1085#1103#1074#1072#1097#1080' '#1089#1098#1088#1074#1098#1088#1080
    end
  end
end
