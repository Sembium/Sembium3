inherited fmStoreRequestItemEdit: TfmStoreRequestItemEdit
  ActiveControl = edtRequestQuantity
  Caption = #1047#1072#1103#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
  ClientHeight = 157
  ClientWidth = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 689
    Height = 106
  end
  object lblProductName: TLabel [1]
    Left = 312
    Top = 16
    Width = 92
    Height = 13
    Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
    FocusControl = edtProductName
  end
  object lblStoreIdentifier: TLabel [2]
    Left = 24
    Top = 64
    Width = 58
    Height = 13
    Caption = #1058#1055' '#1047#1072#1076'.'
    FocusControl = edtStoreIdentifier
  end
  object lblPlanQuantity: TLabel [3]
    Left = 96
    Top = 64
    Width = 80
    Height = 13
    Caption = #1055#1083#1072#1085#1080#1088#1072#1085#1086' '#1082'-'#1074#1086
    FocusControl = edtPlanQuantity
  end
  object lblCompletedQuantity: TLabel [4]
    Left = 208
    Top = 64
    Width = 71
    Height = 13
    Caption = #1054#1090#1095#1077#1090#1077#1085#1086' '#1082'-'#1074#1086
    FocusControl = edtCompletedQuantity
  end
  object lblOtherRequestedQuantity: TLabel [5]
    Left = 320
    Top = 64
    Width = 67
    Height = 13
    Caption = #1047#1072#1103#1074#1077#1085#1086' '#1082'-'#1074#1086
    FocusControl = edtOtherRequestedQuantity
  end
  object lblRemainingQuantity: TLabel [6]
    Left = 432
    Top = 64
    Width = 76
    Height = 13
    Caption = #1054#1089#1090#1072#1074#1072#1097#1086' '#1082'-'#1074#1086
    FocusControl = edtRemainingQuantity
  end
  object lblRequestQuantity: TLabel [7]
    Left = 552
    Top = 64
    Width = 59
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    FocusControl = edtRequestQuantity
  end
  object txtMeasureAbbrev: TDBText [8]
    Left = 648
    Top = 83
    Width = 33
    Height = 17
    DataField = 'MEASURE_ABBREV'
    DataSource = dsData
  end
  object lblProcessObjectClass: TLabel [9]
    Left = 24
    Top = 16
    Width = 121
    Height = 13
    Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
    FocusControl = edtProcessObjectClassAbbrev
  end
  object lblSalePriority: TLabel [10]
    Left = 272
    Top = 16
    Width = 17
    Height = 13
    Caption = #1055#1088'.'
    FocusControl = edtPriority
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnCopyQuantity: TSpeedButton [11]
    Left = 525
    Top = 79
    Width = 23
    Height = 22
    Action = actCopyQuantity
    Flat = True
    ParentShowHint = False
    ShowHint = True
  end
  inherited pnlBottomButtons: TPanel
    Top = 122
    Width = 705
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 437
    end
    inherited pnlClose: TPanel
      Left = 348
    end
    inherited pnlApply: TPanel
      Left = 616
      Visible = False
    end
  end
  object edtProcessObjectIdentifier: TDBEdit [13]
    Left = 96
    Top = 32
    Width = 161
    Height = 21
    Color = clBtnFace
    DataField = 'PROCESS_OBJECT_IDENTIFIER'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
  end
  object edtProductName: TDBEdit [14]
    Left = 312
    Top = 32
    Width = 289
    Height = 21
    Color = clBtnFace
    DataField = 'PRODUCT_NAME'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 3
  end
  object edtStoreIdentifier: TDBEdit [15]
    Left = 24
    Top = 80
    Width = 57
    Height = 21
    Color = clBtnFace
    DataField = 'STORE_IDENTIFIER'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 5
  end
  object edtPlanQuantity: TDBEdit [16]
    Left = 96
    Top = 80
    Width = 97
    Height = 21
    Color = clBtnFace
    DataField = 'PLAN_QUANTITY'
    DataSource = dsStoreRequestPSDQuantities
    ReadOnly = True
    TabOrder = 6
  end
  object edtCompletedQuantity: TDBEdit [17]
    Left = 208
    Top = 80
    Width = 97
    Height = 21
    Color = clBtnFace
    DataField = 'COMPLETED_QUANTITY'
    DataSource = dsStoreRequestPSDQuantities
    ReadOnly = True
    TabOrder = 7
  end
  object edtOtherRequestedQuantity: TDBEdit [18]
    Left = 320
    Top = 80
    Width = 97
    Height = 21
    Color = clBtnFace
    DataField = 'OTHER_REQUESTED_QUANTITY'
    DataSource = dsStoreRequestPSDQuantities
    ReadOnly = True
    TabOrder = 8
  end
  object edtRemainingQuantity: TDBEdit [19]
    Left = 432
    Top = 80
    Width = 89
    Height = 21
    Color = clBtnFace
    DataField = 'REMAINING_QUANTITY'
    DataSource = dsStoreRequestPSDQuantities
    ReadOnly = True
    TabOrder = 9
  end
  object edtRequestQuantity: TDBEdit [20]
    Left = 552
    Top = 80
    Width = 89
    Height = 21
    DataField = 'REQUEST_QUANTITY'
    DataSource = dsData
    TabOrder = 10
  end
  object edtProcessObjectClassAbbrev: TDBEdit [21]
    Left = 24
    Top = 32
    Width = 73
    Height = 21
    Color = clBtnFace
    DataField = 'BND_PROCESS_ABBREV'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 0
  end
  object edtProductNo: TDBEdit [22]
    Left = 600
    Top = 32
    Width = 81
    Height = 21
    Color = clBtnFace
    DataField = 'PRODUCT_NO'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 4
  end
  object edtPriority: TDBEdit [23]
    Left = 272
    Top = 32
    Width = 25
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'PRIORITY_NO'
    DataSource = dsData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 520
    inherited actForm: TAction
      Caption = #1047#1072#1103#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object actCopyQuantity: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1054#1089#1090#1072#1074#1072#1097#1086#1090#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086#1090#1086' '#1079#1072' '#1079#1072#1103#1074#1103#1074#1072#1085#1077
      ImageIndex = 40
      OnExecute = actCopyQuantityExecute
      OnUpdate = actCopyQuantityUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 464
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 432
    object cdsDataPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
      ReadOnly = True
    end
    object cdsDataPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
      ReadOnly = True
    end
    object cdsDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      ReadOnly = True
      Size = 50
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ReadOnly = True
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
    object cdsDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      ReadOnly = True
    end
    object cdsDataPLAN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1055#1083#1072#1085#1080#1088#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'PLAN_QUANTITY'
      ReadOnly = True
    end
    object cdsDataCOMPLETED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1090#1095#1077#1090#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'COMPLETED_QUANTITY'
      ReadOnly = True
    end
    object cdsDataOTHER_REQUESTED_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1103#1074#1077#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'OTHER_REQUESTED_QUANTITY'
      ReadOnly = True
    end
    object cdsDataREMAINING_QUANTITY: TAbmesFloatField
      DisplayLabel = #1054#1089#1090#1072#1074#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'REMAINING_QUANTITY'
      ReadOnly = True
    end
    object cdsDataREQUEST_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'REQUEST_QUANTITY'
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
  object dsStoreRequestPSDQuantities: TDataSource
    DataSet = cdsStoreRequestPSDQuantities
    Left = 8
    Top = 120
  end
  object cdsStoreRequestPSDQuantities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStoreRequests
    Params = <
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_REQUEST_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLANNED_STORE_DEAL_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvStoreRequestPSDQuantities'
    Left = 40
    Top = 120
    object cdsStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_BRANCH_CODE'
    end
    object cdsStoreRequestPSDQuantitiesPLANNED_STORE_DEAL_CODE: TAbmesFloatField
      FieldName = 'PLANNED_STORE_DEAL_CODE'
    end
    object cdsStoreRequestPSDQuantitiesPLAN_QUANTITY: TAbmesFloatField
      FieldName = 'PLAN_QUANTITY'
    end
    object cdsStoreRequestPSDQuantitiesCOMPLETED_QUANTITY: TAbmesFloatField
      FieldName = 'COMPLETED_QUANTITY'
    end
    object cdsStoreRequestPSDQuantitiesOTHER_REQUESTED_QUANTITY: TAbmesFloatField
      FieldName = 'OTHER_REQUESTED_QUANTITY'
    end
    object cdsStoreRequestPSDQuantitiesREMAINING_QUANTITY: TAbmesFloatField
      FieldName = 'REMAINING_QUANTITY'
    end
  end
end
