inherited fmRealFinModelLineGroups: TfmRealFinModelLineGroups
  Caption = #1043#1088#1091#1087#1080' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
  ClientHeight = 524
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 489
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
    object pnlButtons: TPanel
      Left = 0
      Top = 0
      Width = 382
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object btnEditDetailData: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = actEditDetailRecord
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
        Spacing = -1
        TabOrder = 0
      end
      object btnFinOrder: TBitBtn
        Left = 122
        Top = 2
        Width = 81
        Height = 25
        Action = actFinOrder
        Caption = #1054#1055#1060'...'
        Spacing = -1
        TabOrder = 1
      end
      object btnBndProcessObject: TBitBtn
        Left = 212
        Top = 2
        Width = 169
        Height = 25
        Action = actBndProcessObject
        Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
        TabOrder = 2
      end
    end
    object pnlProgressBar: TPanel
      Left = 494
      Top = 0
      Width = 166
      Height = 35
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        166
        35)
      object pbGroupProcessing: TProgressBar
        Left = -93
        Top = 6
        Width = 235
        Height = 17
        Anchors = [akTop, akRight]
        TabOrder = 0
        Visible = False
      end
    end
    inline frRealFinModelLineStoreDeals: TfrRealFinModelLineStoreDeals
      Left = 382
      Top = 0
      Width = 112
      Height = 35
      Align = alLeft
      TabOrder = 5
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 489
    inherited sptDetail: TSplitter
      Top = 309
      Width = 1001
    end
    inherited pnlDetailGrid: TPanel
      Top = 312
      Width = 1001
      inherited pnlDetailNavigator: TPanel
        Width = 1001
        inherited navDetail: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 120
        end
        object tlbGroupTools: TToolBar
          Left = 685
          Top = 0
          Width = 316
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonWidth = 158
          Caption = 'tlbGroupTools'
          Images = dmMain.ilActions
          List = True
          ShowCaptions = True
          TabOrder = 2
          object btnActivateGroupModels: TToolButton
            Left = 0
            Top = 0
            Action = actActivateGroupModels
          end
          object btnCloseGroupOrders: TToolButton
            Left = 158
            Top = 0
            Action = actCloseGroupOrders
          end
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1001
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'FIN_ORDER_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072' '#1090#1091#1089
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'FIN_PROCESS_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094' '#1043#1077#1085
            Width = 40
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
            Width = 26
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
            Width = 60
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
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'REAL_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090'|'#1050'-'#1074#1086
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'REAL_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090'|%'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'MAX_REAL_DATE'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'BND_PROCESS_OBJECT_INFO'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077'|'#1054#1055#1060
            Width = 147
          end
          item
            EditButtons = <>
            FieldName = 'FIN_MODEL_LINE_REASON_ABBREV'
            Footers = <>
            Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077'|'#1057#1060#1044
            Title.Hint = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1086' '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'DOCUMENT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090'|No'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'DOCUMENT_DATE'
            Footers = <>
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090'|'#1044#1072#1090#1072
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Visible = False
            Width = 383
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 301
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
        object tlbMasterToggles: TToolBar
          Left = 809
          Top = 0
          Width = 192
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 3
          object btnLatePlan: TToolButton
            Left = 0
            Top = 0
            Action = actLatePlan
          end
          object btnLateReal: TToolButton
            Left = 24
            Top = 0
            Action = actLateReal
          end
          object btnReal: TToolButton
            Left = 48
            Top = 0
            Action = actReal
          end
          object sepPercent: TToolButton
            Left = 72
            Top = 0
            Width = 8
            Caption = 'sepPercent'
            ImageIndex = 39
            Style = tbsSeparator
          end
          object btnPercent: TToolButton
            Left = 80
            Top = 0
            Action = actPercent
          end
          object btnBalance: TToolButton
            Left = 104
            Top = 0
            Action = actBalance
          end
          object sepBaseCurrency: TToolButton
            Left = 128
            Top = 0
            Width = 8
            Caption = 'sepBaseCurrency'
            ImageIndex = 140
            Style = tbsSeparator
          end
          object btnBaseCurrency: TToolButton
            Left = 136
            Top = 0
            Action = actBaseCurrency
          end
          object sepNotes: TToolButton
            Left = 160
            Top = 0
            Width = 8
            Caption = 'sepNotes'
            ImageIndex = 39
            Style = tbsSeparator
          end
          object btnNotes: TToolButton
            Left = 168
            Top = 0
            Action = actNotes
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
        VertScrollBar.VisibleMode = sbAlwaysShowEh
        OnGetCellParams = grdDataGetCellParams
        Columns = <
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
            FieldName = 'PARTNER_SHORT_NAME'
            Footers = <>
            Title.Caption = #1055#1072#1088#1090#1085#1100#1086#1088
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1060#1054#1073
            Width = 49
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
            Width = 60
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
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_IN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_IN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_IN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_IN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_IN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_IN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'REAL_IN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095#1077#1090'|'#1050'-'#1074#1086
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'REAL_IN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095#1077#1090'|%'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'MAX_REAL_IN_DATE'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|+|'#1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Visible = False
            Width = 60
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
            Width = 60
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
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_OUT_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_OUT_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_OUT_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_OUT_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_OUT_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_OUT_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'REAL_OUT_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095#1077#1090'|'#1050'-'#1074#1086
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'REAL_OUT_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095#1077#1090'|%'
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'MAX_REAL_OUT_DATE'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#8212'|'#1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Visible = False
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PLAN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1055#1083#1072#1085
            Visible = False
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'REMAINING_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1089#1090#1072#1090#1098#1082
            Visible = False
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1050'-'#1074#1086
            Visible = False
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|%'
            Visible = False
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'LATE_PLAN_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1047#1072#1082#1098#1089#1085#1077#1085#1080#1077'|'#1055#1077#1088'.'
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1050'-'#1074#1086
            Visible = False
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|%'
            Visible = False
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'LATE_REAL_DAYS'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095'. '#1047#1072#1082#1098#1089#1085'.|'#1055#1077#1088'.'
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'REAL_QTY'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095#1077#1090'|'#1050'-'#1074#1086
            Visible = False
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'REAL_QTY_PERCENT'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095#1077#1090'|%'
            Visible = False
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'MAX_REAL_DATE'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074' '#1055#1086#1090#1086#1082'|'#1041#1072#1083#1072#1085#1089'|'#1054#1090#1095#1077#1090'|'#1044#1072#1090#1072
            Visible = False
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'FIN_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077'|'#1058#1055' '#1048#1055
            Width = 50
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
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077'|'#1055#1086' '#1089#1086' '#1082#1072
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'PARTNER_ACCOUNT_FULL_NAME'
            Footers = <>
            Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1044#1074#1080#1078#1077#1085#1080#1077'|'#1058#1055' '#1055#1072#1088#1090#1085#1100#1086#1088
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'NOTES'
            Footers = <>
            Title.Caption = #1041#1077#1083#1077#1078#1082#1080
            Visible = False
            Width = 191
          end>
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 184
    Top = 192
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    BeforePost = cdsGridDataBeforePost
    Left = 152
    Top = 192
    object cdsGridDataMOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_BEGIN_DATE'
    end
    object cdsGridDataMOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'MOVEMENT_PLAN_END_DATE'
    end
    object cdsGridDataMOVEMENT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_DURATION_DAYS'
    end
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsGridDataPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
    object cdsGridDataWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
    end
    object cdsGridDataWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
    end
    object cdsGridDataFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
      OnGetText = cdsGridDataIN_OUTGetText
    end
    object cdsGridDataPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
    end
    object cdsGridDataPARTNER_ACCOUNT_FULL_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_ACCOUNT_FULL_NAME'
      Size = 250
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
    object cdsGridDataREAL_IN_QTY: TAbmesFloatField
      FieldName = 'REAL_IN_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_IN_QTY_BC: TAbmesFloatField
      FieldName = 'REAL_IN_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_IN_QTY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_IN_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_IN_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'REAL_IN_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMAX_REAL_IN_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_REAL_IN_DATE'
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
    object cdsGridDataREAL_OUT_QTY: TAbmesFloatField
      FieldName = 'REAL_OUT_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_OUT_QTY_BC: TAbmesFloatField
      FieldName = 'REAL_OUT_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_OUT_QTY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_OUT_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_OUT_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'REAL_OUT_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMAX_REAL_OUT_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_REAL_OUT_DATE'
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
    object cdsGridDataREAL_QTY: TAbmesFloatField
      FieldName = 'REAL_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_QTY_BC: TAbmesFloatField
      FieldName = 'REAL_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataREAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataREAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataMAX_REAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_REAL_DATE'
    end
    object cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'EDIT_MOVEMENT_PLAN_BEGIN_DATE'
      OnChange = cdsGridDataEDIT_MOVEMENT_PLAN_BEGIN_DATEChange
    end
    object cdsGridDataEDIT_MOVEMENT_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081' '#1085#1072' '#1076#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'EDIT_MOVEMENT_PLAN_END_DATE'
      OnChange = cdsGridDataEDIT_MOVEMENT_PLAN_END_DATEChange
    end
    object cdsGridDataEDIT_MOVEMENT_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076
      FieldName = 'EDIT_MOVEMENT_DURATION_DAYS'
      OnChange = cdsGridDataEDIT_MOVEMENT_DURATION_DAYSChange
    end
    object cdsGridDataEDIT_FIN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1048#1055
      FieldName = 'EDIT_FIN_STORE_CODE'
    end
    object cdsGridDataEDIT_PARTNER_ACCOUNT_CODE: TAbmesWideStringField
      DisplayLabel = #1058#1055' - '#1060#1080#1085#1072#1085#1089#1086#1074#1086' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'EDIT_PARTNER_ACCOUNT_CODE'
    end
    object cdsGridDataNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 4000
    end
    object cdsGridData_MAX_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField
      FieldName = '_MAX_WORK_FINANCIAL_PRODUCT_CODE'
      Active = True
      Expression = 'Max(WORK_FINANCIAL_PRODUCT_CODE)'
    end
    object cdsGridData_MIN_WORK_FINANCIAL_PRODUCT_CODE: TAggregateField
      FieldName = '_MIN_WORK_FINANCIAL_PRODUCT_CODE'
      Active = True
      Expression = 'Min(WORK_FINANCIAL_PRODUCT_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 344
    Top = 160
    inherited actForm: TAction
      Caption = #1043#1088#1091#1087#1080' '#1056#1077#1076#1086#1074#1077' '#1086#1090' '#1054#1088#1076#1077#1088#1080' '#1079#1072' '#1055#1088#1086#1094#1077#1089' '#1060#1080#1085#1072#1085#1089#1086#1074
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actPercent: TAction
      Caption = 'actPercent'
      GroupIndex = 2
      Hint = '%'
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
    object actBaseCurrency: TAction
      Caption = 'actBaseCurrency'
      GroupIndex = 4
      Hint = #1042' '#1086#1089#1085#1086#1074#1085#1072' '#1074#1072#1083#1091#1090#1072
      ImageIndex = 38
      OnExecute = actBaseCurrencyExecute
    end
    object actFinOrder: TAction
      Caption = #1054#1055#1060'...'
      ImageIndex = 22
      OnExecute = actFinOrderExecute
      OnUpdate = actFinOrderUpdate
    end
    object actBndProcessObject: TAction
      Caption = #1055#1088#1086#1094#1077#1089#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090'...'
      ImageIndex = 61
      OnExecute = actBndProcessObjectExecute
      OnUpdate = actBndProcessObjectUpdate
    end
    object actActivateGroupModels: TAction
      Caption = #1040#1082#1090#1080#1074#1080#1088#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080'...'
      ImageIndex = 55
      OnExecute = actActivateGroupModelsExecute
      OnUpdate = actActivateGroupModelsUpdate
    end
    object actCloseGroupOrders: TAction
      Caption = #1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080'...'
      ImageIndex = 109
      OnExecute = actCloseGroupOrdersExecute
      OnUpdate = actCloseGroupOrdersUpdate
    end
    object actLatePlan: TAction
      Checked = True
      GroupIndex = 1
      Hint = #1047#1072#1082#1098#1089#1085#1077#1085#1080#1077
      ImageIndex = 67
      OnExecute = actLatePlanExecute
    end
    object actLateReal: TAction
      GroupIndex = 1
      Hint = #1054#1090#1095#1077#1090#1085#1086' '#1079#1072#1082#1098#1089#1085#1077#1085#1080#1077
      ImageIndex = 70
      OnExecute = actLateRealExecute
    end
    object actReal: TAction
      GroupIndex = 1
      Hint = #1054#1090#1095#1077#1090
      ImageIndex = 47
      OnExecute = actRealExecute
    end
    object actNotes: TAction
      GroupIndex = 5
      Hint = #1041#1077#1083#1077#1078#1082#1080
      ImageIndex = 57
      OnExecute = actNotesExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    DataSet = cdsDetail
    Left = 152
    Top = 224
    object pdsGridDataParamsMIN_FIN_ORDER_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089'  - '#1054#1090
      FieldName = 'MIN_FIN_ORDER_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_FIN_ORDER_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089'  - '#1044#1086
      FieldName = 'MAX_FIN_ORDER_STATUS_CODE'
    end
    object pdsGridDataParamsFIN_PROCESS_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'FIN_PROCESS_CODE'
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
    object pdsGridDataParamsFIN_STORE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1048#1055
      FieldName = 'FIN_STORE_CODE'
    end
    object pdsGridDataParamsIN_OUT: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1086#1082#1072
      FieldName = 'IN_OUT'
    end
    object pdsGridDataParamsFIN_MODEL_LINE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'FIN_MODEL_LINE_TYPE_CODE'
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
  end
  inherited dsGridDataParams: TDataSource
    Left = 184
    Top = 224
  end
  inherited dsData: TDataSource
    Left = 184
    Top = 160
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 152
    Top = 160
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conFinance
    FieldDefs = <
      item
        Name = 'RFML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'RFML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_ORDER_STATUS_CODE'
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
        Name = 'WORK_FINANCIAL_PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_FINANCIAL_PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'BND_PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_NO'
        DataType = ftFloat
      end
      item
        Name = 'SHOW_NO'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'LINE_QUANTITY_PERCENT'
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
        Name = 'FIN_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FIN_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'IN_OUT'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_ACCOUNT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_ACCOUNT_FULL_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'MOVEMENT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'MOVEMENT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'FIN_MODEL_LINE_REASON_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRIORITY_FULL_NAME'
        DataType = ftWideString
        Size = 96
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
        Name = 'BND_PROCESS_OBJECT_INFO'
        DataType = ftWideString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 
          'MOVEMENT_PLAN_BEGIN_DATE;MOVEMENT_PLAN_END_DATE;MOVEMENT_DURATIO' +
          'N_DAYS;PARTNER_CODE;WORK_FINANCIAL_PRODUCT_CODE;FIN_STORE_CODE;I' +
          'N_OUT;PARTNER_ACCOUNT_CODE;FIN_ORDER_BRANCH_NO;FIN_ORDER_NO;FIN_' +
          'MODEL_LINE_TYPE_CODE;FIN_MODEL_LINE_NO'
      end>
    IndexName = 'idxDefault'
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
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_MODEL_LINE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_STORE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FIN_STORE_CODE'
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
        Name = 'MIN_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_FIN_ORDER_STATUS_CODE'
        ParamType = ptInput
        Value = '5'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
      end>
    ProviderName = 'prvRealFinModelLinesRegister'
    StoreDefs = True
    AfterOpen = cdsDetailAfterOpen
    AfterClose = cdsDetailAfterClose
    Left = 152
    Top = 432
    object cdsDetailRFML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_BRANCH_CODE'
    end
    object cdsDetailRFML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'RFML_OBJECT_CODE'
    end
    object cdsDetailFIN_ORDER_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_CODE'
    end
    object cdsDetailFIN_ORDER_STATUS_CODE: TAbmesFloatField
      FieldName = 'FIN_ORDER_STATUS_CODE'
      OnGetText = cdsDetailFIN_ORDER_STATUS_CODEGetText
    end
    object cdsDetailFIN_PROCESS_ABBREV: TAbmesWideStringField
      FieldName = 'FIN_PROCESS_ABBREV'
      Size = 100
    end
    object cdsDetailFIN_ORDER_BRANCH_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_BRANCH_NO'
    end
    object cdsDetailFIN_ORDER_NO: TAbmesFloatField
      FieldName = 'FIN_ORDER_NO'
    end
    object cdsDetailFIN_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_ORDER_IDENTIFIER'
      Size = 81
    end
    object cdsDetailWORK_FINANCIAL_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'WORK_FINANCIAL_PRODUCT_CODE'
    end
    object cdsDetailWORK_FINANCIAL_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'WORK_FINANCIAL_PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsDetailPARTNER_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_SHORT_NAME'
    end
    object cdsDetailBND_PROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_IDENTIFIER'
      Size = 100
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
    object cdsDetailLINE_QUANTITY_PERCENT: TAbmesFloatField
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
    object cdsDetailREAL_QTY: TAbmesFloatField
      FieldName = 'REAL_QTY'
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_QTY_BC: TAbmesFloatField
      FieldName = 'REAL_QTY_BC'
      DisplayFormat = ',0.00'
    end
    object cdsDetailREAL_QTY_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QTY_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailREAL_QTY_BC_PERCENT: TAbmesFloatField
      FieldName = 'REAL_QTY_BC_PERCENT'
      OnGetText = PercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsDetailMAX_REAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'MAX_REAL_DATE'
    end
    object cdsDetailFIN_STORE_CODE: TAbmesFloatField
      FieldName = 'FIN_STORE_CODE'
    end
    object cdsDetailFIN_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FIN_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsDetailIN_OUT: TAbmesFloatField
      FieldName = 'IN_OUT'
    end
    object cdsDetailPARTNER_ACCOUNT_CODE: TAbmesFloatField
      FieldName = 'PARTNER_ACCOUNT_CODE'
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
    object cdsDetailPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 96
    end
    object cdsDetailPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsDetailPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDetailBASE_DATA_CHANGED: TAbmesFloatField
      FieldName = 'BASE_DATA_CHANGED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDetailDOCUMENT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DOCUMENT_IDENTIFIER'
      Size = 50
    end
    object cdsDetailDOCUMENT_DATE: TAbmesSQLTimeStampField
      FieldName = 'DOCUMENT_DATE'
    end
    object cdsDetailBND_PROCESS_OBJECT_INFO: TAbmesWideStringField
      FieldName = 'BND_PROCESS_OBJECT_INFO'
      Size = 250
    end
    object cdsDetailMOVEMENT_OFFSET_DAYS: TAbmesFloatField
      FieldName = 'MOVEMENT_OFFSET_DAYS'
      Required = True
    end
    object cdsDetailFM_MOVEMENT_OFFSET_TYPE_CODE: TAbmesFloatField
      FieldName = 'FM_MOVEMENT_OFFSET_TYPE_CODE'
    end
    object cdsDetailBASE_DATE: TAbmesSQLTimeStampField
      FieldName = 'BASE_DATE'
      Required = True
    end
    object cdsDetailIS_MODIFIED: TAbmesFloatField
      FieldName = 'IS_MODIFIED'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDetailNOTES: TAbmesWideStringField
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsDetail_SUM_PLAN_QTY: TAggregateField
      FieldName = '_SUM_PLAN_QTY'
      Active = True
      Expression = 'Sum(PLAN_QTY)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_PLAN_QTY_BC: TAggregateField
      FieldName = '_SUM_PLAN_QTY_BC'
      Active = True
      Expression = 'Sum(PLAN_QTY_BC)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_REMAINING_QTY: TAggregateField
      FieldName = '_SUM_REMAINING_QTY'
      Active = True
      Expression = 'Sum(REMAINING_QTY)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_REMAINING_QTY_BC: TAggregateField
      FieldName = '_SUM_REMAINING_QTY_BC'
      Active = True
      Expression = 'Sum(REMAINING_QTY_BC)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_LATE_PLAN_QTY: TAggregateField
      FieldName = '_SUM_LATE_PLAN_QTY'
      Active = True
      Expression = 'Sum(LATE_PLAN_QTY)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_LATE_PLAN_QTY_BC: TAggregateField
      FieldName = '_SUM_LATE_PLAN_QTY_BC'
      Active = True
      Expression = 'Sum(LATE_PLAN_QTY_BC)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_MAX_LATE_PLAN_DAYS: TAggregateField
      FieldName = '_MAX_LATE_PLAN_DAYS'
      Active = True
      Expression = 'Max(LATE_PLAN_DAYS)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_LATE_REAL_QTY: TAggregateField
      FieldName = '_SUM_LATE_REAL_QTY'
      Active = True
      Expression = 'Sum(LATE_REAL_QTY)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_LATE_REAL_QTY_BC: TAggregateField
      FieldName = '_SUM_LATE_REAL_QTY_BC'
      Active = True
      Expression = 'Sum(LATE_REAL_QTY_BC)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_MAX_LATE_REAL_DAYS: TAggregateField
      FieldName = '_MAX_LATE_REAL_DAYS'
      Active = True
      Expression = 'Max(LATE_REAL_DAYS)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_MIN_FIN_ORDER_STATUS_CODE: TAggregateField
      FieldName = '_MIN_FIN_ORDER_STATUS_CODE'
      Active = True
      Expression = 'Min(FIN_ORDER_STATUS_CODE)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_REAL_QTY: TAggregateField
      FieldName = '_SUM_REAL_QTY'
      Active = True
      Expression = 'Sum(REAL_QTY)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_SUM_REAL_QTY_BC: TAggregateField
      FieldName = '_SUM_REAL_QTY_BC'
      Active = True
      Expression = 'Sum(REAL_QTY_BC)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
    object cdsDetail_MAX_REAL_DATE: TAggregateField
      FieldName = '_MAX_REAL_DATE'
      Active = True
      Expression = 'Max(MAX_REAL_DATE)'
      GroupingLevel = 8
      IndexName = 'idxDefault'
    end
  end
  inherited dsDetail: TDataSource
    Left = 184
    Top = 432
  end
  inherited tmrMaster: TTimer
    Left = 408
    Top = 160
  end
  object cdsFinProcesses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conFinance
    Params = <>
    ProviderName = 'prvFinProcesses'
    Left = 232
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
    Left = 304
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
