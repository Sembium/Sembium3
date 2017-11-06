inherited frTimeFieldEditFrame: TfrTimeFieldEditFrame
  Width = 104
  Height = 21
  object edtTime: TDBDateTimeEditEh [0]
    Left = 0
    Top = 0
    Width = 41
    Height = 21
    Color = 16115403
    DataField = 'THE_TIME'
    DataSource = dsTime
    EditButton.Visible = False
    EditButtons = <>
    TabOrder = 0
    Visible = True
    OnChange = edtTimeChange
    EditFormat = 'HH:NN'
  end
  inherited alActions: TActionList
    Top = 8
  end
  inherited dsData: TDataSource
    Left = 32
    Top = 8
  end
  object cdsTime: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 8
    object cdsTimeTHE_TIME: TAbmesSQLTimeStampField
      FieldName = 'THE_TIME'
      OnChange = cdsTimeTHE_TIMEChange
    end
  end
  object dsTime: TDataSource
    DataSet = cdsTime
    Left = 104
    Top = 8
  end
end
