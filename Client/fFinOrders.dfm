inherited fmFinOrders: TfmFinOrders
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
  ClientHeight = 565
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 530
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
    inline frRealFinModelLineStoreDeals: TfrRealFinModelLineStoreDeals
      Left = 0
      Top = 0
      Width = 114
      Height = 35
      Align = alLeft
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 530
    inherited sptDetail: TSplitter
      Top = 350
      Width = 1001
    end
    inherited pnlDetailGrid: TPanel
      Top = 353
      Width = 1001
      inherited pnlDetailNavigator: TPanel
        Width = 1001
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 96
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1001
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SHOW_NO'
            Footers = <>
            Title.Caption = #1056#1077#1076' '#1086#1090' '#1052#1054#1044#1045#1083'-'#1060
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LINE_QUANTITY_PERCENT'
            Footers = <>
            Title.Caption = #1057#1090#1088'. '#1087#1088'. (%)'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1055#1083#1072#1085
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1089#1090#1072#1090#1098#1082
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'FIN_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1048#1055
            Width = 70
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IN_OUT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1086#1089#1086#1082#1072
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'PARTNER_ACCOUNT_FULL_NAME'
            Footers = <>
            Title.Caption = #1058#1055' '#1055#1072#1088#1090#1085#1100#1086#1088
            Width = 194
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1053#1072#1095#1072#1083#1086
            Width = 60
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1055#1077#1088
            Width = 25
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'MOVEMENT_PLAN_END_DATE'
            Footers = <>
            Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1050#1088#1072#1081
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1060#1044
            Title.Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
            Width = 178
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 342
      inherited pnlNavigator: TPanel
        Width = 1001
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
        object tlbMasterToggles: TToolBar
          Left = 761
          Top = 0
          Width = 240
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 3
          object btnBaseDate: TToolButton
            Left = 0
            Top = 0
            Action = actBaseDate
          end
          object sepRealLate: TToolButton
            Left = 24
            Top = 0
            Width = 8
            Caption = 'sepRealLate'
            ImageIndex = 39
            Style = tbsSeparator
          end
          object btnRealLate: TToolButton
            Left = 32
            Top = 0
            Action = actRealLate
          end
          object btnPercent: TToolButton
            Left = 56
            Top = 0
            Action = actPercent
          end
          object btnBalance: TToolButton
            Left = 80
            Top = 0
            Action = actBalance
          end
          object sepInvoice: TToolButton
            Left = 104
            Top = 0
            Width = 8
            Caption = 'sepInvoice'
            ImageIndex = 39
            Style = tbsSeparator
          end
          object btnPartner: TToolButton
            Left = 112
            Top = 0
            Action = actPartner
          end
          object btnBndProcessObjectInfo: TToolButton
            Left = 136
            Top = 0
            Action = actBndProcessObjectInfo
          end
          object btnInvoice: TToolButton
            Left = 160
            Top = 0
            Action = actInvoice
          end
          object btnNotes: TToolButton
            Left = 184
            Top = 0
            Action = actNotes
          end
          object sepBaseCurrency: TToolButton
            Left = 208
            Top = 0
            Width = 8
            Caption = 'sepBaseCurrency'
            ImageIndex = 140
            Style = tbsSeparator
          end
          object btnBaseCurrency: TToolButton
            Left = 216
            Top = 0
            Action = actBaseCurrency
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 277
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072' '#1090#1091#1089
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'FIN_PROCESS_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089' '#1043#1077#1085#1077#1088#1072#1090#1086#1088
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'FIN_ORDER_IDENTIFIER'
            Footers = <>
            Title.Caption = 'ID '#1054#1055#1060
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PRIORITY_FULL_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
            Title.Orientation = tohVertical
            Width = 20
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'PLAN_BEGIN_DATE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1090'|'#1044#1072#1090#1072
            Width = 60
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE_DIFF'
            Footers = <>
            Title.Caption = #1057#1090#1072#1088#1090'|'#1056#1079#1088#1074
            Width = 30
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BASE_DATE'
            Footers = <>
            Title.Caption = #1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'EXEC_DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080'- '#1079#1072#1090#1086#1088
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1060#1054#1073
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_IN_QTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1055#1083#1072#1085
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_IN_QTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1089#1090#1072#1090#1098#1082
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_IN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_IN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_IN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_IN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_IN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_IN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_OUT_QTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1055#1083#1072#1085
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_OUT_QTY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Microsoft Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1089#1090#1072#1090#1098#1082
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_OUT_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_OUT_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_OUT_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_OUT_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_OUT_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_OUT_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1055#1083#1072#1085
            Visible = False
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1089#1090#1072#1090#1098#1082
            Visible = False
            Width = 143
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Visible = False
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'PARTNER_NAME'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'PARTNER_SHORT_NAME'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'DOCUMENT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1060#1072#1082#1090#1091#1088#1072'|'#1053#1086#1084#1077#1088
            Visible = False
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'DOCUMENT_DATE'
            Footers = <>
            Title.Caption = #1060#1072#1082#1090#1091#1088#1072'|'#1044#1072#1090#1072
            Visible = False
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_INFO'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1054#1055#1060
            Visible = False
            Width = 178
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Title.Hint = #1041#1077#1083#1077#1078#1082#1080
            Visible = False
            Width = 178
          end>
      end
      object pnlMasterButtons: TPanel
        Left = 0
        Top = 301
        Width = 1001
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btnAddData: TBitBtn
          Left = 0
          Top = 10
          Width = 105
          Height = 25
          Action = actInsertRecord
          Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 0
        end
        object btnEditData: TBitBtn
          Left = 113
          Top = 10
          Width = 105
          Height = 25
          Action = actEditRecord
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
            FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
            00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
            0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
            00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
            0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
            000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 1
        end
        object btnFinModel: TBitBtn
          Left = 226
          Top = 10
          Width = 105
          Height = 25
          Action = actFinModel
          Caption = #1056'-'#1052#1054#1044#1045#1083'-'#1060'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000000000000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Spacing = -1
          TabOrder = 2
        end
        object btnBndProcessObject: TBitBtn
          Left = 832
          Top = 10
          Width = 169
          Height = 25
          Action = actBndProcessObject
          Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF0000000000000000000000000000000000FFFF
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF0000000000FF00
            FF00FF00FF00FF00FF00000000000000000000000000FF00FF0000000000FFFF
            FF00FF00FF00FF00FF00FF00FF00848484000000000000000000000000008484
            8400FF00FF00000000000000000000000000FF00FF00FF00FF0000000000FFFF
            FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FF00FF000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            00008484840000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF008484840000000000FFFF0000000000000000000000000000FFFFFF000000
            0000FF00FF000000000084848400FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
            0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
            0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
            000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF000000
            0000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00848484000000000000000000000000000000000000000000000000000000
            0000FF00FF000000000084848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00848484000000000000000000000000008484
            8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 3
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 208
    Top = 224
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conFinance
    FieldDefs = <
      item
        Name = 'FIN_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_PROCESS_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FIN_ORDER_BRANCH_NO'
        DataType = ftFloat
      end
      item
        Name = 'FIN_ORDER_NO'
        DataType = ftFloat
      end
      item
        Name = 'FIN_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'PLAN_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'BEGIN_DATE_DIFF'
        DataType = ftFloat
      end
      item
        Name = 'MODEL_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'EXEC_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_FINANCIAL_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PLAN_IN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_IN_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_IN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_IN_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_IN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_IN_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_IN_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_IN_QTY_BC_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_IN_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_IN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_IN_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_IN_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_IN_QTY_BC_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_IN_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_OUT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_OUT_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_OUT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_OUT_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_OUT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_OUT_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_OUT_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_OUT_QTY_BC_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_OUT_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_OUT_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_OUT_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_OUT_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_OUT_QTY_BC_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_OUT_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_QTY'
        DataType = ftFloat
      end
      item
        Name = 'REMAINING_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_QTY_BC_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_PLAN_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_QTY'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_QTY_BC'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_QTY_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_QTY_BC_PERCENT'
        DataType = ftFloat
      end
      item
        Name = 'LATE_REAL_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PARTNER_FULL_NAME'
        DataType = ftWideString
        Size = 153
      end
      item
        Name = 'PARTNER_BULSTAT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_COUNTRY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PARTNER_CITY'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'BND_PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FIN_CLASS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 93
      end
      item
        Name = 'PRIORITY_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'PRIORITY_BACKGROUND_COLOR'
        DataType = ftFloat
      end
      item
        Name = 'DOCUMENT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DOCUMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'BASE_DATA_CHANGED'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_NAME'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 250
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_MOVEMENT_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXEC_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_COMPANIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_BASE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DOCUMENT_IDENTIFIER'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DOCUMENT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_OUT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_PROCESS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUDGET_ORDER_ITEM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BOI_ORDER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BND_BUDGET_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinOrdersMaster'
    Left = 176
    Top = 224
    object cdsGridDataFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsGridDataSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
      OnGetText = cdsGridDataSTATUS_CODEGetText
    end
    object cdsGridDataFIN_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_PROCESS_ABBREV'
      Size = 100
    end
    object cdsGridDataFIN_ORDER_BRANCH_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_NO'
    end
    object cdsGridDataFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsGridDataFIN_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_ORDER_IDENTIFIER'
      Size = 81
    end
    object cdsGridDataBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
      Required = True
    end
    object cdsGridDataPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
    end
    object cdsGridDataBEGIN_DATE_DIFF: TAbmesFloatField
      FieldName = 'BEGIN_DATE_DIFF'
    end
    object cdsGridDataMODEL_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MODEL_DURATION_DAYS'
    end
    object cdsGridDataEXEC_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'EXEC_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
    end
    object cdsGridDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPLAN_IN_QTY: TAbmesFloatField
      FieldName = 'PLAN_IN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPLAN_IN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_IN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREMAINING_IN_QTY: TAbmesFloatField
      FieldName = 'REMAINING_IN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREMAINING_IN_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_IN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_IN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_IN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_IN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_PLAN_IN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_PLAN_IN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_IN_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_IN_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_REAL_IN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_REAL_IN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_IN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_IN_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_IN_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataPLAN_OUT_QTY: TAbmesFloatField
      FieldName = 'PLAN_OUT_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPLAN_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_OUT_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREMAINING_OUT_QTY: TAbmesFloatField
      FieldName = 'REMAINING_OUT_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREMAINING_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_OUT_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_OUT_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_OUT_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_PLAN_OUT_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_PLAN_OUT_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_OUT_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_OUT_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_REAL_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_REAL_OUT_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_OUT_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_OUT_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_OUT_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataPLAN_QTY: TAbmesFloatField
      FieldName = 'PLAN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPLAN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREMAINING_QTY: TAbmesFloatField
      FieldName = 'REMAINING_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREMAINING_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_PLAN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_PLAN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_REAL_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataLATE_REAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
    object cdsGridDataBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
    end
    object cdsGridDataFIN_CLASS_NAME: TAbmesWideStringField
      FieldName = 'FIN_CLASS_NAME'
      Size = 100
    end
    object cdsGridDataPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
    object cdsGridDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataDOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOCUMENT_DATE'
    end
    object cdsGridDataBASE_DATA_CHANGED: TAbmesFloatField
      FieldName = 'BASE_DATA_CHANGED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
      ReadOnly = True
      Size = 250
    end
    object cdsGridDataBND_PROCESS_OBJECT_INFO: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_INFO'
      Size = 250
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField
      FieldName = '_MIN_WORK_FINANCIAL_PRODUCT_CODE'
      Active = True
      Expression = 'Min(WORK_FINANCIAL_PRODUCT_CODE)'
    end
    object cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField
      FieldName = '_MAX_WORK_FINANCIAL_PRODUCT_CODE'
      Active = True
      Expression = 'Max(WORK_FINANCIAL_PRODUCT_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 328
    Top = 0
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actRealLate: TAction
      Caption = 'actRealLate'
      GroupIndex = 1
      Hint = #1054#1090#1095#1077#1090#1085#1080'/'#1055#1083#1072#1085#1086#1074#1080' '#1079#1072#1082#1098#1089#1085#1077#1085#1080#1103
      ImageIndex = 70
      OnExecute = actRealLateExecute
    end
    object actPercent: TAction
      Caption = 'actPercent'
      GroupIndex = 2
      Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077' '#1074' %'
      ImageIndex = 119
      OnExecute = actPercentExecute
    end
    object actBalance: TAction
      Caption = 'actBalance'
      GroupIndex = 3
      Hint = #1041#1072#1083#1072#1085#1089
      ImageIndex = 139
      OnExecute = actBalanceExecute
    end
    object actBndProcessObject: TAction
      Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
      ImageIndex = 61
      OnExecute = actBndProcessObjectExecute
      OnUpdate = actBndProcessObjectUpdate
    end
    object actFinModel: TAction
      Caption = #1056'-'#1052#1054#1044#1045#1083'-'#1060'...'
      ImageIndex = 47
      OnExecute = actFinModelExecute
      OnUpdate = actFinModelUpdate
    end
    object actBaseCurrency: TAction
      Caption = 'actBaseCurrency'
      GroupIndex = 4
      Hint = #1042' '#1086#1089#1085#1086#1074#1085#1072' '#1074#1072#1083#1091#1090#1072
      ImageIndex = 38
      OnExecute = actBaseCurrencyExecute
    end
    object actPartner: TAction
      Checked = True
      GroupIndex = 5
      Hint = #1055#1072#1088#1090#1085#1100#1086#1088' '#1080' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
      ImageIndex = 62
      OnExecute = actPartnerExecute
    end
    object actBndProcessObjectInfo: TAction
      GroupIndex = 5
      Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1054#1055#1060
      ImageIndex = 80
      OnExecute = actBndProcessObjectInfoExecute
    end
    object actInvoice: TAction
      GroupIndex = 5
      Hint = #1060#1072#1082#1090#1091#1088#1072
      ImageIndex = 21
      OnExecute = actInvoiceExecute
    end
    object actNotes: TAction
      GroupIndex = 5
      Hint = #1041#1077#1083#1077#1078#1082#1080
      ImageIndex = 57
      OnExecute = actNotesExecute
    end
    object actBaseDate: TAction
      Caption = 'actBaseDate'
      GroupIndex = 6
      Hint = #1041#1072#1079#1086#1074#1072' '#1076#1072#1090#1072
      ImageIndex = 79
      OnExecute = actBaseDateExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 176
    Top = 256
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089'  - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089'  - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'FIN_PROCESS_CODE'
      OnChange = pdsGridDataParamsFIN_PROCESS_CODEChange
    end
    object pdsGridDataParamsFIN_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'FIN_ORDER_BRANCH_CODE'
    end
    object pdsGridDataParamsFIN_ORDER_NO: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'FIN_ORDER_NO'
    end
    object pdsGridDataParamsBEGIN_MOVEMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_MOVEMENT_DATE'
    end
    object pdsGridDataParamsEND_MOVEMENT_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'END_MOVEMENT_DATE'
    end
    object pdsGridDataParamsEXEC_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088
      FieldName = 'EXEC_DEPT_CODE'
    end
    object pdsGridDataParamsWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074' '#1054#1073#1077#1082#1090
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088#1080
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsGridDataParamsBEGIN_BASE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_BASE_DATE'
    end
    object pdsGridDataParamsEND_BASE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1041#1072#1079#1086#1074#1072' '#1044#1072#1090#1072' - '#1050#1088#1072#1081
      FieldName = 'END_BASE_DATE'
    end
    object pdsGridDataParamsHAS_DOCUMENT_IDENTIFIER: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074' '#1089#1090#1072#1090#1091#1089
      FieldName = 'HAS_DOCUMENT_IDENTIFIER'
      OnChange = pdsGridDataParamsHAS_DOCUMENT_IDENTIFIERChange
    end
    object pdsGridDataParamsDOCUMENT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1060#1072#1082#1090#1091#1088#1072' No'
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 255
    end
    object pdsGridDataParamsDOCUMENT_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'DOCUMENT_BEGIN_DATE'
    end
    object pdsGridDataParamsDOCUMENT_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072' - '#1050#1088#1072#1081
      FieldName = 'DOCUMENT_END_DATE'
    end
    object pdsGridDataParamsFIN_CLASS_CODE: TAbmesFloatField
      DisplayLabel = #1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1057#1090#1072#1090#1080#1103
      FieldName = 'FIN_CLASS_CODE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1055' No'
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsSALE_SHIPMENT_NO: TAbmesFloatField
      DisplayLabel = #1056#1050
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object pdsGridDataParamsDCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'DCD_BRANCH_CODE'
    end
    object pdsGridDataParamsDCD_CODE: TAbmesFloatField
      DisplayLabel = #1055#1044#1044' No'
      FieldName = 'DCD_CODE'
    end
    object pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object pdsGridDataParamsBND_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'BND_PRODUCT_CODE'
    end
    object pdsGridDataParamsBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object pdsGridDataParamsBUDGET_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1041#1057' No'
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object pdsGridDataParamsBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      DisplayLabel = #1051#1041#1057' No'
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object pdsGridDataParamsBOI_ORDER_CODE: TAbmesFloatField
      DisplayLabel = #1054#1051#1041#1057' No'
      FieldName = 'BOI_ORDER_CODE'
    end
    object pdsGridDataParamsBND_BUDGET_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1080#1103
      FieldName = 'BND_BUDGET_PRODUCT_CODE'
    end
    object pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsGridDataParamsREQUEST_NO: TAbmesFloatField
      DisplayLabel = #1055#1044#1050' No'
      FieldName = 'REQUEST_NO'
    end
    object pdsGridDataParams_FIN_PROCESS_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_FIN_PROCESS_ABBREV'
      LookupDataSet = cdsFinProcesses
      LookupKeyFields = 'PROCESS_CODE'
      LookupResultField = 'PROCESS_ABBREV'
      KeyFields = 'FIN_PROCESS_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsALL_FILTERED_COMPANIES: TAbmesFloatField
      FieldName = 'ALL_FILTERED_COMPANIES'
    end
    object pdsGridDataParamsIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 208
    Top = 256
  end
  inherited dsData: TDataSource
    Left = 208
    Top = 192
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 176
    Top = 192
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinOrdersDetail'
    object cdsDetailRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
    end
    object cdsDetailRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
    end
    object cdsDetailFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsDetailFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
    end
    object cdsDetailFIN_MODEL_LINE_NO: TAbmesFloatField
      FieldName = 'FIN_MODEL_LINE_NO'
    end
    object cdsDetailSHOW_NO: TAbmesWideStringField
      FieldName = 'SHOW_NO'
      Size = 141
    end
    object cdsDetailLINE_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LINE_QUANTITY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailPLAN_QTY: TAbmesFloatField
      FieldName = 'PLAN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsDetailPLAN_QTY_BC: TAbmesFloatField
      FieldName = 'PLAN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsDetailREMAINING_QTY: TAbmesFloatField
      FieldName = 'REMAINING_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsDetailREMAINING_QTY_BC: TAbmesFloatField
      FieldName = 'REMAINING_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsDetailLATE_PLAN_QTY: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsDetailLATE_PLAN_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsDetailLATE_PLAN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailLATE_PLAN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_PLAN_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailLATE_PLAN_DAYS: TAbmesFloatField
      FieldName = 'LATE_PLAN_DAYS'
      DisplayFormat = ',0'
    end
    object cdsDetailLATE_REAL_QTY: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsDetailLATE_REAL_QTY_BC: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsDetailLATE_REAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailLATE_REAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'LATE_REAL_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailLATE_REAL_DAYS: TAbmesFloatField
      FieldName = 'LATE_REAL_DAYS'
      DisplayFormat = ',0'
    end
    object cdsDetailFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsDetailIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      OnGetText = cdsDetailIN_OUTGetText
    end
    object cdsDetailPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_ACCOUNT_FULL_NAME'
      Size = 250
    end
    object cdsDetailMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
    end
    object cdsDetailMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_END_DATE'
    end
    object cdsDetailMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object cdsDetailFIN_MODEL_LINE_REASON_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
      Size = 5
    end
  end
  inherited tmrMaster: TTimer
    Left = 392
  end
  object cdsFinProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinProcesses'
    Left = 240
    Top = 224
    object cdsFinProcessesPROCESS_CODE: TAbmesFloatField
      FieldName = 'PROCESS_CODE'
    end
    object cdsFinProcessesPROCESS_ABBREV: TAbmesWideStringField
      DisplayWidth = 8
      FieldName = 'PROCESS_ABBREV'
      Size = 100
    end
    object cdsFinProcessesPROCESS_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_NAME'
      Size = 100
    end
    object cdsFinProcessesPROCESS_NO: TAbmesFloatField
      FieldName = 'PROCESS_NO'
    end
    object cdsFinProcessesIS_MANUALLY_USABLE: TAbmesFloatField
      FieldName = 'IS_MANUALLY_USABLE'
    end
  end
  object cdsFinOrderBndObject: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <
      item
        DataType = ftFloat
        Name = 'FIN_ORDER_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFinOrderBndObject'
    Left = 368
    Top = 224
    object cdsFinOrderBndObjectFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsFinOrderBndObjectSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsFinOrderBndObjectSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsFinOrderBndObjectSALE_SHIPMENT_NO: TAbmesFloatField
      FieldName = 'SALE_SHIPMENT_NO'
    end
    object cdsFinOrderBndObjectDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
    end
    object cdsFinOrderBndObjectDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
    end
    object cdsFinOrderBndObjectDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
    end
    object cdsFinOrderBndObjectREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsFinOrderBndObjectREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsFinOrderBndObjectBUDGET_ORDER_BRANCH_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_BRANCH_CODE'
    end
    object cdsFinOrderBndObjectBUDGET_ORDER_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_CODE'
    end
    object cdsFinOrderBndObjectBUDGET_ORDER_ITEM_CODE: TAbmesFloatField
      FieldName = 'BUDGET_ORDER_ITEM_CODE'
    end
    object cdsFinOrderBndObjectBOI_ORDER_CODE: TAbmesFloatField
      FieldName = 'BOI_ORDER_CODE'
    end
  end
end
