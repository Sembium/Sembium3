inherited fmFilterVariantSysRoles: TfmFilterVariantSysRoles
  Left = 311
  Top = 186
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1092#1080#1083#1090#1098#1088
  ClientHeight = 384
  ClientWidth = 762
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 349
    Width = 762
    inherited pnlOKCancel: TPanel
      Left = 494
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 405
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 673
      TabOrder = 3
    end
    inherited pnlExcelExportButton: TPanel
      TabOrder = 0
    end
  end
  inherited pnlUser: TPanel
    Width = 746
  end
  inherited pnlMain: TPanel
    Width = 762
    Height = 349
    inherited pnlGrid: TPanel
      Top = 49
      Width = 746
      Height = 292
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Align = alNone
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 0
        Width = 360
        Height = 292
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SYS_ROLE_NO'
            Footers = <>
            Title.Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075', '#1085#1072' '#1082#1086#1080#1090#1086' '#1077' '#1056#1040#1047#1056#1045#1064#1045#1053#1054'|'#1050#1086#1076
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'SYS_ROLE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075', '#1085#1072' '#1082#1086#1080#1090#1086' '#1077' '#1056#1040#1047#1056#1045#1064#1045#1053#1054'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 279
          end>
      end
      inherited grdOtherData: TAbmesDBGrid
        Left = 386
        Top = 0
        Width = 360
        Height = 292
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SYS_ROLE_NO'
            Footers = <>
            Title.Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075', '#1085#1072' '#1082#1086#1080#1090#1086' '#1077' '#1047#1040#1041#1056#1040#1053#1045#1053#1054'|'#1050#1086#1076
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'SYS_ROLE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1073#1086#1088#1080' '#1048#1085#1092#1054#1090#1075', '#1085#1072' '#1082#1086#1080#1090#1086' '#1077' '#1047#1040#1041#1056#1040#1053#1045#1053#1054'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 279
          end>
      end
      inherited pnlMoveButtons: TPanel
        Left = 360
        Top = 0
        Height = 292
      end
    end
    object pnlTitle: TPanel
      Left = 8
      Top = 8
      Width = 746
      Height = 41
      Align = alTop
      Caption = #1082#1077#1087#1096#1098#1085' '#1088#1098#1085#1090#1072#1081#1084
      TabOrder = 0
      DesignSize = (
        746
        41)
      object btnNotSysRoleOccupations: TButton
        Left = 600
        Top = 9
        Width = 140
        Height = 25
        Action = actNotSysRoleOccupations
        Anchors = [akTop, akRight]
        TabOrder = 1
      end
      object btnSysRoleOccupations: TButton
        Left = 5
        Top = 9
        Width = 140
        Height = 25
        Action = actSysRoleOccupations
        TabOrder = 0
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conFilter
    FieldDefs = <
      item
        Name = 'FILTER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FILTER_VARIANT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SYS_ROLE_NAME'
        DataType = ftWideString
        Size = 50
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFilterVariantSysRoles'
    object cdsGridDataFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object cdsGridDataFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
    object cdsGridDataSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsGridDataSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsGridDataSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1076#1086#1089#1090#1098#1087' '#1076#1086' '#1074#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1092#1080#1083#1090#1098#1088
    end
    object actNotSysRoleOccupations: TAction
      Caption = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
      Hint = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
      OnExecute = actNotSysRoleOccupationsExecute
      OnUpdate = actNotSysRoleOccupationsUpdate
    end
    object actSysRoleOccupations: TAction
      Caption = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1076#1083#1098#1078#1085#1086#1089#1090#1080'...'
      Hint = #1055#1088#1080#1089#1098#1097' '#1079#1072' '#1076#1083#1098#1078#1085#1086#1089#1090#1080
      OnExecute = actSysRoleOccupationsExecute
      OnUpdate = actSysRoleOccupationsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object pdsGridDataParamsFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conFilter
    Params = <
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FILTER_VARIANT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFilterVariantNotSysRoles'
    object cdsOtherGridDataFILTER_CODE: TAbmesFloatField
      FieldName = 'FILTER_CODE'
    end
    object cdsOtherGridDataFILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'FILTER_VARIANT_CODE'
    end
    object cdsOtherGridDataSYS_ROLE_CODE: TAbmesFloatField
      FieldName = 'SYS_ROLE_CODE'
    end
    object cdsOtherGridDataSYS_ROLE_NO: TAbmesFloatField
      FieldName = 'SYS_ROLE_NO'
    end
    object cdsOtherGridDataSYS_ROLE_NAME: TAbmesWideStringField
      FieldName = 'SYS_ROLE_NAME'
      Size = 150
    end
  end
end
