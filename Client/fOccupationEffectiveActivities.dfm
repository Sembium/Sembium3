inherited fmOccupationEffectiveActivities: TfmOccupationEffectiveActivities
  Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
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
            Title.Caption = #1055#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 269
          end
          item
            EditButtons = <>
            FieldName = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
            Footers = <>
            Title.Caption = #1055#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1054#1090' '#1053#1072#1073#1086#1088#1080
            Width = 120
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
            Title.Caption = #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = 'ACTIVITY_NAME'
            Footers = <>
            Title.Caption = #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 268
          end
          item
            EditButtons = <>
            FieldName = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
            Footers = <>
            Title.Caption = #1053#1077#1087#1088#1080#1089#1098#1097#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080'|'#1042' '#1053#1072#1073#1086#1088#1080
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
        object pnOccupationInfo: TPanel
          Left = 0
          Top = 0
          Width = 1001
          Height = 29
          Align = alTop
          TabOrder = 0
          object lblOccupationName: TLabel
            Left = 8
            Top = 8
            Width = 53
            Height = 13
            Caption = #1044#1083#1098#1078#1085#1086#1089#1090
          end
          object edtOccupationName: TDBEdit
            Left = 73
            Top = 4
            Width = 278
            Height = 21
            Color = clBtnFace
            DataField = 'OCCUPATION_NAME'
            DataSource = dsData
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'ACTIVITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'ACTIVITY_NAME'
        DataType = ftWideString
        Size = 150
      end
      item
        Name = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
        DataType = ftWideString
        Size = 250
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationEffectiveActivities'
    object cdsGridDataACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsGridDataACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object cdsGridDataACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsGridDataOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
      Size = 250
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1077#1081#1089#1090#1074#1077#1085#1080' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1080' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
  end
  inherited cdsOtherGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conHumanResource
    Params = <
      item
        DataType = ftFloat
        Name = 'OCCUPATION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOccupationNotEffectiveActivities'
    object cdsOtherGridDataACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ACTIVITY_CODE'
    end
    object cdsOtherGridDataACTIVITY_NO: TAbmesFloatField
      FieldName = 'ACTIVITY_NO'
    end
    object cdsOtherGridDataACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 150
    end
    object cdsOtherGridDataOCC_ACTIVITY_SYS_ROLE_NAMES: TAbmesWideStringField
      FieldName = 'OCC_ACTIVITY_SYS_ROLE_NAMES'
      Size = 250
    end
  end
end
