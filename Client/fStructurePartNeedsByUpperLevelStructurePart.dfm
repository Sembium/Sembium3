inherited fmStructurePartNeedsByUpperLevelStructurePart: TfmStructurePartNeedsByUpperLevelStructurePart
  Left = 273
  Top = 184
  Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %StructurePart% '#1074' %UpperLevelStructureParts%'
  ClientHeight = 352
  ClientWidth = 679
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 317
    Width = 679
    inherited pnlOKCancel: TPanel
      Left = 411
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 322
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 590
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 679
    Height = 317
    inherited pnlGrid: TPanel
      Width = 663
      Height = 301
      inherited pnlNavigator: TPanel
        Top = 57
        Width = 663
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
        object tbRightTop: TToolBar
          Left = 639
          Top = 0
          Width = 24
          Height = 26
          Align = alNone
          ButtonHeight = 24
          Caption = 'tbRightTop'
          TabOrder = 3
          Transparent = False
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
          Width = 218
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
            Width = 173
            Height = 22
            Caption = ' %UpperLevelStructurePartAbbrev% '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 181
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
        Width = 663
        Height = 220
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = '%UpperLevelStructurePart%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 288
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = '%UpperLevelStructurePart%|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
            Footers = <>
            Title.Caption = '%UpperLevelStructurePart%|'#1044#1088#1091#1075#1080' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088#1080
            Visible = False
            Width = 365
          end
          item
            EditButtons = <>
            FieldName = 'QUANTITY'
            Footers = <>
            Title.Caption = '%UpperLevelStructurePart%|'#1054#1073#1097#1086' '#1082'-'#1074#1086
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Title.Caption = '%UpperLevelStructurePart%|'#1052'.'#1077#1076'.'
          end
          item
            EditButtons = <>
            FieldName = 'STRUCT_PART_SINGLE_QUANTITY'
            Footers = <>
            Title.Caption = '%StructurePart%|'#1050'-'#1074#1086' '#1074' 1 %UpperLevelStructurePartAbbrev%'
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
        Width = 663
        Height = 57
        Align = alTop
        TabOrder = 2
        TabStop = True
        inherited bvlMain: TBevel
          Width = 663
        end
        inherited lblTreeNodeName: TLabel
          Width = 78
        end
        inherited lblDateInterval: TLabel
          Width = 102
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 80
    Top = 144
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conNeeds
    FieldDefs = <
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
        Name = 'PRODUCT_COMPANY_PRODUCT_NAMES'
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
        Name = 'QUANTITY'
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
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
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
    ProviderName = 'prvDetailEstNeedsByParentDetail'
    Left = 48
    Top = 144
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
    object cdsGridDataPRODUCT_COMPANY_PRODUCT_NAMES: TAbmesWideStringField
      FieldName = 'PRODUCT_COMPANY_PRODUCT_NAMES'
      Size = 250
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
    object cdsGridDataQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.00'
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
    Left = 40
    Top = 256
    inherited actForm: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' %StructurePart% '#1074' %UpperLevelStructureParts%'
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 48
    Top = 176
  end
  inherited dsGridDataParams: TDataSource
    Left = 80
    Top = 176
  end
  inherited dsData: TDataSource
    Left = 80
    Top = 112
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 48
    Top = 112
  end
end
