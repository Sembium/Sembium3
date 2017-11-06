inherited fmUserGroupsEdit: TfmUserGroupsEdit
  Left = 270
  Top = 206
  ActiveControl = nil
  Caption = #1043#1088#1091#1087#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' - %s'
  ClientHeight = 400
  ExplicitWidth = 642
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 620
    Height = 350
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  inherited pnlBottomButtons: TPanel
    Top = 365
    TabOrder = 0
    ExplicitTop = 365
  end
  inherited pnlUser: TPanel
    Left = 24
    Top = 61
    Width = 599
    ExplicitLeft = 24
    ExplicitTop = 61
    ExplicitWidth = 599
  end
  inherited pnlMain: TPanel
    Height = 365
    TabOrder = 2
    ExplicitHeight = 365
    inherited pnlGrid: TPanel
      Height = 349
      ExplicitHeight = 349
      inherited pnlNavigator: TPanel
        inherited pnlFilterButton: TPanel
          Left = 168
          ExplicitLeft = 168
        end
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 192
          ExplicitLeft = 192
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 81
        Height = 268
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' '#1074' '#1075#1088#1091#1087#1072#1090#1072'|'#1050#1086#1076
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' '#1074' '#1075#1088#1091#1087#1072#1090#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 222
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Top = 81
        Height = 268
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' '#1080#1079#1074#1098#1085' '#1075#1088#1091#1087#1072#1090#1072'|'#1050#1086#1076
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' '#1080#1079#1074#1098#1085' '#1075#1088#1091#1087#1072#1090#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 222
          end>
      end
      inherited pnlMoveButtons: TPanel
        Top = 81
        Height = 268
        ExplicitTop = 81
        ExplicitHeight = 268
      end
      object pnlTop: TPanel
        Left = 0
        Top = 24
        Width = 620
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object pnlUserData: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 105
          Align = alTop
          TabOrder = 0
          object lblName: TLabel
            Left = 80
            Top = 8
            Width = 76
            Height = 13
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          end
          object lblCode: TLabel
            Left = 16
            Top = 8
            Width = 19
            Height = 13
            Caption = #1050#1086#1076
          end
          object edtName: TDBEdit
            Left = 80
            Top = 24
            Width = 521
            Height = 21
            DataField = 'USER_GROUP_NAME'
            DataSource = dsData
            TabOrder = 0
          end
          object edtCode: TDBEdit
            Left = 16
            Top = 24
            Width = 49
            Height = 21
            DataField = 'USER_GROUP_CODE'
            DataSource = dsData
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    DataSetField = cdsDataqryUserGroupUsers
    FieldDefs = <
      item
        Name = 'USER_GROUP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EMPLOYEE_CODE'
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
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    object cdsGridDataUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 41
    end
    object cdsGridDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
  end
  inherited alActions: TActionList
    Left = 256
    inherited actForm: TAction
      Caption = #1043#1088#1091#1087#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080' - %s'
    end
    object actAddUser: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083
      ImageIndex = 41
    end
    object actAddAllUsers: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
      ImageIndex = 42
    end
    object actRemoveUser: TAction
      Hint = #1055#1088#1077#1084#1072#1093#1074#1072#1085#1077' '#1085#1072' '#1087#1090#1088#1077#1073#1080#1090#1077#1083
      ImageIndex = 40
    end
    object actRemveAllUsers: TAction
      Hint = #1055#1088#1077#1084#1072#1093#1074#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
      ImageIndex = 46
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
  end
  inherited dsData: TDataSource
    Left = 216
  end
  inherited cdsData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserGroup'
    ConnectionBroker = dmMain.conCompany
    Left = 184
    object cdsDataUSER_GROUP_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'USER_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataUSER_GROUP_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'USER_GROUP_NAME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object cdsDataqryUserGroupUsers: TDataSetField
      FieldName = 'qryUserGroupUsers'
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserGroupNotUsers'
    ConnectionBroker = dmMain.conCompany
    object cdsOtherGridDataUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object cdsOtherGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsOtherGridDataEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 41
    end
    object cdsOtherGridDataEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
  end
end
