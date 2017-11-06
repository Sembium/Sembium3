inherited fmEngineeringOrderType: TfmEngineeringOrderType
  ActiveControl = edtAbbrev
  Caption = #1042#1080#1076' '#1054#1055#1048#1056' - %s'
  ClientHeight = 108
  ClientWidth = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 465
    Height = 57
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
    FocusControl = edtCode
  end
  object lblAbbrev: TLabel [2]
    Left = 104
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
    FocusControl = edtAbbrev
  end
  object lblName: TLabel [3]
    Left = 184
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 481
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 213
    end
    inherited pnlClose: TPanel
      Left = 124
    end
    inherited pnlApply: TPanel
      Left = 392
      Visible = False
    end
  end
  object edtCode: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 65
    Height = 21
    Color = clBtnFace
    DataField = 'ENGINEERING_ORDER_TYPE_CODE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtAbbrev: TDBEdit [6]
    Left = 104
    Top = 32
    Width = 65
    Height = 21
    DataField = 'ENGINEERING_ORDER_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtName: TDBEdit [7]
    Left = 184
    Top = 32
    Width = 273
    Height = 21
    DataField = 'ENGINEERING_ORDER_TYPE_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 392
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1054#1055#1048#1056' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 304
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 272
  end
end
