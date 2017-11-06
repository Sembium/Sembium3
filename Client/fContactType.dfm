inherited fmContactType: TfmContactType
  Caption = #1042#1080#1076' '#1089#1088#1077#1076#1089#1090#1074'o '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103' - %s'
  ClientHeight = 108
  ClientWidth = 449
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 433
    Height = 57
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblName: TLabel [2]
    Left = 96
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 449
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 181
    end
    inherited pnlClose: TPanel
      Left = 92
    end
    inherited pnlApply: TPanel
      Left = 360
    end
  end
  object edtCode: TDBEdit [4]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'CONTACT_TYPE_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [5]
    Left = 96
    Top = 32
    Width = 329
    Height = 21
    DataField = 'CONTACT_TYPE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1089#1088#1077#1076#1089#1090#1074'o '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103' - %s'
    end
  end
end
