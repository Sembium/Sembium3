inherited frEmptyFieldEditFrame: TfrEmptyFieldEditFrame
  Height = 54
  object edtProcessObjectIdentifier: TDBText [0]
    Left = 8
    Top = 17
    Width = 124
    Height = 13
    AutoSize = True
    DataField = 'PROCESS_OBJECT_IDENTIFIER'
    DataSource = dsData
  end
  inherited alActions: TActionList
    Left = 232
  end
  inherited dsData: TDataSource
    Left = 296
  end
end
