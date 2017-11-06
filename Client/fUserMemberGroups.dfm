inherited fmUserMemberGroups: TfmUserMemberGroups
  Caption = #1043#1088#1091#1087#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
  ClientHeight = 450
  ClientWidth = 708
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 415
    Width = 708
    inherited pnlOKCancel: TPanel
      Left = 440
    end
    inherited pnlClose: TPanel
      Left = 351
    end
    inherited pnlApply: TPanel
      Left = 619
      Visible = False
    end
  end
  inherited pnlUser: TPanel
    Width = 692
  end
  inherited pnlMain: TPanel
    Width = 708
    Height = 415
    inherited pnlGrid: TPanel
      Width = 692
      Height = 399
      inherited pnlNavigator: TPanel
        Width = 692
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 59
        Width = 333
        Height = 340
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_GROUP_CODE'
            Footers = <>
            Title.Caption = #1063#1083#1077#1085' '#1085#1072'|'#1050#1086#1076
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_GROUP_NAME'
            Footers = <>
            Title.Caption = #1063#1083#1077#1085' '#1085#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 235
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 359
        Top = 59
        Width = 333
        Height = 340
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_GROUP_CODE'
            Footers = <>
            Title.Caption = #1053#1045' '#1077' '#1095#1083#1077#1085' '#1085#1072'|'#1050#1086#1076
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USER_GROUP_NAME'
            Footers = <>
            Title.Caption = #1053#1045' '#1077' '#1095#1083#1077#1085' '#1085#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 235
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 333
        Top = 59
        Height = 340
      end
      object pnlInfo: TPanel
        Left = 0
        Top = 24
        Width = 692
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object pnlUserInfo: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 29
          Align = alTop
          TabOrder = 0
          object lblUser: TLabel
            Left = 8
            Top = 8
            Width = 60
            Height = 13
            Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
          end
          object edtUser: TDBEdit
            Left = 73
            Top = 4
            Width = 278
            Height = 21
            Color = clBtnFace
            DataField = 'EMPLOYEE_NAME'
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
        Name = 'EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'USER_GROUP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'USER_GROUP_NAME'
        DataType = ftWideString
        Size = 50
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'prvUserMemberGroups'
    object cdsGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsGridDataUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object cdsGridDataUSER_GROUP_NAME: TAbmesWideStringField
      FieldName = 'USER_GROUP_NAME'
      Size = 50
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1043#1088#1091#1087#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
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
    ProviderName = 'prvUserNotMemberGroups'
    object cdsOtherGridDataEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsOtherGridDataUSER_GROUP_CODE: TAbmesFloatField
      FieldName = 'USER_GROUP_CODE'
    end
    object cdsOtherGridDataUSER_GROUP_NAME: TAbmesWideStringField
      FieldName = 'USER_GROUP_NAME'
      Size = 50
    end
  end
end
