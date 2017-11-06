inherited FilterFrame: TFilterFrame
  Width = 444
  OnResize = FrameResize
  object pnlBaseFilter: TPanel [0]
    Left = 208
    Top = 0
    Width = 113
    Height = 17
    BevelOuter = bvNone
    Caption = 'pnlBaseFilter'
    ShowCaption = False
    TabOrder = 0
    object btnBaseFilter: TSpeedButton
      Left = 0
      Top = 0
      Width = 113
      Height = 18
      Action = actBaseFilter
    end
  end
  inherited alActions: TActionList
    object actBaseFilter: TAction
      Caption = #1054#1089#1085#1086#1074#1077#1085' '#1060#1080#1083#1090#1098#1088'...'
      OnExecute = actBaseFilterExecute
    end
  end
  object cdsBaseFilter: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 56
    object cdsBaseFilterFILTER_DATA: TAbmesWideStringField
      FieldName = 'FILTER_DATA'
      Size = 4000
    end
  end
end
