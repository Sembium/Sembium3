inherited fmVatReason: TfmVatReason
  Caption = #1054#1089#1085#1086#1074#1072#1085#1080'e '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082' - %s'
  ClientHeight = 156
  ClientWidth = 602
  PixelsPerInch = 96
  TextHeight = 13
  object lblAbbrev: TLabel [0]
    Left = 376
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
    FocusControl = edtAbbrev
  end
  object lblName: TLabel [1]
    Left = 136
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object bvlMain: TBevel [2]
    Left = 8
    Top = 8
    Width = 586
    Height = 105
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object lblNo: TLabel [3]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
    FocusControl = edtNo
  end
  object lblIAbbrev: TLabel [4]
    Left = 376
    Top = 64
    Width = 34
    Height = 13
    Caption = 'Abbrev'
    FocusControl = edtIAbbrev
  end
  object lblIName: TLabel [5]
    Left = 136
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Name'
    FocusControl = edtIName
  end
  inherited pnlBottomButtons: TPanel
    Top = 121
    Width = 602
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 334
    end
    inherited pnlClose: TPanel
      Left = 245
    end
    inherited pnlApply: TPanel
      Left = 513
      Visible = False
    end
  end
  object edtAbbrev: TDBEdit [7]
    Left = 376
    Top = 32
    Width = 201
    Height = 21
    DataField = 'VAT_REASON_ABBREV'
    DataSource = dsData
    TabOrder = 2
  end
  object edtName: TDBEdit [8]
    Left = 136
    Top = 32
    Width = 225
    Height = 21
    DataField = 'VAT_REASON_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtNo: TDBEdit [9]
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    DataField = 'VAT_REASON_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtIAbbrev: TDBEdit [10]
    Left = 376
    Top = 80
    Width = 201
    Height = 21
    Color = clInfoBk
    DataField = 'VAT_REASON_I_ABBREV'
    DataSource = dsData
    TabOrder = 4
  end
  object edtIName: TDBEdit [11]
    Left = 136
    Top = 80
    Width = 225
    Height = 21
    Color = clInfoBk
    DataField = 'VAT_REASON_I_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080'e '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 8
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
  end
end
