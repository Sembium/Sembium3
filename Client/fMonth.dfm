inherited frMonth: TfrMonth
  Width = 105
  Height = 37
  object lblMonth: TLabel [0]
    Left = 0
    Top = 0
    Width = 33
    Height = 13
    Caption = #1052#1077#1089#1077#1094
  end
  object cbMonth: TJvDBLookupCombo [1]
    Left = 0
    Top = 16
    Width = 105
    Height = 21
    DropDownCount = 12
    EscapeClear = False
    DataField = 'MONTH'
    DataSource = dsData
    LookupField = 'MONTH_NO'
    LookupDisplay = 'MONTH_NAME'
    LookupSource = dsMonths
    TabOrder = 0
  end
  inherited alActions: TActionList
    Top = 24
  end
  inherited dsData: TDataSource
    Left = 32
    Top = 24
  end
  object cdsMonths: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxMonthNo'
        Fields = 'MONTH_NO'
      end>
    IndexName = 'idxMonthNo'
    Params = <>
    StoreDefs = True
    AfterOpen = cdsMonthsAfterOpen
    Left = 64
    Top = 24
    object cdsMonthsMONTH_NO: TAbmesFloatField
      FieldName = 'MONTH_NO'
    end
    object cdsMonthsMONTH_NAME: TAbmesWideStringField
      FieldName = 'MONTH_NAME'
    end
  end
  object dsMonths: TDataSource
    DataSet = cdsMonths
    Left = 96
    Top = 24
  end
end
