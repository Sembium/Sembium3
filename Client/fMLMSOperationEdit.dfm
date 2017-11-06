inherited fmMLMSOperationEdit: TfmMLMSOperationEdit
  Left = 309
  Top = 293
  ActiveControl = frSetupProfession.edtTreeNodeNo
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbOperationData: TGroupBox
    inherited edtSetupHourPrice: TDBEdit
      DataField = 'REAL_SETUP_HOUR_PRICE'
    end
    inherited edtHourPrice: TDBEdit
      DataField = 'REAL_HOUR_PRICE'
    end
  end
  inherited gbStage: TGroupBox
    inherited gbDept: TGroupBox
      inherited edtStageNo: TDBEdit
        DataField = 'ML_MODEL_STAGE_NO'
      end
    end
  end
  inherited alActions: TActionList
    inherited actDeptDetailFlow: TAction
      Visible = False
    end
  end
end
