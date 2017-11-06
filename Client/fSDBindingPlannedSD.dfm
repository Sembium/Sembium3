inherited frSDBindingPlannedSD: TfrSDBindingPlannedSD
  Width = 217
  Height = 37
  object lblBranch: TLabel [0]
    Left = 8
    Top = 0
    Width = 91
    Height = 13
    Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
  end
  object lblNo: TLabel [1]
    Left = 168
    Top = 0
    Width = 14
    Height = 13
    Caption = 'No'
  end
  object cbBranch: TJvDBLookupCombo [2]
    Left = 8
    Top = 16
    Width = 145
    Height = 21
    DataField = '_PLANNED_STORE_DEAL_BRANCH_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  object edtNo: TDBEdit [3]
    Left = 168
    Top = 16
    Width = 49
    Height = 21
    DataField = 'PLANNED_STORE_DEAL_CODE'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 16
    Top = 24
  end
  inherited dsData: TDataSource
    Left = 80
    Top = 24
  end
  object cdsBoundPlannedSD: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBoundPlannedSD'
    ConnectionBroker = dmMain.conStore
    Left = 144
    Top = 24
    object cdsBoundPlannedSDBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBoundPlannedSDBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBoundPlannedSDBND_PROCESS_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBoundPlannedSDPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBoundPlannedSDSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_TYPE_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBoundPlannedSDDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      FieldValueType = fvtInteger
    end
    object cdsBoundPlannedSDWORK_ORDER_NO: TAbmesWideStringField
      FieldName = 'WORK_ORDER_NO'
    end
  end
end
