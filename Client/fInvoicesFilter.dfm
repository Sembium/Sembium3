inherited fmInvoicesFilter: TfmInvoicesFilter
  Left = 245
  Top = 194
  Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1080
  ClientHeight = 477
  ClientWidth = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 442
    Width = 578
    TabOrder = 9
    inherited pnlOKCancel: TPanel
      Left = 310
    end
    inherited pnlClose: TPanel
      Left = 221
    end
    inherited pnlApply: TPanel
      Left = 489
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 8
    Top = 0
    Width = 561
    Height = 57
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1080#1079#1076#1072#1074#1072#1085#1077' '
    TabOrder = 0
    inline frDateInterval: TfrDateIntervalFrame
      Left = 16
      Top = 24
      Width = 153
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 153
      Constraints.MinHeight = 21
      Constraints.MinWidth = 153
      TabOrder = 0
      TabStop = True
    end
  end
  object gbStuff: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 265
    Height = 113
    TabOrder = 1
    object lblInvoiceNo: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 13
      Caption = #1060#1072#1082#1090#1091#1088#1072' '#8470
    end
    object lblInvoiceType: TLabel
      Left = 16
      Top = 64
      Width = 64
      Height = 13
      Caption = #1042#1080#1076' '#1092#1072#1082#1090#1091#1088#1072
    end
    object lblMinInvoiceNo: TLabel
      Left = 104
      Top = 16
      Width = 27
      Height = 13
      Caption = #1054#1090' '#8470
    end
    object lblMaxInvoiceNo: TLabel
      Left = 184
      Top = 16
      Width = 29
      Height = 13
      Caption = #1044#1086' '#8470
    end
    object lblInvoiceNoInterval: TLabel
      Left = 174
      Top = 36
      Width = 6
      Height = 13
      Caption = '--'
    end
    object edtInvoiceNo: TDBEdit
      Left = 16
      Top = 32
      Width = 65
      Height = 21
      DataField = 'INVOICE_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object cbInvoiceType: TJvDBLookupCombo
      Left = 16
      Top = 80
      Width = 233
      Height = 21
      DataField = 'INVOICE_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'INVOICE_TYPE_CODE'
      LookupDisplay = 'INVOICE_TYPE_NAME'
      LookupSource = dsInvoiceTypes
      TabOrder = 3
    end
    object edtMinInvoiceNo: TDBEdit
      Left = 104
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MIN_INVOICE_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object edtMaxInvoiceNo: TDBEdit
      Left = 184
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MAX_INVOICE_NO'
      DataSource = dsData
      TabOrder = 2
    end
  end
  object gbStuff2: TGroupBox [3]
    Left = 280
    Top = 64
    Width = 289
    Height = 113
    TabOrder = 2
    object lblPartnerCode: TLabel
      Left = 10
      Top = 16
      Width = 64
      Height = 13
      Caption = #1048#1079#1076#1072#1076#1077#1085#1072' '#1086#1090
    end
    object lblBuyer: TLabel
      Left = 10
      Top = 64
      Width = 65
      Height = 13
      Caption = #1048#1079#1076#1072#1076#1077#1085#1072' '#1085#1072
    end
    inline frSeller: TfrPartnerFieldEditFrameBald
      Left = 10
      Top = 32
      Width = 271
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 286
        inherited pnlNameAndButtons: TPanel
          Width = 197
          inherited pnlRightButtons: TPanel
            Left = 161
          end
          inherited pnlPartnerName: TPanel
            Width = 161
            inherited cbPartner: TJvDBLookupCombo
              Width = 162
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 278
        end
      end
    end
    inline frBuyer: TfrPartnerFieldEditFrameBald
      Left = 10
      Top = 80
      Width = 271
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 286
        inherited pnlNameAndButtons: TPanel
          Width = 197
          inherited pnlRightButtons: TPanel
            Left = 161
          end
          inherited pnlPartnerName: TPanel
            Width = 161
            inherited cbPartner: TJvDBLookupCombo
              Width = 162
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 278
        end
      end
    end
  end
  object gbFlags: TGroupBox [4]
    Left = 464
    Top = 246
    Width = 105
    Height = 59
    TabOrder = 6
    object chkIsProform: TDBCheckBox
      Left = 8
      Top = 11
      Width = 81
      Height = 17
      Caption = #1055#1088#1086#1092#1086#1088#1084#1072
      DataField = 'IS_PROFORM_INVOICE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsNotProform: TDBCheckBox
      Left = 8
      Top = 32
      Width = 81
      Height = 17
      Caption = #1060#1072#1082#1090#1091#1088#1072
      DataField = 'IS_NOT_PROFORM_INVOICE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object gbPayment: TGroupBox [5]
    Left = 8
    Top = 240
    Width = 449
    Height = 193
    Caption = ' '#1053#1072#1095#1080#1085' '#1085#1072' '#1087#1083#1072#1097#1072#1085#1077' '
    TabOrder = 5
    object lblBank: TLabel
      Left = 9
      Top = 89
      Width = 31
      Height = 13
      Caption = #1041#1072#1085#1082#1072
    end
    object lblAccount: TLabel
      Left = 310
      Top = 90
      Width = 38
      Height = 13
      Caption = #1057#1084#1077#1090#1082#1072
    end
    object chkCashPayment: TDBCheckBox
      Left = 8
      Top = 25
      Width = 97
      Height = 17
      Caption = #1042' '#1073#1088#1086#1081
      DataField = 'IS_CASH_PAYMENT'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkBankAccount: TDBCheckBox
      Left = 8
      Top = 45
      Width = 119
      Height = 17
      Caption = #1055#1086' '#1073#1072#1085#1082#1086#1074#1072' '#1089#1084#1077#1090#1082#1072
      DataField = 'IS_BANK_ACCOUNT_PAYMENT'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cbAccount: TJvDBLookupCombo
      Left = 352
      Top = 86
      Width = 89
      Height = 21
      DataField = 'ACCOUNT'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'ACCOUNT'
      LookupDisplay = 'ACCOUNT'
      LookupSource = dsCompanyBankAccounts
      TabOrder = 3
    end
    object chkIsPaid: TAbmesDBCheckBox
      Left = 8
      Top = 143
      Width = 113
      Height = 17
      Caption = #1055#1083#1072#1090#1077#1085#1072' '#1075#1083#1072#1074#1085#1080#1094#1072
      DataField = 'IS_PAID'
      DataSource = dsData
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
    object chkIsNotPaid: TAbmesDBCheckBox
      Left = 8
      Top = 166
      Width = 129
      Height = 17
      Caption = #1053#1077#1087#1083#1072#1090#1077#1085#1072' '#1075#1083#1072#1074#1085#1080#1094#1072
      DataField = 'IS_NOT_PAID'
      DataSource = dsData
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
    object chkIsVatPaid: TAbmesDBCheckBox
      Left = 160
      Top = 143
      Width = 89
      Height = 17
      Caption = #1055#1083#1072#1090#1077#1085#1086' '#1044#1044#1057
      DataField = 'IS_VAT_PAID'
      DataSource = dsData
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
    object IsVatNotPaid: TAbmesDBCheckBox
      Left = 160
      Top = 166
      Width = 105
      Height = 17
      Caption = #1053#1077#1087#1083#1072#1090#1077#1085#1086' '#1044#1044#1057
      DataField = 'IS_VAT_NOT_PAID'
      DataSource = dsData
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
    inline frBank: TfrPartnerFieldEditFrameBald
      Left = 43
      Top = 86
      Width = 262
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      inherited gbPartner: TGroupBox
        Width = 277
        inherited pnlNameAndButtons: TPanel
          Width = 188
          inherited pnlRightButtons: TPanel
            Left = 152
          end
          inherited pnlPartnerName: TPanel
            Width = 152
            inherited edtPartnerName: TDBEdit
              Width = 138
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 153
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 269
        end
      end
    end
  end
  object gbFlags2: TGroupBox [6]
    Left = 464
    Top = 310
    Width = 105
    Height = 59
    TabOrder = 7
    object chkIsStorno: TDBCheckBox
      Left = 8
      Top = 11
      Width = 81
      Height = 17
      Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1072
      DataField = 'IS_STORNO_INVOICE'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsNotStorno: TDBCheckBox
      Left = 8
      Top = 32
      Width = 88
      Height = 17
      Caption = #1053#1077#1072#1085#1091#1083#1080#1088#1072#1085#1072
      DataField = 'IS_NOT_STORNO_INVOICE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inline frProduct: TfrProductFieldEditFrame [7]
    Left = 80
    Top = 184
    Width = 489
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 4
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 489
      inherited pnlTreeNode: TPanel
        Width = 473
        inherited pnlTreeNodeName: TPanel
          Width = 291
          inherited edtTreeNodeName: TDBEdit
            Width = 290
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 291
        end
        inherited pnlRightButtons: TPanel
          Left = 414
        end
      end
    end
  end
  object gbCurrency: TGroupBox [8]
    Left = 8
    Top = 184
    Width = 65
    Height = 49
    Caption = ' '#1042#1072#1083#1091#1090#1072' '
    TabOrder = 3
    object cbCurrency: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 49
      Height = 21
      DataField = 'CURRENCY_CODE'
      DataSource = dsData
      DisplayEmpty = '<'#1074#1089'.>'
      LookupField = 'CURRENCY_CODE'
      LookupDisplay = 'CURRENCY_ABBREV'
      LookupSource = dsCurrencies
      TabOrder = 0
    end
  end
  object gbIsApproved: TGroupBox [9]
    Left = 464
    Top = 374
    Width = 105
    Height = 59
    TabOrder = 8
    object chkIsApproved: TAbmesDBCheckBox
      Left = 8
      Top = 10
      Width = 81
      Height = 17
      Caption = #1059#1090#1074#1098#1088#1076#1077#1085#1072
      DataField = 'IS_APPROVED'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsNotApproved: TAbmesDBCheckBox
      Left = 8
      Top = 32
      Width = 97
      Height = 17
      Caption = #1053#1077#1091#1090#1074#1098#1088#1076#1077#1085#1072
      DataField = 'IS_NOT_APPROVED'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited alActions: TActionList [10]
    Left = 112
    Top = 128
    inherited actForm: TAction
      Caption = #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1080
    end
  end
  inherited dsData: TDataSource [11]
    Left = 208
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet [12]
    Left = 176
    Top = 120
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [13]
    Left = 24
    Top = 424
  end
  inherited dsFilterVariants: TDataSource [14]
    Left = 48
    Top = 424
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 440
  end
  object cdsInvoiceTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conInvoices
    Filter = '(INVOICE_TYPE_CODE <> 7)'
    Filtered = True
    Params = <>
    ProviderName = 'prvInvoiceTypes'
    Left = 40
    Top = 144
    object cdsInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
    end
    object cdsInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
    object cdsInvoiceTypesADD_VAT: TAbmesFloatField
      FieldName = 'ADD_VAT'
    end
    object cdsInvoiceTypesADD_VAT_TO_ITEMS: TAbmesFloatField
      FieldName = 'ADD_VAT_TO_ITEMS'
    end
    object cdsInvoiceTypesDIARY_NO_WHEN_ANNULED: TAbmesFloatField
      FieldName = 'DIARY_NO_WHEN_ANNULED'
    end
  end
  object dsInvoiceTypes: TDataSource
    DataSet = cdsInvoiceTypes
    Left = 72
    Top = 144
  end
  object cdsCompanyBankAccounts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyBankAccounts'
    Left = 280
    Top = 264
    object cdsCompanyBankAccountsBANK_COMPANY_CODE: TAbmesFloatField
      FieldName = 'BANK_COMPANY_CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsCompanyBankAccountsACCOUNT: TAbmesFloatField
      FieldName = 'ACCOUNT'
      Required = True
    end
    object cdsCompanyBankAccountsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsCompanyBankAccountsCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
      FieldValueType = fvtInteger
    end
    object cdsCompanyBankAccountsDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
  end
  object dsCompanyBankAccounts: TDataSource
    DataSet = cdsCompanyBankAccounts
    Left = 312
    Top = 264
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 8
    Top = 216
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
  object dsCurrencies: TDataSource
    DataSet = cdsCurrencies
    Left = 40
    Top = 216
  end
end
