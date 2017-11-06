inherited fmStoreRequestTotal: TfmStoreRequestTotal
  Left = 304
  Top = 261
  ActiveControl = edtCompletedQuantity
  Caption = '%s'
  ClientHeight = 196
  ClientWidth = 522
  ExplicitWidth = 528
  ExplicitHeight = 222
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 506
    Height = 145
    ExplicitWidth = 474
    ExplicitHeight = 145
  end
  object lblStore: TLabel [1]
    Left = 24
    Top = 16
    Width = 58
    Height = 13
    Caption = #1058#1055' '#1047#1072#1076'.'
    FocusControl = edtStore
  end
  object lblProductName: TLabel [2]
    Left = 112
    Top = 16
    Width = 106
    Height = 13
    Caption = '%ProductClassName%'
    FocusControl = edtProductName
  end
  object lblRequestQuantity: TLabel [3]
    Left = 24
    Top = 64
    Width = 67
    Height = 13
    Caption = #1047#1072#1103#1074#1077#1085#1086' '#1082'-'#1074#1086
    FocusControl = edtRequestQuantity
  end
  object lblCompletedQuantity: TLabel [4]
    Left = 128
    Top = 64
    Width = 71
    Height = 13
    Caption = #1054#1090#1095#1077#1090#1077#1085#1086' '#1082'-'#1074#1086
    FocusControl = edtCompletedQuantity
  end
  object edtMeasureAbbrev: TDBText [5]
    Left = 205
    Top = 83
    Width = 36
    Height = 17
    DataField = 'MEASURE_ABBREV'
    DataSource = dsData
  end
  object btnCopyQuantity: TSpeedButton [6]
    Left = 101
    Top = 80
    Width = 23
    Height = 22
    Action = actCopyQuantity
    Flat = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C600000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000C6C60000C6C6
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
      0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
      0000C6C60000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
      0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000000000000000000000000000C6C60000C6C6
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C600000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentShowHint = False
    ShowHint = True
  end
  inherited pnlBottomButtons: TPanel
    Top = 161
    Width = 522
    TabOrder = 6
    ExplicitTop = 161
    ExplicitWidth = 490
    inherited pnlOKCancel: TPanel
      Left = 254
      ExplicitLeft = 222
    end
    inherited pnlClose: TPanel
      Left = 165
      ExplicitLeft = 133
    end
    inherited pnlApply: TPanel
      Left = 433
      Visible = False
      ExplicitLeft = 401
    end
  end
  object edtProductName: TDBEdit [8]
    Left = 112
    Top = 32
    Width = 297
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    DataField = 'PRODUCT_NAME'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
    ExplicitWidth = 265
  end
  object edtStore: TDBEdit [9]
    Left = 24
    Top = 32
    Width = 73
    Height = 21
    Color = clBtnFace
    DataField = 'STORE_IDENTIFIER'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtRequestQuantity: TDBEdit [10]
    Left = 24
    Top = 80
    Width = 73
    Height = 21
    Color = clBtnFace
    DataField = 'REQUEST_QUANTITY'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 3
  end
  object edtCompletedQuantity: TDBEdit [11]
    Left = 128
    Top = 80
    Width = 73
    Height = 21
    DataField = 'COMPLETED_QUANTITY'
    DataSource = dsData
    TabOrder = 4
  end
  object edtProductNo: TDBEdit [12]
    Left = 408
    Top = 32
    Width = 89
    Height = 21
    Anchors = [akTop, akRight]
    Color = clBtnFace
    DataField = 'PRODUCT_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 2
    ExplicitLeft = 376
  end
  object pnlAccountQuantityAndTotalPrice: TPanel [13]
    Left = 256
    Top = 64
    Width = 249
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitWidth = 217
    object lblCompletedAccountQuantity: TLabel
      Left = 0
      Top = 0
      Width = 73
      Height = 13
      Caption = #1054#1090#1095'. '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FocusControl = edtCompletedQuantity
    end
    object edtAccountMeasureAbbrev: TDBText
      Left = 77
      Top = 19
      Width = 41
      Height = 17
      DataField = 'ACCOUNT_MEASURE_ABBREV'
      DataSource = dsData
    end
    object lblTotalPrice: TLabel
      Left = 128
      Top = 0
      Width = 78
      Height = 13
      Caption = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
    end
    object lblCalculateAccountQuantity: TLabel
      Left = 0
      Top = 40
      Width = 92
      Height = 13
      Caption = #1048#1079#1095#1080#1089#1083'. '#1089#1095#1077#1090'. '#1082'-'#1074#1086
      FocusControl = edtCalculateAccountQuantity
    end
    object edtAccountMeasureAbbrev2: TDBText
      Left = 77
      Top = 59
      Width = 41
      Height = 17
      DataField = 'ACCOUNT_MEASURE_ABBREV'
      DataSource = dsData
    end
    object txtCurrencyAbbrev: TDBText
      Left = 214
      Top = 19
      Width = 29
      Height = 17
      DataField = '_CURRENCY_ABBREV'
      DataSource = dsData
    end
    object edtCompletedAccountQuantity: TDBEdit
      Left = 0
      Top = 16
      Width = 73
      Height = 21
      DataField = 'COMPLETED_ACCOUNT_QUANTITY'
      DataSource = dsData
      TabOrder = 0
    end
    object edtTotalPrice: TDBEdit
      Left = 128
      Top = 16
      Width = 81
      Height = 21
      DataField = 'TOTAL_PRICE'
      DataSource = dsData
      TabOrder = 1
    end
    object edtCalculateAccountQuantity: TDBEdit
      Left = 0
      Top = 56
      Width = 73
      Height = 21
      Color = clBtnFace
      DataField = '_COMPLETED_ACCOUNT_QUANTITY'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
  end
  inherited alActions: TActionList
    Left = 0
    inherited actForm: TAction
      Caption = '%s'
    end
    object actCopyQuantity: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1047#1072#1103#1074#1077#1085#1086#1090#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1054#1090#1095#1077#1090#1077#1085#1086#1090#1086
      ImageIndex = 40
      OnExecute = actCopyQuantityExecute
      OnUpdate = actCopyQuantityUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 0
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 32
    object cdsDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDataMEASURE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataREQUEST_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1086' '#1082'-'#1074#1086
      FieldName = 'REQUEST_QUANTITY'
      Required = True
    end
    object cdsDataCOMPLETED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1077#1085#1086' '#1082'-'#1074#1086
      FieldName = 'COMPLETED_QUANTITY'
    end
    object cdsDataREQUEST_ITEMS_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1079#1072#1103#1074'.'
      FieldName = 'REQUEST_ITEMS_COUNT'
    end
    object cdsData_STORE_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
      FieldKind = fkLookup
      FieldName = '_STORE_IDENTIFIER'
      LookupKeyFields = 'STORE_CODE'
      LookupResultField = 'STORE_IDENTIFIER'
      KeyFields = 'STORE_CODE'
      Lookup = True
    end
  end
end
