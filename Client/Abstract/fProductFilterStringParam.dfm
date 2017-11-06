inherited fmProductFilterStringParam: TfmProductFilterStringParam
  Left = 244
  ActiveControl = edtValueString
  Caption = '%s'
  ClientHeight = 109
  ClientWidth = 274
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 258
    Height = 58
  end
  object lblValueString: TLabel [1]
    Left = 24
    Top = 16
    Width = 47
    Height = 13
    Caption = #1057#1090#1086#1081#1085#1086#1089#1090
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 274
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 6
    end
    inherited pnlClose: TPanel
      Left = -83
    end
    inherited pnlApply: TPanel
      Left = 185
      Visible = False
    end
  end
  object edtValueString: TDBEdit [3]
    Left = 24
    Top = 32
    Width = 225
    Height = 21
    DataField = 'VALUE_STRING'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList
    Left = 184
    Top = 8
    inherited actForm: TAction
      Caption = '%s'
    end
  end
  inherited dsData: TDataSource
    Left = 128
    Top = 8
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 96
    Top = 8
  end
end
