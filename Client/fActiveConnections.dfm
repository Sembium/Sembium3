inherited fmActiveConnections: TfmActiveConnections
  Caption = #1040#1082#1090#1080#1074#1085#1080' '#1042#1088#1098#1079#1082#1080
  ClientHeight = 562
  ClientWidth = 1146
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 527
    Width = 1146
    inherited pnlOKCancel: TPanel
      Left = 878
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 789
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 1057
      Visible = False
    end
    object btnCloseConnection: TBitBtn
      Left = 8
      Top = 2
      Width = 121
      Height = 25
      Action = actCloseConnection
      Caption = #1055#1088#1077#1082#1088#1072#1090#1103#1074#1072#1085#1077'...'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00
        FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
        FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
        FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00
        FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00
        FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 1146
    Height = 527
    inherited pnlGrid: TPanel
      Width = 1130
      Height = 511
      inherited pnlNavigator: TPanel
        Width = 1130
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
        object tlbToggles: TToolBar
          Left = 1082
          Top = 0
          Width = 48
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbToggles'
          Images = dmMain.ilActions
          TabOrder = 3
          object btnShowSessionID: TToolButton
            Left = 0
            Top = 0
            Action = actShowSessionID
            AllowAllUp = True
            Grouped = True
            Style = tbsCheck
          end
          object btnShowHardwareInfo: TToolButton
            Left = 24
            Top = 0
            Action = actShowHardwareInfo
            AllowAllUp = True
            Grouped = True
            Style = tbsCheck
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1130
        Height = 487
        AutoFitColWidths = True
        HorzScrollBar.VisibleMode = sbNeverShowEh
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TitleParams.MultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CONNECTION_ID'
            Footers = <>
            Title.Caption = #1042#1088#1098#1079#1082#1072'|ID'
            Width = 35
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LICENSE_POOL_TYPE'
            Footers = <>
            Title.Caption = #1042#1088#1098#1079#1082#1072'|'#1058#1080#1087
            Title.Orientation = tohVertical
            Width = 14
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CONNECTION_TYPE'
            Footers = <>
            Title.Caption = #1042#1088#1098#1079#1082#1072'|'#1055#1088#1090#1082#1083
            Width = 40
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IP_ADDRESS'
            Footers = <>
            Title.Caption = #1042#1088#1098#1079#1082#1072'|IP '#1040#1076#1088#1077#1089
            Width = 83
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DB_NAME'
            Footers = <>
            Title.Caption = #1041#1072#1079#1072' '#1086#1090' '#1076#1072#1085#1085#1080
            Width = 55
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT_COMPUTER_NAME'
            Footers = <>
            Title.Caption = #1050#1086#1084#1087#1102#1090#1098#1088'|'#1048#1084#1077
            Width = 70
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT_WINDOWS_USER_NAME'
            Footers = <>
            Title.Caption = #1050#1086#1084#1087#1102#1090#1098#1088'|Windows '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
            Width = 70
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT_WINDOWS_VERSION'
            Footers = <>
            Title.Caption = #1050#1086#1084#1087#1102#1090#1098#1088'|Windows '#1074#1077#1088#1089#1080#1103
            Width = 70
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_DISPLAY_WINDOWS_SESSION_ID'
            Footers = <>
            Title.Caption = #1050#1086#1084#1087#1102#1090#1098#1088'|'#1057#1077#1089#1080#1103' ID'
            Visible = False
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENT_HARDWARE_INFO'
            Footers = <>
            Title.Caption = #1050#1086#1084#1087#1102#1090#1098#1088'|'#1061#1072#1088#1076#1091#1077#1088
            Visible = False
            Width = 237
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LOGIN_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083'|'#1048#1076#1077#1085#1090#1080#1092#1080'- '#1082#1072#1090#1086#1088
            Width = 70
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083'|'#1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
            Width = 45
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_FULL_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083'|'#1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_CALL_METHOD_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1077#1085' '#1084#1077#1090#1086#1076
            Width = 100
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_LOGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'|'#1044#1072#1090#1072
            Width = 30
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Color = 16578541
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_LOGIN_TIME'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'|'#1063#1072#1089
            Width = 47
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_ACTIVITY_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1055#1086#1089#1083#1077#1076#1085#1072' '#1072#1082#1090#1080#1074#1085#1086#1089#1090'|'#1044#1072#1090#1072
            Width = 30
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Color = 16578541
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_ACTIVITY_TIME'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1055#1086#1089#1083#1077#1076#1085#1072' '#1072#1082#1090#1080#1074#1085#1086#1089#1090'|'#1063#1072#1089
            Width = 47
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_TIME_CHECK_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1055#1086#1089#1083#1077#1076#1077#1085' '#1087#1091#1083#1089'|'#1044#1072#1090#1072
            Width = 30
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            Color = 16578541
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_TIME_CHECK_TIME'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1055#1086#1089#1083#1077#1076#1077#1085' '#1087#1091#1083#1089'|'#1063#1072#1089
            Width = 47
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PREV_PING_MILLISECONDS'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077' (UTC)|'#1055#1086#1089#1083#1077#1076#1077#1085' '#1087#1091#1083#1089'|ms'
            Width = 30
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CURRENT_ACTIVITY_SECONDS'
            Footers = <>
            Title.Caption = #1047#1072#1077#1090#1072' ('#1089#1077#1082'.)'
            Title.Orientation = tohVertical
            Width = 29
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SESSION_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1089#1077#1089#1080#1080
            Title.Orientation = tohVertical
            Width = 18
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conNonDbUtils
    FieldDefs = <
      item
        Name = 'CONNECTION_ID'
        DataType = ftFloat
      end
      item
        Name = 'CONNECTION_TYPE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CLIENT_COMPUTER_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CLIENT_WINDOWS_USER_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'CLIENT_WINDOWS_SESSION_ID'
        DataType = ftFloat
      end
      item
        Name = 'LOGIN_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'USER_FULL_NAME'
        DataType = ftWideString
        Size = 44
      end
      item
        Name = 'LAST_LOGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'LAST_LOGIN_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'LAST_TIME_CHECK_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'LAST_TIME_CHECK_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CLOSE_CONNECTION_REQUESTED'
        DataType = ftFloat
      end
      item
        Name = 'DB_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IS_IN_USE'
        DataType = ftFloat
      end
      item
        Name = 'LICENSE_POOL_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_SYS_VOLUME_SERIAL_NUMBER'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'LAST_ACTIVITY_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'LAST_ACTIVITY_TIME'
        DataType = ftTimeStamp
      end>
    ProviderName = 'prvActiveConnections'
    OnCalcFields = cdsGridDataCalcFields
    AfterGetRecords = cdsGridDataAfterGetRecords
    object cdsGridDataCONNECTION_ID: TAbmesFloatField
      FieldName = 'CONNECTION_ID'
    end
    object cdsGridDataCONNECTION_TYPE: TAbmesWideStringField
      FieldName = 'CONNECTION_TYPE'
      Size = 50
    end
    object cdsGridDataCLIENT_COMPUTER_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPUTER_NAME'
      Size = 250
    end
    object cdsGridDataCLIENT_WINDOWS_USER_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_WINDOWS_USER_NAME'
      Size = 250
    end
    object cdsGridDataCLIENT_WINDOWS_SESSION_ID: TAbmesFloatField
      FieldName = 'CLIENT_WINDOWS_SESSION_ID'
    end
    object cdsGridDataCLIENT_WINDOWS_VERSION: TAbmesWideStringField
      FieldName = 'CLIENT_WINDOWS_VERSION'
      Size = 100
    end
    object cdsGridDataLOGIN_NAME: TAbmesWideStringField
      FieldName = 'LOGIN_NAME'
    end
    object cdsGridDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsGridDataUSER_FULL_NAME: TAbmesWideStringField
      FieldName = 'USER_FULL_NAME'
      Size = 44
    end
    object cdsGridDataLAST_LOGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_DATE'
    end
    object cdsGridDataLAST_LOGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_TIME'
      DisplayFormat = 'h:nn:ss'
    end
    object cdsGridDataLAST_TIME_CHECK_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_TIME_CHECK_DATE'
    end
    object cdsGridDataLAST_TIME_CHECK_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_TIME_CHECK_TIME'
      DisplayFormat = 'h:nn:ss'
    end
    object cdsGridDataCLOSE_CONNECTION_REQUESTED: TAbmesFloatField
      FieldName = 'CLOSE_CONNECTION_REQUESTED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDB_NAME: TAbmesWideStringField
      FieldName = 'DB_NAME'
      Size = 50
    end
    object cdsGridDataIS_IN_USE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_IN_USE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataLICENSE_POOL_TYPE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'LICENSE_POOL_TYPE'
      OnGetText = cdsGridDataLICENSE_POOL_TYPEGetText
    end
    object cdsGridDataCLIENT_SYS_VOLUME_SERIAL_NUMBER: TAbmesWideStringField
      FieldName = 'CLIENT_SYS_VOLUME_SERIAL_NUMBER'
      Size = 8
    end
    object cdsGridDataCLIENT_HARDWARE_INFO: TWideStringField
      FieldName = 'CLIENT_HARDWARE_INFO'
      Size = 250
    end
    object cdsGridData_DISPLAY_WINDOWS_SESSION_ID: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_WINDOWS_SESSION_ID'
      Calculated = True
    end
    object cdsGridDataLAST_ACTIVITY_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_ACTIVITY_DATE'
    end
    object cdsGridDataLAST_ACTIVITY_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_ACTIVITY_TIME'
      DisplayFormat = 'h:nn:ss'
    end
    object cdsGridDataCURRENT_ACTIVITY_SECONDS: TAbmesFloatField
      FieldName = 'CURRENT_ACTIVITY_SECONDS'
    end
    object cdsGridDataIP_ADDRESS: TAbmesWideStringField
      FieldName = 'IP_ADDRESS'
      Size = 50
    end
    object cdsGridDataSESSION_COUNT: TAbmesFloatField
      FieldName = 'SESSION_COUNT'
      OnGetText = cdsGridDataSESSION_COUNTGetText
    end
    object cdsGridDataPREV_PING_MILLISECONDS: TAbmesFloatField
      FieldName = 'PREV_PING_MILLISECONDS'
    end
    object cdsGridDataLAST_CALL_METHOD_NAME: TAbmesWideStringField
      FieldName = 'LAST_CALL_METHOD_NAME'
      Size = 200
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1040#1082#1090#1080#1074#1085#1080' '#1042#1088#1098#1079#1082#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actCloseConnection: TAction
      Caption = #1055#1088#1077#1082#1088#1072#1090#1103#1074#1072#1085#1077'...'
      Hint = #1055#1088#1077#1082#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1074#1088#1098#1079#1082#1072
      ImageIndex = 11
      OnExecute = actCloseConnectionExecute
      OnUpdate = actCloseConnectionUpdate
    end
    object actShowSessionID: TAction
      Caption = 'actShowSessionID'
      GroupIndex = 1
      Hint = #1057#1077#1089#1080#1103' ID'
      ImageIndex = 132
      OnExecute = actShowSessionIDExecute
    end
    object actShowHardwareInfo: TAction
      Caption = 'actShowHardwareInfo'
      GroupIndex = 2
      Hint = #1061#1072#1088#1076#1091#1077#1088
      ImageIndex = 48
      OnExecute = actShowHardwareInfoExecute
    end
  end
end
