inherited frDeficitCoverDecisionProcessObject: TfrDeficitCoverDecisionProcessObject
  Width = 775
  Height = 70
  ExplicitWidth = 775
  ExplicitHeight = 70
  object lblBranch: TLabel [0]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    Caption = #1058#1055' '#1043#1083'.'
  end
  object lblDCDNo: TLabel [1]
    Left = 120
    Top = 8
    Width = 39
    Height = 13
    Caption = #1055#1044#1044' No'
    FocusControl = edtDCDNo
  end
  object lblDeliveryDealTypeAbbrev: TLabel [2]
    Left = 8
    Top = 8
    Width = 18
    Height = 13
    Caption = #1058#1080#1087
  end
  object cbBranch: TJvDBLookupCombo [3]
    Left = 56
    Top = 24
    Width = 57
    Height = 21
    DataField = '_DCD_BRANCH_IDENTIFIER'
    DataSource = dsProcessObjectParams
    DisplayEmpty = ' '
    EmptyValue = '0'
    TabOrder = 1
  end
  object edtDCDNo: TDBEdit [4]
    Left = 120
    Top = 24
    Width = 89
    Height = 21
    DataField = 'DCD_CODE'
    DataSource = dsProcessObjectParams
    TabOrder = 2
  end
  object btnShowProcessObjectForm: TButton [5]
    Left = 664
    Top = 22
    Width = 97
    Height = 25
    Action = actShowProcessObjectForm
    TabOrder = 3
  end
  object edtDeliveryDealTypeAbbrev: TDBEdit [6]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'DELIVERY_DEAL_TYPE_ABBREV'
    DataSource = dsProcessObjectParams
    ReadOnly = True
    TabOrder = 0
  end
  inherited alActions: TActionList
    Left = 48
    Top = 40
  end
  inherited dsData: TDataSource
    Left = 80
    Top = 40
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeficitCoverDecisionID'
    ConnectionBroker = dmMain.conStore
    Left = 120
    Top = 32
    object cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'PROCESS_OBJECT_CODE'
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet
    Left = 144
    Top = 8
    object pdsProcessObjectParamsDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object pdsProcessObjectParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object pdsProcessObjectParams_DCD_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DCD_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'DCD_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsProcessObjectParamsDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsProcessObjectParamsDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
  end
  inherited dsProcessObjectParams: TDataSource
    Left = 168
    Top = 8
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PROCESS_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeficitCoverDecisionCustomID'
    ConnectionBroker = dmMain.conStore
    Left = 136
    object cdsProcessObjectCustomIDDCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDDCD_CODE: TAbmesFloatField
      FieldName = 'DCD_CODE'
    end
    object cdsProcessObjectCustomIDDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsProcessObjectCustomIDDELIVERY_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DELIVERY_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvBranches'
    ConnectionBroker = dmMain.conCompany
    Left = 184
    Top = 40
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
  end
end
