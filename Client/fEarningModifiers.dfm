inherited fmEarningModifiers: TfmEarningModifiers
  Left = 226
  Top = 165
  Caption = #1050#1086#1088#1077#1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
  ClientHeight = 360
  ClientWidth = 502
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 325
    Width = 502
    inherited pnlOKCancel: TPanel
      Left = 234
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 145
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 413
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 502
    Height = 325
    inherited pnlGrid: TPanel
      Width = 486
      Height = 309
      inherited pnlNavigator: TPanel
        Width = 486
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 486
        Height = 285
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083'|'#1054#1090
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'END_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083'|'#1044#1086
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'LABOUR_COST_COEF'
            Footers = <>
            Width = 135
          end
          item
            EditButtons = <>
            FieldName = 'ORGANIZATION_COST_COEF'
            Footers = <>
            Width = 155
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'EARNING_MODIFIER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'LABOUR_COST_COEF'
        DataType = ftFloat
      end
      item
        Name = 'ORGANIZATION_COST_COEF'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvEarningModifiers'
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataEARNING_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'EARNING_MODIFIER_CODE'
      Required = True
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsGridDataLABOUR_COST_COEF: TAbmesFloatField
      DisplayLabel = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1086#1073#1097#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1079#1072' '#1090#1088#1091#1076' ('#1050#1086#1074#1089#1090')'
      FieldName = 'LABOUR_COST_COEF'
      Required = True
      DisplayFormat = '0.00'
      MaxValue = 999.000000000000000000
      MinValue = 1.000000000000000000
    end
    object cdsGridDataORGANIZATION_COST_COEF: TAbmesFloatField
      DisplayLabel = #1050#1086#1077#1092#1080#1094#1080#1077#1085#1090' '#1085#1072' '#1086#1073#1097#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1079#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103' ('#1050#1086#1074#1089#1086')'
      FieldName = 'ORGANIZATION_COST_COEF'
      Required = True
      DisplayFormat = '0.00'
      MaxValue = 999.000000000000000000
    end
    object cdsGridData_MAX_EARNING_MODIFIER_CODE: TAggregateField
      FieldName = '_MAX_EARNING_MODIFIER_CODE'
      Active = True
      Expression = 'Max(EARNING_MODIFIER_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1050#1086#1088#1077#1082#1090#1080#1074#1080' '#1085#1072' '#1042#1057' '#1079#1072' '#1090#1088#1091#1076
    end
    inherited actFilter: TAction
      Visible = True
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
  end
end
