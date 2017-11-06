inherited fmMeasures: TfmMeasures
  Left = 257
  Top = 145
  Caption = #1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '#1085#1072' %ProductClassAbbrev%'
  ClientHeight = 367
  ClientWidth = 481
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 332
    Width = 481
    inherited pnlOKCancel: TPanel
      Left = 213
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 124
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 392
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 481
    Height = 332
    inherited pnlGrid: TPanel
      Width = 465
      Height = 316
      inherited pnlNavigator: TPanel
        Width = 465
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 465
        Height = 292
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_NAME'
            Footers = <>
            Width = 265
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = '_ROUNDER_TEXT'
            Footers = <>
            Title.Caption = #1058#1086#1095#1085#1086#1089#1090
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'EXPORT_NO'
            Footers = <>
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'MEASURE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'MEASURE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ROUNDER'
        DataType = ftFloat
      end
      item
        Name = 'EXPORT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CLASS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'I_MEASURE_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'I_MEASURE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMeasures'
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataMEASURE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'MEASURE_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsGridDataEXPORT_NO: TAbmesFloatField
      DisplayLabel = #1045#1082#1089#1087#1086#1088#1090' '#8470
      FieldName = 'EXPORT_NO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsGridData_ROUNDER_TEXT: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ROUNDER_TEXT'
      LookupDataSet = cdsRounders
      LookupKeyFields = 'ROUNDER'
      LookupResultField = 'ROUNDER_TEXT'
      KeyFields = 'ROUNDER'
      Lookup = True
    end
    object cdsGridDataI_MEASURE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'I_MEASURE_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataI_MEASURE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'I_MEASURE_NAME'
      Required = True
      Size = 50
    end
    object cdsGridData_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      Expression = 'Max(MEASURE_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1052#1077#1088#1085#1080' '#1077#1076#1080#1085#1080#1094#1080' '#1085#1072' %ProductClassAbbrev%'
    end
  end
  object cdsRounders: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 112
    object cdsRoundersROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsRoundersROUNDER_TEXT: TAbmesWideStringField
      FieldName = 'ROUNDER_TEXT'
    end
  end
end
