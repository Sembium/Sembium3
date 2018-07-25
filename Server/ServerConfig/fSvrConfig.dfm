object fmSvrConfig: TfmSvrConfig
  Left = 0
  Top = 0
  Action = actForm
  BorderStyle = bsDialog
  Caption = 'fmSvrConfig'
  ClientHeight = 648
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConnections: TPanel
    Left = 0
    Top = 245
    Width = 176
    Height = 363
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlConnectionsCaption: TPanel
      Left = 0
      Top = 0
      Width = 176
      Height = 21
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Connections'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object tlbConnections: TToolBar
        Left = 84
        Top = 0
        Width = 92
        Height = 21
        Align = alRight
        AutoSize = True
        Caption = 'tlbConnections'
        Images = ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object btnNewDBConnection: TToolButton
          Left = 0
          Top = 0
          Action = actNewDBConnection
        end
        object btnDeleteDBConnection: TToolButton
          Left = 23
          Top = 0
          Action = actDeleteDBConnection
        end
        object btnMoveUp: TToolButton
          Left = 46
          Top = 0
          Action = actMoveUp
        end
        object btnMoveDown: TToolButton
          Left = 69
          Top = 0
          Action = actMoveDown
        end
      end
    end
    object grdConnections: TAbmesDBGrid
      Left = 0
      Top = 21
      Width = 176
      Height = 342
      Align = alClient
      AllowedOperations = []
      AutoFitColWidths = True
      DataSource = dsData
      DynProps = <>
      FooterParams.Color = clWindow
      IndicatorOptions = []
      Options = [dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DB_CONNECTION_NAME'
          Footers = <>
          Width = 112
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'IS_LOCKED'
          Footers = <>
          Width = 20
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlParams: TPanel
    Left = 176
    Top = 245
    Width = 363
    Height = 363
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      363
      363)
    object pnlParamsCaption: TPanel
      Left = 0
      Top = 0
      Width = 363
      Height = 21
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblParams: TLabel
        Left = 8
        Top = 4
        Width = 41
        Height = 13
        Caption = 'Params'
      end
    end
    object gbConnectionLock: TGroupBox
      Left = 8
      Top = 192
      Width = 347
      Height = 113
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Connection locking '
      TabOrder = 2
      DesignSize = (
        347
        113)
      object lblLockMessage: TLabel
        Left = 8
        Top = 64
        Width = 69
        Height = 13
        Caption = 'Lock message'
        FocusControl = edtLockMessage
      end
      object lblAccessBanType: TLabel
        Left = 8
        Top = 16
        Width = 24
        Height = 13
        Caption = 'Type'
        FocusControl = edtLockMessage
      end
      object edtLockMessage: TDBEdit
        Left = 8
        Top = 80
        Width = 331
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'LOCK_MESSAGE'
        DataSource = dsData
        TabOrder = 1
      end
      object cbAccessBanType: TJvDBComboBox
        Left = 8
        Top = 32
        Width = 331
        Height = 21
        DataField = 'ACCESS_BAN_TYPE'
        DataSource = dsData
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        UpdateFieldImmediatelly = True
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object gbGeneralParams: TGroupBox
      Left = 8
      Top = 24
      Width = 347
      Height = 161
      Anchors = [akLeft, akTop, akRight]
      Caption = ' General '
      TabOrder = 1
      DesignSize = (
        347
        161)
      object lblDBConnectionName: TLabel
        Left = 8
        Top = 16
        Width = 83
        Height = 13
        Caption = 'Connection name'
        FocusControl = edtDBConnectionName
      end
      object lblDBConnectionType: TLabel
        Left = 8
        Top = 64
        Width = 77
        Height = 13
        Caption = 'Connection type'
        FocusControl = cbDBConnectionType
      end
      object lblDBService: TLabel
        Left = 298
        Top = 64
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Service'
        FocusControl = edtDBService
      end
      object lblDBPort: TLabel
        Left = 258
        Top = 64
        Width = 19
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Port'
        FocusControl = edtDBPort
      end
      object lblDBHost: TLabel
        Left = 96
        Top = 64
        Width = 22
        Height = 13
        Caption = 'Host'
        FocusControl = edtDBHost
      end
      object lblDBUser: TLabel
        Left = 8
        Top = 112
        Width = 22
        Height = 13
        Caption = 'User'
        FocusControl = edtDBUser
      end
      object lblDBPassword: TLabel
        Left = 96
        Top = 112
        Width = 46
        Height = 13
        Caption = 'Password'
        FocusControl = edtDBPassword
      end
      object edtDBConnectionName: TDBEdit
        Left = 8
        Top = 32
        Width = 243
        Height = 21
        DataField = 'DB_CONNECTION_NAME'
        DataSource = dsData
        TabOrder = 0
      end
      object cbDBConnectionType: TDBComboBox
        Left = 8
        Top = 80
        Width = 81
        Height = 21
        Style = csDropDownList
        DataField = 'DB_CONNECTION_TYPE'
        DataSource = dsData
        TabOrder = 3
        OnClick = cbDBConnectionTypeClick
      end
      object edtDBService: TDBEdit
        Left = 298
        Top = 80
        Width = 41
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'DB_SERVICE'
        DataSource = dsData
        TabOrder = 6
      end
      object edtDBPort: TDBEdit
        Left = 258
        Top = 80
        Width = 33
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'DB_PORT'
        DataSource = dsData
        TabOrder = 5
      end
      object edtDBHost: TDBEdit
        Left = 96
        Top = 80
        Width = 155
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DB_HOST'
        DataSource = dsData
        TabOrder = 4
      end
      object edtDBUser: TDBEdit
        Left = 8
        Top = 128
        Width = 81
        Height = 21
        DataField = 'DB_USER'
        DataSource = dsData
        TabOrder = 7
      end
      object edtDBPassword: TDBEdit
        Left = 96
        Top = 128
        Width = 155
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DB_PASSWORD'
        DataSource = dsData
        TabOrder = 8
      end
      object btnTestConnection: TButton
        Left = 258
        Top = 126
        Width = 81
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Test'
        TabOrder = 9
        OnClick = btnTestConnectionClick
      end
      object chbIsReadOnly: TAbmesDBCheckBox
        Left = 258
        Top = 16
        Width = 69
        Height = 17
        Caption = 'Read only'
        DataField = 'IS_READ_ONLY'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsTestDB: TAbmesDBCheckBox
        Left = 258
        Top = 37
        Width = 59
        Height = 17
        Caption = 'Test DB'
        DataField = 'IS_TEST_DB'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
    object gbContentStorageContainerName: TGroupBox
      Left = 202
      Top = 312
      Width = 153
      Height = 51
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Content Storage Container '
      TabOrder = 3
      DesignSize = (
        153
        51)
      object edtContentStorageContainerName: TDBEdit
        Left = 8
        Top = 18
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'CONTENT_STORAGE_CONTAINER_NAME'
        DataSource = dsData
        TabOrder = 0
      end
    end
  end
  object pnlBottomButtons: TPanel
    Left = 0
    Top = 608
    Width = 539
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object pnlOKCancel: TPanel
      Left = 272
      Top = 0
      Width = 267
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object btnOK: TBitBtn
        Left = 90
        Top = 8
        Width = 81
        Height = 25
        Caption = 'OK'
        Default = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        ModalResult = 1
        NumGlyphs = 2
        Spacing = -1
        TabOrder = 1
        OnClick = btnOKClick
      end
      object btnCancel: TBitBtn
        Left = 179
        Top = 8
        Width = 81
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        ModalResult = 2
        NumGlyphs = 2
        Spacing = -1
        TabOrder = 2
        OnClick = btnCancelClick
      end
      object btnApply: TBitBtn
        Left = 1
        Top = 8
        Width = 81
        Height = 25
        Caption = #1047#1072#1087#1080#1089
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000848484000000000084848400848484000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000C6C6C60000000000C6C6C600C6C6C6000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF000000000000000000FFFFFF000000000000000000C6C6C60000000000FF00
          0000FF000000FF0000000000FF00FF000000FF0000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
          00000000FF000000FF000000FF000000FF000000FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
          FF000000000000000000FFFFFF00000000000000000000000000000000000000
          0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
          FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000C6C6C600FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
          FF00848484000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF000000FF000000
          FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00000000000000
          000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 0
        OnClick = btnApplyClick
      end
    end
    object btnLockAllConnections: TButton
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Action = actLockAllConnections
      TabOrder = 0
    end
    object btnUnlockAllConnections: TButton
      Left = 90
      Top = 8
      Width = 75
      Height = 25
      Action = actUnlockAllConnections
      TabOrder = 1
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 245
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      539
      245)
    object gbProtocols: TGroupBox
      Left = 8
      Top = 2
      Width = 523
      Height = 94
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Protocols '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblDatasnapPort: TLabel
        Left = 36
        Top = 54
        Width = 43
        Height = 13
        Caption = 'TCP Port'
        FocusControl = edtDatasnapPort
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblHttpPort: TLabel
        Left = 196
        Top = 54
        Width = 19
        Height = 13
        Caption = 'Port'
        FocusControl = edtHttpPort
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblVersionHttpPort: TLabel
        Left = 428
        Top = 54
        Width = 19
        Height = 13
        Caption = 'Port'
        FocusControl = edtVersionHttpPort
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object chbEnableDatasnap: TAbmesDBCheckBox
        Left = 12
        Top = 28
        Width = 66
        Height = 17
        Caption = 'Datasnap'
        DataField = 'ENABLE_DATASNAP'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object edtDatasnapPort: TJvDBComboEdit
        Left = 84
        Top = 51
        Width = 57
        Height = 21
        ButtonHint = 'Default'
        DataField = 'DATASNAP_PORT'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ImageIndex = 2
        Images = ilActions
        ButtonWidth = 20
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnButtonClick = edtDatasnapPortButtonClick
      end
      object edtHttpPort: TJvDBComboEdit
        Left = 220
        Top = 51
        Width = 57
        Height = 21
        ButtonHint = 'Default'
        DataField = 'HTTP_PORT'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ImageIndex = 2
        Images = ilActions
        ButtonWidth = 20
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnButtonClick = edtHttpPortButtonClick
      end
      object chbEnableHttp: TAbmesDBCheckBox
        Left = 172
        Top = 28
        Width = 50
        Height = 17
        Caption = 'HTTP'
        DataField = 'ENABLE_HTTP'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbEnableVersionHttp: TAbmesDBCheckBox
        Left = 404
        Top = 28
        Width = 85
        Height = 17
        Caption = 'Version HTTP'
        DataField = 'ENABLE_VERSION_HTTP'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object edtVersionHttpPort: TJvDBComboEdit
        Left = 452
        Top = 51
        Width = 57
        Height = 21
        ButtonHint = 'Default'
        DataField = 'VERSION_HTTP_PORT'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ImageIndex = 2
        Images = ilActions
        ButtonWidth = 20
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnButtonClick = edtVersionHttpPortButtonClick
      end
    end
    object gbService: TGroupBox
      Left = 8
      Top = 102
      Width = 523
      Height = 46
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Service '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        523
        46)
      object lblServiceStatus: TLabel
        Left = 16
        Top = 20
        Width = 76
        Height = 13
        Caption = 'lblServiceStatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnStartService: TButton
        Left = 360
        Top = 14
        Width = 75
        Height = 25
        Action = actStartService
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btnStopService: TButton
        Left = 440
        Top = 14
        Width = 75
        Height = 25
        Action = actStopService
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object gbLoginSettings: TGroupBox
      Left = 8
      Top = 153
      Width = 523
      Height = 40
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Login settings '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lblComputerSwitchTimeoutMinutes: TLabel
        Left = 257
        Top = 17
        Width = 115
        Height = 13
        Caption = 'Computer switch timeout'
        FocusControl = edtComputerSwitchTimeoutMinutes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblComputerSwitchTimeoutMinutes2: TLabel
        Left = 449
        Top = 17
        Width = 36
        Height = 13
        Caption = 'minutes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object chbLockOtherComputerSessions: TAbmesDBCheckBox
        Left = 12
        Top = 15
        Width = 157
        Height = 17
        Caption = 'Lock other computer sessions'
        DataField = 'LOCK_OTHER_COMPUTER_SESSIONS'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object edtComputerSwitchTimeoutMinutes: TJvDBSpinEdit
        Left = 385
        Top = 13
        Width = 57
        Height = 21
        Alignment = taRightJustify
        MaxValue = 9999.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'COMPUTER_SWITCH_TIMEOUT_MINUTES'
        DataSource = dsSettings
      end
    end
    object gbLogging: TGroupBox
      Left = 7
      Top = 198
      Width = 523
      Height = 40
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Logging '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object lblServerCallsLogDir: TLabel
        Left = 9
        Top = 17
        Width = 42
        Height = 13
        Caption = 'Directory'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtServerCallsLogDir: TJvDirectoryEdit
        Left = 58
        Top = 13
        Width = 391
        Height = 21
        DialogKind = dkWin32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edtServerCallsLogDir'
      end
      object chbServerCallsAsyncLogging: TAbmesDBCheckBox
        Left = 464
        Top = 16
        Width = 49
        Height = 17
        Caption = 'Async'
        DataField = 'SERVER_CALLS_ASYNC_LOGGING'
        DataSource = dsSettings
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
    end
  end
  object cdsData: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'idxDBConnectioName'
        Fields = 'DB_CONNECTION_NAME'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'ORDER_NO;DB_CONNECTION_NAME'
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsDataCalcFields
    OnNewRecord = cdsDataNewRecord
    Left = 8
    Top = 320
    object cdsDataDB_CONNECTION_NAME: TAbmesWideStringField
      DisplayLabel = 'Connection name'
      FieldName = 'DB_CONNECTION_NAME'
      Required = True
      Size = 250
    end
    object cdsDataDB_CONNECTION_TYPE: TAbmesWideStringField
      FieldName = 'DB_CONNECTION_TYPE'
      Size = 10
    end
    object cdsDataDB_HOST: TAbmesWideStringField
      FieldName = 'DB_HOST'
      Size = 250
    end
    object cdsDataDB_PORT: TAbmesWideStringField
      FieldName = 'DB_PORT'
      Size = 10
    end
    object cdsDataDB_SERVICE: TAbmesWideStringField
      FieldName = 'DB_SERVICE'
      Size = 250
    end
    object cdsDataDB_USER: TAbmesWideStringField
      FieldName = 'DB_USER'
      Size = 250
    end
    object cdsDataDB_PASSWORD: TAbmesWideStringField
      FieldName = 'DB_PASSWORD'
      Size = 250
    end
    object cdsDataLOCK_MESSAGE: TAbmesWideStringField
      FieldName = 'LOCK_MESSAGE'
      Size = 250
    end
    object cdsDataACCESS_BAN_TYPE: TAbmesFloatField
      FieldName = 'ACCESS_BAN_TYPE'
    end
    object cdsDataIS_LOCKED: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'IS_LOCKED'
      DisplayBoolValues = '*;'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsDataORDER_NO: TAbmesFloatField
      FieldName = 'ORDER_NO'
    end
    object cdsDataIS_READ_ONLY: TAbmesFloatField
      FieldName = 'IS_READ_ONLY'
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_TEST_DB: TAbmesFloatField
      FieldName = 'IS_TEST_DB'
      FieldValueType = fvtBoolean
    end
    object cdsDataCONTENT_STORAGE_CONTAINER_NAME: TAbmesWideStringField
      FieldName = 'CONTENT_STORAGE_CONTAINER_NAME'
    end
    object cdsData_MAX_ORDER_NO: TAggregateField
      FieldName = '_MAX_ORDER_NO'
      Active = True
      DisplayName = ''
      Expression = 'Max(ORDER_NO)'
    end
  end
  object dsData: TDataSource
    DataSet = cdsData
    Left = 40
    Top = 320
  end
  object alActions: TActionList
    Images = ilActions
    Left = 72
    Top = 320
    object actForm: TAction
      Caption = 'fmSvrConfig'
      OnUpdate = actFormUpdate
    end
    object actNewDBConnection: TAction
      Hint = 'New Connection'
      ImageIndex = 0
      OnExecute = actNewDBConnectionExecute
      OnUpdate = actNewDBConnectionUpdate
    end
    object actDeleteDBConnection: TAction
      Hint = 'Delete Connection'
      ImageIndex = 1
      OnExecute = actDeleteDBConnectionExecute
      OnUpdate = actDeleteDBConnectionUpdate
    end
    object actLockAllConnections: TAction
      Caption = 'Lock all...'
      OnExecute = actLockAllConnectionsExecute
    end
    object actUnlockAllConnections: TAction
      Caption = 'Unlock all...'
      OnExecute = actUnlockAllConnectionsExecute
    end
    object actStartService: TAction
      Caption = 'Start'
      OnExecute = actStartServiceExecute
      OnUpdate = actStartServiceUpdate
    end
    object actStopService: TAction
      Caption = 'Stop'
      OnExecute = actStopServiceExecute
      OnUpdate = actStopServiceUpdate
    end
    object actMoveUp: TAction
      Hint = 'Move up'
      ImageIndex = 3
      OnExecute = actMoveUpExecute
      OnUpdate = actMoveUpUpdate
    end
    object actMoveDown: TAction
      Hint = 'Move down'
      ImageIndex = 4
      OnExecute = actMoveDownExecute
      OnUpdate = actMoveDownUpdate
    end
  end
  object ilActions: TImageList
    Left = 104
    Top = 320
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFBF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBF0000BFBF0000BFBF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF0000BFBF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBF0000BFBF0000BFBF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBF0000BFBF0000BFBF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBF0000BFBF0000BFBF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFBF0000BFBF0000BFBF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF007F7F7F007F7F7F007F7F
      7F007F7F7F0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F00000000007F7F7F007F7F7F007F7F7F00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF007F7F
      7F00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C00000C0C00000C0C0000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C00000C0C00000C0C0000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C00000C0C00000C0C0000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000008080000080800000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C00000C0C00000C0C0000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000008080000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C00000C0C00000C0C00000C0C00000C0C00000C0C00000C0C000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C00000C0C00000C0C00000C0C00000C0C00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      80000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C00000C0C00000C0C0000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FEFF000000000000FC7F000000000000
      F83F000000000000F01F000000000000E00F000000000000C007000000000000
      F83F000000000000F83F000000000000F83F000000000000F83F000000000000
      FFFF000000000000FFFF000000000000FF7EFFFFFFFFFFFF9001FFFCFFFFFFFF
      C003F3FFF223FFFFE003E1F9FFC3FFFFE003E1F3FF83F83FE003F0E3FF07F83F
      E003F847FE0FF83F0001FC0FFC1FF83F8000FE1FF83FC007E007FC0FF07FE00F
      E00FF84FE0FFF01FE00FE0E3C1FFF83FE027C1F1C3FFFC7FC073C7F8E7FFFEFF
      9E79FFFFFFFFFFFF7EFEFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cdsSettings: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsSettingsBeforePost
    Left = 8
    Top = 288
    object cdsSettingsDATASNAP_PORT: TAbmesFloatField
      DisplayLabel = 'Legacy TCP Port'
      FieldName = 'DATASNAP_PORT'
      FieldValueType = fvtInteger
    end
    object cdsSettingsENABLE_DATASNAP: TAbmesFloatField
      FieldName = 'ENABLE_DATASNAP'
      FieldValueType = fvtBoolean
    end
    object cdsSettingsHTTP_PORT: TAbmesFloatField
      DisplayLabel = 'HTTP Port'
      FieldName = 'HTTP_PORT'
    end
    object cdsSettingsENABLE_HTTP: TAbmesFloatField
      FieldName = 'ENABLE_HTTP'
      FieldValueType = fvtBoolean
    end
    object cdsSettingsVERSION_HTTP_PORT: TAbmesFloatField
      DisplayLabel = 'Version HTTP Port'
      FieldName = 'VERSION_HTTP_PORT'
    end
    object cdsSettingsENABLE_VERSION_HTTP: TAbmesFloatField
      FieldName = 'ENABLE_VERSION_HTTP'
      FieldValueType = fvtBoolean
    end
    object cdsSettingsSERVER_CALLS_LOG_DIRECTORY: TAbmesWideStringField
      FieldName = 'SERVER_CALLS_LOG_DIRECTORY'
      Size = 250
    end
    object cdsSettingsSERVER_CALLS_ASYNC_LOGGING: TAbmesFloatField
      FieldName = 'SERVER_CALLS_ASYNC_LOGGING'
      FieldValueType = fvtBoolean
    end
    object cdsSettingsLOCK_OTHER_COMPUTER_SESSIONS: TAbmesFloatField
      FieldName = 'LOCK_OTHER_COMPUTER_SESSIONS'
      FieldValueType = fvtBoolean
    end
    object cdsSettingsCOMPUTER_SWITCH_TIMEOUT_MINUTES: TAbmesFloatField
      FieldName = 'COMPUTER_SWITCH_TIMEOUT_MINUTES'
    end
    object cdsSettingsSHOW_ADVANCED_SETTINGS: TAbmesFloatField
      FieldName = 'SHOW_ADVANCED_SETTINGS'
      FieldValueType = fvtBoolean
    end
  end
  object dsSettings: TDataSource
    DataSet = cdsSettings
    Left = 40
    Top = 288
  end
end
