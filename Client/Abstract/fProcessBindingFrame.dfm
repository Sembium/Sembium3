inherited ProcessBindingFrame: TProcessBindingFrame
  Width = 750
  Height = 101
  DesignSize = (
    750
    101)
  object grpMain: TGroupBox [0]
    Left = 0
    Top = 4
    Width = 750
    Height = 97
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' grpMain '
    TabOrder = 0
  end
  object pnlProcessCombo: TPanel [1]
    Left = 8
    Top = 0
    Width = 566
    Height = 21
    BevelOuter = bvNone
    TabOrder = 1
    object lblProcess: TLabel
      Left = 3
      Top = 3
      Width = 89
      Height = 13
      Caption = #1042#1080#1076' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
    end
    object cbProcess: TJvDBLookupCombo
      Left = 96
      Top = 0
      Width = 465
      Height = 21
      DropDownCount = 16
      DropDownWidth = 506
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'BND_PROCESS_CODE'
      DataSource = dsData
      LookupField = 'PROCESS_CODE'
      LookupDisplay = 'PROCESS_ABBREV;PROCESS_NAME'
      LookupSource = dsProcesses
      TabOrder = 0
      OnCloseUp = cbProcessCloseUp
      OnKeyUp = cbProcessKeyUp
    end
  end
  inherited alActions: TActionList
    Left = 616
  end
  inherited dsData: TDataSource
    Left = 648
  end
  object cdsProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_INBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OUTBOUND_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_REAL_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PLAN_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_PROJ_STORE_DEAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINANCIAL_PROCESS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FINANCIAL_PROCESS'
        ParamType = ptInput
      end>
    ProviderName = 'prvFilteredProcesses'
    Left = 680
    object cdsProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object cdsProcessesPROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsProcessesPROCESS_NAME: TAbmesWideStringField
      DisplayWidth = 41
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object cdsProcessesIS_INBOUND_PROCESS: TAbmesFloatField
      Alignment = taCenter
      DisplayWidth = 1
      FieldName = 'IS_INBOUND_PROCESS'
      DisplayBoolValues = #1055';'
      FieldValueType = fvtBoolean
    end
    object cdsProcessesIS_OUTBOUND_PROCESS: TAbmesFloatField
      Alignment = taCenter
      DisplayWidth = 1
      FieldName = 'IS_OUTBOUND_PROCESS'
      DisplayBoolValues = #1058';'
      FieldValueType = fvtBoolean
    end
  end
  object dsProcesses: TDataSource
    DataSet = cdsProcesses
    Left = 712
  end
end
