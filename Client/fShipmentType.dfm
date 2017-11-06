inherited fmShipmentType: TfmShipmentType
  Left = 296
  Top = 422
  ActiveControl = edtCode
  Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076' - %s'
  ClientHeight = 156
  ClientWidth = 409
  ExplicitWidth = 415
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 393
    Height = 105
    Shape = bsFrame
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblAbbrev: TLabel [2]
    Left = 96
    Top = 16
    Width = 34
    Height = 13
    Caption = #1040#1073#1088#1077#1074'.'
  end
  object lblName: TLabel [3]
    Left = 184
    Top = 16
    Width = 39
    Height = 13
    Caption = #1058#1077#1088#1084#1080#1085
  end
  object lblNotes: TLabel [4]
    Left = 24
    Top = 64
    Width = 48
    Height = 13
    Caption = #1047#1085#1072#1095#1077#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 121
    Width = 409
    TabOrder = 4
    ExplicitTop = 121
    ExplicitWidth = 409
    inherited pnlOKCancel: TPanel
      Left = 141
      ExplicitLeft = 141
    end
    inherited pnlClose: TPanel
      Left = 52
      ExplicitLeft = 52
    end
    inherited pnlApply: TPanel
      Left = 320
      Visible = False
      ExplicitLeft = 320
    end
  end
  object edtCode: TDBEdit [6]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'SHIPMENT_TYPE_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtAbbrev: TDBEdit [7]
    Left = 96
    Top = 32
    Width = 73
    Height = 21
    DataField = 'SHIPMENT_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtName: TDBEdit [8]
    Left = 184
    Top = 32
    Width = 201
    Height = 21
    DataField = 'SHIPMENT_TYPE_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object edtNotes: TDBEdit [9]
    Left = 24
    Top = 80
    Width = 361
    Height = 21
    DataField = 'NOTES'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    Left = 232
    Top = 8
    inherited actForm: TAction
      Caption = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1050#1086#1076' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 328
    Top = 8
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 296
    Top = 8
  end
end
