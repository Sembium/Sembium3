inherited frMLMSOperation: TfrMLMSOperation
  Width = 767
  Height = 99
  object lblModelStageNo: TLabel [2]
    Left = 530
    Top = 8
    Width = 40
    Height = 13
    Caption = #1045#1090#1072#1087' '#8470
  end
  object lblMLMSOperationNo: TLabel [3]
    Left = 576
    Top = 9
    Width = 30
    Height = 13
    Caption = #1054#1087' '#8470
  end
  object lblMLMSOperationVariantNo: TLabel [4]
    Left = 616
    Top = 9
    Width = 38
    Height = 13
    Caption = #1074#1072#1088'. '#8470
  end
  inherited lblProjectProduct: TLabel
    Visible = False
  end
  inherited frProjectProduct: TfrProductFieldEditFrameBald [11]
    TabOrder = 11
    Visible = False
  end
  inherited edtPPNo: TDBEdit [12]
  end
  object edtModelStageNo: TDBEdit [13]
    Left = 529
    Top = 24
    Width = 48
    Height = 21
    DataField = 'ML_MODEL_STAGE_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 8
    OnChange = cbBranchChange
  end
  inherited edtNoAsText: TDBEdit [14]
    TabOrder = 5
  end
  object edtMLMSOperationNo: TDBEdit [15]
    Left = 577
    Top = 24
    Width = 40
    Height = 21
    DataField = 'MLMS_OPERATION_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 9
    OnChange = cbBranchChange
  end
  object edtMLMSOperationVariantNo: TDBEdit [16]
    Left = 617
    Top = 24
    Width = 40
    Height = 21
    DataField = 'MLMS_OPERATION_VARIANT_NO'
    DataSource = dsProcessObjectParams
    TabOrder = 10
    OnChange = cbBranchChange
  end
  inherited cbBranch: TJvDBLookupCombo [17]
  end
  inherited edtForkNo: TDBEdit [18]
    TabOrder = 7
  end
  inherited btnShowProcessObjectForm: TButton [19]
    TabOrder = 12
  end
  inherited edtProductionOrderTypeAbbrev: TDBEdit [20]
    TabOrder = 2
  end
  inherited edtSaleTypeAbbrev: TDBEdit [21]
    TabOrder = 3
  end
  inherited edtIsWasteCompensator: TDBEdit [22]
    TabOrder = 4
  end
  inherited edtIsWasteFork: TDBEdit [23]
    TabOrder = 6
  end
  inherited cdsProcessObjectID: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MAIN_DEPT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_MODEL_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OPERATION_VARIANT_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvMLMSOperationID'
  end
  inherited pdsProcessObjectParams: TParamDataSet
    object pdsProcessObjectParamsML_MODEL_STAGE_NO: TAbmesFloatField [6]
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object pdsProcessObjectParamsMLMS_OPERATION_NO: TAbmesFloatField [7]
      FieldName = 'MLMS_OPERATION_NO'
    end
    object pdsProcessObjectParamsMLMS_OPERATION_VARIANT_NO: TAbmesFloatField [8]
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object pdsProcessObjectParamsMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField [12]
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object pdsProcessObjectParamsMLMS_OBJECT_CODE: TAbmesFloatField [13]
      FieldName = 'MLMS_OBJECT_CODE'
    end
  end
  inherited cdsProcessObjectCustomID: TAbmesClientDataSet
    ProviderName = 'prvMLMSOperationCustomID'
    object cdsProcessObjectCustomIDML_MODEL_STAGE_NO: TAbmesFloatField [6]
      FieldName = 'ML_MODEL_STAGE_NO'
    end
    object cdsProcessObjectCustomIDMLMS_OPERATION_NO: TAbmesFloatField [7]
      FieldName = 'MLMS_OPERATION_NO'
    end
    object cdsProcessObjectCustomIDMLMS_OPERATION_VARIANT_NO: TAbmesFloatField [8]
      FieldName = 'MLMS_OPERATION_VARIANT_NO'
    end
    object cdsProcessObjectCustomIDMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField [16]
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsProcessObjectCustomIDMLMS_OBJECT_CODE: TAbmesFloatField [17]
      FieldName = 'MLMS_OBJECT_CODE'
    end
  end
end
