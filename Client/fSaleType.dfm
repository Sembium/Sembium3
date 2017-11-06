inherited fmSaleType: TfmSaleType
  Left = 287
  Top = 551
  ActiveControl = edtSaleTypeAbbrev
  Caption = #1042#1080#1076' '#1054#1055#1055'/'#1054#1055#1042' - %s'
  ClientHeight = 108
  ClientWidth = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 545
    Height = 57
  end
  object lblSaleTypeCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
    FocusControl = edtSaleTypeCode
  end
  object lblSaleTypeName: TLabel [2]
    Left = 168
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtSaleTypeName
  end
  object lblSaleTypeAbbrev: TLabel [3]
    Left = 96
    Top = 16
    Width = 34
    Height = 13
    Caption = #1040#1073#1088#1077#1074'.'
    FocusControl = edtSaleTypeAbbrev
  end
  object lblExportNo: TLabel [4]
    Left = 456
    Top = 16
    Width = 59
    Height = 13
    Caption = #1045#1082#1089#1087#1086#1088#1090' No'
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 561
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 293
    end
    inherited pnlClose: TPanel
      Left = 204
    end
    inherited pnlApply: TPanel
      Left = 472
      Visible = False
    end
  end
  object edtSaleTypeCode: TDBEdit [6]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    Color = clBtnFace
    DataField = 'SALE_TYPE_CODE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtSaleTypeAbbrev: TDBEdit [7]
    Left = 96
    Top = 32
    Width = 57
    Height = 21
    DataField = 'SALE_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtSaleTypeName: TDBEdit [8]
    Left = 168
    Top = 32
    Width = 273
    Height = 21
    DataField = 'SALE_TYPE_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object edtExportNo: TDBEdit [9]
    Left = 456
    Top = 32
    Width = 41
    Height = 21
    DataField = 'EXPORT_NO'
    DataSource = dsData
    TabOrder = 3
  end
  object edtExportNo2: TDBEdit [10]
    Left = 496
    Top = 32
    Width = 41
    Height = 21
    DataField = 'EXPORT_NO_2'
    DataSource = dsData
    TabOrder = 4
  end
  inherited alActions: TActionList
    Left = 200
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1054#1055#1055'/'#1054#1055#1042' - %s'
    end
  end
end
