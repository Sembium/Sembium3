inherited fmSaleTypes: TfmSaleTypes
  Left = 369
  Top = 335
  Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1055'/'#1054#1055#1042
  ClientHeight = 323
  ClientWidth = 452
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 288
    Width = 452
    inherited pnlOKCancel: TPanel
      Left = 184
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 95
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 363
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 452
    Height = 288
    inherited pnlGrid: TPanel
      Width = 436
      Height = 272
      inherited pnlNavigator: TPanel
        Width = 436
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 436
        Height = 248
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SALE_TYPE_CODE'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'SALE_TYPE_ABBREV'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'SALE_TYPE_NAME'
            Footers = <>
            Width = 239
          end
          item
            EditButtons = <>
            FieldName = 'EXPORT_NO'
            Footers = <>
            Title.Caption = #1045#1082#1089#1087#1086#1088#1090' No|1'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'EXPORT_NO_2'
            Footers = <>
            Title.Caption = #1045#1082#1089#1087#1086#1088#1090' No|2'
            Width = 40
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'SALE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_TYPE_ABBREV'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'SALE_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'EXPORT_NO'
        DataType = ftFloat
      end>
    ProviderName = 'prvSaleTypes'
    ConnectionBroker = dmMain.conSalesCommon
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'SALE_TYPE_CODE'
      Required = True
    end
    object cdsGridDataSALE_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'SALE_TYPE_ABBREV'
      Required = True
      Size = 3
    end
    object cdsGridDataSALE_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SALE_TYPE_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataEXPORT_NO: TAbmesFloatField
      DisplayLabel = #1045#1082#1089#1087#1086#1088#1090' No'
      FieldName = 'EXPORT_NO'
    end
    object cdsGridDataEXPORT_NO_2: TAbmesFloatField
      FieldName = 'EXPORT_NO_2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridData_MAX_SALE_TYPE_CODE: TAggregateField
      FieldName = '_MAX_SALE_TYPE_CODE'
      Active = True
      Expression = 'Max(SALE_TYPE_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 208
    inherited actForm: TAction
      Caption = #1042#1080#1076#1086#1074#1077' '#1054#1055#1055'/'#1054#1055#1042
    end
  end
end
