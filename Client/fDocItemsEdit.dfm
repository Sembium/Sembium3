inherited fmDocItemsEdit: TfmDocItemsEdit
  Left = 316
  Top = 187
  Caption = #1048#1048#1054' - %s'
  ClientHeight = 650
  ClientWidth = 481
  PixelsPerInch = 96
  TextHeight = 13
  object pnlStorageInfo: TPanel [0]
    Left = 8
    Top = 240
    Width = 465
    Height = 265
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object pnlExternalFileStorage: TPanel
      Left = 8
      Top = 20
      Width = 449
      Height = 237
      BevelOuter = bvNone
      TabOrder = 0
      object lblFileName: TLabel
        Left = 8
        Top = 0
        Width = 66
        Height = 13
        Caption = #1048#1084#1077' '#1085#1072' '#1092#1072#1081#1083
        FocusControl = edtFileName
      end
      object lblRelativePath: TLabel
        Left = 8
        Top = 42
        Width = 75
        Height = 13
        Caption = #1056#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090
        FocusControl = edtRelativePath
      end
      object lblChangeDate: TLabel
        Left = 8
        Top = 85
        Width = 63
        Height = 13
        Caption = #1056#1077#1076#1072#1082#1094#1080#1103' '#1086#1090
      end
      object edtFileName: TJvDBComboEdit
        Left = 8
        Top = 16
        Width = 433
        Height = 21
        BeepOnError = False
        DataField = 'FILE_NAME'
        DataSource = dsData
        ImageIndex = 120
        Images = dmMain.ilActions
        ButtonWidth = 22
        TabOrder = 0
        OnButtonClick = edtFileNameButtonClick
        DisabledColor = clBtnFace
      end
      object edtRelativePath: TJvDBComboEdit
        Left = 56
        Top = 58
        Width = 385
        Height = 21
        BeepOnError = False
        DataField = 'RELATIVE_PATH'
        DataSource = dsData
        ImageIndex = 120
        Images = dmMain.ilActions
        ButtonWidth = 22
        TabOrder = 2
        OnButtonClick = edtRelativePathButtonClick
        DisabledColor = clBtnFace
      end
      object edtDocsLocalRootPath: TEdit
        Left = 8
        Top = 58
        Width = 43
        Height = 21
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
        Text = 'edtMirroredDocsLocalRootPath'
      end
      object btnExternalFileOpen: TBitBtn
        Left = 8
        Top = 136
        Width = 65
        Height = 22
        Action = actExternalFileOpen
        Caption = #1055#1088#1077#1075#1083#1077#1076'...'
        TabOrder = 4
      end
      object edtExternalFileChangeDate: TDBEdit
        Left = 8
        Top = 101
        Width = 97
        Height = 21
        Color = clBtnFace
        DataField = 'EXT_FILE_CHANGE_DATE'
        DataSource = dsExtFileChangeDate
        ReadOnly = True
        TabOrder = 3
      end
      object btnExternalFileDelete: TBitBtn
        Left = 176
        Top = 136
        Width = 73
        Height = 22
        Action = actExternalFileDelete
        Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
        TabOrder = 6
      end
      object btnExternalFileExport: TBitBtn
        Left = 376
        Top = 136
        Width = 65
        Height = 22
        Action = actExternalFileExport
        Caption = #1045#1082#1089#1087#1086#1088#1090'...'
        TabOrder = 9
      end
      object btnExternalFileImport: TBitBtn
        Left = 304
        Top = 136
        Width = 65
        Height = 22
        Action = actExternalFileImport
        Caption = #1048#1084#1087#1086#1088#1090'...'
        TabOrder = 8
      end
      object btnExternalFileNewFromTemplate: TBitBtn
        Left = 256
        Top = 136
        Width = 41
        Height = 22
        Action = actExternalFileNewFromTemplate
        Caption = #1053#1086#1074'...'
        TabOrder = 7
      end
      object btnExternalFileEdit: TBitBtn
        Left = 80
        Top = 136
        Width = 89
        Height = 22
        Action = actExternalFileEdit
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
        TabOrder = 5
      end
    end
    object pnlExternalDocStorage: TPanel
      Left = 8
      Top = 20
      Width = 449
      Height = 237
      BevelOuter = bvNone
      TabOrder = 2
      object lblExternalStorageDocId: TLabel
        Left = 8
        Top = 0
        Width = 123
        Height = 13
        Caption = #1042#1098#1085#1096#1077#1085' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
      end
      object btnExternalDocStorageView: TBitBtn
        Left = 8
        Top = 48
        Width = 65
        Height = 22
        Action = actExternalDocStorageView
        Caption = #1055#1088#1077#1075#1083#1077#1076'...'
        TabOrder = 2
      end
      object btnExternalDocStorageEdit: TBitBtn
        Left = 80
        Top = 48
        Width = 89
        Height = 22
        Action = actExternalDocStorageEdit
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
        TabOrder = 3
      end
      object edtExternalStorageDocId: TDBEdit
        Left = 8
        Top = 16
        Width = 433
        Height = 21
        DataField = 'FILE_NAME'
        DataSource = dsData
        TabOrder = 0
      end
      object pnlExternalStorageDocIdButtons: TPanel
        Left = 404
        Top = 17
        Width = 36
        Height = 19
        BevelOuter = bvNone
        TabOrder = 1
        object btnClearExternalStorageDocId: TSpeedButton
          Left = 18
          Top = 0
          Width = 18
          Height = 19
          Action = actClearExternalStorageDocId
          Align = alRight
        end
        object btnExternalDocStorageSelect: TSpeedButton
          Left = 0
          Top = 0
          Width = 18
          Height = 19
          Action = actExternalDocStorageSelect
          Align = alRight
        end
      end
    end
    object pnlInternalFileStorage: TPanel
      Left = 8
      Top = 20
      Width = 449
      Height = 237
      BevelOuter = bvNone
      TabOrder = 1
      object lblFileExtension: TLabel
        Left = 8
        Top = 0
        Width = 48
        Height = 13
        Caption = #1042#1080#1076' '#1092#1072#1081#1083
        FocusControl = edtFileExtension
      end
      object lblIsStoredFileDataChanged: TLabel
        Left = 8
        Top = 40
        Width = 55
        Height = 13
        Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077
        FocusControl = edtIsStoredFileChanged
      end
      object btnImportFromFile: TSpeedButton
        Left = 312
        Top = 87
        Width = 65
        Height = 22
        Action = actImportFromFile
      end
      object btnExportToFile: TSpeedButton
        Left = 384
        Top = 87
        Width = 57
        Height = 22
        Action = actExportToFile
      end
      object btnEditStoredFileData: TSpeedButton
        Left = 80
        Top = 87
        Width = 89
        Height = 22
        Action = actEditStoredFileData
      end
      object lblPattern: TLabel
        Left = 264
        Top = 0
        Width = 39
        Height = 13
        Caption = #1064#1072#1073#1083#1086#1085
      end
      object btnImportFromTemplate: TSpeedButton
        Left = 264
        Top = 87
        Width = 41
        Height = 22
        Action = actImportFromTemplate
      end
      object btnClearStoredFile: TSpeedButton
        Left = 176
        Top = 87
        Width = 81
        Height = 22
        Action = actClearStoredFile
      end
      object lblStoredFileChangeEmployee: TLabel
        Left = 80
        Top = 40
        Width = 103
        Height = 13
        Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1087#1088#1086#1084#1077#1085#1080#1083
        FocusControl = edtIsStoredFileChanged
      end
      object btnOpenStoredFileReadOnly: TSpeedButton
        Left = 8
        Top = 87
        Width = 65
        Height = 22
        Action = actOpenStoredFileReadOnly
      end
      object pnlMirroredDocItemPaths: TPanel
        Left = 8
        Top = 126
        Width = 433
        Height = 107
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 6
        object lblMirroredFileName: TLabel
          Left = 7
          Top = 14
          Width = 122
          Height = 13
          Caption = #1048#1084#1077' '#1085#1072' '#1086#1075#1083#1077#1076#1072#1083#1077#1085' '#1092#1072#1081#1083
          FocusControl = edtMirroredFileName
        end
        object lblMirroredRelativePath: TLabel
          Left = 7
          Top = 57
          Width = 132
          Height = 13
          Caption = #1054#1075#1083#1077#1076#1072#1083#1077#1085' '#1088#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090
          FocusControl = edtMirroredRelativePath
        end
        object edtMirroredFileName: TJvDBComboEdit
          Left = 7
          Top = 30
          Width = 418
          Height = 21
          BeepOnError = False
          DataField = 'MIRRORED_FILE_NAME'
          DataSource = dsData
          ImageIndex = 120
          Images = dmMain.ilActions
          ButtonWidth = 22
          TabOrder = 0
          OnButtonClick = edtMirroredFileNameButtonClick
          DisabledColor = clBtnFace
        end
        object edtMirroredRelativePath: TJvDBComboEdit
          Left = 80
          Top = 73
          Width = 345
          Height = 21
          BeepOnError = False
          DataField = 'MIRRORED_RELATIVE_PATH'
          DataSource = dsData
          ImageIndex = 120
          Images = dmMain.ilActions
          ButtonWidth = 22
          TabOrder = 2
          OnButtonClick = edtMirroredRelativePathButtonClick
          DisabledColor = clBtnFace
        end
        object edtDocItemMirrorsRootPath: TEdit
          Left = 8
          Top = 73
          Width = 67
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 1
          Text = 'edtDocItemMirrorsRootPath'
        end
        object pnlIsMirrored: TPanel
          Left = 6
          Top = -10
          Width = 115
          Height = 21
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object edtFileExtension: TDBEdit
        Left = 8
        Top = 16
        Width = 249
        Height = 21
        Color = clBtnFace
        DataField = '_FILE_EXTENSION_EXTENDED_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object edtIsStoredFileChanged: TDBEdit
        Left = 8
        Top = 56
        Width = 65
        Height = 21
        Color = clBtnFace
        DataField = 'IS_STORED_FILE_CHANGED'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object cbPattern: TJvDBLookupCombo
        Left = 264
        Top = 16
        Width = 177
        Height = 21
        DataField = 'DOC_ITEM_PATTERN_CODE'
        DataSource = dsData
        LookupField = 'DOC_ITEM_PATTERN_CODE'
        LookupDisplay = 'DOC_ITEM_PATTERN_NAME'
        LookupSource = dsDocItemPatterns
        TabOrder = 1
      end
      object chkIsMirrored: TAbmesDBCheckBox
        Left = 18
        Top = 119
        Width = 110
        Height = 17
        Caption = #1054#1075#1083#1077#1076#1072#1083#1085#1086' '#1082#1086#1087#1080#1077
        DataField = 'IS_MIRRORED'
        DataSource = dsData
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      inline frStoredFileChangeEmployee: TfrEmployeeFieldEditFrameBald
        Left = 80
        Top = 56
        Width = 249
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 3
        TabStop = True
        DesignSize = (
          249
          22)
        inherited gbEmployee: TGroupBox
          Width = 268
          inherited pnlEmployeeName: TPanel
            Width = 193
            inherited pnlRightButtons: TPanel
              Left = 157
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 157
              DesignSize = (
                157
                32)
              inherited edtEmployeeName: TDBEdit
                Width = 111
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 156
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 258
          end
        end
        inherited cdsEmployees: TAbmesClientDataSet
          Left = 168
          Top = 0
        end
      end
      inline frStoredFileChangeDate: TfrDateFieldEditFrame
        Left = 336
        Top = 56
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 4
        TabStop = True
      end
    end
    object pnlContentStorage: TPanel
      Left = 8
      Top = 20
      Width = 449
      Height = 237
      BevelOuter = bvNone
      TabOrder = 3
      object lblContentStorageFileExtention: TLabel
        Left = 8
        Top = 0
        Width = 48
        Height = 13
        Caption = #1042#1080#1076' '#1092#1072#1081#1083
        FocusControl = edtContentStorageFileExtention
      end
      object btnContentStorageFileImport: TSpeedButton
        Left = 312
        Top = 103
        Width = 65
        Height = 22
        Action = actContentStorageFileImport
      end
      object btnContentStorageFileExport: TSpeedButton
        Left = 384
        Top = 103
        Width = 57
        Height = 22
        Action = actContentStorageFileExport
      end
      object btnContentStorageFileOpen: TSpeedButton
        Left = 80
        Top = 103
        Width = 89
        Height = 22
        Action = actContentStorageFileOpen
      end
      object lblContentStoragePattern: TLabel
        Left = 264
        Top = 0
        Width = 39
        Height = 13
        Caption = #1064#1072#1073#1083#1086#1085
        FocusControl = cbContentStoragePattern
      end
      object btnContentStorageFileImportFromTemplate: TSpeedButton
        Left = 264
        Top = 103
        Width = 41
        Height = 22
        Action = actContentStorageFileImportFromTemplate
      end
      object btnContentStorageFileDelete: TSpeedButton
        Left = 176
        Top = 103
        Width = 81
        Height = 22
        Action = actContentStorageFileDelete
      end
      object lblContentStorageChangeEmployee: TLabel
        Left = 8
        Top = 48
        Width = 103
        Height = 13
        Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1087#1088#1086#1084#1077#1085#1080#1083
      end
      object btnContentStorageFileOpenReadOnly: TSpeedButton
        Left = 8
        Top = 103
        Width = 65
        Height = 22
        Action = actContentStorageFileOpenReadOnly
      end
      object edtContentStorageFileExtention: TDBEdit
        Left = 8
        Top = 16
        Width = 249
        Height = 21
        Color = clBtnFace
        DataField = '_FILE_EXTENSION_EXTENDED_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
      object cbContentStoragePattern: TJvDBLookupCombo
        Left = 264
        Top = 16
        Width = 177
        Height = 21
        DataField = 'DOC_ITEM_PATTERN_CODE'
        DataSource = dsData
        LookupField = 'DOC_ITEM_PATTERN_CODE'
        LookupDisplay = 'DOC_ITEM_PATTERN_NAME'
        LookupSource = dsDocItemPatterns
        TabOrder = 1
      end
      inline frContentStorageFileChangeEmployee: TfrEmployeeFieldEditFrameBald
        Left = 8
        Top = 64
        Width = 321
        Height = 22
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        TabOrder = 2
        TabStop = True
        DesignSize = (
          321
          22)
        inherited gbEmployee: TGroupBox
          Width = 340
          inherited pnlEmployeeName: TPanel
            Width = 265
            inherited pnlRightButtons: TPanel
              Left = 229
            end
            inherited pnlEmpoyeeNameInner: TPanel
              Width = 229
              DesignSize = (
                229
                32)
              inherited edtEmployeeName: TDBEdit
                Width = 183
              end
              inherited cbEmployee: TJvDBLookupCombo
                Width = 228
              end
            end
          end
          inherited pnlPaddingRight: TPanel
            Left = 330
          end
        end
        inherited cdsEmployees: TAbmesClientDataSet
          Left = 168
          Top = 0
        end
      end
      inline frContentStorageFileChangeDate: TfrDateFieldEditFrame
        Left = 336
        Top = 64
        Width = 105
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 105
        Constraints.MinHeight = 21
        Constraints.MinWidth = 105
        TabOrder = 3
        TabStop = True
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 615
    Width = 481
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 213
    end
    inherited pnlClose: TPanel
      Left = 124
    end
    inherited pnlApply: TPanel
      Left = 392
      Visible = False
    end
  end
  object pnlStorageType: TPanel [2]
    Left = 19
    Top = 232
    Width = 254
    Height = 21
    BevelOuter = bvNone
    TabOrder = 1
    object lblDocItemStorageType: TLabel
      Left = 4
      Top = 3
      Width = 61
      Height = 13
      Caption = #1057#1098#1093#1088#1072#1085#1077#1085#1080#1077
    end
    object cbDocItemStorageType: TJvDBLookupCombo
      Left = 72
      Top = 0
      Width = 177
      Height = 21
      DataField = '_DOC_ITEM_STORAGE_TYPE_NAME'
      DataSource = dsData
      TabOrder = 0
      OnChange = cbDocItemStorageTypeChange
    end
  end
  object grpDocItem: TGroupBox [3]
    Left = 8
    Top = 8
    Width = 465
    Height = 209
    TabOrder = 0
    object lblDocItemType: TLabel
      Left = 16
      Top = 64
      Width = 19
      Height = 13
      Caption = #1042#1080#1076
      FocusControl = cbDocItemType
    end
    object lblDocItemName: TLabel
      Left = 16
      Top = 112
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtDocItemName
    end
    object lblNotes: TLabel
      Left = 16
      Top = 160
      Width = 45
      Height = 13
      Caption = #1041#1077#1083#1077#1078#1082#1080
      FocusControl = edtNotes
    end
    object lblDocItemNo: TLabel
      Left = 16
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
      FocusControl = edtDocItemNo
    end
    object cbDocItemType: TJvDBLookupCombo
      Left = 16
      Top = 80
      Width = 433
      Height = 21
      DeleteKeyClear = False
      DataField = '_DOC_ITEM_TYPE_EXTENDED_NAME'
      DataSource = dsData
      TabOrder = 3
    end
    object edtDocItemName: TDBEdit
      Left = 16
      Top = 128
      Width = 433
      Height = 21
      DataField = 'DOC_ITEM_NAME'
      DataSource = dsData
      TabOrder = 4
    end
    object edtNotes: TDBEdit
      Left = 16
      Top = 176
      Width = 433
      Height = 21
      DataField = 'NOTES'
      DataSource = dsData
      TabOrder = 5
    end
    object edtDocItemNo: TDBEdit
      Left = 16
      Top = 32
      Width = 65
      Height = 21
      DataField = 'DOC_ITEM_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object chkIsInactive: TAbmesDBCheckBox
      Left = 144
      Top = 32
      Width = 97
      Height = 17
      Caption = #1055#1072#1089#1080#1074#1077#1085
      DataField = 'IS_INACTIVE'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object btnDocItemAccess: TButton
      Left = 339
      Top = 28
      Width = 110
      Height = 25
      Action = actDocItemSysRoles
      TabOrder = 2
    end
    object pnlIsDocItemSysRolesDefault: TPanel
      Left = 322
      Top = 30
      Width = 14
      Height = 22
      BorderStyle = bsSingle
      Color = clSilver
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
  end
  object grpPhase: TGroupBox [4]
    Left = 8
    Top = 510
    Width = 465
    Height = 97
    Caption = ' '#1060#1072#1079#1072' '
    TabOrder = 4
    TabStop = True
    object imgDevelopTime: TImage
      Left = 434
      Top = 18
      Width = 21
      Height = 21
      ParentShowHint = False
      Picture.Data = {
        07544269746D6170F6060000424DF606000000000000B6000000280000001400
        0000140000000100200000000000400600000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000808080008080800080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF0000000000FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000}
      ShowHint = True
      OnMouseEnter = imgTimeMouseEnter
      OnMouseLeave = imgTimeMouseLeave
    end
    object imgAuthorizeTime: TImage
      Left = 434
      Top = 41
      Width = 21
      Height = 21
      ParentShowHint = False
      Picture.Data = {
        07544269746D6170F6060000424DF606000000000000B6000000280000001400
        0000140000000100200000000000400600000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000808080008080800080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF0000000000FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000}
      ShowHint = True
      OnMouseEnter = imgTimeMouseEnter
      OnMouseLeave = imgTimeMouseLeave
    end
    object imgApproveTime: TImage
      Left = 434
      Top = 64
      Width = 21
      Height = 21
      ParentShowHint = False
      Picture.Data = {
        07544269746D6170F6060000424DF606000000000000B6000000280000001400
        0000140000000100200000000000400600000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
        8000808080008080800080808000808080008080800080808000808080008080
        800080808000808080008080800080808000808080008080800080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF0000000000FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000000080808000C0C0
        C000C0C0C000000000000000FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FF000000000080808000C0C0C000C0C0C000000000000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
        FF000000FF000000FF000000FF000000FF000000FF000000000080808000C0C0
        C000C0C0C0000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
        C000}
      ShowHint = True
      OnMouseEnter = imgTimeMouseEnter
      OnMouseLeave = imgTimeMouseLeave
    end
    inline frDevelopDate: TfrDateFieldEditFrame
      Left = 328
      Top = 18
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 3
      TabStop = True
    end
    inline frAuthorizeDate: TfrDateFieldEditFrame
      Left = 328
      Top = 41
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 4
      TabStop = True
    end
    inline frApproveDate: TfrDateFieldEditFrame
      Left = 328
      Top = 64
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 5
      TabStop = True
    end
    inline frDevelopEmployee: TfrEmployeeFieldEditFrameBald
      Left = 118
      Top = 18
      Width = 203
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      DesignSize = (
        203
        22)
      inherited gbEmployee: TGroupBox
        Width = 222
        inherited pnlEmployeeName: TPanel
          Width = 147
          inherited pnlRightButtons: TPanel
            Left = 111
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 111
            DesignSize = (
              111
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 65
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 110
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 212
        end
      end
    end
    inline frAuthorizeEmployee: TfrEmployeeFieldEditFrameBald
      Left = 118
      Top = 41
      Width = 203
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      DesignSize = (
        203
        22)
      inherited gbEmployee: TGroupBox
        Width = 222
        inherited pnlEmployeeName: TPanel
          Width = 147
          inherited pnlRightButtons: TPanel
            Left = 111
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 111
            DesignSize = (
              111
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 65
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 110
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 212
        end
      end
    end
    inline frApproveEmployee: TfrEmployeeFieldEditFrameBald
      Left = 118
      Top = 64
      Width = 203
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      TabStop = True
      DesignSize = (
        203
        22)
      inherited gbEmployee: TGroupBox
        Width = 222
        inherited pnlEmployeeName: TPanel
          Width = 147
          inherited pnlRightButtons: TPanel
            Left = 111
          end
          inherited pnlEmpoyeeNameInner: TPanel
            Width = 111
            DesignSize = (
              111
              32)
            inherited edtEmployeeName: TDBEdit
              Width = 65
            end
            inherited cbEmployee: TJvDBLookupCombo
              Width = 110
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 212
        end
      end
    end
    object pnlDevelop: TPanel
      Left = 10
      Top = 18
      Width = 103
      Height = 74
      BevelOuter = bvNone
      TabOrder = 6
      object btnApprove: TSpeedButton
        Left = 0
        Top = 44
        Width = 103
        Height = 22
        Action = actApprove
        Align = alTop
        AllowAllUp = True
        GroupIndex = 3
        Flat = True
      end
      object btnAuthorize: TSpeedButton
        Left = 0
        Top = 22
        Width = 103
        Height = 22
        Action = actAuthorize
        Align = alTop
        AllowAllUp = True
        GroupIndex = 2
        Flat = True
      end
      object btnDevelop: TSpeedButton
        Left = 0
        Top = 0
        Width = 103
        Height = 22
        Action = actDevelop
        Align = alTop
        AllowAllUp = True
        GroupIndex = 1
        Flat = True
      end
    end
  end
  object pnlConvertExternalDocItemToInternal: TPanel [5]
    Left = 272
    Top = 232
    Width = 73
    Height = 21
    BevelOuter = bvNone
    TabOrder = 2
    object btnConvertExternalDocItemToInternal: TSpeedButton
      Left = 0
      Top = 0
      Width = 65
      Height = 21
      Action = actConvertExternalDocItemToInternal
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1048#1054' - %s'
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
    object actImportFromTemplate: TAction
      Caption = #1053#1086#1074'...'
      OnExecute = actImportFromTemplateExecute
      OnUpdate = actImportFromTemplateUpdate
    end
    object actClearStoredFile: TAction
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077'...'
      OnExecute = actClearStoredFileExecute
      OnUpdate = actClearStoredFileUpdate
    end
    object actDevelop: TAction
      Caption = #1056#1072#1079#1088#1072#1073#1086#1090#1074#1072#1085#1077
      GroupIndex = 1
      ImageIndex = 110
      OnExecute = actDevelopExecute
      OnUpdate = actDevelopUpdate
    end
    object actAuthorize: TAction
      Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1085#1077
      GroupIndex = 2
      ImageIndex = 55
      OnExecute = actAuthorizeExecute
      OnUpdate = actAuthorizeUpdate
    end
    object actApprove: TAction
      Caption = #1059#1090#1074#1098#1088#1078#1076#1072#1074#1072#1085#1077
      GroupIndex = 3
      ImageIndex = 109
      OnExecute = actApproveExecute
      OnUpdate = actApproveUpdate
    end
    object actConvertExternalDocItemToInternal: TAction
      Caption = #1048#1084#1087#1086#1088#1090
      OnExecute = actConvertExternalDocItemToInternalExecute
      OnUpdate = actConvertExternalDocItemToInternalUpdate
    end
    object actDocItemSysRoles: TAction
      Caption = #1048#1085#1092#1054#1090#1075' '#1079#1072' '#1076#1086#1089#1090#1098#1087'...'
      OnExecute = actDocItemSysRolesExecute
    end
    object actExternalFileOpen: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Hint = #1055#1088#1077#1075#1083#1077#1076
      OnExecute = actExternalFileOpenExecute
      OnUpdate = actExternalFileOpenUpdate
    end
    object actExternalFileDelete: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      OnExecute = actExternalFileDeleteExecute
      OnUpdate = actExternalFileDeleteUpdate
    end
    object actExternalFileExport: TAction
      Caption = #1045#1082#1089#1087#1086#1088#1090'...'
      Hint = #1045#1082#1089#1087#1086#1088#1090
      OnExecute = actExternalFileExportExecute
      OnUpdate = actExternalFileExportUpdate
    end
    object actExternalFileImport: TAction
      Caption = #1048#1084#1087#1086#1088#1090'...'
      Hint = #1048#1084#1087#1086#1088#1090
      OnExecute = actExternalFileImportExecute
      OnUpdate = actExternalFileImportUpdate
    end
    object actExternalFileNewFromTemplate: TAction
      Caption = #1053#1086#1074'...'
      Hint = #1053#1086#1074
      OnExecute = actExternalFileNewFromTemplateExecute
      OnUpdate = actExternalFileNewFromTemplateUpdate
    end
    object actOpenStoredFileReadOnly: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Hint = #1055#1088#1077#1075#1083#1077#1076
      OnExecute = actOpenStoredFileReadOnlyExecute
      OnUpdate = actOpenStoredFileReadOnlyUpdate
    end
    object actExternalFileEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnExecute = actExternalFileEditExecute
      OnUpdate = actExternalFileEditUpdate
    end
    object actExternalDocStorageView: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      Hint = #1055#1088#1077#1075#1083#1077#1076
      OnExecute = actExternalDocStorageViewExecute
      OnUpdate = actExternalDocStorageViewUpdate
    end
    object actExternalDocStorageEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      OnExecute = actExternalDocStorageEditExecute
      OnUpdate = actExternalDocStorageEditUpdate
    end
    object actExternalDocStorageSelect: TAction
      Hint = #1048#1079#1073#1086#1088
      ImageIndex = 101
      OnExecute = actExternalDocStorageSelectExecute
      OnUpdate = actExternalDocStorageSelectUpdate
    end
    object actClearExternalStorageDocId: TAction
      Hint = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077
      ImageIndex = 26
      OnExecute = actClearExternalStorageDocIdExecute
      OnUpdate = actClearExternalStorageDocIdUpdate
    end
    object actContentStorageFileOpenReadOnly: TAction
      Caption = #1055#1088#1077#1075#1083#1077#1076'...'
      OnExecute = actContentStorageFileOpenReadOnlyExecute
      OnUpdate = actContentStorageFileOpenReadOnlyUpdate
    end
    object actContentStorageFileOpen: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      OnExecute = actContentStorageFileOpenExecute
      OnUpdate = actContentStorageFileOpenUpdate
    end
    object actContentStorageFileDelete: TAction
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077'...'
      OnExecute = actContentStorageFileDeleteExecute
      OnUpdate = actContentStorageFileDeleteUpdate
    end
    object actContentStorageFileImportFromTemplate: TAction
      Caption = #1053#1086#1074'...'
      OnExecute = actContentStorageFileImportFromTemplateExecute
      OnUpdate = actContentStorageFileImportFromTemplateUpdate
    end
    object actContentStorageFileImport: TAction
      Caption = #1048#1084#1087#1086#1088#1090'...'
      OnExecute = actContentStorageFileImportExecute
      OnUpdate = actContentStorageFileImportUpdate
    end
    object actContentStorageFileExport: TAction
      Caption = #1045#1082#1089#1087#1086#1088#1090'...'
      OnExecute = actContentStorageFileExportExecute
      OnUpdate = actContentStorageFileExportUpdate
    end
  end
  inherited dsData: TDataSource
    OnDataChange = dsDataDataChange
  end
  object OpenDialog: TOpenDialog
    Left = 304
    Top = 304
  end
  object cdsDocItemPatterns: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDoc
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDocItemPatterns'
    Left = 336
    Top = 304
    object cdsDocItemPatternsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object cdsDocItemPatternsDOC_ITEM_PATTERN_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_PATTERN_NAME'
      Size = 50
    end
  end
  object dsDocItemPatterns: TDataSource
    DataSet = cdsDocItemPatterns
    Left = 371
    Top = 304
  end
  object cdsEmployeeFrameAllEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeFrame'
    Left = 184
    Top = 512
  end
  object sdExternalFileExport: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 400
    Top = 408
  end
  object odExternalFileImport: TOpenDialog
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 328
    Top = 408
  end
  object cdsExtFileChangeDate: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 368
    object cdsExtFileChangeDateEXT_FILE_CHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'EXT_FILE_CHANGE_DATE'
    end
  end
  object dsExtFileChangeDate: TDataSource
    DataSet = cdsExtFileChangeDate
    Left = 64
    Top = 368
  end
  object drpImportFromFile: TJvDropTarget
    OnDragDrop = drpImportFromFileDragDrop
    OnDragAccept = drpImportFromFileDragAccept
    Left = 440
    Top = 224
  end
  object cdsExternalStorageDocId: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 248
    object cdsExternalStorageDocIdDOC_ID: TAbmesWideStringField
      FieldName = 'DOC_ID'
      Size = 250
    end
  end
end
