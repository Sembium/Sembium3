inherited fmSingleExpsFilter: TfmSingleExpsFilter
  Left = 240
  Top = 144
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1079#1072' %ProductClassAbbr' +
    'ev% - '#1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080
  ClientHeight = 555
  ClientWidth = 915
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 520
    Width = 915
    TabOrder = 12
    inherited pnlOKCancel: TPanel
      Left = 647
    end
    inherited pnlClose: TPanel
      Left = 558
    end
    inherited pnlApply: TPanel
      Left = 826
    end
  end
  object gbSaleID: TGroupBox [1]
    Left = 8
    Top = 80
    Width = 513
    Height = 65
    Caption = ' ID '#1054#1055#1055' '
    TabOrder = 3
    object lblBranch: TLabel
      Left = 232
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblSaleNo: TLabel
      Left = 296
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
    end
    object lblSaleType: TLabel
      Left = 408
      Top = 16
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
    end
    object lblShipmentNo: TLabel
      Left = 368
      Top = 16
      Width = 13
      Height = 13
      Caption = #1056#1082
    end
    object lblSaleOrderType: TLabel
      Left = 48
      Top = 16
      Width = 39
      Height = 13
      Caption = #1054#1055#1055' '#1087#1086
      FocusControl = cbSaleOrderType
    end
    object cbSaleType: TJvDBLookupCombo
      Left = 408
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 4
    end
    object edtSaleNo: TDBEdit
      Left = 296
      Top = 32
      Width = 65
      Height = 21
      DataField = 'SALE_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbBranch: TJvDBLookupCombo
      Left = 232
      Top = 32
      Width = 57
      Height = 21
      DataField = '_SALE_BRANCH_CODE_AND_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      TabOrder = 1
    end
    object edtShipmentNo: TDBEdit
      Left = 368
      Top = 32
      Width = 33
      Height = 21
      DataField = 'SALE_SHIPMENT_NO'
      DataSource = dsData
      TabOrder = 3
    end
    object cbSaleOrderType: TJvDBComboBox
      Left = 48
      Top = 32
      Width = 161
      Height = 21
      DataField = 'SALE_ORDER_TYPE_CODE'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1047' - '#1047#1072#1076#1072#1085#1080#1077
        #1058' - '#1058#1077#1082#1091#1097#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
        #1041' - '#1041#1098#1076#1077#1097#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090)
      TabOrder = 0
      Values.Strings = (
        ''
        '1'
        '6'
        '7')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbInvoice: TGroupBox [2]
    Left = 608
    Top = 400
    Width = 297
    Height = 65
    Caption = ' '#1060#1072#1082#1090#1091#1088#1072' '
    TabOrder = 11
    object lblInvoiceNo: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1053#1086#1084#1077#1088
      FocusControl = edtFromInvoiceNo
    end
    object lblInvoiceDateInterval: TLabel
      Left = 144
      Top = 16
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object edtInvoiceNoIntervalDelimiter: TLabel
      Left = 60
      Top = 36
      Width = 9
      Height = 13
      Caption = '---'
    end
    object edtFromInvoiceNo: TDBEdit
      Left = 8
      Top = 32
      Width = 49
      Height = 21
      DataField = 'FROM_INVOICE_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtToInvoiceNo: TDBEdit
      Left = 72
      Top = 32
      Width = 65
      Height = 21
      DataField = 'TO_INVOICE_NO'
      DataSource = dsData
      TabOrder = 1
    end
    inline frInvoiceDateInterval: TfrDateIntervalFrame
      Left = 144
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 2
      TabStop = True
    end
  end
  inline frParamProductFilter: TfrParamProductFilter [3]
    Left = 528
    Top = 8
    Width = 377
    Height = 241
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    inherited grpTreeNodeFilter: TGroupBox
      Height = 241
      inherited lblUsedBy: TLabel
        Width = 61
      end
      inherited lblProductOrigin: TLabel
        Width = 23
      end
      inherited lblCommonStatus: TLabel
        Width = 45
      end
      inherited lblIsActive: TLabel
        Width = 53
      end
    end
  end
  object gbDates: TGroupBox [4]
    Left = 8
    Top = 152
    Width = 161
    Height = 97
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
    TabOrder = 4
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object gbClient: TGroupBox [5]
    Left = 8
    Top = 256
    Width = 593
    Height = 257
    Caption = ' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 8
    object lblCountry: TLabel
      Left = 400
      Top = 88
      Width = 48
      Height = 13
      Caption = #1044#1098#1088#1078#1072#1074#1072
      FocusControl = cbCountry
    end
    object lblReceivePlaceOffice: TLabel
      Left = 400
      Top = 16
      Width = 33
      Height = 13
      Caption = #1058#1055
    end
    object cbCountry: TJvDBLookupCombo
      Left = 400
      Top = 104
      Width = 185
      Height = 21
      DeleteKeyClear = False
      DataField = '_COUNTRY_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 2
    end
    object cbReceivePlaceOffice: TJvDBLookupCombo
      Left = 400
      Top = 32
      Width = 185
      Height = 21
      DeleteKeyClear = False
      DataField = '_RECEIVE_PLACE_OFFICE_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 1
    end
    inline frClient: TfrCompanyFilter
      Left = 8
      Top = 16
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited grpTreeNodeFilter: TGroupBox
        inherited pnlBottom: TPanel
          inherited lblCommonStatus: TLabel
            Width = 45
          end
        end
      end
    end
  end
  object gbSaleDealType: TGroupBox [6]
    Left = 224
    Top = 8
    Width = 73
    Height = 65
    Caption = ' '#1058#1080#1087' '#1054#1055#1055' '
    TabOrder = 1
    DesignSize = (
      73
      65)
    object cbSaleDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 240
      DeleteKeyClear = False
      DataField = '_SALE_DEAL_TYPE_SHOW_NAME'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
    end
  end
  object gbSaleShipmentState: TGroupBox [7]
    Left = 8
    Top = 8
    Width = 209
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1043#1088#1091#1087#1072' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103' '
    TabOrder = 0
    object lblDash1: TLabel
      Left = 103
      Top = 37
      Width = 6
      Height = 13
      Caption = #8212
    end
    object cbMinSaleShipmentState: TDBComboBoxEh
      Left = 8
      Top = 33
      Width = 89
      Height = 21
      DataField = 'MIN_SALE_SHIPMENT_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 0
      Visible = True
    end
    object cbMaxSaleShipmentState: TDBComboBoxEh
      Left = 116
      Top = 33
      Width = 85
      Height = 21
      DataField = 'MAX_SALE_SHIPMENT_STATE_CODE'
      DataSource = dsData
      DropDownBox.Rows = 13
      DropDownBox.Width = 450
      EditButtons = <>
      TabOrder = 1
      Visible = True
    end
  end
  object gbReceiveDateInterval: TGroupBox [8]
    Left = 176
    Top = 151
    Width = 169
    Height = 98
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077' '
    TabOrder = 5
    object lblReceiveDateRsv: TLabel
      Left = 8
      Top = 48
      Width = 24
      Height = 13
      Caption = #1088#1079#1088#1074
    end
    object lblDash2: TLabel
      Left = 52
      Top = 68
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frReceiveDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtReceiveDateBeginRsv: TDBEdit
      Left = 8
      Top = 64
      Width = 41
      Height = 21
      DataField = 'RECEIVE_DATE_BEGIN_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtReceiveDateEndRsv: TDBEdit
      Left = 64
      Top = 64
      Width = 41
      Height = 21
      DataField = 'RECEIVE_DATE_END_RSV'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbImportDateInterval: TGroupBox [9]
    Left = 352
    Top = 151
    Width = 169
    Height = 98
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1042#1088#1098#1097#1072#1085#1077' '
    TabOrder = 6
    object lblImportDateRsv: TLabel
      Left = 8
      Top = 48
      Width = 24
      Height = 13
      Caption = #1088#1079#1088#1074
    end
    object lblDash3: TLabel
      Left = 52
      Top = 68
      Width = 9
      Height = 13
      Caption = '---'
    end
    inline frImportDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
      inherited edtInterval: TJvDBComboEdit
        Width = 153
      end
    end
    object edtImportDateBeginRsv: TDBEdit
      Left = 8
      Top = 64
      Width = 41
      Height = 21
      DataField = 'IMPORT_DATE_BEGIN_RSV'
      DataSource = dsData
      TabOrder = 1
    end
    object edtImportDateEndRsv: TDBEdit
      Left = 64
      Top = 64
      Width = 41
      Height = 21
      DataField = 'IMPORT_DATE_END_RSV'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object pnlRightChangingGroupboxes: TPanel [10]
    Left = 304
    Top = 8
    Width = 217
    Height = 65
    BevelOuter = bvNone
    TabOrder = 2
    object gbLeaseDateUnit: TGroupBox
      Left = 0
      Top = 0
      Width = 217
      Height = 65
      Align = alTop
      Caption = ' '#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072' '
      TabOrder = 0
      object cbDateUnit: TJvDBLookupCombo
        Left = 64
        Top = 32
        Width = 89
        Height = 21
        DeleteKeyClear = False
        DataField = '_LEASE_DATE_UNIT_NAME'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
        TabOrder = 0
      end
    end
    object gbDelivery: TGroupBox
      Left = 0
      Top = 65
      Width = 217
      Height = 65
      Align = alTop
      Caption = ' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' '
      TabOrder = 1
      object lblDCDBranch: TLabel
        Left = 72
        Top = 16
        Width = 51
        Height = 13
        Caption = #1058#1055' '#1043#1083'.'
        FocusControl = cbDCDBranch
      end
      object lblDCDCode: TLabel
        Left = 128
        Top = 16
        Width = 43
        Height = 13
        Caption = #1055#1044#1044' No'
        FocusControl = edtDCDCode
      end
      object lblDeliveryProjectCode: TLabel
        Left = 176
        Top = 16
        Width = 14
        Height = 13
        Caption = 'No'
        FocusControl = edtDCDCode
      end
      object cbHasSale: TJvDBComboBox
        Left = 8
        Top = 32
        Width = 57
        Height = 21
        DataField = 'HAS_DELIVERY'
        DataSource = dsData
        Items.Strings = (
          '< '#1074#1089'. >'
          #1080#1084#1072
          #1085#1103#1084#1072)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbDCDBranch: TJvDBLookupCombo
        Left = 72
        Top = 32
        Width = 57
        Height = 21
        DataField = '_DCD_BRANCH'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089'. >'
        TabOrder = 1
      end
      object edtDCDCode: TDBEdit
        Left = 128
        Top = 32
        Width = 49
        Height = 21
        DataField = 'DCD_CODE'
        DataSource = dsData
        TabOrder = 2
      end
      object edtDeliveryProjectCode: TDBEdit
        Left = 176
        Top = 32
        Width = 33
        Height = 21
        DataField = 'DELIVERY_PROJECT_CODE'
        DataSource = dsData
        TabOrder = 3
      end
    end
  end
  object gbExceptEventDamages: TGroupBox [11]
    Left = 608
    Top = 328
    Width = 297
    Height = 65
    Caption = ' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083'. '
    TabOrder = 10
    object lblExceptEventDamages: TLabel
      Left = 8
      Top = 16
      Width = 106
      Height = 13
      Caption = #1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
    end
    object cbDamagesState: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 281
      Height = 21
      DropDownWidth = 300
      DataField = 'DAMAGES_STATE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'STATE_CODE'
      LookupDisplay = 'STATE_ABBREV;STATE_NAME'
      LookupSource = dsDamageStates
      TabOrder = 0
    end
  end
  inline frMediator: TfrPartnerFieldEditFrameLabeled [12]
    Left = 608
    Top = 256
    Width = 297
    Height = 65
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 9
    inherited gbPartner: TGroupBox
      Width = 297
      Caption = ' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
      inherited pnlNameAndButtons: TPanel
        Width = 208
        inherited pnlRightButtons: TPanel
          Left = 172
        end
        inherited pnlPartnerName: TPanel
          Width = 172
          inherited edtPartnerName: TDBEdit
            Width = 173
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 173
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 289
      end
      inherited pnlLabels: TPanel
        Width = 293
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 76
        end
      end
    end
  end
  inherited alActions: TActionList [13]
    Left = 440
    Top = 65520
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1079#1072' %ProductClassAbbr' +
        'ev% - '#1045#1076#1080#1085#1080#1095#1085#1080' '#1054#1055#1055' '#1087#1086' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1080
    end
    object actClearStartPeriodDate: TAction
      Hint = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077' '#1085#1072' '#1085#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1103
      ImageIndex = 26
    end
    object actClearEndPeriodDate: TAction
      Hint = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077' '#1085#1072' '#1082#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1103
      ImageIndex = 26
    end
    object actClearStartInvoiceDate: TAction
      Hint = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077' '#1085#1072' '#1085#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
      ImageIndex = 26
    end
    object actClearEndInvoiceDate: TAction
      Hint = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077' '#1085#1072' '#1082#1088#1072#1081#1085#1072' '#1076#1072#1090#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1072
      ImageIndex = 26
    end
  end
  inherited dsData: TDataSource [14]
    Left = 408
    Top = 65520
  end
  inherited cdsData: TAbmesClientDataSet [15]
    Left = 376
    Top = 65520
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [16]
    Left = 248
    Top = 504
  end
  inherited dsFilterVariants: TDataSource
    Left = 280
    Top = 504
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 312
    Top = 504
  end
  object cdsDamageStates: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 352
    object cdsDamageStatesSTATE_CODE: TAbmesFloatField
      FieldName = 'STATE_CODE'
    end
    object cdsDamageStatesSTATE_ABBREV: TAbmesWideStringField
      FieldName = 'STATE_ABBREV'
      Size = 15
    end
    object cdsDamageStatesSTATE_NAME: TAbmesWideStringField
      FieldName = 'STATE_NAME'
      Size = 30
    end
  end
  object dsDamageStates: TDataSource
    DataSet = cdsDamageStates
    Left = 784
    Top = 352
  end
end
