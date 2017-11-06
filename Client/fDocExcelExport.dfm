inherited fmDocExcelExport: TfmDocExcelExport
  Anchors = [akLeft, akBottom]
  Caption = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
  ClientHeight = 619
  ClientWidth = 715
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 699
    Height = 568
  end
  object lblXLSFileName: TLabel [1]
    Left = 24
    Top = 16
    Width = 81
    Height = 13
    Caption = #1048#1084#1077' '#1085#1072' xls '#1092#1072#1081#1083
    FocusControl = edtXLSFileName
  end
  inherited pnlBottomButtons: TPanel
    Top = 584
    Width = 715
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 447
    end
    inherited pnlClose: TPanel
      Left = 358
    end
    inherited pnlApply: TPanel
      Left = 626
      Visible = False
    end
  end
  object edtXLSFileName: TJvFilenameEdit [3]
    Left = 24
    Top = 32
    Width = 667
    Height = 21
    OnBeforeDialog = edtXLSFileNameBeforeDialog
    DialogKind = dkSave
    DefaultExt = 'xls'
    Filter = 'Excel files (*.xls)|*.xls|All files|*.*'
    DirectInput = False
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Text = ''
  end
  object gbExportDocs: TGroupBox [4]
    Left = 24
    Top = 64
    Width = 663
    Height = 495
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' '
    TabOrder = 2
    DesignSize = (
      663
      495)
    object lblInternalDocsDumpDir: TLabel
      Left = 16
      Top = 24
      Width = 273
      Height = 13
      Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' '#1079#1072' '#1077#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1074#1098#1090#1088#1077#1096#1085#1086' '#1089#1098#1093#1088#1072#1085#1077#1085#1080' '#1048#1048#1054
      FocusControl = edtInternalDocsDumpDir
    end
    object btnDumpDirAsXLSFile: TSpeedButton
      Left = 626
      Top = 40
      Width = 22
      Height = 21
      Action = actDumpDirAsXLSFile
      Anchors = [akTop, akRight]
    end
    object edtInternalDocsDumpDir: TJvDirectoryEdit
      Left = 16
      Top = 40
      Width = 611
      Height = 21
      AcceptFiles = False
      DialogKind = dkWin32
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = ''
    end
    object gbStates: TGroupBox
      Left = 16
      Top = 120
      Width = 313
      Height = 41
      Anchors = [akLeft, akBottom]
      Caption = ' '#1060#1072#1079#1080' '
      TabOrder = 3
      object chbDeveloped: TAbmesDBCheckBox
        Left = 16
        Top = 16
        Width = 97
        Height = 17
        Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1085#1080
        DataField = 'DOC_ITEM_IS_DEVELOPED'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbAuthorized: TAbmesDBCheckBox
        Left = 120
        Top = 16
        Width = 97
        Height = 17
        Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1080
        DataField = 'DOC_ITEM_IS_AUTHORIZED'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbApproved: TAbmesDBCheckBox
        Left = 224
        Top = 16
        Width = 81
        Height = 17
        Caption = #1059#1090#1074#1098#1088#1076#1077#1085#1080
        DataField = 'DOC_ITEM_IS_APPROVED'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
    object gbDNCOnly: TGroupBox
      Left = 344
      Top = 126
      Width = 305
      Height = 35
      Anchors = [akLeft, akBottom]
      TabOrder = 4
      object chbDNCOnly: TAbmesDBCheckBox
        Left = 160
        Top = 10
        Width = 129
        Height = 17
        Caption = #1057#1072#1084#1086' DNC '#1055#1088#1086#1075#1088#1072#1084#1080
        DataField = 'DNC_ONLY'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIncludeInacitve: TAbmesDBCheckBox
        Left = 16
        Top = 10
        Width = 113
        Height = 17
        Caption = '+ '#1085#1077#1072#1082#1090#1080#1074#1085#1080' '#1048#1048#1054
        DataField = 'INCLUDE_INACTIVE'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
    object gbOptions: TGroupBox
      Left = 16
      Top = 72
      Width = 449
      Height = 41
      Caption = ' '#1054#1087#1094#1080#1080' '
      TabOrder = 1
      object chbExportForEdit: TAbmesDBCheckBox
        Left = 16
        Top = 16
        Width = 105
        Height = 17
        Caption = #1047#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
        DataField = 'EXPORT_FOR_EDIT'
        DataSource = dsData
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIncludeFileName: TAbmesDBCheckBox
        Left = 136
        Top = 16
        Width = 145
        Height = 17
        Caption = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1080#1084#1077' '#1085#1072' '#1092#1072#1081#1083
        DataField = 'INCLUDE_FILE_NAME'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIncludeFileContents: TAbmesDBCheckBox
        Left = 296
        Top = 16
        Width = 145
        Height = 17
        Caption = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1089#1098#1076#1098#1088#1078#1072#1085#1080#1077
        DataField = 'INCLUDE_FILE_CONTENTS'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
    object gbExcludedDocItemTypes: TGroupBox
      Left = 16
      Top = 168
      Width = 633
      Height = 312
      Anchors = [akLeft, akBottom]
      Caption = ' '#1048#1048#1054' '#1042#1080#1076#1086#1074#1077' '
      TabOrder = 5
      DesignSize = (
        633
        312)
      inline frDocItemTypes: TDualGridFrame
        Left = 19
        Top = 15
        Width = 598
        Height = 281
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        inherited pnlIncluded: TPanel
          Width = 277
          Height = 281
          inherited pnlIncludedNavigator: TPanel
            Width = 277
            Alignment = taRightJustify
            Caption = #1042#1082#1083#1102#1095#1077#1085#1080
            inherited navIncluded: TDBColorNavigator
              Hints.Strings = ()
            end
          end
          inherited grdIncluded: TAbmesDBGrid
            Width = 277
            Height = 257
            OnDblClick = frDocItemTypesgrdIncludedDblClick
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'DOC_ITEM_TYPE_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 160
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
                Footers = <>
                Title.Caption = #1056#1072#1079#1096#1080#1088#1077#1085#1080#1103
                Width = 83
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 277
          Height = 281
          inherited pnlProductButtons: TPanel
            Top = 64
          end
        end
        inherited pnlExcluded: TPanel
          Left = 321
          Width = 277
          Height = 281
          inherited pnlExcludedNavigator: TPanel
            Width = 277
            Alignment = taLeftJustify
            Caption = #1048#1079#1082#1083#1102#1095#1077#1085#1080
            inherited navExcluded: TDBColorNavigator
              Left = 181
              Hints.Strings = ()
            end
          end
          inherited grdExcluded: TAbmesDBGrid
            Width = 277
            Height = 257
            OnDblClick = frDocItemTypesgrdExcludedDblClick
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'DOC_ITEM_TYPE_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 160
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
                Footers = <>
                Title.Caption = #1056#1072#1079#1096#1080#1088#1077#1085#1080#1103
                Width = 83
              end>
          end
        end
        inherited alActions: TActionList
          Left = 232
        end
        inherited dsData: TDataSource
          DataSet = cdsDocItemTypes
        end
        inherited dsExcluded: TDataSource
          DataSet = cdsExcludedDocItemTypes
          Left = 344
        end
      end
    end
    object gbRelativeFilePath: TGroupBox
      Left = 472
      Top = 72
      Width = 177
      Height = 41
      Caption = ' '#1060#1072#1081#1083#1086#1074' '#1087#1098#1090' '
      TabOrder = 2
      DesignSize = (
        177
        41)
      object rgRelativeFilePath: TJvDBRadioPanel
        Left = 0
        Top = 15
        Width = 177
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Columns = 2
        DataField = 'RELATIVE_FILE_PATH'
        DataSource = dsData
        Items.Strings = (
          #1040#1073#1089#1086#1083#1102#1090#1077#1085
          #1056#1077#1083#1072#1090#1080#1074#1077#1085)
        TabOrder = 0
        Values.Strings = (
          'False'
          'True')
      end
    end
  end
  object pnlExportDocsCheckBox: TPanel [5]
    Left = 32
    Top = 64
    Width = 108
    Height = 17
    BevelOuter = bvNone
    TabOrder = 1
    object chbExportDocs: TAbmesDBCheckBox
      Left = 3
      Top = -1
      Width = 103
      Height = 17
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1085#1072' '#1048#1048#1054
      DataField = 'EXPORT_DOCS'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
  end
  inherited alActions: TActionList
    Left = 328
    inherited actForm: TAction
      Caption = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
    end
    object actDumpDirAsXLSFile: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1103#1090#1072' '#1085#1072' xls '#1092#1072#1081#1083#1072
      ImageIndex = 203
      OnExecute = actDumpDirAsXLSFileExecute
      OnUpdate = actDumpDirAsXLSFileUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 248
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 208
    object cdsDataFILE_NAME: TAbmesWideStringField
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object cdsDataEXPORT_DOCS: TAbmesFloatField
      FieldName = 'EXPORT_DOCS'
      FieldValueType = fvtBoolean
    end
    object cdsDataDNC_ONLY: TAbmesFloatField
      FieldName = 'DNC_ONLY'
      FieldValueType = fvtBoolean
    end
    object cdsDataINTERNAL_DOCS_DUMP_DIR: TAbmesWideStringField
      FieldName = 'INTERNAL_DOCS_DUMP_DIR'
      Size = 250
    end
    object cdsDataDOC_ITEM_IS_DEVELOPED: TAbmesFloatField
      FieldName = 'DOC_ITEM_IS_DEVELOPED'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_ITEM_IS_AUTHORIZED: TAbmesFloatField
      FieldName = 'DOC_ITEM_IS_AUTHORIZED'
      FieldValueType = fvtBoolean
    end
    object cdsDataDOC_ITEM_IS_APPROVED: TAbmesFloatField
      FieldName = 'DOC_ITEM_IS_APPROVED'
      FieldValueType = fvtBoolean
    end
    object cdsDataEXPORT_FOR_EDIT: TAbmesFloatField
      FieldName = 'EXPORT_FOR_EDIT'
      FieldValueType = fvtBoolean
    end
    object cdsDataINCLUDE_FILE_NAME: TAbmesFloatField
      FieldName = 'INCLUDE_FILE_NAME'
      FieldValueType = fvtBoolean
    end
    object cdsDataINCLUDE_INACTIVE: TAbmesFloatField
      FieldName = 'INCLUDE_INACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDataRELATIVE_FILE_PATH: TAbmesFloatField
      FieldName = 'RELATIVE_FILE_PATH'
      FieldValueType = fvtBoolean
    end
    object cdsDataINCLUDE_FILE_CONTENTS: TAbmesFloatField
      FieldName = 'INCLUDE_FILE_CONTENTS'
      FieldValueType = fvtBoolean
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnMessage = ApplicationEventsMessage
    Left = 424
  end
  object cdsExcludedDocItemTypes: TAbmesClientDataSet
    Aggregates = <>
    IndexFieldNames = 'DOC_ITEM_TYPE_CODE'
    Params = <>
    Left = 504
    Top = 272
    object cdsExcludedDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsExcludedDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object cdsExcludedDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      Size = 250
    end
  end
  object cdsDocItemTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    IndexFieldNames = 'DOC_ITEM_TYPE_CODE'
    Params = <>
    ProviderName = 'prvDocItemTypes'
    Left = 152
    Top = 272
    object cdsDocItemTypesDOC_ITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsDocItemTypesDOC_ITEM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_NAME'
      Size = 50
    end
    object cdsDocItemTypesDOC_ITEM_TYPE_FILE_EXTENSIONS: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TYPE_FILE_EXTENSIONS'
      Size = 250
    end
  end
end
