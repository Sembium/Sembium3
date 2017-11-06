inherited fmAccessRules: TfmAccessRules
  Caption = #1055#1088#1072#1074#1080#1083#1072' '#1079#1072' '#1089#1080#1089#1090#1077#1084#1077#1085' '#1076#1086#1089#1090#1098#1087' - %s'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    inherited pnlOKCancel: TPanel
      Visible = False
    end
    inherited pnlClose: TPanel
      Visible = True
    end
    inherited pnlApply: TPanel
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        AutoFitColWidths = True
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCESS_RULE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 275
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'ACCESS_TYPE_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1098#1087
            Width = 76
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_ACTIVE'
            Footers = <>
            Title.Caption = #1040#1082#1090#1080#1074#1085#1086
            Width = 50
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conLogin
    FieldDefs = <
      item
        Name = 'ACCESS_RULE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ACCESS_RULE_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ACCESS_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'IS_ENABLED'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    ProviderName = 'prvAccessRules'
    object cdsGridDataACCESS_RULE_CODE: TAbmesFloatField
      FieldName = 'ACCESS_RULE_CODE'
      Required = True
    end
    object cdsGridDataACCESS_RULE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_RULE_NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataACCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ACCESS_TYPE_NAME'
      Size = 100
    end
    object cdsGridDataIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1055#1088#1072#1074#1080#1083#1072' '#1079#1072' '#1089#1080#1089#1090#1077#1084#1077#1085' '#1076#1086#1089#1090#1098#1087' - %s'
    end
  end
end
