inherited fmDeliveryType: TfmDeliveryType
  Caption = #1042#1080#1076' '#1054#1055#1044
  ClientHeight = 123
  ClientWidth = 601
  ExplicitWidth = 607
  ExplicitHeight = 148
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 585
    Height = 72
    ExplicitWidth = 585
    ExplicitHeight = 72
  end
  object lblDeliveryTypeNo: TLabel [1]
    Left = 24
    Top = 24
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblDeliveryTypeAbbrev: TLabel [2]
    Left = 104
    Top = 24
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
  end
  object lblDeliveryTypeDescription: TLabel [3]
    Left = 216
    Top = 24
    Width = 50
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 88
    Width = 601
    TabOrder = 3
    ExplicitTop = 88
    ExplicitWidth = 601
    inherited pnlOKCancel: TPanel
      Left = 333
      ExplicitLeft = 333
    end
    inherited pnlClose: TPanel
      Left = 244
      ExplicitLeft = 244
    end
    inherited pnlApply: TPanel
      Left = 512
      Visible = False
      ExplicitLeft = 512
    end
  end
  object edtDeliveryTypeNo: TDBEdit [5]
    Left = 24
    Top = 40
    Width = 65
    Height = 21
    DataField = 'DELIVERY_TYPE_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtDeliveryTypeAbbrev: TDBEdit [6]
    Left = 104
    Top = 40
    Width = 97
    Height = 21
    DataField = 'DELIVERY_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtDeliveryTypeDescription: TDBEdit [7]
    Left = 216
    Top = 40
    Width = 361
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'DESCRIPTION'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1054#1055#1044
    end
  end
end
