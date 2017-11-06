inherited fmDocItemTemplate: TfmDocItemTemplate
  Left = 737
  Top = 205
  ActiveControl = cbDocItemType
  Caption = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1082' - %s'
  ClientHeight = 572
  ClientWidth = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 537
    Width = 445
    inherited pnlOKCancel: TPanel
      Left = 177
    end
    inherited pnlClose: TPanel
      Left = 88
    end
    inherited pnlApply: TPanel
      Left = 356
      Visible = False
    end
  end
  object pnlData: TPanel [1]
    Left = 8
    Top = 8
    Width = 429
    Height = 521
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      429
      521)
    object lblName: TLabel
      Left = 16
      Top = 152
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtName
    end
    object lblDocItemTemplateType: TLabel
      Left = 16
      Top = 104
      Width = 104
      Height = 13
      Caption = #1052#1048#1048#1054' '#1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      FocusControl = cbDocItemTemplateType
    end
    object lblDocItemType: TLabel
      Left = 16
      Top = 56
      Width = 46
      Height = 13
      Caption = #1042#1080#1076' '#1048#1048#1054
      FocusControl = cbDocItemType
    end
    object lblNotes: TLabel
      Left = 16
      Top = 200
      Width = 45
      Height = 13
      Caption = #1041#1077#1083#1077#1078#1082#1080
      FocusControl = edtNotes
    end
    object lblCode: TLabel
      Left = 16
      Top = 8
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
      FocusControl = edtCode
    end
    object edtName: TDBEdit
      Left = 16
      Top = 168
      Width = 397
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'DOC_ITEM_TEMPLATE_NAME'
      DataSource = dsData
      TabOrder = 5
    end
    object cbDocItemTemplateType: TJvDBLookupCombo
      Left = 16
      Top = 120
      Width = 397
      Height = 21
      DropDownCount = 14
      DataField = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      DataSource = dsData
      Anchors = [akLeft, akTop, akRight]
      LookupField = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      LookupDisplay = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      LookupSource = dsDocItemTemplateTypes
      TabOrder = 4
    end
    object cbDocItemType: TJvDBLookupCombo
      Left = 16
      Top = 72
      Width = 397
      Height = 21
      DataField = 'DOC_ITEM_TYPE_CODE'
      DataSource = dsDocItems
      LookupField = 'DOC_ITEM_TYPE_CODE'
      LookupDisplay = '_DOC_ITEM_TYPE_EXTENDED_NAME'
      LookupSource = dsDocItemTypes
      TabOrder = 3
    end
    object edtNotes: TDBMemo
      Left = 16
      Top = 216
      Width = 397
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOTES'
      DataSource = dsDocItems
      TabOrder = 6
    end
    object edtCode: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 21
      DataField = 'DOC_ITEM_TEMPLATE_CODE'
      DataSource = dsData
      TabOrder = 0
    end
    object chkIsPattern: TAbmesDBCheckBox
      Left = 167
      Top = 26
      Width = 73
      Height = 17
      Caption = #1064#1072#1073#1083#1086#1085#1077#1085
      DataField = 'IS_PATTERN'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object pnlInternalStorage: TPanel
      Left = 8
      Top = 264
      Width = 305
      Height = 73
      BevelOuter = bvNone
      TabOrder = 7
      object lblFileExtension: TLabel
        Left = 8
        Top = 0
        Width = 48
        Height = 13
        Caption = #1042#1080#1076' '#1092#1072#1081#1083
        FocusControl = edtFileExtension
      end
      object lblIsStoredFileDataChanged: TLabel
        Left = 168
        Top = 0
        Width = 55
        Height = 13
        Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077
        FocusControl = edtIsStoredFileChanged
      end
      object btnImportFromFile: TSpeedButton
        Left = 184
        Top = 48
        Width = 57
        Height = 22
        Action = actImportFromFile
      end
      object btnExportToFile: TSpeedButton
        Left = 248
        Top = 48
        Width = 57
        Height = 22
        Action = actExportToFile
      end
      object btnEdit: TSpeedButton
        Left = 8
        Top = 48
        Width = 81
        Height = 22
        Action = actEditStoredFileData
      end
      object btnClearStoredFile: TSpeedButton
        Left = 96
        Top = 48
        Width = 81
        Height = 22
        Action = actClearStoredFile
      end
      object edtFileExtension: TDBEdit
        Left = 8
        Top = 16
        Width = 153
        Height = 21
        Color = clBtnFace
        DataField = '_FILE_EXTENSION_EXTENDED_NAME'
        DataSource = dsDocItems
        ReadOnly = True
        TabOrder = 0
      end
      object edtIsStoredFileChanged: TDBEdit
        Left = 168
        Top = 16
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = 'IS_STORED_FILE_CHANGED'
        DataSource = dsDocItems
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object chkIsInactive: TAbmesDBCheckBox
      Left = 88
      Top = 26
      Width = 73
      Height = 17
      Caption = #1055#1072#1089#1080#1074#1077#1085
      DataField = 'IS_INACTIVE'
      DataSource = dsDocItems
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object gbDefaultDocItems: TGroupBox
      Left = 16
      Top = 344
      Width = 397
      Height = 161
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = ' '#1048#1048#1054' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077' '
      TabOrder = 8
    end
  end
  inherited pnlMain: TPanel
    Left = 32
    Top = 368
    Width = 377
    Height = 137
    Align = alNone
    BorderWidth = 0
    inherited pnlGrid: TPanel
      Top = 0
      Width = 377
      Height = 137
      Align = alNone
      inherited pnlNavigator: TPanel
        Width = 377
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 352
        Height = 113
        AutoFitColWidths = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DOC_ITEM_NAME'
            Footers = <>
            Width = 100
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_DOC_ITEM_STATE_NAME'
            Footers = <>
            Width = 80
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 352
        Height = 113
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryDefaultDocItems
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      Required = True
    end
    object cdsGridDataDEFAULT_DOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DEFAULT_DOC_ITEM_CODE'
      Required = True
    end
    object cdsGridDataDOC_ITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_NAME'
      Required = True
      Size = 100
    end
    object cdsGridData_DOC_ITEM_STATE_NAME: TAbmesWideStringField
      DisplayLabel = #1060#1072#1079#1072
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_STATE_NAME'
      LookupDataSet = cdsDocItemStates
      LookupKeyFields = 'DOC_ITEM_STATE_CODE'
      LookupResultField = 'DOC_ITEM_STATE_NAME'
      KeyFields = 'DOC_ITEM_STATE_CODE'
      Required = True
      Lookup = True
    end
    object cdsGridDataDOC_ITEM_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1060#1072#1079#1072
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
    object cdsGridData_MAX_DEFAULT_DOC_ITEM_CODE: TAggregateField
      FieldName = '_MAX_DEFAULT_DOC_ITEM_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(DEFAULT_DOC_ITEM_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1048#1054' '#1048#1079#1090#1086#1095#1085#1080#1082' - %s'
    end
    object actImportFromFile: TAction
      Caption = #1048#1084#1087#1086#1088#1090'...'
      OnExecute = actImportFromFileExecute
      OnUpdate = actImportFromFileUpdate
    end
    object actExportToFile: TAction
      Caption = #1045#1082#1089#1087#1086#1088#1090'...'
      OnExecute = actExportToFileExecute
      OnUpdate = actExportToFileUpdate
    end
    object actEditStoredFileData: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      OnExecute = actEditStoredFileDataExecute
      OnUpdate = actEditStoredFileDataUpdate
    end
    object actClearStoredFile: TAction
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077'...'
      OnExecute = actClearStoredFileExecute
      OnUpdate = actClearStoredFileUpdate
    end
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocItemTemplate'
    BeforeOpen = cdsDataBeforeOpen
    AfterOpen = cdsDataAfterOpen
    AfterClose = cdsDataAfterClose
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    object cdsDataDOC_ITEM_TEMPLATE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'DOC_ITEM_TEMPLATE_CODE'
      Required = True
    end
    object cdsDataDOC_ITEM_TEMPLATE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_TEMPLATE_NAME'
      Required = True
      Size = 50
    end
    object cdsDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1052#1048#1048#1054' '#1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      Required = True
      OnChange = cdsDataDOC_ITEM_TEMPLATE_TYPE_CODEChange
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      Required = True
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      Required = True
    end
    object cdsDataDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
    end
    object cdsDataIS_PATTERN: TAbmesFloatField
      DefaultExpression = '0'
      DisplayLabel = #1064#1072#1073#1083#1086#1085#1077#1085
      FieldName = 'IS_PATTERN'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_CHANGED: TAbmesFloatField
      DefaultExpression = '0'
      FieldName = 'IS_CHANGED'
      FieldValueType = fvtBoolean
    end
    object cdsDataqryDefaultDocItems: TDataSetField
      FieldName = 'qryDefaultDocItems'
    end
  end
  object cdsDocItemTemplateTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Filtered = True
    Params = <>
    ProviderName = 'prvDocItemTemplateTypes'
    OnFilterRecord = cdsDocItemTemplateTypesFilterRecord
    Left = 192
    object cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NO'
    end
    object cdsDocItemTemplateTypesDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      Size = 100
    end
  end
  object cdsDocItemTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvDocItemTypes'
    OnCalcFields = cdsDocItemTypesCalcFields
    Left = 80
    Top = 72
    object cdsDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object cdsDocItemTypesDOC_ITEM_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_BASE_TYPE_CODE'
    end
    object cdsDocItemTypesDOC_ITEM_BASE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_BASE_TYPE_NAME'
      Size = 50
    end
    object cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      Size = 250
    end
    object cdsDocItemTypes_DOC_ITEM_TYPE_EXTENDED_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DOC_ITEM_TYPE_EXTENDED_NAME'
      Size = 250
      Calculated = True
    end
  end
  object dsDocItemTemplateTypes: TDataSource
    DataSet = cdsDocItemTemplateTypes
    Left = 224
  end
  object dsDocItemTypes: TDataSource
    DataSet = cdsDocItemTypes
    Left = 112
    Top = 72
  end
  object dsDocItems: TDataSource
    OnStateChange = dsDocItemsStateChange
    Left = 64
  end
  object cdsDocItemStates: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <>
    ProviderName = 'prvDocItemStates'
    Left = 160
    Top = 424
    object cdsDocItemStatesDOC_ITEM_STATE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STATE_CODE'
      Required = True
    end
    object cdsDocItemStatesDOC_ITEM_STATE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_STATE_NAME'
      Required = True
    end
  end
end
