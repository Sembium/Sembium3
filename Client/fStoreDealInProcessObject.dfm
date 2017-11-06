inherited frStoreDealInProcessObject: TfrStoreDealInProcessObject
  Width = 787
  Height = 48
  inherited lblStoreDealDate: TLabel
    Width = 111
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077
  end
  inherited lblStoreDealNo: TLabel
    Left = 520
    Width = 86
    Caption = ' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' No'
  end
  inherited edtStoreDealNo: TDBEdit
    Left = 520
    Width = 113
    TabOrder = 2
  end
  inherited frStoreDealProcessObjectStore: TfrDeptFieldEditFrameBald
    TabOrder = 0
    inherited dsData: TDataSource
      DataSet = pdsProcessObjectParams
    end
  end
  inherited frStoreDealDate: TfrDateFieldEditFrame
    TabOrder = 1
    inherited dsData: TDataSource
      DataSet = pdsProcessObjectParams
    end
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet
    BeforeOpen = cdsProcessObjectIDBeforeOpen
    inherited cdsProcessObjectIDPROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldValueType = fvtInteger
    end
    inherited cdsProcessObjectIDPROCESS_OBJECT_CODE: TAbmesFloatField
      FieldValueType = fvtInteger
    end
  end
  inherited pdsProcessObjectParams: TParamDataSet
    inherited pdsProcessObjectParamsSTORE_CODE: TAbmesFloatField
      FieldValueType = fvtInteger
    end
    inherited pdsProcessObjectParamsSTORE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldValueType = fvtInteger
    end
    inherited pdsProcessObjectParamsSTORE_DEAL_NO: TAbmesFloatField
      FieldValueType = fvtInteger
    end
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    Left = 424
  end
end
