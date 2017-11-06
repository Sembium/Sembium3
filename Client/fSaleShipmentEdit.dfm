inherited fmSaleShipmentEdit: TfmSaleShipmentEdit
  Left = 364
  Top = 201
  Caption = #1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077' '#1085#1072' '#1054#1055#1055' - %s'
  ClientHeight = 531
  ClientWidth = 489
  DesignSize = (
    489
    531)
  PixelsPerInch = 96
  TextHeight = 13
  object gbLeasePlan: TGroupBox [0]
    Left = 8
    Top = 8
    Width = 473
    Height = 89
    Caption = ' '#1055#1083#1072#1085' '
    TabOrder = 1
    object lblLeaseDateInterval: TLabel
      Left = 8
      Top = 32
      Width = 112
      Height = 13
      Caption = #1044#1086#1075'. '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
      FocusControl = frLeasePlanDateInterval
    end
    object txtLeasePlanQuantityMeasure: TDBText
      Left = 227
      Top = 51
      Width = 30
      Height = 17
      DataField = '_MEASURE_ABBREV'
      DataSource = dsSale
    end
    object lblLeasePlanQuantity: TLabel
      Left = 160
      Top = 32
      Width = 46
      Height = 13
      Caption = #1056#1072#1073'. '#1082'-'#1074#1086
      FocusControl = edtLeasePlanQuantity
    end
    object lblLeasePlanDateUnitQty: TLabel
      Left = 280
      Top = 33
      Width = 22
      Height = 13
      Caption = #1050'-'#1074#1086
      FocusControl = edtLeasePlanDateUnitQty
    end
    object lblLeaseDateUnit: TLabel
      Left = 312
      Top = 33
      Width = 80
      Height = 13
      Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FocusControl = edtLeaseDateUnit
    end
    object lblFor2: TLabel
      Left = 264
      Top = 51
      Width = 12
      Height = 13
      Caption = #1079#1072
    end
    object lblPlanTotalLeaseDateUnitQty: TLabel
      Left = 400
      Top = 33
      Width = 61
      Height = 13
      Caption = #1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
      FocusControl = edtPlanTotalLeaseDateUnitQty
    end
    inline frLeasePlanDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 48
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
    object edtLeasePlanQuantity: TDBEdit
      Left = 160
      Top = 48
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = 'QUANTITY'
      DataSource = dsSale
      ReadOnly = True
      TabOrder = 1
    end
    object edtLeasePlanDateUnitQty: TDBEdit
      Left = 280
      Top = 49
      Width = 33
      Height = 21
      DataField = 'LEASE_PLAN_DATE_UNIT_QTY'
      DataSource = dsData
      TabOrder = 2
    end
    object edtLeaseDateUnit: TDBEdit
      Left = 312
      Top = 49
      Width = 89
      Height = 21
      Color = clBtnFace
      DataField = 'LEASE_DATE_UNIT_NAME'
      DataSource = dsSale
      ReadOnly = True
      TabOrder = 3
    end
    object edtPlanTotalLeaseDateUnitQty: TDBEdit
      Left = 400
      Top = 49
      Width = 65
      Height = 21
      Color = clBtnFace
      DataField = '_TOTAL_LEASE_PLAN_DATE_UNIT_QTY'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 4
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 487
    Width = 489
    Height = 44
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 221
      Height = 44
      TabOrder = 2
      inherited btnOK: TBitBtn
        Top = 10
      end
      inherited btnCancel: TBitBtn
        Top = 10
      end
    end
    inherited pnlClose: TPanel
      Left = 132
      Height = 44
      TabOrder = 1
      inherited btnClose: TBitBtn
        Top = 10
      end
    end
    inherited pnlApply: TPanel
      Left = 400
      Height = 44
      TabOrder = 4
      Visible = False
      inherited btnApply: TBitBtn
        Top = 10
      end
    end
    object btnFinOrder: TButton
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Action = actFinOrder
      TabOrder = 0
    end
    object tlbDocs: TToolBar
      Left = 92
      Top = 12
      Width = 41
      Height = 22
      Align = alNone
      ButtonWidth = 36
      EdgeInner = esNone
      Images = dmMain.ilDocs
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Action = actDocs
      end
    end
  end
  object gbSalePlan: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 473
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1055#1083#1072#1085' '
    TabOrder = 0
    object lblShipmentPlanDate: TLabel
      Left = 16
      Top = 32
      Width = 92
      Height = 13
      Caption = #1055#1083'. '#1076#1072#1090#1072' '#1079#1072' '#1045#1082#1089#1087'. '
      FocusControl = frShipmentPlanDate
    end
    inline frShipmentPlanDate: TfrDateFieldEditFrame
      Left = 16
      Top = 48
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Left = 328
        Top = 256
      end
      inherited dsData: TDataSource
        Left = 344
        Top = 256
      end
      inherited cdsDate: TAbmesClientDataSet
        Left = 376
        Top = 256
      end
      inherited dsDate: TDataSource
        Left = 400
        Top = 256
      end
    end
    object gbPlanQuantity: TGroupBox
      Left = 136
      Top = 16
      Width = 243
      Height = 65
      Caption = ' '#1055#1083#1072#1085#1080#1088#1072#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
      TabOrder = 1
      object txtPlanMeasureAbbrev: TDBText
        Left = 83
        Top = 35
        Width = 30
        Height = 17
        DataField = '_MEASURE_ABBREV'
        DataSource = dsSale
      end
      object txtAccountPlanMeasureAbbrev: TDBText
        Left = 195
        Top = 35
        Width = 30
        Height = 17
        DataField = '_ACCOUNT_MEASURE_ABBREV'
        DataSource = dsSale
      end
      object lblPlanShipmentQuantity: TLabel
        Left = 16
        Top = 16
        Width = 42
        Height = 13
        Caption = #1056#1072#1073#1086#1090#1085#1086
        FocusControl = edtPlanShipmentQuantity
      end
      object lblPlanShipmentAccountQuantity: TLabel
        Left = 128
        Top = 16
        Width = 59
        Height = 13
        Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
        FocusControl = edtPlanShipmentAccountQuantity
      end
      object edtPlanShipmentQuantity: TDBEdit
        Left = 16
        Top = 32
        Width = 65
        Height = 21
        DataField = 'PLAN_QUANTITY'
        DataSource = dsData
        TabOrder = 0
      end
      object edtPlanShipmentAccountQuantity: TDBEdit
        Left = 128
        Top = 32
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = '_PLAN_ACCOUNT_QUANTITY'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object gbReal: TGroupBox [3]
    Left = 8
    Top = 104
    Width = 473
    Height = 313
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' '#1054#1090#1095#1077#1090' '
    TabOrder = 2
    DesignSize = (
      473
      313)
    object gbInvoiceQuantity: TGroupBox
      Left = 136
      Top = 161
      Width = 323
      Height = 65
      Anchors = [akLeft, akRight, akBottom]
      Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
      TabOrder = 2
      object txtInvoiceMeasureAbbrev: TDBText
        Left = 83
        Top = 35
        Width = 30
        Height = 17
        DataField = '_MEASURE_ABBREV'
        DataSource = dsSale
      end
      object txtInvoiceAccountMeasureAbbrev: TDBText
        Left = 195
        Top = 35
        Width = 30
        Height = 17
        DataField = '_ACCOUNT_MEASURE_ABBREV'
        DataSource = dsSale
      end
      object lblInvoiceShipmentQuantity: TLabel
        Left = 16
        Top = 16
        Width = 42
        Height = 13
        Caption = #1056#1072#1073#1086#1090#1085#1086
        FocusControl = edtInvoiceShipmentQuantity
      end
      object lblInvoiceShipmentAccountQuantity: TLabel
        Left = 128
        Top = 16
        Width = 59
        Height = 13
        Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
        FocusControl = edtInvoiceShipmentAccountQuantity
      end
      object edtInvoiceShipmentQuantity: TDBEdit
        Left = 16
        Top = 32
        Width = 65
        Height = 21
        DataField = 'QUANTITY'
        DataSource = dsData
        TabOrder = 0
      end
      object edtInvoiceShipmentAccountQuantity: TDBEdit
        Left = 128
        Top = 32
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = '_ACCOUNT_QUANTITY_2'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 1
      end
    end
    object gbPrice: TGroupBox
      Left = 16
      Top = 233
      Width = 443
      Height = 65
      Anchors = [akLeft, akRight, akBottom]
      Caption = ' '#1062#1077#1085#1072' '
      TabOrder = 4
      object lblCurrency: TLabel
        Left = 280
        Top = 16
        Width = 35
        Height = 13
        Caption = #1042#1072#1083#1091#1090#1072
      end
      object lblSinglePrice: TLabel
        Left = 8
        Top = 16
        Width = 144
        Height = 13
        Caption = #1053#1072' '#1045#1076#1080#1085#1080#1094#1072' '#1056#1072#1073#1086#1090#1077#1085' '#1056#1077#1089#1091#1088#1089
        FocusControl = edtSinglePrice
      end
      object lblTotalPrice: TLabel
        Left = 168
        Top = 16
        Width = 78
        Height = 13
        Caption = #1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090
        FocusControl = edtTotalPrice
      end
      object edtSinglePrice: TDBEdit
        Left = 8
        Top = 32
        Width = 145
        Height = 21
        DataField = 'INVOICE_SINGLE_PRICE'
        DataSource = dsData
        TabOrder = 0
      end
      object edtTotalPrice: TDBEdit
        Left = 168
        Top = 32
        Width = 97
        Height = 21
        DataField = 'INVOICE_TOTAL_PRICE'
        DataSource = dsData
        TabOrder = 1
      end
      object cbCurrency: TJvDBLookupCombo
        Left = 280
        Top = 32
        Width = 57
        Height = 20
        DataField = '_INVOICE_CURRENCY_ABBREV'
        DataSource = dsData
        DisplayEmpty = ' '
        TabOrder = 2
      end
    end
    object pnlSaleReal: TPanel
      Left = 2
      Top = 15
      Width = 469
      Height = 90
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblShipmentDate: TLabel
        Left = 16
        Top = 0
        Width = 105
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
        FocusControl = frShipmentDate
      end
      object lblReceiveDate: TLabel
        Left = 16
        Top = 48
        Width = 104
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
        FocusControl = frReceiveDate
      end
      inline frShipmentDate: TfrDateFieldEditFrame
        Left = 16
        Top = 16
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
        inherited alActions: TActionList
          Left = 328
          Top = 256
        end
        inherited dsData: TDataSource
          Left = 344
          Top = 256
        end
        inherited cdsDate: TAbmesClientDataSet
          Left = 376
          Top = 256
        end
        inherited dsDate: TDataSource
          Left = 400
          Top = 256
        end
      end
      inline frReceiveDate: TfrDateFieldEditFrame
        Left = 16
        Top = 64
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 1
        TabStop = True
        inherited alActions: TActionList
          Left = 328
          Top = 256
        end
        inherited dsData: TDataSource
          Left = 344
          Top = 256
        end
        inherited cdsDate: TAbmesClientDataSet
          Left = 376
          Top = 256
        end
        inherited dsDate: TDataSource
          Left = 400
          Top = 256
        end
      end
      object gbRealQuantity: TGroupBox
        Left = 134
        Top = 8
        Width = 243
        Height = 65
        Caption = ' '#1058#1077#1075#1083#1077#1085#1077' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
        TabOrder = 2
        object txtRealMeasureAbbrev: TDBText
          Left = 83
          Top = 35
          Width = 30
          Height = 17
          DataField = '_MEASURE_ABBREV'
          DataSource = dsSale
        end
        object txtRealAccountMeasureAbbrev: TDBText
          Left = 195
          Top = 35
          Width = 30
          Height = 17
          DataField = '_ACCOUNT_MEASURE_ABBREV'
          DataSource = dsSale
        end
        object lblRealShipmentQuantity: TLabel
          Left = 16
          Top = 16
          Width = 42
          Height = 13
          Caption = #1056#1072#1073#1086#1090#1085#1086
          FocusControl = edtRealShipmentQuantity
        end
        object lblRealShipmentAccountQuantity: TLabel
          Left = 128
          Top = 16
          Width = 59
          Height = 13
          Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086
          FocusControl = edtRealShipmentAccountQuantity
        end
        object edtRealShipmentQuantity: TDBEdit
          Left = 16
          Top = 32
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = 'SHIPMENT_OUT_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        object edtRealShipmentAccountQuantity: TDBEdit
          Left = 128
          Top = 32
          Width = 65
          Height = 21
          Color = clBtnFace
          DataField = '_SHIPMENT_OUT_ACCOUNT_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object pnlLeaseReal: TPanel
      Left = 2
      Top = 105
      Width = 469
      Height = 138
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblShipmentDate2: TLabel
        Left = 16
        Top = 0
        Width = 105
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
        FocusControl = frShipmentDate2
      end
      object lblReceiveDate2: TLabel
        Left = 16
        Top = 48
        Width = 104
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
        FocusControl = frReceiveDate2
      end
      object lblImportDate: TLabel
        Left = 16
        Top = 104
        Width = 91
        Height = 13
        Caption = #1044#1072#1090#1072' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077
        FocusControl = frImportDate
      end
      inline frShipmentDate2: TfrDateFieldEditFrame
        Left = 16
        Top = 16
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 0
        TabStop = True
        inherited alActions: TActionList
          Left = 328
          Top = 256
        end
        inherited dsData: TDataSource
          Left = 344
          Top = 256
        end
        inherited cdsDate: TAbmesClientDataSet
          Left = 376
          Top = 256
        end
        inherited dsDate: TDataSource
          Left = 400
          Top = 256
        end
      end
      inline frReceiveDate2: TfrDateFieldEditFrame
        Left = 16
        Top = 64
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 1
        TabStop = True
        inherited alActions: TActionList
          Left = 328
          Top = 256
        end
        inherited dsData: TDataSource
          Left = 344
          Top = 256
        end
        inherited cdsDate: TAbmesClientDataSet
          Left = 376
          Top = 256
        end
        inherited dsDate: TDataSource
          Left = 400
          Top = 256
        end
      end
      object gbStoreOut: TGroupBox
        Left = 134
        Top = 0
        Width = 323
        Height = 65
        Caption = ' '#1058#1077#1075#1083#1077#1085#1077' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
        TabOrder = 2
        object txtLeaseStoreOutQuantityMesure: TDBText
          Left = 75
          Top = 35
          Width = 30
          Height = 17
          DataField = '_MEASURE_ABBREV'
          DataSource = dsSale
        end
        object lblLeaseStoreOutQuantity: TLabel
          Left = 16
          Top = 16
          Width = 46
          Height = 13
          Caption = #1056#1072#1073'. '#1082'-'#1074#1086
          FocusControl = edtLeaseStoreOutQuantity
        end
        object lblStoreOutDate: TLabel
          Left = 120
          Top = 16
          Width = 47
          Height = 13
          Caption = #1054#1090#1095'. '#1076#1072#1090#1072
          FocusControl = frStoreOutDate
        end
        object edtLeaseStoreOutQuantity: TDBEdit
          Left = 16
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'SHIPMENT_OUT_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        inline frStoreOutDate: TfrDateFieldEditFrame
          Left = 120
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
      end
      inline frImportDate: TfrDateFieldEditFrame
        Left = 16
        Top = 117
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 3
        TabStop = True
        inherited alActions: TActionList
          Left = 328
          Top = 256
        end
        inherited dsData: TDataSource
          Left = 344
          Top = 256
        end
        inherited cdsDate: TAbmesClientDataSet
          Left = 376
          Top = 256
        end
        inherited dsDate: TDataSource
          Left = 400
          Top = 256
        end
      end
      object gbStoreIn: TGroupBox
        Left = 134
        Top = 73
        Width = 323
        Height = 65
        Caption = ' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1077' '#1086#1090' '#1042#1088#1098#1097#1072#1085#1077' '
        TabOrder = 4
        object txtLeaseStoreInQuantityMeasure: TDBText
          Left = 75
          Top = 35
          Width = 30
          Height = 17
          DataField = '_MEASURE_ABBREV'
          DataSource = dsSale
        end
        object lblLeaseStoreInQuantity: TLabel
          Left = 16
          Top = 16
          Width = 46
          Height = 13
          Caption = #1056#1072#1073'. '#1082'-'#1074#1086
          FocusControl = edtLeaseStoreInQuantity
        end
        object lblStoreInDate: TLabel
          Left = 120
          Top = 16
          Width = 47
          Height = 13
          Caption = #1054#1090#1095'. '#1076#1072#1090#1072
          FocusControl = frStoreInDate
        end
        object edtLeaseStoreInQuantity: TDBEdit
          Left = 16
          Top = 32
          Width = 57
          Height = 21
          Color = clBtnFace
          DataField = 'SHIPMENT_IN_QUANTITY'
          DataSource = dsData
          ReadOnly = True
          TabOrder = 0
        end
        inline frStoreInDate: TfrDateFieldEditFrame
          Left = 120
          Top = 32
          Width = 105
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 105
          Constraints.MinHeight = 21
          Constraints.MinWidth = 105
          TabOrder = 1
          TabStop = True
        end
      end
    end
    object gbInvoiceLeaseQuantities: TGroupBox
      Left = 136
      Top = 161
      Width = 323
      Height = 65
      Anchors = [akLeft, akRight, akBottom]
      Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '
      TabOrder = 3
      object txtLeasePlanQuantityMeasure2: TDBText
        Left = 75
        Top = 35
        Width = 30
        Height = 17
        DataField = '_MEASURE_ABBREV'
        DataSource = dsSale
      end
      object lblLeasePlanQuantity2: TLabel
        Left = 8
        Top = 16
        Width = 46
        Height = 13
        Caption = #1056#1072#1073'. '#1082'-'#1074#1086
        FocusControl = edtLeasePlanQuantity2
      end
      object lblLeaseDateUnitQty: TLabel
        Left = 128
        Top = 17
        Width = 22
        Height = 13
        Caption = #1050'-'#1074#1086
        FocusControl = edtLeaseDateUnitQty
      end
      object lblLeaseDateUnit2: TLabel
        Left = 160
        Top = 17
        Width = 80
        Height = 13
        Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
        FocusControl = edtLeaseDateUnit2
      end
      object lblFor: TLabel
        Left = 112
        Top = 35
        Width = 12
        Height = 13
        Caption = #1079#1072
      end
      object lblTotalLeaseDateUnitQty: TLabel
        Left = 248
        Top = 17
        Width = 61
        Height = 13
        Caption = #1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
        FocusControl = edtTotalLeaseDateUnitQty
      end
      object edtLeasePlanQuantity2: TDBEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = 'QUANTITY'
        DataSource = dsSale
        ReadOnly = True
        TabOrder = 0
      end
      object edtLeaseDateUnitQty: TDBEdit
        Left = 128
        Top = 33
        Width = 33
        Height = 21
        DataField = 'LEASE_DATE_UNIT_QTY'
        DataSource = dsData
        TabOrder = 1
      end
      object edtLeaseDateUnit2: TDBEdit
        Left = 160
        Top = 33
        Width = 89
        Height = 21
        Color = clBtnFace
        DataField = 'LEASE_DATE_UNIT_NAME'
        DataSource = dsSale
        ReadOnly = True
        TabOrder = 2
      end
      object edtTotalLeaseDateUnitQty: TDBEdit
        Left = 248
        Top = 33
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = '_TOTAL_LEASE_DATE_UNIT_QTY'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object gbInvoice: TGroupBox [4]
    Left = 8
    Top = 422
    Width = 473
    Height = 65
    Anchors = [akLeft, akRight, akBottom]
    Caption = ' '#1060#1072#1082#1090#1091#1088#1072' '
    TabOrder = 3
    object lblInvoiceNo: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtInvoiceNo
    end
    object lblInvoiceDate: TLabel
      Left = 152
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object lblIsProformInvoice2: TLabel
      Left = 103
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object edtInvoiceNo: TDBEdit
      Left = 16
      Top = 32
      Width = 89
      Height = 21
      DataField = 'INVOICE_NO'
      DataSource = dsData
      TabOrder = 0
    end
    inline frInvoiceDate: TfrDateFieldEditFrame
      Left = 152
      Top = 32
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 2
      TabStop = True
      inherited alActions: TActionList
        Left = 328
        Top = 256
      end
      inherited dsData: TDataSource
        Left = 344
        Top = 256
      end
      inherited cdsDate: TAbmesClientDataSet
        Left = 376
        Top = 256
      end
      inherited dsDate: TDataSource
        Left = 400
        Top = 256
      end
    end
    object cbIsProformInvoice: TJvDBComboBox
      Left = 104
      Top = 32
      Width = 33
      Height = 21
      DataField = 'IS_PROFORM_INVOICE'
      DataSource = dsData
      DropDownCount = 3
      Items.Strings = (
        ' '
        #1055
        #1060)
      TabOrder = 1
      Values.Strings = (
        ''
        '1'
        '0')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object btnInvoice: TBitBtn
      Left = 272
      Top = 32
      Width = 65
      Height = 21
      Action = actInvoice
      Caption = #1060#1072#1082#1090#1091#1088#1072'...'
      TabOrder = 3
    end
  end
  inherited alActions: TActionList
    Left = 360
    Top = 72
    inherited actForm: TAction
      Caption = #1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077' '#1085#1072' '#1054#1055#1055' - %s'
    end
    object actFinOrder: TAction
      Caption = #1054#1055#1060'...'
      OnExecute = actFinOrderExecute
      OnUpdate = actFinOrderUpdate
    end
    object actDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1056#1072#1079#1082#1083#1086#1085#1077#1085#1080#1077#1090#1086
      ImageIndex = 1
      OnExecute = actDocsExecute
    end
    object actInvoice: TAction
      Caption = #1060#1072#1082#1090#1091#1088#1072'...'
      OnExecute = actInvoiceExecute
      OnUpdate = actInvoiceUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 240
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 208
    Top = 72
  end
  object dsSale: TDataSource
    Left = 272
    Top = 72
  end
  object cdsNewInvoice: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SELLER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BUYER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RECEIVER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SENDER_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EVENT_DATE'
        DataType = ftTimeStamp
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 368
    Top = 448
    object cdsNewInvoiceSELLER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SELLER_COMPANY_CODE'
    end
    object cdsNewInvoiceBUYER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BUYER_COMPANY_CODE'
    end
    object cdsNewInvoiceCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsNewInvoiceINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
    end
    object cdsNewInvoiceRECEIVER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'RECEIVER_COMPANY_CODE'
    end
    object cdsNewInvoiceSENDER_COMPANY_CODE: TAbmesFloatField
      FieldName = 'SENDER_COMPANY_CODE'
    end
    object cdsNewInvoiceEVENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'EVENT_DATE'
    end
  end
  object cdsNewInvoiceItems: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'MARKET_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DISCOUNT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BND_PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_REQUEST_NO'
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 448
    object cdsNewInvoiceItemsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsNewInvoiceItemsACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
    end
    object cdsNewInvoiceItemsSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
    end
    object cdsNewInvoiceItemsMARKET_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'MARKET_SINGLE_PRICE'
    end
    object cdsNewInvoiceItemsDISCOUNT_PERCENT: TAbmesFloatField
      FieldName = 'DISCOUNT_PERCENT'
    end
    object cdsNewInvoiceItemsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsNewInvoiceItemsBND_PROCESS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_BRANCH_CODE'
    end
    object cdsNewInvoiceItemsBND_PROCESS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'BND_PROCESS_OBJECT_CODE'
    end
    object cdsNewInvoiceItemsBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object cdsNewInvoiceItemsCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
  end
  object cdsSaleShipmentInvoice: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conInvoices
    Params = <
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleShipmentInvoice'
    Left = 448
    Top = 448
    object cdsSaleShipmentInvoiceINVOICE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'INVOICE_BRANCH_CODE'
      Required = True
    end
    object cdsSaleShipmentInvoiceINVOICE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_CODE'
      Required = True
    end
    object cdsSaleShipmentInvoiceIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
      FieldValueType = fvtBoolean
    end
    object cdsSaleShipmentInvoiceINVOICE_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO'
      Required = True
    end
    object cdsSaleShipmentInvoiceINVOICE_DATE: TAbmesSQLTimeStampField
      FieldName = 'INVOICE_DATE'
      Required = True
    end
    object cdsSaleShipmentInvoiceIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      Required = True
    end
  end
end
