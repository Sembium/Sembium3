inherited fmUserEffectiveActivities: TfmUserEffectiveActivities
  Left = 261
  Top = 186
  Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
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
        AutoFitColWidths = True
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 164
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_ACTIVITY_GROUP_NAMES'
            Footers = <>
            Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1054#1090' '#1043#1088#1091#1087#1080
            Width = 120
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_SYS_ROLE_NAMES'
            Footers = <>
            Title.Caption = #1055#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1054#1090' '#1053#1072#1073#1086#1088#1080
            Width = 120
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 514
        Top = 59
        Width = 487
        Height = 466
        AutoFitColWidths = True
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NO'
            Footers = <>
            Title.Caption = #1053#1077#1087#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = 
              #1053#1077#1087#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085 +
              #1080#1077
            Width = 163
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_GROUP_NAMES'
            Footers = <>
            Title.Caption = #1053#1077#1087#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1042' '#1043#1088#1091#1087#1080
            Width = 120
          end
          item
            AutoFitColWidth = False
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACTIVITY_SYS_ROLE_NAMES'
            Footers = <>
            Title.Caption = #1053#1077#1087#1088#1080#1089#1074#1086#1077#1085#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083#1103' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1042' '#1053#1072#1073#1086#1088#1080
            Width = 120
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
        object pnlUserToDate: TPanel
          Left = 0
          Top = 0
          Width = 1001
          Height = 29
          Align = alTop
          TabOrder = 0
          DesignSize = (
            1001
            29)
          object pnlUserName: TPanel
            Left = 304
            Top = 0
            Width = 393
            Height = 25
            Anchors = [akTop]
            BevelOuter = bvNone
            TabOrder = 1
            object lblToDate: TLabel
              Left = 232
              Top = 8
              Width = 48
              Height = 13
              Caption = #1050#1098#1084' '#1076#1072#1090#1072
            end
            object lblUser: TLabel
              Left = 0
              Top = 8
              Width = 60
              Height = 13
              Caption = #1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
            end
            inline frToDate: TfrDateFieldEditFrame
              Left = 288
              Top = 4
              Width = 105
              Height = 21
              Constraints.MaxHeight = 21
              Constraints.MaxWidth = 105
              Constraints.MinHeight = 21
              Constraints.MinWidth = 105
              TabOrder = 0
            end
            object edtUser: TDBEdit
              Left = 65
              Top = 4
              Width = 144
              Height = 21
              Color = clBtnFace
              DataField = 'EMPLOYEE_NAME'
              DataSource = dsData
              ReadOnly = True
              TabOrder = 1
            end
          end
          inline frSearchData: TfrDBGridSearch
            Left = 5
            Top = 4
            Width = 236
            Height = 22
            TabOrder = 0
            inherited pnlMain: TPanel
              Width = 236
              inherited tlbSearchData: TToolBar
                Left = 190
              end
              inherited edtSearch: TEdit
                Width = 189
              end
            end
          end
          inline frSearchOtherData: TfrDBGridSearch
            Left = 761
            Top = 4
            Width = 236
            Height = 22
            Anchors = [akTop, akRight]
            TabOrder = 2
            inherited pnlMain: TPanel
              Width = 236
              inherited tlbSearchData: TToolBar
                Left = 190
              end
              inherited edtSearch: TEdit
                Width = 189
              end
            end
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conCompany
    FieldDefs = <
      item
        Name = 'ACTIVITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NAME'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'IS_PERSONAL_ACTIVITY'
        DataType = ftFloat
      end
      item
        Name = 'IS_GROUP_ACTIVITY'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_GROUP_NAMES'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'ACTIVITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_SYS_ROLE_NAMES'
        DataType = ftWideString
        Size = 250
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
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserEffectiveActivities'
    OnCalcFields = cdsGridDataCalcFields
    object cdsGridDataACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsGridDataACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsGridDataIS_PERSONAL_ACTIVITY: TAbmesFloatField
      FieldName = 'IS_PERSONAL_ACTIVITY'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_GROUP_ACTIVITY: TAbmesFloatField
      FieldName = 'IS_GROUP_ACTIVITY'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataACTIVITY_GROUP_NAMES: TAbmesWideStringField
      DisplayLabel = #1054#1090' '#1043#1088#1091#1087#1080
      FieldName = 'ACTIVITY_GROUP_NAMES'
      Size = 2000
    end
    object cdsGridData_ACTIVITY_GROUP_NAMES: TAbmesWideStringField
      DisplayLabel = #1054#1090' '#1043#1088#1091#1087#1080
      FieldKind = fkCalculated
      FieldName = '_ACTIVITY_GROUP_NAMES'
      Size = 255
      Calculated = True
    end
    object cdsGridDataACTIVITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_NO'
    end
    object cdsGridDataACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'ACTIVITY_SYS_ROLE_NAMES'
      Size = 2000
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1085#1072' '#1055#1086#1090#1088#1077#1073#1080#1090#1077#1083
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    object pdsGridDataParamsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object pdsGridDataParamsTO_DATE: TAbmesSQLTimeStampField
      FieldName = 'TO_DATE'
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
      end
      item
        DataType = ftFloat
        Name = 'EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvUserEffectiveForbiddenActivities'
    BeforeOpen = cdsOtherGridDataBeforeOpen
    object cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsOtherGridDataACTIVITY_GROUP_NAMES: TAbmesWideStringField
      DisplayLabel = #1042' '#1043#1088#1091#1087#1080
      FieldName = 'ACTIVITY_GROUP_NAMES'
      Size = 2000
    end
    object cdsOtherGridDataACTIVITY_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'ACTIVITY_NO'
    end
    object cdsOtherGridDataACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'ACTIVITY_SYS_ROLE_NAMES'
      Size = 2000
    end
  end
end
