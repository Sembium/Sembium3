inherited fmUserGroupActivities: TfmUserGroupActivities
  Left = 251
  Top = 164
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
  ClientHeight = 576
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 541
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
    end
    inherited pnlClose: TPanel
      Left = 660
    end
    inherited pnlApply: TPanel
      Left = 928
    end
  end
  inherited pnlUser: TPanel
    Width = 1001
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 541
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 525
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 59
        Width = 488
        Height = 466
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 406
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 514
        Top = 59
        Width = 487
        Height = 466
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = #1047#1072#1073#1088#1072#1085#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1047#1072#1073#1088#1072#1085#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 405
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 488
        Top = 59
        Height = 466
      end
      object pnlInfo: TPanel
        Left = 0
        Top = 24
        Width = 1001
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object pnlUserGroupName: TPanel
          Left = 0
          Top = 0
          Width = 1001
          Height = 29
          Align = alTop
          TabOrder = 0
          object lblUserGroupName: TLabel
            Left = 8
            Top = 7
            Width = 96
            Height = 13
            Caption = #1043#1088#1091#1087#1072' '#1087#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
          end
          object edtUserGroupName: TDBEdit
            Left = 115
            Top = 4
            Width = 278
            Height = 21
            Color = clBtnFace
            DataField = 'USER_GROUP_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    FieldDefs = <
      item
        Name = 'USER_GROUP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ACTIVITY_NO'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'USER_GROUP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserGroupHasActivities'
    object cdsGridDataUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object cdsGridDataACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsGridDataACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsGridDataACTIVITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_NO'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1080
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
  end
  inherited dsData: TDataSource
    Left = 8
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 8
    Top = 72
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
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
    ProviderName = 'prvUserGroupHasNotActivities'
    object cdsOtherGridDataUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsOtherGridDataACTIVITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_NO'
    end
  end
end
