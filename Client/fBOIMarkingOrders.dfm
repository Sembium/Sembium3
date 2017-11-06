inherited fmBOIMarkingOrders: TfmBOIMarkingOrders
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1052#1072#1088#1082#1080#1088#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNamePlur' +
    'al% '#1079#1072' '#1057#1088#1077#1076#1072
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlDetailGrid: TPanel
      inherited pnlDetailNavigator: TPanel
        AutoSize = True
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
        inherited tlbDocs: TToolBar
          Width = 398
          object sepDeliveryIdentifier: TToolButton
            Left = 390
            Top = 0
            Width = 8
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
        object tlbShowDeliveryIdentifier: TToolBar
          Left = 598
          Top = 0
          Width = 97
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 25
          EdgeInner = esNone
          Images = dmMain.ilActions
          TabOrder = 3
          object btnShowDeliveryIdentifier: TSpeedButton
            Tag = 2
            Left = 0
            Top = 0
            Width = 97
            Height = 25
            AllowAllUp = True
            GroupIndex = 3
            Caption = #1054#1073#1074#1098#1088#1079'. '#1089' '#1054#1055#1044
            Flat = True
          end
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
            FieldName = 'DESCRIPTION'
            Footers = <>
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Width = 459
          end
          item
            EditButtons = <>
            FieldName = 'DELIVERY_IDENTIFIER'
            Footers = <>
            Tag = 3
            Title.Caption = 'ID '#1054#1055#1044
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'WASTE_BOI_PRICE_PERCENT'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|% '#1086#1090' %BudgetOrderItemAbbrev%'
            Width = 65
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'PLAN_DATE'
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1057#1090#1086#1081#1085#1086#1089#1090
            Width = 72
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'ACCOUNT_DATE'
            Footers = <>
            Title.Caption = #1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Width = 31
          end>
      end
      inherited pnlBottomGridBottom: TPanel
        inherited edtSumBOPricePercent: TDBEdit
          Left = 754
          DataField = '_SUM_WASTE_BOI_PRICE_PERCENT'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited edtDetailSumTotalPrice: TDBEdit
          Left = 680
          Width = 74
          DataField = '_SUM_PLAN_TOTAL_PRICE'
        end
        inherited edtSumTotalAccountPrice: TDBEdit
          Left = 852
          Width = 72
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
    inherited pdsGridDataParamsSTORE_CODE: TAbmesFloatField [32]
    end
    inherited pdsGridDataParamsALL_FILTERED_PRODUCTS_2: TAbmesFloatField [33]
    end
    inherited pdsGridDataParamsCHOSEN_PRODUCTS_2: TAbmesWideStringField [34]
    end
    inherited pdsGridDataParamsBOIO_BEGIN_ACCOUNT_DATE: TAbmesSQLTimeStampField [35]
      ProviderFlags = []
    end
    inherited pdsGridDataParamsBOIO_END_ACCOUNT_DATE: TAbmesSQLTimeStampField [36]
      ProviderFlags = []
    end
    inherited pdsGridDataParamsDOCUMENT_ID_TEXT: TAbmesWideStringField [37]
      ProviderFlags = []
    end
    inherited pdsGridDataParamsDELIVERY_DEAL_TYPE_CODE: TAbmesFloatField [38]
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1058#1080#1087
    end
    inherited pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField [39]
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1058#1055' '#1043#1083'.'
    end
    inherited pdsGridDataParamsDCD_CODE: TAbmesFloatField [40]
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1055#1044#1044' No'
    end
    inherited pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField [41]
      DisplayLabel = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1054#1055#1044' - '#1054#1055#1044' No'
    end
    inherited pdsGridDataParams_DELIVERY_BRANCH_IDENTIFIER: TAbmesWideStringField [42]
    end
    inherited pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField [43]
    end
    inherited pdsGridDataParamsORG_TASK_PROPOSAL_STATE_CODE: TAbmesFloatField [44]
    end
    inherited pdsGridDataParams_ORG_TASK_PROPOSAL_STATE_NAME: TAbmesWideStringField [45]
    end
  end
end
