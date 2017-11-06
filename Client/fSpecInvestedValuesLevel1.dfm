inherited fmSpecInvestedValuesLevel1: TfmSpecInvestedValuesLevel1
  Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' 1-'#1074#1080' '#1088#1077#1076
  ClientHeight = 538
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 503
    Width = 793
    inherited pnlOKCancel: TPanel
      Left = 525
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 436
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 704
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 793
    Height = 503
    inherited pnlGrid: TPanel
      Width = 777
      Height = 487
      inherited pnlNavigator: TPanel
        Top = 70
        Width = 777
        TabOrder = 1
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
        Top = 94
        Width = 777
        Height = 393
        AutoFitColWidths = True
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        TabOrder = 2
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1053#1057#1063
            Width = 233
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LINE_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1088#1077#1076#1086#1074#1077
            Width = 40
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRECISION_LEVEL_NO'
            Footers = <>
            Title.Caption = #1053#1058
            Title.Hint = #1053#1080#1074#1086' '#1085#1072' '#1090#1086#1095#1085#1086#1089#1090
            Width = 25
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085'. '#1082'-'#1074#1086'|'#1054#1073#1097#1086
            Width = 80
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TECH_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085'. '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
            Width = 35
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086'|'#1054#1073#1097#1086
            Width = 80
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090'. '#1082'-'#1074#1086'|'#1052'.'#1077#1076'.'
            Width = 35
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1062#1077#1085#1072' '#1074' %s|'#1045#1076#1080#1085#1080#1095#1085#1072
            Width = 60
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_TOTAL_PRICE'
            Footer.FieldName = '_SUM_PRODUCT_TOTAL_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1062#1077#1085#1072' '#1074' %s|'#1054#1073#1097#1086
            Width = 80
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRODUCT_TOTAL_PRICE_PCT'
            Footers = <>
            Title.Caption = '% '#1086#1090' '#1042#1057'1'
            Width = 30
          end>
      end
      object pnlFilter: TPanel
        Left = 0
        Top = 0
        Width = 777
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        inline frProduct: TfrProductExFieldEditFrame
          Left = 132
          Top = 0
          Width = 541
          Height = 65
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 549
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          inherited gbTreeNode: TGroupBox
            Width = 541
            inherited pnlRight: TPanel
              Left = -223
            end
          end
        end
        object gbDate: TGroupBox
          Left = 0
          Top = 0
          Width = 121
          Height = 65
          Caption = ' '#1050#1098#1084' '#1076#1072#1090#1072' '
          TabOrder = 0
          inline frDate: TfrDateFieldEditFrame
            Left = 8
            Top = 31
            Width = 105
            Height = 21
            Constraints.MaxHeight = 21
            Constraints.MaxWidth = 105
            Constraints.MinHeight = 21
            Constraints.MinWidth = 105
            TabOrder = 0
          end
        end
        object gbResultProductTechQuantity: TGroupBox
          Left = 680
          Top = 0
          Width = 97
          Height = 65
          Caption = ' '#1055#1072#1088#1090#1080#1076#1085#1086' '#1082'-'#1074#1086' '
          TabOrder = 2
          DesignSize = (
            97
            65)
          object edtResultProductTechQuantity: TDBEdit
            Left = 8
            Top = 31
            Width = 81
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Color = clBtnFace
            DataField = 'RESULT_PRODUCT_TECH_QUANTITY'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 88
    Top = 216
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conSpecifications
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'LINE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'PRECISION_LEVEL_NO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_PRODUCT_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'TECH_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_TOTAL_PRICE_PCT'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'RESULT_PRODUCT_TECH_QUANTITY'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSpecInvestedValuesLevel1'
    Left = 56
    Top = 216
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataLINE_COUNT: TAbmesFloatField
      FieldName = 'LINE_COUNT'
    end
    object cdsGridDataPRECISION_LEVEL_NO: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_NO'
    end
    object cdsGridDataTOTAL_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_TECH_QUANTITY'
    end
    object cdsGridDataTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataTOTAL_PRODUCT_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_PRODUCT_ACCOUNT_QUANTITY'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataPRODUCT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPRODUCT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPRODUCT_TOTAL_PRICE_PCT: TAbmesFloatField
      FieldName = 'PRODUCT_TOTAL_PRICE_PCT'
      OnGetText = cdsGridDataPRODUCT_TOTAL_PRICE_PCTGetText
      DisplayFormat = ',0'
    end
    object cdsGridData_SUM_PRODUCT_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_PRODUCT_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0.00'
      Expression = 'Sum(PRODUCT_TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 304
    Top = 184
    inherited actForm: TAction
      Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1085#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' 1-'#1074#1080' '#1088#1077#1076
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 56
    Top = 248
    object pdsGridDataParamsSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object pdsGridDataParamsTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object pdsGridDataParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_TECH_QUANTITY'
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 88
    Top = 248
  end
  inherited dsData: TDataSource
    Left = 88
    Top = 184
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 56
    Top = 184
  end
  inherited pmInsertMenu: TPopupMenu
    Left = 272
    Top = 184
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 136
    Top = 216
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object pdsPrintParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 272
    object pdsPrintParamsSPEC_PRODUCT_NO: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NO'
    end
    object pdsPrintParamsSPEC_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'SPEC_PRODUCT_NAME'
      Size = 100
    end
    object pdsPrintParamsRESULT_PRODUCT_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'RESULT_PRODUCT_TECH_QUANTITY'
      DisplayFormat = '0.###'
    end
    object pdsPrintParamsTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
    end
    object pdsPrintParamsTHE_DATE: TAbmesWideStringField
      FieldName = 'THE_DATE'
    end
  end
end
