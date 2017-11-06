inherited fmOutStoreDealsExport: TfmOutStoreDealsExport
  Left = 232
  Top = 165
  Caption = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
  ClientHeight = 291
  ClientWidth = 657
  PixelsPerInch = 96
  TextHeight = 13
  object lblBeginDate: TLabel [0]
    Left = 24
    Top = 16
    Width = 69
    Height = 13
    Caption = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
    FocusControl = edtBeginDate
  end
  object lblEndDate: TLabel [1]
    Left = 136
    Top = 16
    Width = 63
    Height = 13
    Caption = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
    FocusControl = edtEndDate
  end
  object lblFileName: TLabel [2]
    Left = 248
    Top = 16
    Width = 66
    Height = 13
    Caption = #1048#1084#1077' '#1085#1072' '#1092#1072#1081#1083
    FocusControl = edtFileName
  end
  object bvlMain: TBevel [3]
    Left = 8
    Top = 8
    Width = 641
    Height = 233
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  inherited pnlBottomButtons: TPanel
    Top = 256
    Width = 657
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 478
    end
    inherited pnlClose: TPanel
      Left = 389
    end
  end
  object edtBeginDate: TJvDateEdit [5]
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 0
  end
  object edtEndDate: TJvDateEdit [6]
    Left = 136
    Top = 32
    Width = 97
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object edtFileName: TJvFilenameEdit [7]
    Left = 248
    Top = 32
    Width = 225
    Height = 21
    DialogOptions = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist]
    TabOrder = 2
  end
  object chbTranslate: TCheckBox [8]
    Left = 488
    Top = 33
    Width = 147
    Height = 17
    Caption = #1050#1080#1088#1080#1083#1080#1094#1072' '#1074' DOS '#1092#1086#1088#1084#1072#1090
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object gbExcludedStores: TGroupBox [9]
    Left = 24
    Top = 64
    Width = 609
    Height = 165
    Caption = ' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080' '
    TabOrder = 5
    object lblExcludedStores: TLabel
      Left = 320
      Top = 13
      Width = 57
      Height = 13
      Caption = #1048#1079#1082#1083#1102#1095#1077#1085#1080
      Transparent = True
    end
    object lblIncludedStores: TLabel
      Left = 8
      Top = 13
      Width = 50
      Height = 13
      Caption = #1042#1082#1083#1102#1095#1077#1085#1080
    end
    object btnExcludeStores: TSpeedButton
      Left = 294
      Top = 69
      Width = 23
      Height = 22
      Action = actExcludeStores
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C600000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000C6C60000C6C6
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
        0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
        0000C6C60000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000C6C60000C6C60000C6C60000C6C60000C6C60000C6C6
        0000C6C6000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000C6C60000C6C6
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C600000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnIncludeStores: TSpeedButton
      Left = 294
      Top = 93
      Width = 23
      Height = 22
      Action = actIncludeStores
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
        0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
        0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000BDBD0000BDBD0000BDBD
        0000BDBD0000BDBD000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBD0000BDBD0000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BDBD000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object grdExcludedStores: TAbmesDBGrid
      Left = 320
      Top = 27
      Width = 281
      Height = 130
      DataGrouping.GroupLevels = <>
      DataSource = dsExcludedStores
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnDblClick = grdExcludedStoresDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'STORE_IDENTIFIER'
          Footers = <>
          Title.Caption = #1053#1086#1084#1077#1088
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'STORE_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 197
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grdIncludedStores: TAbmesDBGrid
      Left = 8
      Top = 27
      Width = 281
      Height = 130
      DataGrouping.GroupLevels = <>
      DataSource = dsIncludedStores
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnDblClick = grdIncludedStoresDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'STORE_IDENTIFIER'
          Footers = <>
          Title.Caption = #1053#1086#1084#1077#1088
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'STORE_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 197
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited alActions: TActionList
    Left = 0
    inherited actForm: TAction
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1058#1077#1075#1083#1077#1085#1080#1103' '#1085#1072' '#1059#1054#1073
    end
    object actExcludeStores: TAction
      Hint = #1048#1079#1082#1083#1102#1095#1074#1072' '#1080#1079#1073#1088#1072#1085#1080#1090#1077' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080
      ImageIndex = 40
      OnExecute = actExcludeStoresExecute
      OnUpdate = actExcludeStoresUpdate
    end
    object actIncludeStores: TAction
      Hint = #1042#1082#1083#1102#1095#1074#1072' '#1080#1079#1073#1088#1072#1085#1080#1090#1077' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080
      ImageIndex = 41
      OnExecute = actIncludeStoresExecute
      OnUpdate = actIncludeStoresUpdate
    end
  end
  object cdsModelOutStoreDealsExport: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
        Value = 37356d
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
        Value = 37356d
      end
      item
        DataType = ftWideString
        Name = 'EXCLUDE_STORE_CODES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'EXCLUDE_SALE_TYPE_CODES'
        ParamType = ptInput
      end>
    ProviderName = 'prvOutStoreDealsExport'
    OnCalcFields = cdsModelOutStoreDealsExportCalcFields
    Left = 328
    Top = 16
    object cdsModelOutStoreDealsExportSTORE_DEAL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_BRANCH_CODE'
    end
    object cdsModelOutStoreDealsExportSTORE_DEAL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'STORE_DEAL_OBJECT_CODE'
    end
    object cdsModelOutStoreDealsExportSTORE_NO: TAbmesFloatField
      FieldName = 'STORE_NO'
    end
    object cdsModelOutStoreDealsExportSTORE_DEAL_NO_IN_STORE: TAbmesFloatField
      FieldName = 'STORE_DEAL_NO_IN_STORE'
    end
    object cdsModelOutStoreDealsExportSTORE_DEAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORE_DEAL_DATE'
      DisplayFormat = 'dd"."mm"."yyyy'
    end
    object cdsModelOutStoreDealsExportDOCUMENT_TYPE_NO: TAbmesFloatField
      FieldName = 'DOCUMENT_TYPE_NO'
    end
    object cdsModelOutStoreDealsExportSALE_TYPE_EXPORT_NO: TAbmesFloatField
      FieldName = 'SALE_TYPE_EXPORT_NO'
    end
    object cdsModelOutStoreDealsExportSALE_TYPE_EXPORT_NO_2: TAbmesFloatField
      FieldName = 'SALE_TYPE_EXPORT_NO_2'
    end
    object cdsModelOutStoreDealsExportSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsModelOutStoreDealsExportPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsModelOutStoreDealsExportACCOUNT_MEASURE_EXPORT_NO: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_EXPORT_NO'
    end
    object cdsModelOutStoreDealsExportACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = '0.000'
    end
    object cdsModelOutStoreDealsExport_STORE_DEAL_YEAR: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_STORE_DEAL_YEAR'
      Calculated = True
    end
    object cdsModelOutStoreDealsExport_ORDER_NO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ORDER_NO'
      DisplayFormat = '000000'
      Calculated = True
    end
  end
  object sfr: TAbmesFileReport
    DataSource = dsModelOutStoreDealsExport
    Pattern.Strings = (
      
        #1044'[STORE_NO:9:R]  [DOCUMENT_TYPE_NO:2:R][_STORE_DEAL_YEAR:4:R][ST' +
        'ORE_DEAL_NO_IN_STORE:8:R][STORE_DEAL_DATE:10:L]        22       ' +
        '  [SALE_TYPE_EXPORT_NO:9:R]                                     ' +
        '                                                                ' +
        '                [_ORDER_NO:9:R]                                 ' +
        '                       '
      
        #1056'[PRODUCT_NO:14:R]          [ACCOUNT_MEASURE_EXPORT_NO:4:R]     ' +
        '         [ACCOUNT_QUANTITY:14:R]')
    StrictFieldWidths = True
    LinesPerPage = 0
    Translate = False
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Left = 416
    Top = 16
  end
  object dsModelOutStoreDealsExport: TDataSource
    DataSet = cdsModelOutStoreDealsExport
    Left = 360
    Top = 16
  end
  object cdsExcludedStores: TAbmesClientDataSet
    Aggregates = <>
    IndexFieldNames = 'STORE_IDENTIFIER'
    Params = <>
    Left = 360
    Top = 136
    object cdsExcludedStoresSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      Required = True
    end
    object cdsExcludedStoresSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 50
    end
    object cdsExcludedStoresSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
  end
  object cdsIncludedStores: TAbmesClientDataSet
    Aggregates = <>
    IndexFieldNames = 'STORE_IDENTIFIER'
    Params = <>
    Left = 48
    Top = 136
    object cdsIncludedStoresSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      Required = True
    end
    object cdsIncludedStoresSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 50
    end
    object cdsIncludedStoresSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
  end
  object dsExcludedStores: TDataSource
    DataSet = cdsExcludedStores
    Left = 392
    Top = 136
  end
  object dsIncludedStores: TDataSource
    DataSet = cdsIncludedStores
    Left = 80
    Top = 136
  end
  object cdsStores: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conStore
    Params = <>
    ProviderName = 'prvExportStores'
    Left = 256
    Top = 184
    object cdsStoresSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      Required = True
    end
    object cdsStoresSTORE_NAME: TAbmesWideStringField
      FieldName = 'STORE_NAME'
      Size = 50
    end
    object cdsStoresSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 45
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnMessage = ApplicationEventsMessage
    Left = 160
    Top = 176
  end
end
