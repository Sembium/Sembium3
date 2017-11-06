inherited fmShipmentNeededMaterials: TfmShipmentNeededMaterials
  Left = 221
  Top = 180
  Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1080' '#1087#1086' '#1077#1082#1089#1087#1077#1076#1080#1094#1080#1080
  ClientHeight = 505
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 470
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
    end
    inherited pnlClose: TPanel
      Left = 662
    end
    inherited pnlApply: TPanel
      Left = 930
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 470
    BorderWidth = 3
    inherited sptDetail: TSplitter
      Left = 3
      Top = 248
      Width = 1013
      Height = 5
    end
    inherited pnlDetailGrid: TPanel
      Left = 3
      Top = 253
      Width = 1013
      Height = 214
      inherited pnlDetailNavigator: TPanel
        Width = 1013
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 96
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1013
        Height = 190
        UseMultiTitle = True
        VTitleMargin = 8
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1050#1057#1063'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 314
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_NO'
            Footers = <>
            Title.Caption = #1050#1057#1063'|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'MATERIAL_NAME'
            Footers = <>
            Title.Caption = #1053#1057#1063'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 305
          end
          item
            EditButtons = <>
            FieldName = 'MATERIAL_NO'
            Footers = <>
            Title.Caption = #1053#1057#1063'|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Title.Caption = #1056#1072#1073#1086#1090#1085#1080'|'#1050'-'#1074#1086
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'MATERIAL_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1056#1072#1073#1086#1090#1085#1080'|'#1052'.'#1077#1076'.'
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_QUANTITY'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080'|'#1050'-'#1074#1086
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'MATERIAL_ACC_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080'|'#1052'.'#1077#1076'.'
            Width = 31
          end>
      end
    end
    inherited pnlGrid: TPanel
      Left = 3
      Top = 3
      Width = 1013
      Height = 245
      inherited pnlNavigator: TPanel
        Width = 1013
        object btnShowAnnuledLines: TSpeedButton [0]
          Left = 448
          Top = 0
          Width = 24
          Height = 24
          Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
          AllowAllUp = True
          GroupIndex = 1
          Caption = #1040#1085
          Flat = True
          Visible = False
          OnClick = btnShowAnnuledLinesClick
        end
        inherited pnlFilterButton: TPanel
          Left = 96
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Width = 96
          DataSource = dsData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1013
        Height = 221
        DataSource = dsData
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        UseMultiTitle = True
        VTitleMargin = 8
        OnGetCellParams = grdDataGetCellParams
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 208
    Top = 120
  end
  inherited cdsGridData: TAbmesClientDataSet
    Left = 176
    Top = 120
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 176
    Top = 152
  end
  inherited dsGridDataParams: TDataSource
    Left = 208
    Top = 152
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
    Left = 208
    Top = 88
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 176
    Top = 88
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSaleReports
    Params = <
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvShipmentNeededMaterials'
    Left = 96
    Top = 360
    object cdsDetailMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object cdsDetailMATERIAL_NAME: TAbmesWideStringField
      FieldName = 'MATERIAL_NAME'
      Size = 100
    end
    object cdsDetailMATERIAL_NO: TAbmesFloatField
      FieldName = 'MATERIAL_NO'
    end
    object cdsDetailMATERIAL_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_MEASURE_CODE'
    end
    object cdsDetailMATERIAL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailMATERIAL_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_ACCOUNT_MEASURE_CODE'
    end
    object cdsDetailMATERIAL_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MATERIAL_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsDetailDETAIL_NAME: TAbmesWideStringField
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsDetailDETAIL_NO: TAbmesFloatField
      FieldName = 'DETAIL_NO'
    end
    object cdsDetailDETAIL_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_MEASURE_CODE'
    end
    object cdsDetailDETAIL_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailDETAIL_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_CODE'
    end
    object cdsDetailDETAIL_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'DETAIL_ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.###'
    end
  end
  inherited dsDetail: TDataSource
    Left = 128
    Top = 360
  end
end
