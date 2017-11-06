inherited fmXModelTaskEdit: TfmXModelTaskEdit
  Caption = '%s'
  PixelsPerInch = 96
  TextHeight = 13
  inherited edtTaskNo: TDBEdit
    DataField = 'MATERIAL_LIST_TASK_NO'
  end
  inherited edtTaskName: TDBEdit
    DataField = 'MATERIAL_LIST_TASK_NAME'
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = '%s'
    end
  end
end
