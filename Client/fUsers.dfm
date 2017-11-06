inherited fmUsers: TfmUsers
  Left = 299
  Top = 187
  Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
  ClientHeight = 549
  ClientWidth = 944
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 514
    Width = 944
    inherited pnlOKCancel: TPanel
      Left = 676
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 587
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 855
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 559
      object btnUserActivities: TBitBtn [0]
        Left = 349
        Top = 2
        Width = 77
        Height = 25
        Action = actUserActivities
        Caption = 'actUserActivities'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FF00FF00FF00FF00000000000000000000000000FF00FF000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF00FFFFFF000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          00000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
          0000FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
          00000000000000000000000000000000000000000000FF00FF0084848400FFFF
          FF000000000000000000000000000000000000000000FFFFFF00000000000000
          00000000000000000000000000000000000000000000FF00FF0084848400FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF0084848400FFFF
          FF00848484000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF0000000000FFFF
          FF0084848400FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF0000000000FF00FF0084848400FFFF
          FF0084848400FFFFFF00FFFFFF00FFFFFF008484840000000000FFFFFF008484
          840084848400FFFFFF00000000000000000000000000FF00FF0084848400FFFF
          FF0084848400FFFFFF008484840084848400FFFFFF0000000000FFFFFF00FFFF
          FF0000000000FFFFFF0000000000FF00FF0000000000FF00FF00848484008484
          840084848400FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
          FF0084848400848484008484840084848400FF00FF00FF00FF00FF00FF008484
          8400848484008484840084848400FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 3
      end
      object btnConfigUser: TBitBtn [1]
        Left = 434
        Top = 2
        Width = 125
        Height = 25
        Action = actConfigUser
        Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00007B7B7B00FF00FF00FF00FF00000000000000000000000000000000000000
          00000000000000000000FF00FF000000000000000000000000000000000000FF
          FF0000000000FF00FF00FF00FF0000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF0000000000000000000000FF
          FF0000000000FF00FF00FF00FF00000000000000000000000000000000000000
          00000000000000000000FF00FF0000000000FFFF0000000000000000000000FF
          FF007B7B7B007B7B7B00FF00FF0000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF0000000000007B7B7B007B7B
          7B0000FFFF0000000000FF00FF0000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF000000000000FF00FF000000
          000000FFFF0000000000FF00FF0000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF000000000000FF00FF000000
          000000FFFF007B7B7B007B7B7B0000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF000000000000FF00FF007B7B
          7B007B7B7B0000FFFF000000000000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF000000000000FF00FF00FF00
          FF000000000000FFFF000084840000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF00000000000000000000000000FF00FF00FF00
          FF000000000000FFFF0000848400000000000000000000000000000000000000
          00000000FF0000000000FF00FF0000000000FFFF000000000000FF00FF00FF00
          FF007B7B7B00000000000000000000000000FF000000FF000000000000000000
          00000000FF0000000000FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
          00000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
        Spacing = -1
        TabOrder = 4
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 944
    Height = 514
    inherited pnlGrid: TPanel
      Width = 928
      Height = 498
      inherited pnlNavigator: TPanel
        Width = 928
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 928
        Height = 474
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 6
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1050#1086#1076
            Width = 66
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
            Width = 213
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EXTERNAL_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083'|GUID'
            Width = 131
          end
          item
            Alignment = taCenter
            CellButtons = <>
            Checkboxes = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_DISABLED'
            Footers = <>
            Title.Caption = #1044#1077#1072#1082#1090'.'
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_LOGIN_DATE'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'|'#1044#1072#1090#1072
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_LOGIN_TIME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'|'#1063#1072#1089
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_LOGIN_WINDOWS_VERSION'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'|Windows '#1074#1077#1088#1089#1080#1103
            Width = 90
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LAST_LOGIN_HARDWARE_INFO'
            Footers = <>
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1086' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077'|'#1061#1072#1088#1076#1091#1077#1088
            Width = 249
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 176
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    FieldDefs = <
      item
        Name = 'EMPLOYEE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IS_DISABLED'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'EMPLOYEE_NO'
        DataType = ftFloat
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
        Name = 'LAST_LOGIN_WINDOWS_VERSION'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'LAST_LOGIN_HARDWARE_INFO'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'EXTERNAL_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUsers'
    Left = 16
    Top = 176
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'EMPLOYEE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGridDataIS_DISABLED: TAbmesFloatField
      DisplayLabel = #1044#1077#1072#1082#1090#1080#1074#1080#1088#1072#1085
      FieldName = 'IS_DISABLED'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077
      FieldName = 'EMPLOYEE_NAME'
      ProviderFlags = []
      Size = 41
    end
    object cdsGridDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsGridDataLAST_LOGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_DATE'
      ProviderFlags = []
    end
    object cdsGridDataLAST_LOGIN_TIME: TAbmesSQLTimeStampField
      FieldName = 'LAST_LOGIN_TIME'
      ProviderFlags = []
      DisplayFormat = 'hh:mm'
    end
    object cdsGridDataLAST_LOGIN_WINDOWS_VERSION: TAbmesWideStringField
      FieldName = 'LAST_LOGIN_WINDOWS_VERSION'
      Size = 100
    end
    object cdsGridDataLAST_LOGIN_HARDWARE_INFO: TAbmesWideStringField
      FieldName = 'LAST_LOGIN_HARDWARE_INFO'
      Size = 250
    end
    object cdsGridDataEXTERNAL_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083' GUID'
      FieldName = 'EXTERNAL_IDENTIFIER'
      Size = 100
    end
  end
  inherited alActions: TActionList
    Left = 16
    Top = 256
    object actEditUserActivities: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'...'
      ImageIndex = 65
      OnExecute = actEditUserActivitiesExecute
      OnUpdate = actEditUserActivitiesUpdate
    end
    object actConfigUser: TAction
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077'...'
      ImageIndex = 66
      OnExecute = actConfigUserExecute
      OnUpdate = actConfigUserUpdate
    end
    object actShowEffectiveUserActivities: TAction
      Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'...'
      Hint = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080
      ImageIndex = 65
      OnExecute = actShowEffectiveUserActivitiesExecute
    end
    object actUserMemberGroups: TAction
      Caption = #1043#1088#1091#1087#1080' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080'...'
      ImageIndex = 65
      OnExecute = actUserMemberGroupsExecute
      OnUpdate = actUserMemberGroupsUpdate
    end
    object actUserActivities: TAction
      Caption = 'actUserActivities'
      ImageIndex = 65
      OnExecute = actUserActivitiesExecute
      OnUpdate = actUserActivitiesUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 16
    Top = 208
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 208
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 144
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 144
  end
  object pmUserActivities: TPopupMenu
    Images = dmMain.ilActions
    Left = 96
    Top = 208
    object miUserActivities: TMenuItem
      Action = actEditUserActivities
    end
    object miUserMemberGroups: TMenuItem
      Action = actUserMemberGroups
    end
    object miShowEffectiveUserActivities: TMenuItem
      Action = actShowEffectiveUserActivities
    end
  end
end
