inherited fmCurrencies: TfmCurrencies
  Left = 199
  Top = 102
  Caption = #1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
  ClientHeight = 349
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
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
    Height = 314
    inherited pnlGrid: TPanel
      Width = 777
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 777
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 777
        Height = 274
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CURRENCY_CODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CURRENCY_ABBREV'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CURRENCY_NAME'
            Footers = <>
            Width = 169
          end
          item
            EditButtons = <>
            FieldName = 'SCALE'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ROUNDER'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ORDER_NO'
            Footers = <>
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 199
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 56
    Top = 208
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <
      item
        Name = 'CURRENCY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CURRENCY_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SCALE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ROUNDER'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ORDER_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_NAME_SINGULAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_NAME_PLURAL'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_NAME_GENDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CENT_NAME_SINGULAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_CENT_NAME_PLURAL'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_CENT_NAME_GENDER_CODE'
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
        Name = 'CURRENCY_I_NAME_SINGULAR'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_I_NAME_PLURAL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_CENT_I_NAME_SINGULAR'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_CENT_I_NAME_PLURAL'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 20
      end>
    ProviderName = 'prvCurrencies'
    OnNewRecord = cdsGridDataNewRecord
    Left = 24
    Top = 208
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataCURRENCY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CURRENCY_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataSCALE: TAbmesFloatField
      DisplayLabel = #1052#1072#1097#1072#1073
      FieldName = 'SCALE'
      Required = True
    end
    object cdsGridDataROUNDER: TAbmesFloatField
      DisplayLabel = #1058#1086#1095#1085#1086#1089#1090
      FieldName = 'ROUNDER'
      Required = True
      OnGetText = cdsGridDataROUNDERGetText
      OnSetText = cdsGridDataROUNDERSetText
      FieldValueType = fvtInteger
    end
    object cdsGridDataORDER_NO: TAbmesFloatField
      DisplayLabel = #1056#1077#1076
      FieldName = 'ORDER_NO'
      Required = True
    end
    object cdsGridDataCURRENCY_NAME_SINGULAR: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1077#1076'.'#1095'.'
      FieldName = 'CURRENCY_NAME_SINGULAR'
      Required = True
    end
    object cdsGridDataCURRENCY_NAME_PLURAL: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1084#1085'.'#1095'.'
      FieldName = 'CURRENCY_NAME_PLURAL'
      Required = True
    end
    object cdsGridDataCURRENCY_NAME_GENDER_CODE: TAbmesFloatField
      DisplayLabel = #1043#1088#1072#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1088#1086#1076' '#1085#1072' '#1080#1084#1077' '#1085#1072' '#1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_NAME_GENDER_CODE'
      Required = True
    end
    object cdsGridDataCURRENCY_CENT_NAME_SINGULAR: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' 1/100 '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1077#1076'.'#1095'.'
      FieldName = 'CURRENCY_CENT_NAME_SINGULAR'
      Required = True
    end
    object cdsGridDataCURRENCY_CENT_NAME_PLURAL: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' 1/100 '#1085#1072' '#1042#1072#1083#1091#1090#1072' '#1084#1085'.'#1095'.'
      FieldName = 'CURRENCY_CENT_NAME_PLURAL'
      Required = True
    end
    object cdsGridDataCURRENCY_CENT_NAME_GENDER_CODE: TAbmesFloatField
      DisplayLabel = #1043#1088#1072#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1088#1086#1076' '#1085#1072' 1/100 '#1085#1072' '#1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CENT_NAME_GENDER_CODE'
      Required = True
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsGridDataPRODUCT_CODEChange
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridData_CURRENCY_NAME_GENDER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_NAME_GENDER'
      LookupDataSet = cdsGrammaticalGenders
      LookupKeyFields = 'GENDER_CODE'
      LookupResultField = 'GENDER_NAME'
      KeyFields = 'CURRENCY_NAME_GENDER_CODE'
      Lookup = True
    end
    object cdsGridData_CURRENCY_CENT_NAME_GENDER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_CENT_NAME_GENDER'
      LookupDataSet = cdsGrammaticalGenders
      LookupKeyFields = 'GENDER_CODE'
      LookupResultField = 'GENDER_NAME'
      KeyFields = 'CURRENCY_CENT_NAME_GENDER_CODE'
      Lookup = True
    end
    object cdsGridDataCURRENCY_I_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_I_NAME_SINGULAR'
      Required = True
    end
    object cdsGridDataCURRENCY_I_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_I_NAME_PLURAL'
      Required = True
    end
    object cdsGridDataCURRENCY_CENT_I_NAME_SINGULAR: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_I_NAME_SINGULAR'
      Required = True
    end
    object cdsGridDataCURRENCY_CENT_I_NAME_PLURAL: TAbmesWideStringField
      FieldName = 'CURRENCY_CENT_I_NAME_PLURAL'
      Required = True
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 272
    inherited actForm: TAction
      Caption = #1042#1072#1083#1091#1090#1080' '#1079#1072' '#1057#1090#1086#1081#1085#1086#1089#1090#1080
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 24
    Top = 240
  end
  inherited dsGridDataParams: TDataSource
    Left = 56
    Top = 240
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 176
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 176
  end
  object cdsGrammaticalGenders: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvGrammaticalGenders'
    Left = 120
    Top = 176
    object cdsGrammaticalGendersGENDER_CODE: TAbmesFloatField
      FieldName = 'GENDER_CODE'
    end
    object cdsGrammaticalGendersGENDER_NAME: TAbmesWideStringField
      FieldName = 'GENDER_NAME'
    end
  end
end
