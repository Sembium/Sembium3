inherited fmVatPeriods: TfmVatPeriods
  Caption = #1044#1044#1057
  ClientHeight = 233
  ClientWidth = 462
  ExplicitWidth = 468
  ExplicitHeight = 259
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 198
    Width = 462
    ExplicitTop = 198
    ExplicitWidth = 462
    inherited pnlOKCancel: TPanel
      Left = 194
      Visible = False
      ExplicitLeft = 194
    end
    inherited pnlClose: TPanel
      Left = 105
      Visible = True
      ExplicitLeft = 105
    end
    inherited pnlApply: TPanel
      Left = 373
      Visible = False
      ExplicitLeft = 373
    end
  end
  inherited pnlMain: TPanel
    Width = 462
    Height = 198
    ExplicitWidth = 462
    ExplicitHeight = 198
    inherited pnlGrid: TPanel
      Width = 446
      Height = 182
      ExplicitWidth = 446
      ExplicitHeight = 182
      inherited pnlNavigator: TPanel
        Width = 446
        ExplicitWidth = 446
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 446
        Height = 158
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083'|'#1054#1090
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'END_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083'|'#1044#1086
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'VAT_PERCENT'
            Footers = <>
            Width = 150
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'VAT_PERIOD_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VAT_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        Attributes = [faRequired]
        DataType = ftTimeStamp
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
    ProviderName = 'prvVatPeriods'
    ConnectionBroker = dmMain.conFinance
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataVAT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'VAT_PERIOD_CODE'
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
    object cdsGridDataVAT_PERCENT: TAbmesFloatField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090' %'
      FieldName = 'VAT_PERCENT'
      Required = True
      OnGetText = cdsGridDataVAT_PERCENTGetText
      OnSetText = cdsGridDataVAT_PERCENTSetText
      OnValidate = cdsGridDataVAT_PERCENTValidate
    end
    object cdsGridData_MAX_VAT_PERIOD_CODE: TAggregateField
      FieldName = '_MAX_VAT_PERIOD_CODE'
      Active = True
      Expression = 'Max(VAT_PERIOD_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1044#1057
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
end
