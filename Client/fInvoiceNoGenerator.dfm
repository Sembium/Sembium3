inherited fmInvoiceNoGenerator: TfmInvoiceNoGenerator
  ActiveControl = edtNo
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080
  ClientHeight = 580
  ClientWidth = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 497
    Height = 529
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 34
    Height = 13
    Caption = #1053#1086#1084#1077#1088
    FocusControl = edtNo
  end
  object lblDateInterval: TLabel [2]
    Left = 104
    Top = 16
    Width = 40
    Height = 13
    Caption = #1042#1088#1084#1048#1085#1090
  end
  object lblIsProformInvoice: TLabel [3]
    Left = 264
    Top = 16
    Width = 54
    Height = 13
    Caption = #1055#1088#1086#1092#1086#1088#1084#1072
    FocusControl = cbIsProformInvoice
  end
  object lblIsApproved: TLabel [4]
    Left = 384
    Top = 16
    Width = 56
    Height = 13
    Caption = #1059#1090#1074#1098#1088#1076#1077#1085#1072
    FocusControl = cbIsApproved
  end
  inherited pnlBottomButtons: TPanel
    Top = 545
    Width = 513
    TabOrder = 8
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
  object edtNo: TDBEdit [6]
    Left = 24
    Top = 32
    Width = 65
    Height = 21
    DataField = 'INVOICE_NO_GENERATOR_NO'
    DataSource = dsData
    TabOrder = 0
  end
  inline frDateInterval: TfrDateIntervalFrame [7]
    Left = 104
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object cbIsProformInvoice: TJvDBComboBox [8]
    Left = 264
    Top = 32
    Width = 105
    Height = 21
    DataField = 'IS_PROFORM_INVOICE'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1053#1077
      #1044#1072)
    TabOrder = 2
    Values.Strings = (
      ''
      '0'
      '1')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object cbIsApproved: TJvDBComboBox [9]
    Left = 384
    Top = 32
    Width = 105
    Height = 21
    DataField = 'IS_APPROVED'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      '< '#1074#1089#1080#1095#1082#1080' >'
      #1053#1077
      #1044#1072)
    TabOrder = 3
    Values.Strings = (
      ''
      '0'
      '1')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Tahoma'
    ListSettings.OutfilteredValueFont.Style = []
  end
  inline frDept: TfrDeptFieldEditFrame [10]
    Left = 24
    Top = 64
    Width = 465
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    TabOrder = 4
    inherited gbTreeNode: TGroupBox
      Width = 465
      inherited pnlTreeNode: TPanel
        Width = 449
        inherited pnlTreeNodeName: TPanel
          Width = 302
          inherited edtTreeNodeName: TDBEdit
            Width = 301
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 302
        end
        inherited pnlRightButtons: TPanel
          Left = 413
        end
      end
    end
  end
  object gbInvoiceTypes: TGroupBox [11]
    Left = 24
    Top = 120
    Width = 465
    Height = 161
    Caption = ' '#1042#1080#1076#1086#1074#1077' '#1092#1072#1082#1090#1091#1088#1080' '
    TabOrder = 5
    DesignSize = (
      465
      161)
    inline frInvoiceTypes: TDualGridFrame
      Left = 11
      Top = 15
      Width = 442
      Height = 136
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      inherited pnlIncluded: TPanel
        Width = 199
        Height = 136
        inherited pnlIncludedNavigator: TPanel
          Width = 199
          inherited navIncluded: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited grdIncluded: TAbmesDBGrid
          Width = 199
          Height = 112
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          OnDblClick = frInvoiceTypesgrdIncludedDblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = '_INVOICE_TYPE_NAME'
              Footers = <>
              Title.Caption = #1042#1080#1076' '#1092#1072#1082#1090#1091#1088#1072
              Width = 166
            end>
        end
      end
      inherited pnlButtons: TPanel
        Left = 199
        Height = 136
        inherited pnlProductButtons: TPanel
          Top = -9
          inherited btnInclude: TSpeedButton
            Top = 32
          end
          inherited btnExclude: TSpeedButton
            Top = 56
          end
          inherited btnIncludeAll: TSpeedButton
            Top = 96
          end
          inherited btnExcludeAll: TSpeedButton
            Top = 120
          end
        end
      end
      inherited pnlExcluded: TPanel
        Left = 243
        Width = 199
        Height = 136
        inherited pnlExcludedNavigator: TPanel
          Width = 199
          inherited navExcluded: TDBColorNavigator
            Left = 103
            Hints.Strings = ()
          end
        end
        inherited grdExcluded: TAbmesDBGrid
          Width = 199
          Height = 112
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          OnDblClick = frInvoiceTypesgrdExcludedDblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = '_INVOICE_TYPE_NAME'
              Footers = <>
              Title.Caption = #1042#1080#1076' '#1092#1072#1082#1090#1091#1088#1072
              Width = 166
            end>
        end
      end
      inherited alActions: TActionList
        Left = 160
        Top = 32
      end
      inherited dsData: TDataSource
        DataSet = cdsINGInvoiceTypes
        Left = 45
        Top = 97
      end
      inherited dsExcluded: TDataSource
        DataSet = cdsINGNotInvoiceTypes
        Left = 302
        Top = 96
      end
    end
  end
  object gbCurrencies: TGroupBox [12]
    Left = 24
    Top = 288
    Width = 465
    Height = 161
    Caption = ' '#1042#1072#1083#1091#1090#1080' '
    TabOrder = 6
    DesignSize = (
      465
      161)
    inline frCurrencies: TDualGridFrame
      Left = 11
      Top = 15
      Width = 442
      Height = 136
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      inherited pnlIncluded: TPanel
        Width = 199
        Height = 136
        inherited pnlIncludedNavigator: TPanel
          Width = 199
          inherited navIncluded: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited grdIncluded: TAbmesDBGrid
          Width = 199
          Height = 112
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          OnDblClick = frCurrenciesgrdIncludedDblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = '_CURRENCY_ABBREV'
              Footers = <>
              Title.Caption = #1042#1072#1083#1091#1090#1072
              Width = 166
            end>
        end
      end
      inherited pnlButtons: TPanel
        Left = 199
        Height = 136
        inherited pnlProductButtons: TPanel
          Top = -9
          inherited btnInclude: TSpeedButton
            Top = 32
          end
          inherited btnExclude: TSpeedButton
            Top = 56
          end
          inherited btnIncludeAll: TSpeedButton
            Top = 96
          end
          inherited btnExcludeAll: TSpeedButton
            Top = 120
          end
        end
      end
      inherited pnlExcluded: TPanel
        Left = 243
        Width = 199
        Height = 136
        inherited pnlExcludedNavigator: TPanel
          Width = 199
          inherited navExcluded: TDBColorNavigator
            Left = 103
            Hints.Strings = ()
          end
        end
        inherited grdExcluded: TAbmesDBGrid
          Width = 199
          Height = 112
          FooterFont.Name = 'Microsoft Sans Serif'
          TitleFont.Name = 'Microsoft Sans Serif'
          OnDblClick = frCurrenciesgrdExcludedDblClick
          Columns = <
            item
              EditButtons = <>
              FieldName = '_CURRENCY_ABBREV'
              Footers = <>
              Title.Caption = #1042#1072#1083#1091#1090#1072
              Width = 166
            end>
        end
      end
      inherited alActions: TActionList
        Left = 160
        Top = 32
      end
      inherited dsData: TDataSource
        DataSet = cdsINGCurrencies
        Left = 54
        Top = 97
      end
      inherited dsExcluded: TDataSource
        DataSet = cdsINGNotCurrencies
        Left = 302
        Top = 97
      end
    end
  end
  object gbInvoiceNo: TGroupBox [13]
    Left = 24
    Top = 456
    Width = 465
    Height = 65
    Caption = ' '#1053#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080' '
    TabOrder = 7
    object lblMinInvoiceNo: TLabel
      Left = 16
      Top = 16
      Width = 13
      Height = 13
      Caption = #1054#1090
      FocusControl = edtMinInvoiceNo
    end
    object lblMaxInvoiceNo: TLabel
      Left = 128
      Top = 16
      Width = 15
      Height = 13
      Caption = #1044#1086
      FocusControl = edtMaxInvoiceNo
    end
    object lblCurrentInvoiceNo: TLabel
      Left = 328
      Top = 16
      Width = 95
      Height = 13
      Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1076#1072#1076#1077#1085
      FocusControl = edtCurrentInvoiceNo
    end
    object btnEditCurrentNo: TSpeedButton
      Left = 425
      Top = 31
      Width = 23
      Height = 22
      Action = actCurrentNoEdit
      AllowAllUp = True
      GroupIndex = 1
      ParentShowHint = False
      ShowHint = True
    end
    object edtMinInvoiceNo: TDBEdit
      Left = 16
      Top = 32
      Width = 97
      Height = 21
      DataField = 'MIN_INVOICE_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtMaxInvoiceNo: TDBEdit
      Left = 128
      Top = 32
      Width = 97
      Height = 21
      DataField = 'MAX_INVOICE_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object edtCurrentInvoiceNo: TDBEdit
      Left = 328
      Top = 32
      Width = 97
      Height = 21
      DataField = 'CURRENT_INVOICE_NO'
      DataSource = dsData
      TabOrder = 2
    end
  end
  inherited alActions: TActionList [14]
    Left = 464
    inherited actForm: TAction
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080
    end
    object actCurrentNoEdit: TAction
      GroupIndex = 1
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1076#1072#1076#1077#1085' '#1085#1086#1084#1077#1088
      ImageIndex = 6
      OnExecute = actCurrentNoEditExecute
      OnUpdate = actCurrentNoEditUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 184
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conInvoices
    Params = <
      item
        DataType = ftFloat
        Name = 'INVOICE_NO_GENERATOR_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvInvoiceNoGenerator'
    Left = 152
    object cdsDataINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
    end
    object cdsDataINVOICE_NO_GENERATOR_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_NO'
    end
    object cdsDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
    end
    object cdsDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
    end
    object cdsDataDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_CODE'
    end
    object cdsDataIS_PROFORM_INVOICE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1092#1086#1088#1084#1072
      FieldName = 'IS_PROFORM_INVOICE'
    end
    object cdsDataIS_APPROVED: TAbmesFloatField
      DisplayLabel = #1059#1090#1074#1098#1088#1076#1077#1085#1072
      FieldName = 'IS_APPROVED'
    end
    object cdsDataMIN_INVOICE_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088' - '#1054#1090
      FieldName = 'MIN_INVOICE_NO'
      DisplayFormat = '0000000000'
      EditFormat = '0'
      MaxValue = 9999999999.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsDataMAX_INVOICE_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088' - '#1044#1086
      FieldName = 'MAX_INVOICE_NO'
      DisplayFormat = '0000000000'
      EditFormat = '0'
      MaxValue = 9999999999.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsDataCURRENT_INVOICE_NO: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1076#1072#1076#1077#1085' '#1085#1086#1084#1077#1088
      FieldName = 'CURRENT_INVOICE_NO'
      OnGetText = cdsDataCURRENT_INVOICE_NOGetText
      DisplayFormat = '0000000000'
      EditFormat = '0'
      MaxValue = 9999999999.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsDataqryINGNotCurrencies: TDataSetField
      FieldName = 'qryINGNotCurrencies'
    end
    object cdsDataqryINGCurrencies: TDataSetField
      FieldName = 'qryINGCurrencies'
    end
    object cdsDataqryINGNotInvoiceTypes: TDataSetField
      FieldName = 'qryINGNotInvoiceTypes'
    end
    object cdsDataqryINGInvoiceTypes: TDataSetField
      FieldName = 'qryINGInvoiceTypes'
    end
  end
  object cdsINGInvoiceTypes: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryINGInvoiceTypes
    IndexFieldNames = 'INVOICE_TYPE_CODE'
    Params = <>
    OnNewRecord = cdsINGInvoiceTypesNewRecord
    Left = 80
    Top = 184
    object cdsINGInvoiceTypesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      Required = True
    end
    object cdsINGInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
      Required = True
    end
    object cdsINGInvoiceTypes_INVOICE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INVOICE_TYPE_NAME'
      LookupDataSet = cdsInvoiceTypes
      LookupKeyFields = 'INVOICE_TYPE_CODE'
      LookupResultField = 'INVOICE_TYPE_NAME'
      KeyFields = 'INVOICE_TYPE_CODE'
      OnGetText = cdsINGInvoiceTypes_INVOICE_TYPE_NAMEGetText
      Size = 100
      Lookup = True
    end
  end
  object cdsINGNotInvoiceTypes: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryINGNotInvoiceTypes
    IndexFieldNames = 'INVOICE_TYPE_CODE'
    Params = <>
    Left = 336
    Top = 184
    object cdsINGNotInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
      Required = True
    end
    object cdsINGNotInvoiceTypes_INVOICE_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INVOICE_TYPE_NAME'
      LookupDataSet = cdsInvoiceTypes
      LookupKeyFields = 'INVOICE_TYPE_CODE'
      LookupResultField = 'INVOICE_TYPE_NAME'
      KeyFields = 'INVOICE_TYPE_CODE'
      Size = 100
      Lookup = True
    end
  end
  object cdsINGCurrencies: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryINGCurrencies
    IndexFieldNames = 'CURRENCY_CODE'
    Params = <>
    OnNewRecord = cdsINGCurrenciesNewRecord
    Left = 88
    Top = 352
    object cdsINGCurrenciesINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      Required = True
    end
    object cdsINGCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsINGCurrencies_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      OnGetText = cdsINGCurrencies_CURRENCY_ABBREVGetText
      Size = 5
      Lookup = True
    end
  end
  object cdsINGNotCurrencies: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsDataqryINGNotCurrencies
    IndexFieldNames = 'CURRENCY_CODE'
    Params = <>
    Left = 336
    Top = 352
    object cdsINGNotCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsINGNotCurrencies_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
  end
  object cdsInvoiceTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conInvoices
    Filtered = True
    Params = <>
    ProviderName = 'prvInvoiceTypes'
    OnFilterRecord = cdsInvoiceTypesFilterRecord
    Left = 240
    object cdsInvoiceTypesINVOICE_TYPE_CODE: TAbmesFloatField
      FieldName = 'INVOICE_TYPE_CODE'
    end
    object cdsInvoiceTypesINVOICE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAME'
      Size = 100
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 304
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
end
