inherited fmXModelDocStatus: TfmXModelDocStatus
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlModel: TPanel
    inherited pnlModelStruct: TPanel
      inherited grdModel: TAbmesDBGrid
        TitleParams.RowHeight = 18
      end
    end
    inherited pnlModelDoc: TPanel
      inherited frModelDoc: TfrDoc
        inherited dsData: TDataSource
          DataSet = cdsDSModel
        end
      end
    end
    inherited pnlModelTop: TPanel
      inherited pnlDetail: TPanel
        inherited frDetail: TfrProductFieldEditFrameBald
          inherited dsData: TDataSource
            DataSet = cdsDSLines
          end
        end
      end
      inherited pnlProduct: TPanel
        inherited frProduct: TfrProductFieldEditFrameBald
          inherited dsData: TDataSource
            DataSet = cdsDSLines
          end
        end
      end
    end
  end
  inherited pnlLines: TPanel
    inherited pnlLinesDoc: TPanel
      inherited frLineDoc: TfrDoc
        inherited dsData: TDataSource
          DataSet = cdsDSLines
        end
      end
      inherited pnlDetailPanels: TPanel
        inherited pnlDetailName: TPanel
          Width = 263
        end
        inherited pnlDetailNo: TPanel
          Left = 262
        end
        inherited pnlStructStatus: TPanel
          Left = 332
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actModel: TAction
      Hint = #1056'-'#1052#1054#1044#1045#1083
      OnExecute = actModelExecute
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conXModels
    Params = <
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDSXModel'
    object cdsDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsDataMODEL_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MODEL_IDENTIFIER'
      Size = 100
    end
    object cdsDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsDataCLOSE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CLOSE_EMPLOYEE_CODE'
    end
    object cdsDataLIMITING_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'LIMITING_EMPLOYEE_CODE'
    end
    object cdsDataOWNER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OWNER_EMPLOYEE_CODE'
    end
    object cdsDataqryDSXModelLines: TDataSetField
      FieldName = 'qryDSXModelLines'
    end
  end
  inherited cdsDSLines: TAbmesClientDataSet
    DataSetField = cdsDataqryDSXModelLines
    object cdsDSLinesLINE_IDENTIFIER: TAbmesWideStringField [0]
      FieldName = 'LINE_IDENTIFIER'
      Size = 81
    end
    object cdsDSLinesPARENT_LINE_IDENTIFIER: TAbmesWideStringField [1]
      FieldName = 'PARENT_LINE_IDENTIFIER'
      Size = 81
    end
    object cdsDSLinesMLL_OBJECT_BRANCH_CODE: TAbmesFloatField [2]
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDSLinesMLL_OBJECT_CODE: TAbmesFloatField [3]
      FieldName = 'MLL_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDSLinesML_OBJECT_BRANCH_CODE: TAbmesFloatField [4]
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsDSLinesML_OBJECT_CODE: TAbmesFloatField [5]
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsDSLinesPARENT_MLL_OBJECT_BRANCH_CODE: TAbmesFloatField [6]
      FieldName = 'PARENT_MLL_OBJECT_BRANCH_CODE'
    end
    object cdsDSLinesPARENT_MLL_OBJECT_CODE: TAbmesFloatField [7]
      FieldName = 'PARENT_MLL_OBJECT_CODE'
    end
    object cdsDSLinesFORK_NO: TAbmesFloatField [10]
      FieldName = 'FORK_NO'
    end
    object cdsDSLinesAPPROVE_CYCLE_NO: TAbmesFloatField [20]
      FieldName = 'APPROVE_CYCLE_NO'
    end
    object cdsDSLinesqryDSXModelModel: TDataSetField
      FieldName = 'qryDSXModelModel'
    end
    object cdsDSLines_MODEL_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MODEL_IDENTIFIER'
      Calculated = True
    end
  end
  inherited cdsDSModel: TAbmesClientDataSet
    DataSetField = cdsDSLinesqryDSXModelModel
    object cdsDSModelHAS_MOVEMENTS: TAbmesFloatField [20]
      FieldName = 'HAS_MOVEMENTS'
      FieldValueType = fvtBoolean
    end
  end
end
