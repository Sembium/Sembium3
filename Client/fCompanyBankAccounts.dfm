inherited fmCompanyBankAccounts: TfmCompanyBankAccounts
  Left = 240
  Top = 179
  ActiveControl = btnAddData
  Caption = #1058#1055' '#1060#1080#1085#1072#1085#1089#1086#1074#1080
  ClientHeight = 330
  ClientWidth = 829
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 295
    Width = 829
    Visible = False
    inherited pnlOKCancel: TPanel
      Left = 561
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 472
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 740
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 829
    Height = 295
    inherited pnlGrid: TPanel
      Width = 813
      Height = 279
      inherited pnlNavigator: TPanel
        Width = 813
        Visible = False
        inherited pnlFilterButton: TPanel
          Left = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
        end
      end
      inherited pnlDataButtons: TPanel
        Left = 698
        Height = 255
      end
      inherited grdData: TAbmesDBGrid
        Width = 698
        Height = 255
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SHORT_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 178
          end
          item
            EditButtons = <>
            FieldName = 'BANK_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1041#1072#1085#1082#1072
            Width = 157
          end
          item
            EditButtons = <>
            FieldName = 'BIC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'BIC / S.W.I.F.T'
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_OR_IBAN'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'IBAN / '#1057#1084#1077#1090#1082#1072
            Width = 170
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'CURRENCY_ABBREV'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1072#1083#1091#1090#1072
            Width = 45
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 184
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conCompanies
    FieldDefs = <
      item
        Name = 'ACCOUNT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BANK_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'BANK_NAME'
        DataType = ftWideString
        Size = 58
      end
      item
        Name = 'CURRENCY_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'ACCOUNT_FULL_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'IBAN'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SHORT_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'BIC'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CURRENCY_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BANK_ACCOUNT_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnNewRecord = cdsGridDataNewRecord
    Left = 16
    Top = 184
    object cdsGridDataACCOUNT_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBANK_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1041#1072#1085#1082#1072
      FieldName = 'BANK_COMPANY_CODE'
      OnChange = cdsGridDataBANK_COMPANY_CODEChange
    end
    object cdsGridDataACCOUNT: TAbmesFloatField
      DisplayLabel = #1057#1084#1077#1090#1082#1072
      FieldName = 'ACCOUNT'
    end
    object cdsGridDataCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
    end
    object cdsGridDataCURRENCY_CODE: TAbmesFloatField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldName = 'CURRENCY_CODE'
    end
    object cdsGridDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsGridDataBANK_NAME: TAbmesWideStringField
      FieldName = 'BANK_NAME'
      ProviderFlags = []
      Size = 58
    end
    object cdsGridData_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      ProviderFlags = []
      Size = 5
      Lookup = True
    end
    object cdsGridDataCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      ProviderFlags = []
      Size = 5
    end
    object cdsGridDataIBAN: TAbmesWideStringField
      FieldName = 'IBAN'
      Size = 50
    end
    object cdsGridData_ACCOUNT_OR_IBAN: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_OR_IBAN'
      Size = 50
      Calculated = True
    end
    object cdsGridDataNAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataSHORT_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'SHORT_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField
      FieldName = 'BANK_ACCOUNT_TYPE_CODE'
      OnChange = cdsGridDataBANK_ACCOUNT_TYPE_CODEChange
    end
    object cdsGridDataBIC: TAbmesWideStringField
      FieldName = 'BIC'
      ProviderFlags = []
    end
    object cdsGridData_BANK_ACCOUNT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1058#1055
      FieldKind = fkLookup
      FieldName = '_BANK_ACCOUNT_TYPE_NAME'
      LookupDataSet = cdsBankAccountTypes
      LookupKeyFields = 'BANK_ACCOUNT_TYPE_CODE'
      LookupResultField = 'BANK_ACCOUNT_TYPE_NAME'
      KeyFields = 'BANK_ACCOUNT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_MAX_ACCOUNT_CODE: TAggregateField
      FieldName = '_MAX_ACCOUNT_CODE'
      Active = True
      Expression = 'Max(ACCOUNT_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 248
    inherited actForm: TAction
      Caption = ''
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 216
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 216
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 152
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 136
    Top = 248
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsCurrenciesROUNDER: TAbmesFloatField
      FieldName = 'ROUNDER'
    end
    object cdsCurrenciesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
  end
  object cdsBankAccountTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvBankAccountTypes'
    Left = 168
    Top = 248
    object cdsBankAccountTypesBANK_ACCOUNT_TYPE_CODE: TAbmesFloatField
      FieldName = 'BANK_ACCOUNT_TYPE_CODE'
      Required = True
    end
    object cdsBankAccountTypesBANK_ACCOUNT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BANK_ACCOUNT_TYPE_NAME'
      Required = True
      Size = 100
    end
  end
end
