inherited fmBOIWasteOrders: TfmBOIWasteOrders
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' - '#1055#1088#1077#1086#1094#1077#1085#1103#1074#1072#1097#1080' '#1087#1086' '#1051#1080#1084#1080#1090#1080' '#1086#1090' %BudgetOrderNameP' +
    'lural% '#1079#1072' '#1057#1088#1077#1076#1072
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
            FieldName = 'DESCRIPTION'
            Footers = <>
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Width = 540
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1055#1083#1072#1085'|% '#1086#1090' %BudgetOrderItemAbbrev%'
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
    inherited pdsGridDataParamsCOMPANY_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsSTORE_CODE: TAbmesFloatField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsBOIO_BEGIN_ACCOUNT_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
    inherited pdsGridDataParamsBOIO_END_ACCOUNT_DATE: TAbmesSQLTimeStampField
      ProviderFlags = []
    end
  end
end
