inherited frStoreDealOutProcessObject: TfrStoreDealOutProcessObject
  Width = 775
  Height = 47
  inherited lblStoreDealDate: TLabel
    Width = 85
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1058#1077#1075#1083#1077#1085#1077
  end
  inherited lblStoreDealNo: TLabel
    Left = 520
    Width = 57
    Caption = #1058#1077#1075#1083#1077#1085#1077' No'
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
end
