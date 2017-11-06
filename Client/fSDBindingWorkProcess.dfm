inherited frSDBindingWorkProcess: TfrSDBindingWorkProcess
  Width = 453
  Height = 59
  object lblWorkOrderNo: TLabel [0]
    Left = 8
    Top = 8
    Width = 61
    Height = 13
    Caption = #1055#1086#1088#1098#1095#1082#1072' No'
  end
  object edtWorkOrderNo: TDBEdit [1]
    Left = 8
    Top = 24
    Width = 225
    Height = 21
    DataField = 'WORK_ORDER_NO'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList
    Left = 32
  end
  inherited dsData: TDataSource
    Left = 96
  end
end
