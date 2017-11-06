inherited fmStructurePartNeedsBySale: TfmStructurePartNeedsBySale
  Left = 240
  Top = 177
  Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %StructurePart% '#1074' '#1054#1055#1055
  ClientHeight = 352
  ClientWidth = 790
  ExplicitWidth = 796
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 317
    Width = 790
    ExplicitTop = 317
    ExplicitWidth = 790
    inherited pnlOKCancel: TPanel
      Left = 522
      TabOrder = 2
      Visible = False
      ExplicitLeft = 522
    end
    inherited pnlClose: TPanel
      Left = 433
      TabOrder = 1
      Visible = True
      ExplicitLeft = 433
    end
    inherited pnlApply: TPanel
      Left = 701
      TabOrder = 3
      Visible = False
      ExplicitLeft = 701
    end
    object btnEditRecord: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actEditRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      TabOrder = 0
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
    end
  end
  inherited pnlMain: TPanel
    Width = 790
    Height = 317
    ExplicitWidth = 790
    ExplicitHeight = 317
    inherited pnlGrid: TPanel
      Width = 774
      Height = 301
      ExplicitWidth = 774
      ExplicitHeight = 301
      inherited pnlNavigator: TPanel
        Top = 57
        Width = 774
        ExplicitTop = 57
        ExplicitWidth = 774
        inherited pnlFilterButton: TPanel
          Left = 96
          ExplicitLeft = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
          ExplicitWidth = 96
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
          ExplicitLeft = 120
        end
        object tbRightTop: TToolBar
          Left = 751
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
        object tlbTopButtons: TToolBar
          Left = 176
          Top = 0
          Width = 73
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeProductDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 28
            Height = 22
            Caption = ' '#1059#1054#1073' '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 36
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Caption = 'btnProductDoc'
            ImageIndex = 0
            OnClick = btnProductDocClick
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 81
        Width = 774
        Height = 220
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SALE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|ID '#1054#1055#1055
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_SHORT_NAME'
            Footers = <>
            Title.Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|'#1050#1083#1080#1077#1085#1090
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'SHIPMENT_DATE'
            Footers = <>
            Title.Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|'#1044#1072#1090#1072' '#1077#1082#1089#1087'.'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
            Width = 236
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_PRODUCT_NAME'
            Footers = <>
            Title.Caption = 
              #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|'#1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1086#1090' '#1050 +
              #1083#1080#1077#1085#1090
            Visible = False
            Width = 236
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Title.Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1054#1088#1076#1077#1088' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1055#1088#1086#1076#1072#1078#1073#1080' ('#1054#1055#1055')|'#1052'.'#1077#1076'.'
          end
          item
            EditButtons = <>
            FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
            Footers = <>
            Title.Caption = '%StructurePart%|'#1050'-'#1074#1086' '#1074' 1 '#1059#1054#1073' '#1087#1088#1086#1076#1072#1074#1072#1085
          end
          item
            EditButtons = <>
            FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
            Footers = <>
            Title.Caption = '%StructurePart%|'#1054#1073#1097#1086' '#1082'-'#1074#1086
          end
          item
            EditButtons = <>
            FieldName = 'STRUCT_PART_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = '%StructurePart%|'#1052'.'#1077#1076'.'
          end>
      end
      inline frNeedsCommonHeader: TfrNeedsCommonHeader
        Left = 0
        Top = 0
        Width = 774
        Height = 57
        Align = alTop
        TabOrder = 2
        TabStop = True
        ExplicitWidth = 774
        inherited bvlMain: TBevel
          Width = 774
          Height = 54
          ExplicitWidth = 774
          ExplicitHeight = 54
        end
        inherited lblTreeNodeName: TLabel
          Width = 78
          ExplicitWidth = 78
        end
        inherited lblDateInterval: TLabel
          Width = 102
          ExplicitWidth = 102
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 64
    Top = 168
  end
  inherited cdsGridData: TAbmesClientDataSet
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
        Name = 'CLIENT_PRODUCT_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'STRUCT_PART_SINGLE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'STRUCT_PART_TOTAL_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'STRUCT_PART_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_NO'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
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
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_RESULT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvDetailRealNeedsBySale'
    ConnectionBroker = dmMain.conNeeds
    Left = 32
    Top = 168
    object cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
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
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataCLIENT_SHORT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_SHORT_NAME'
    end
    object cdsGridDataSHIPMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'SHIPMENT_DATE'
    end
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataSTRUCT_PART_SINGLE_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSTRUCT_PART_TOTAL_QUANTITY: TAbmesFloatField
      FieldName = 'STRUCT_PART_TOTAL_QUANTITY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSTRUCT_PART_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'STRUCT_PART_MEASURE_ABBREV'
      Size = 5
    end
  end
  inherited alActions: TActionList
    Left = 248
    inherited actForm: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %StructurePart% '#1074' '#1054#1055#1055
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 32
    Top = 200
  end
  inherited dsGridDataParams: TDataSource
    Left = 64
    Top = 200
  end
  inherited dsData: TDataSource
    Left = 64
    Top = 136
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 32
    Top = 136
  end
end
