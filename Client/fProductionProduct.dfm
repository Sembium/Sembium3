inherited fmProductionProduct: TfmProductionProduct
  Left = 397
  Top = 174
  ActiveControl = chbIsProductionProduct
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085
  ClientHeight = 347
  ClientWidth = 513
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 72
    Width = 497
    Height = 236
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object lblData: TLabel [1]
    Left = 16
    Top = 82
    Width = 87
    Height = 13
    Caption = #1056#1077#1076' '#1085#1072' '#1055#1086#1083#1079#1074#1072#1085#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 312
    Width = 513
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 245
    end
    inherited pnlClose: TPanel
      Left = 156
    end
    inherited pnlApply: TPanel
      Left = 424
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Left = 16
    Top = 96
    Width = 481
    Height = 202
    Align = alNone
    BorderWidth = 0
    TabOrder = 2
    inherited pnlGrid: TPanel
      Left = 0
      Top = 0
      Width = 481
      Height = 202
      inherited pnlNavigator: TPanel
        Width = 481
        Height = 0
        Visible = False
        inherited pnlFilterButton: TPanel
          Height = 0
        end
        inherited navData: TDBColorNavigator
          Height = 18
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Height = 0
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 0
        Width = 481
        Height = 202
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1055#1086#1083#1079#1074#1072#1090#1077#1083
            Width = 224
          end
          item
            EditButtons = <>
            FieldName = 'STORE_FULL_NAME'
            Footers = <>
            Title.Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086
            Width = 223
          end>
      end
    end
  end
  object pnlIsProductionProductCheckBox: TPanel [4]
    Left = 24
    Top = 63
    Width = 131
    Height = 21
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object chbIsProductionProduct: TAbmesDBCheckBox
      Left = 4
      Top = 2
      Width = 141
      Height = 17
      Caption = #1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085
      DataField = 'IS_PRODUCTION_PRODUCT'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = chbIsProductionProductClick
      ImmediateUpdateField = True
    end
  end
  object gpProductInfo: TGroupBox [5]
    Left = 8
    Top = 2
    Width = 497
    Height = 59
    Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
    TabOrder = 0
    object lblProductName: TLabel
      Left = 8
      Top = 16
      Width = 63
      Height = 13
      Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FocusControl = edtProductName
    end
    object lblProductNo: TLabel
      Left = 288
      Top = 16
      Width = 49
      Height = 13
      Caption = 'id '#1094#1080#1092#1088#1086#1074
      FocusControl = edtProductNo
    end
    object lblMeasureAbbrev: TLabel
      Left = 368
      Top = 16
      Width = 27
      Height = 13
      Caption = #1052'.'#1077#1076'.'
      FocusControl = edtMeasureAbbrev
    end
    object lblTechMeasureAbbrev: TLabel
      Left = 432
      Top = 16
      Width = 56
      Height = 13
      Caption = #1058#1077#1093#1085'. '#1084'.'#1077#1076'.'
      FocusControl = edtTechMeasureAbbrev
    end
    object edtProductName: TDBEdit
      Left = 8
      Top = 30
      Width = 281
      Height = 21
      Color = clBtnFace
      DataField = 'PRODUCT_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtProductNo: TDBEdit
      Left = 288
      Top = 30
      Width = 78
      Height = 21
      Color = clBtnFace
      DataField = 'PRODUCT_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
    object edtMeasureAbbrev: TDBEdit
      Left = 368
      Top = 30
      Width = 57
      Height = 21
      Color = clBtnFace
      DataField = 'MEASURE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 2
    end
    object edtTechMeasureAbbrev: TDBEdit
      Left = 432
      Top = 30
      Width = 57
      Height = 21
      Color = clBtnFace
      DataField = 'TECH_MEASURE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
  end
  inherited dsGridData: TDataSource
    Left = 376
    Top = 112
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryProductLocations
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 149
      end
      item
        Name = 'STORE_FULL_NAME'
        DataType = ftWideString
        Size = 148
      end>
    Left = 344
    Top = 112
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 149
    end
    object cdsGridDataSTORE_FULL_NAME: TAbmesWideStringField
      FieldName = 'STORE_FULL_NAME'
      Size = 148
    end
    object cdsGridDataIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_LEVEL'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1058#1080#1083#1086#1074#1086' '#1086#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 344
    Top = 144
  end
  inherited dsGridDataParams: TDataSource
    Left = 376
    Top = 144
  end
  inherited dsData: TDataSource
    Left = 376
    Top = 80
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductionProductsTree
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductionProduct'
    BeforeOpen = cdsDataBeforeOpen
    Left = 344
    Top = 80
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object cdsDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
      ProviderFlags = []
    end
    object cdsDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataTECH_MEASURE_CODE: TAbmesFloatField
      FieldName = 'TECH_MEASURE_CODE'
      ProviderFlags = []
    end
    object cdsDataTECH_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'TECH_MEASURE_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsDataIS_PRODUCTION_PRODUCT: TAbmesFloatField
      FieldName = 'IS_PRODUCTION_PRODUCT'
      ProviderFlags = [pfInUpdate]
      FieldValueType = fvtBoolean
    end
    object cdsDataSELF_EXISTENT_STATUS_CODE: TAbmesFloatField
      FieldName = 'SELF_EXISTENT_STATUS_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataqryProductLocations: TDataSetField
      FieldName = 'qryProductLocations'
    end
  end
end
