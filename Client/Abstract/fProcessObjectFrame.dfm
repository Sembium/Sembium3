inherited ProcessObjectFrame: TProcessObjectFrame
  Width = 338
  Height = 85
  Visible = False
  inherited alActions: TActionList
    object actShowProcessObjectForm: TAction
      Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
      Hint = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      OnExecute = actShowProcessObjectFormExecute
      OnUpdate = actShowProcessObjectFormUpdate
    end
  end
  object cdsProcessObjectID: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
  end
  object pdsProcessObjectParams: TParamDataSet
    DataSet = cdsProcessObjectID
    Left = 160
  end
  object dsProcessObjectParams: TDataSource
    DataSet = pdsProcessObjectParams
    Left = 192
  end
  object cdsProcessObjectCustomID: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 32
  end
end
