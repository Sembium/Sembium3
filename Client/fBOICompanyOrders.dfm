inherited fmBOICompanyOrders: TfmBOICompanyOrders
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1054#1073#1089#1083#1091#1078#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNamePlu' +
    'ral% '#1079#1072' '#1057#1088#1077#1076#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlDetailGrid: TPanel
      inherited pnlDetailNavigator: TPanel
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BOI_ORDER_STATUS_CODE'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderItemOrderAbbrev%|'#1057#1090#1072#1090
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'BOI_ORDER_CODE'
            Footers = <>
            Title.Caption = 'ID %BudgetOrderItemOrderAbbrev%|No'
            Width = 24
          end
          item
            EditButtons = <>
            FieldName = 'CONSUMER_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1055#1088#1103#1082' '#1050#1086#1085#1089#1091#1084#1072#1090#1086#1088
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_NAME'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1054#1073#1089#1083#1091#1078#1074#1072#1085#1077' '#1087#1086' '#1054#1088#1076#1077#1088
            Width = 191
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'COMPANY_BOI_PRICE_PERCENT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103'|% '#1086#1090' %BudgetOrderItemAbbrev%'
            Width = 59
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'PLAN_DATE'
            Footers = <>
            Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'DOCUMENT_TYPE_TEXT'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1042#1080#1076' '#1076#1086#1082'.'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'DOCUMENT_ID_TEXT'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|ID '#1044#1086#1082#1091#1084#1077#1085#1090
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1057#1090#1086#1081#1085#1086#1089#1090
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'ACCOUNT_DATE'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_DEVIATION_PERCENT'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083'. (% '#1080' '#1074#1088#1077#1084#1077')|'#1057#1090#1086#1081#1085#1086#1089#1090
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'DATES_DEVIATION'
            Footers = <>
            Title.Caption = #1054#1090#1082#1083'. (% '#1080' '#1074#1088#1077#1084#1077')|'#1056#1079#1088#1074'.'
            Width = 30
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'HAS_FIN_ORDER'
            Footers = <>
            Title.Caption = #1054#1055#1060
            Title.Orientation = tohVertical
            Width = 13
          end>
      end
      inherited pnlBottomGridBottom: TPanel
        inherited edtSumBOPricePercent: TDBEdit
          Left = 508
          Width = 62
          DataField = '_SUM_COMPANY_BOI_PRICE_PERCENT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited edtDetailSumTotalPrice: TDBEdit
          Left = 447
          Width = 61
          DataField = '_SUM_PLAN_TOTAL_PRICE'
        end
        inherited edtSumTotalAccountPrice: TDBEdit
          Left = 749
          DataField = '_SUM_ACCOUNT_TOTAL_PRICE'
        end
      end
    end
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    inherited pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      DisplayLabel = 'No'
    end
    inherited pdsGridDataParamsBUDGET_ORDER_ITEM_TYPE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
    end
    inherited pdsGridDataParamsCOMPANY_CODE: TAbmesFloatField [29]
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
    end
    inherited pdsGridDataParamsBOIO_BEGIN_PLAN_DATE: TAbmesSQLTimeStampField [30]
    end
    inherited pdsGridDataParamsDOCUMENT_ID_TEXT: TAbmesWideStringField [31]
      DisplayLabel = 'ID '#1044#1086#1082#1091#1084#1077#1085#1090
    end
    inherited pdsGridDataParamsBOIO_BEGIN_ACCOUNT_DATE: TAbmesSQLTimeStampField [32]
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' %BudgetOrderItemOrderAbbrev% - '#1054#1090
    end
    inherited pdsGridDataParamsBOIO_END_ACCOUNT_DATE: TAbmesSQLTimeStampField [33]
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1077#1090#1085#1072' '#1076#1072#1090#1072' '#1085#1072' %BudgetOrderItemOrderAbbrev% - '#1054#1090
    end
    inherited pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField [34]
    end
    inherited pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField [35]
    end
    inherited pdsGridDataParamsSTORE_CODE: TAbmesFloatField [36]
      ProviderFlags = []
    end
    inherited pdsGridDataParamsALL_FILTERED_PRODUCTS_2: TAbmesFloatField [37]
      ProviderFlags = []
    end
    inherited pdsGridDataParamsCHOSEN_PRODUCTS_2: TAbmesWideStringField [38]
      ProviderFlags = []
    end
    inherited pdsGridDataParamsBOIO_END_PLAN_DATE: TAbmesSQLTimeStampField [39]
    end
    inherited pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsDCD_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      ProviderFlags = []
    end
  end
end
