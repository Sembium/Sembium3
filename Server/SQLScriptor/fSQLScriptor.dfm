object fmSQLScriptor: TfmSQLScriptor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'SQL Scriptor'
  ClientHeight = 469
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object lblScriptFile: TLabel
      Left = 8
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Script File'
      FocusControl = edtScriptFile
    end
    object lblScriptVersion: TLabel
      Left = 328
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Script Version'
      FocusControl = edtScriptVersion
    end
    object lblLogFolder: TLabel
      Left = 8
      Top = 64
      Width = 50
      Height = 13
      Caption = 'Log Folder'
      FocusControl = edtLogFolder
    end
    object edtScriptFile: TJvComboEdit
      Left = 8
      Top = 32
      Width = 313
      Height = 21
      AlwaysEnableButton = True
      ReadOnly = True
      TabOrder = 0
      Text = ''
      OnButtonClick = edtScriptFileButtonClick
    end
    object edtScriptVersion: TEdit
      Left = 328
      Top = 32
      Width = 73
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object edtLogFolder: TJvComboEdit
      Left = 8
      Top = 80
      Width = 313
      Height = 21
      AlwaysEnableButton = True
      ReadOnly = True
      TabOrder = 2
      Text = ''
      OnButtonClick = edtLogFolderButtonClick
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 105
    Width = 409
    Height = 331
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    ShowCaption = False
    TabOrder = 1
    object grdDatabases: TAbmesDBGrid
      Left = 8
      Top = 8
      Width = 393
      Height = 315
      Align = alClient
      AutoFitColWidths = True
      DataSource = dsDatabases
      DynProps = <>
      FooterParams.Color = clWindow
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleParams.MultiTitle = True
      OnCellClick = grdDatabasesCellClick
      OnDblClick = grdDatabasesDblClick
      OnGetCellParams = grdDatabasesGetCellParams
      OnKeyPress = grdDatabasesKeyPress
      Columns = <
        item
          CellButtons = <>
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'IS_CHOSEN'
          Footers = <>
          ReadOnly = True
          Title.Caption = ' '
          Width = 22
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DB_CONNECTION_NAME'
          Footers = <>
          ReadOnly = True
          Width = 122
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'IS_LOCKED'
          Footers = <>
          ReadOnly = True
          Width = 39
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'VERSION_NO'
          Footers = <>
          ReadOnly = True
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_FULL_STATUS'
          Footers = <>
          ReadOnly = True
          Width = 131
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 436
    Width = 409
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 2
    object lblUpdateProcessStatus: TLabel
      Left = 184
      Top = 8
      Width = 135
      Height = 13
      Caption = 'lblUpdateProcessStatus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnUpdateDatabases: TBitBtn
      Left = 8
      Top = 0
      Width = 161
      Height = 25
      Caption = 'Update Selected Databases...'
      TabOrder = 0
      OnClick = btnUpdateDatabasesClick
    end
    object btnClose: TBitBtn
      Left = 328
      Top = 0
      Width = 75
      Height = 25
      Hint = 'Hold SHIFT to close SQL Scriptor and run Configuration'
      Caption = 'Close'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object cdsDatabases: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'ORDER_NO;DB_CONNECTION_NAME'
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsDatabasesCalcFields
    OnNewRecord = cdsDatabasesNewRecord
    Left = 32
    Top = 176
    object cdsDatabasesDB_CONNECTION_NAME: TAbmesWideStringField
      DisplayLabel = 'Connection Name'
      FieldName = 'DB_CONNECTION_NAME'
      Required = True
      Size = 250
    end
    object cdsDatabasesIS_LOCKED: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = 'Locked'
      FieldName = 'IS_LOCKED'
      DisplayBoolValues = '*;'
      FieldValueType = fvtBoolean
    end
    object cdsDatabasesVERSION_NO: TAbmesFloatField
      DisplayLabel = 'Version'
      FieldName = 'VERSION_NO'
      FieldValueType = fvtInteger
    end
    object cdsDatabasesCONNECT_ERROR_TEXT: TAbmesWideStringField
      FieldName = 'CONNECT_ERROR_TEXT'
      Size = 250
    end
    object cdsDatabases_VERSION_STATUS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_VERSION_STATUS'
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsDatabasesIS_CHOSEN: TAbmesFloatField
      FieldName = 'IS_CHOSEN'
      FieldValueType = fvtBoolean
    end
    object cdsDatabasesUPDATE_STATUS: TAbmesFloatField
      FieldName = 'UPDATE_STATUS'
      FieldValueType = fvtInteger
    end
    object cdsDatabases_FULL_STATUS: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldKind = fkCalculated
      FieldName = '_FULL_STATUS'
      OnGetText = cdsDatabases_FULL_STATUSGetText
      FieldValueType = fvtInteger
      Calculated = True
    end
    object cdsDatabasesORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
  end
  object dsDatabases: TDataSource
    DataSet = cdsDatabases
    Left = 32
    Top = 224
  end
  object dlgScriptFile: TOpenDialog
    Filter = 
      'SQLScript files (*.sql; *.zip)|*.sql; *.zip|PL/SQL Package files' +
      ' (*.pck)|*.pck'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist]
    Title = 'Script File'
    Left = 128
    Top = 8
  end
  object dlgLogFolder: TJvBrowseForFolderDialog
    Options = [odOnlyDirectory, odStatusAvailable, odEditBox, odNewDialogStyle]
    Title = 'Log Folder'
    Left = 184
    Top = 56
  end
end
