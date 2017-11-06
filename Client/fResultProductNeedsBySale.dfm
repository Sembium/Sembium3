inherited fmResultProductNeedsBySale: TfmResultProductNeedsBySale
  Left = 264
  Top = 203
  Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085' '#1074' '#1054#1055#1055
  ClientHeight = 344
  ClientWidth = 704
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 309
    Width = 704
    inherited pnlOKCancel: TPanel
      Left = 436
      TabOrder = 2
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 347
      TabOrder = 1
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 615
      TabOrder = 3
      Visible = False
    end
    object btnEditRecord: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
        00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
        0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
        00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
        000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
        0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
        000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 704
    Height = 309
    inherited pnlGrid: TPanel
      Width = 688
      Height = 293
      inherited pnlNavigator: TPanel
        Top = 57
        Width = 688
        inherited pnlFilterButton: TPanel
          Left = 96
          Visible = False
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
        object tbRightTop: TToolBar
          Left = 665
          Top = 0
          Width = 23
          Height = 26
          Align = alNone
          ButtonHeight = 24
          Caption = 'tbRightTop'
          TabOrder = 3
          object btnToggleProductDisplay: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 24
            Hint = #1055#1088#1077#1074#1082#1083#1102#1095#1074#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'/'#1044#1088#1091#1075' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000000000FF0000FF00
              00FF0000FF0000FF0000000000FF00FFFF00FFFFFF00FFFF00FFFF00FFFF00FF
              FF00FF0000FF0000000000FF0000FF0000FF0000FF0000FF0000000000FF00FF
              FF80808000FFFFFF00FFFF00FFFF00FFFF00FF0000FF00000000000000000000
              00000000000000000000000000FF00FFFF80808080808000FFFFFF00FFFF00FF
              FF00FF0000FF0000FF0000000000FF0000FF0000FF0000000000FF0000FF00FF
              FF80808080808000FFFFFF00FFFF00FFFF00FF0000FF0000FF00000000000000
              00FF0000000000000000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
              FF00FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF00FF
              FF80808000FFFF00FFFFFF00FFFF00FFFF00FF0000FF0000FF0000FF0000FF00
              00000000FF0000FF0000FF0000FF00FFFF80808080808000FFFFFF00FFFF00FF
              FF00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00FF
              FF00FFFF80808000FFFFFF00FFFF00FFFF00FFFF00FFFF0000FF0000FF0000FF
              0000FF0000FF0000FF0000FF0000FF000000FFFF00FFFF00FFFFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
              00FF000000FFFF00FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000FF
              0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000FFFFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 81
        Width = 688
        Height = 212
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SALE_IDENTIFIER'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_SHORT_NAME'
            Footers = <>
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_DATE'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 235
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|'#1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1086#1090' '#1082#1083#1080#1077#1085#1090
            Visible = False
            Width = 312
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
          end>
      end
      inline frNeedsCommonHeader: TfrNeedsCommonHeader
        Left = 0
        Top = 0
        Width = 688
        Height = 57
        Align = alTop
        TabOrder = 2
        TabStop = True
        inherited bvlMain: TBevel
          Width = 688
        end
        inherited lblTreeNodeName: TLabel
          Width = 22
          Caption = #1059#1054#1073
        end
        inherited lblDateInterval: TLabel
          Width = 163
          Caption = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 72
    Top = 184
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conNeeds
    FieldDefs = <
      item
        Name = 'SALE_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ORDER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'SHIPMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end>
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
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvResultProductRealNeedsBySale'
    Left = 40
    Top = 184
    object cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsGridDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsGridDataSALE_ORDER_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_ORDER_TYPE_CODE'
    end
    object cdsGridDataSALE_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = 'ID '#1054#1055#1055
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataCLIENT_SHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_SHORT_NAME'
    end
    object cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1077#1082#1089#1087'.'
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      DisplayLabel = 'id '#1094#1080#1092#1088#1086#1074
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      DisplayLabel = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
  end
  inherited alActions: TActionList
    Left = 296
    inherited actForm: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085' '#1074' '#1054#1055#1055
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 40
    Top = 216
  end
  inherited dsGridDataParams: TDataSource
    Left = 72
    Top = 216
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 40
    Top = 152
  end
end
