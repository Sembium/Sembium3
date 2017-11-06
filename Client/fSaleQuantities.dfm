inherited fmSaleQuantities: TfmSaleQuantities
  Left = 214
  Top = 227
  Caption = #1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1080
  ClientHeight = 368
  ClientWidth = 804
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 333
    Width = 804
    inherited pnlOKCancel: TPanel
      Left = 536
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 447
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 715
      TabOrder = 3
      Visible = False
    end
    object pnlPrintButton: TPanel
      Left = 0
      Top = 0
      Width = 90
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 804
    Height = 333
    inherited pnlGrid: TPanel
      Width = 788
      Height = 317
      inherited pnlNavigator: TPanel
        Width = 788
        Alignment = taRightJustify
        Caption = #1042#1089#1080#1095#1082#1080' '#1094#1077#1085#1080' '#1089#1072' '#1074' '
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 788
        Height = 293
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLIENT_COMPANY_NAME'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footer.Value = #1054#1041#1065#1054
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footer.Alignment = taCenter
            Footer.FieldName = '_TOTAL_MEASURE_ABBREV'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 29
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'TOTAL_WANTED_QUANTITY'
            Footer.FieldName = '_TOTAL_WANTED_QUANTITY_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_WANTED_SECONDARY_PRICE'
            Footer.FieldName = '_TOTAL_WANTED_SECONDARY_PRICE_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1055#1086#1080#1089#1082#1072#1085#1086'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 50
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'TOTAL_CONTRACTED_QUANTITY'
            Footer.FieldName = '_TOTAL_CONTRACTED_QUANTITY_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_CONTRACTED_SEC_PRICE'
            Footer.FieldName = '_TOTAL_CONTRACTED_SECONDARY_PRICE_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1086'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 50
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'TOTAL_SHIPPED_QUANTITY'
            Footer.FieldName = '_TOTAL_SHIPPED_QUANTITY_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1045#1082#1089#1087#1077#1076#1080#1088#1072#1085#1086'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_SHIPPED_SECONDARY_PRICE'
            Footer.FieldName = '_TOTAL_SHIPPED_SECONDARY_PRICE_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Alignment = taRightJustify
            Title.Caption = #1045#1082#1089#1087#1077#1076#1080#1088#1072#1085#1086'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 50
          end
          item
            Color = 14803425
            EditButtons = <>
            FieldName = 'TOTAL_INVOICE_QUANTITY'
            Footer.FieldName = '_TOTAL_INVOICE_QUANTITY_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1060#1072#1082#1090#1091#1088#1080#1088#1072#1085#1086'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_INVOICE_SECONDARY_PRICE'
            Footer.FieldName = '_TOTAL_INVOICE_SECONDARY_PRICE_SUM'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -9
            Footer.Font.Name = 'Microsoft Sans Serif'
            Footer.Font.Style = []
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1060#1072#1082#1090#1091#1088#1080#1088#1072#1085#1086'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 50
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
        Value = 1.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALES_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'GROUP_BY_CLIENT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INSTANCES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleQuantities'
    OnCalcFields = cdsGridDataCalcFields
    BeforeGetRecords = cdsGridDataBeforeGetRecords
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_NAME'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      DisplayLabel = 'id '#1094#1080#1092#1088#1086#1074
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataTOTAL_WANTED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_WANTED_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataTOTAL_WANTED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_WANTED_SECONDARY_PRICE'
      OnGetText = cdsGridDataTOTAL_WANTED_SECONDARY_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMIN_WANTED_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_WANTED_NO_RATE_DATE'
    end
    object cdsGridDataTOTAL_CONTRACTED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_CONTRACTED_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataTOTAL_CONTRACTED_SEC_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_CONTRACTED_SEC_PRICE'
      OnGetText = cdsGridDataTOTAL_CONTRACTED_SEC_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMIN_CONTRACTED_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_CONTRACTED_NO_RATE_DATE'
    end
    object cdsGridDataTOTAL_SHIPPED_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_SHIPPED_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataTOTAL_SHIPPED_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_SHIPPED_SECONDARY_PRICE'
      OnGetText = cdsGridDataTOTAL_SHIPPED_SECONDARY_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMIN_SHIPMENT_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_SHIPMENT_NO_RATE_DATE'
    end
    object cdsGridDataTOTAL_INVOICE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_INVOICE_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataTOTAL_INVOICE_SECONDARY_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_INVOICE_SECONDARY_PRICE'
      OnGetText = cdsGridDataTOTAL_INVOICE_SECONDARY_PRICEGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMIN_INVOICE_NO_RATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'MIN_INVOICE_NO_RATE_DATE'
    end
    object cdsGridData_TOTAL_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_TOTAL_WANTED_QUANTITY_SUM: TAggregateField
      FieldName = '_TOTAL_WANTED_QUANTITY_SUM'
      OnGetText = cdsGridData_TOTAL_X_QUANTITY_SUMGetText
      Active = True
      DisplayFormat = ',0.###'
      Expression = 'Sum(TOTAL_WANTED_QUANTITY)'
    end
    object cdsGridData_TOTAL_CONTRACTED_QUANTITY_SUM: TAggregateField
      FieldName = '_TOTAL_CONTRACTED_QUANTITY_SUM'
      OnGetText = cdsGridData_TOTAL_X_QUANTITY_SUMGetText
      Active = True
      DisplayFormat = ',0.###'
      Expression = 'Sum(TOTAL_CONTRACTED_QUANTITY)'
    end
    object cdsGridData_TOTAL_SHIPPED_QUANTITY_SUM: TAggregateField
      FieldName = '_TOTAL_SHIPPED_QUANTITY_SUM'
      OnGetText = cdsGridData_TOTAL_X_QUANTITY_SUMGetText
      Active = True
      DisplayFormat = ',0.###'
      Expression = 'Sum(TOTAL_SHIPPED_QUANTITY)'
    end
    object cdsGridData_TOTAL_INVOICE_QUANTITY_SUM: TAggregateField
      FieldName = '_TOTAL_INVOICE_QUANTITY_SUM'
      OnGetText = cdsGridData_TOTAL_X_QUANTITY_SUMGetText
      Active = True
      DisplayFormat = ',0.###'
      Expression = 'Sum(TOTAL_INVOICE_QUANTITY)'
    end
    object cdsGridData_TOTAL_WANTED_SECONDARY_PRICE_SUM: TAggregateField
      FieldName = '_TOTAL_WANTED_SECONDARY_PRICE_SUM'
      OnGetText = cdsGridData_TOTAL_WANTED_SECONDARY_PRICE_SUMGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_WANTED_SECONDARY_PRICE)'
    end
    object cdsGridData_TOTAL_CONTRACTED_SECONDARY_PRICE_SUM: TAggregateField
      FieldName = '_TOTAL_CONTRACTED_SECONDARY_PRICE_SUM'
      OnGetText = cdsGridData_TOTAL_CONTRACTED_SECONDARY_PRICE_SUMGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_CONTRACTED_SEC_PRICE)'
    end
    object cdsGridData_TOTAL_SHIPPED_SECONDARY_PRICE_SUM: TAggregateField
      FieldName = '_TOTAL_SHIPPED_SECONDARY_PRICE_SUM'
      OnGetText = cdsGridData_TOTAL_SHIPPED_SECONDARY_PRICE_SUMGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_SHIPPED_SECONDARY_PRICE)'
    end
    object cdsGridData_TOTAL_INVOICE_SECONDARY_PRICE_SUM: TAggregateField
      FieldName = '_TOTAL_INVOICE_SECONDARY_PRICE_SUM'
      OnGetText = cdsGridData_TOTAL_INVOICE_SECONDARY_PRICE_SUMGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_INVOICE_SECONDARY_PRICE)'
    end
    object cdsGridData_MIN_WANTED_NO_RATE_DATE: TAggregateField
      FieldName = '_MIN_WANTED_NO_RATE_DATE'
      Active = True
      Expression = 'Min(MIN_WANTED_NO_RATE_DATE)'
    end
    object cdsGridData_MIN_CONTRACTED_NO_RATE_DATE: TAggregateField
      FieldName = '_MIN_CONTRACTED_NO_RATE_DATE'
      Active = True
      Expression = 'Min(MIN_CONTRACTED_NO_RATE_DATE)'
    end
    object cdsGridData_MIN_SHIPMENT_NO_RATE_DATE: TAggregateField
      FieldName = '_MIN_SHIPMENT_NO_RATE_DATE'
      Active = True
      Expression = 'Min(MIN_SHIPMENT_NO_RATE_DATE)'
    end
    object cdsGridData_MIN_INVOICE_NO_RATE_DATE: TAggregateField
      FieldName = '_MIN_INVOICE_NO_RATE_DATE'
      Active = True
      Expression = 'Min(MIN_INVOICE_NO_RATE_DATE)'
    end
    object cdsGridData_MIN_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_MEASURE_CODE'
      Active = True
      Expression = 'Min(MEASURE_CODE)'
    end
    object cdsGridData_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      Expression = 'Max(MEASURE_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 224
    inherited actForm: TAction
      Caption = #1048#1079#1090#1086#1095#1085#1080#1094#1080' '#1085#1072' '#1087#1088#1086#1076#1072#1078#1073#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    OnCalcFields = pdsGridDataParamsCalcFields
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsSALES_LEVEL: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'SALES_LEVEL'
      FieldValueType = fvtInteger
    end
    object pdsGridDataParamsGROUP_BY_CLIENT: TAbmesFloatField
      DisplayLabel = #1043#1088#1091#1087#1080#1088#1072#1085#1077' '#1087#1086
      FieldName = 'GROUP_BY_CLIENT'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsSHOW_INSTANCES: TAbmesFloatField
      DisplayLabel = #1055#1086#1082#1072#1078#1080' '#1083#1080#1089#1090#1072#1090#1072
      FieldName = 'SHOW_INSTANCES'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_DATE_INTERVAL: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DATE_INTERVAL'
      Calculated = True
    end
  end
end
