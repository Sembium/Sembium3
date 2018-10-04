inherited fmXModelInsertSpecModelVariantNo: TfmXModelInsertSpecModelVariantNo
  Left = 203
  Top = 208
  Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
  ClientHeight = 287
  ClientWidth = 965
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 252
    Width = 965
    inherited pnlOKCancel: TPanel
      Left = 697
    end
    inherited pnlClose: TPanel
      Left = 608
    end
    inherited pnlApply: TPanel
      Left = 876
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 965
    Height = 252
    inherited pnlGrid: TPanel
      Width = 949
      Height = 236
      inherited pnlNavigator: TPanel
        Width = 949
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 949
        Height = 212
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SPEC_MODEL_VARIANT_NO'
            Footers = <>
            Title.Caption = #8470
            Width = 30
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAIN_DEPT_NAME'
            Footers = <>
            Title.Caption = #1043#1083#1072#1074#1085#1086' '#1058#1055' '#1048#1079#1087#1098#1083#1085#1080#1090#1077#1083'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 171
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAIN_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1043#1083#1072#1074#1085#1086' '#1058#1055' '#1048#1079#1087#1098#1083#1085#1080#1090#1077#1083'|'#1050#1086#1076
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MIN_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MAX_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1044#1086
            Width = 60
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'IS_EST_VARIANT'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087'.'
            Title.Hint = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1077#1085
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Width = 223
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AUTHORIZATION_EMPLOYEE_NO'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1050#1086#1076
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AUTHORIZATION_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1048#1084#1077
            Width = 151
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AUTHORIZATION_DATE'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083'|'#1085#1072' '#1076#1072#1090#1072
            Width = 60
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conXModels
    Filter = 'AUTHORIZATION_OF_OPERATIONS = 1'
    FieldDefs = <
      item
        Name = 'SPEC_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SPEC_MODEL_VARIANT_NO'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MAIN_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'MAIN_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'RESULT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MIN_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MAX_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZATION_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'AUTHORIZATION_EMPLOYEE_NAME'
        DataType = ftWideString
        Size = 41
      end
      item
        Name = 'AUTHORIZATION_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'AUTHORIZATION_EMPLOYEE_NO'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'SPEC_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAIN_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TECH_QUANTITY'
        ParamType = ptInput
      end>
    ProviderName = 'prvAuthorizedSpecModelVariants'
    object cdsGridDataSPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsGridDataSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsGridDataMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsGridDataMAIN_DEPT_NAME: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_NAME'
      Size = 100
    end
    object cdsGridDataMAIN_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MAIN_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataRESULT_STORE_CODE: TAbmesFloatField
      FieldName = 'RESULT_STORE_CODE'
    end
    object cdsGridDataMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataAUTHORIZATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_CODE'
    end
    object cdsGridDataAUTHORIZATION_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZATION_EMPLOYEE_NAME'
      Size = 41
    end
    object cdsGridDataAUTHORIZATION_EMPLOYEE_NO: TAbmesFloatField
      FieldName = 'AUTHORIZATION_EMPLOYEE_NO'
    end
    object cdsGridDataAUTHORIZATION_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZATION_DATE'
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsGridDataAUTHORIZATION_OF_OPERATIONS: TAbmesFloatField
      FieldName = 'AUTHORIZATION_OF_OPERATIONS'
    end
    object cdsGridDataIS_EST_VARIANT: TAbmesFloatField
      FieldName = 'IS_EST_VARIANT'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1077#1088#1077#1090#1077' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083
    end
  end
end
