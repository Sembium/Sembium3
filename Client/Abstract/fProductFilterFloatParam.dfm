inherited fmProductFilterFloatParam: TfmProductFilterFloatParam
  Left = 251
  Top = 233
  ActiveControl = edtFloatValueMin
  Caption = '%s'
  ClientHeight = 109
  ClientWidth = 274
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 258
    Height = 58
  end
  object lblFloatValueMin: TLabel [1]
    Left = 24
    Top = 16
    Width = 81
    Height = 13
    Caption = #1052#1080#1085#1080#1084#1072#1083#1085#1072' '#1089#1090'-'#1090
    FocusControl = edtFloatValueMin
  end
  object lblFloatValueMax: TLabel [2]
    Left = 144
    Top = 16
    Width = 87
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1085#1072' '#1089#1090'-'#1090
    FocusControl = edtFloatValueMax
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 274
    TabOrder = 2
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
  object edtFloatValueMin: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 105
    Height = 21
    DataField = 'VALUE_FLOAT_MIN'
    DataSource = dsData
    TabOrder = 0
  end
  object edtFloatValueMax: TDBEdit [5]
    Left = 144
    Top = 32
    Width = 105
    Height = 21
    DataField = 'VALUE_FLOAT_MAX'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    Left = 168
    inherited actForm: TAction
      Caption = '%s'
    end
  end
end
