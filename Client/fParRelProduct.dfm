inherited fmParRelProduct: TfmParRelProduct
  Caption = '%ParRelProduct% - '#1040#1089#1087#1077#1082#1090' "'#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'" - %s'
  ClientHeight = 611
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 576
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
    end
    inherited pnlClose: TPanel
      Left = 662
    end
    inherited pnlApply: TPanel
      Left = 930
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 545
      inherited btnDeleteData: TBitBtn
        Left = 252
        TabOrder = 2
      end
      inherited btnEditData: TBitBtn
        Left = 366
        TabOrder = 3
      end
      object btnCreateLike: TBitBtn
        Left = 122
        Top = 2
        Width = 121
        Height = 25
        Action = actCreateLike
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
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
        TabOrder = 1
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 576
    inherited pnlGrid: TPanel
      Top = 297
      Width = 1003
      Height = 271
      TabOrder = 2
      inherited pnlNavigator: TPanel
        Width = 1003
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbToggleBaseCurrency: TToolBar
          Left = 923
          Top = 0
          Width = 24
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 3
          object btnToggleBaseCurrency: TToolButton
            Left = 0
            Top = 0
            Action = actToggleBaseCurrency
            Grouped = True
          end
        end
        object tlbToggleValueGainedDiff: TToolBar
          Left = 866
          Top = 0
          Width = 57
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 4
          object btnToggleValueGainedDiff: TSpeedButton
            Left = 0
            Top = 0
            Width = 49
            Height = 24
            Action = actToggleValueGainedDiff
            AllowAllUp = True
            GroupIndex = 3
            Flat = True
            Transparent = False
          end
          object sepToggleValueGainedDiff: TToolButton
            Left = 49
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
        object tlbToggleAcquireLeaseConsign: TToolBar
          Left = 711
          Top = 0
          Width = 155
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 5
          object btnToggleAcquire: TSpeedButton
            Left = 0
            Top = 0
            Width = 49
            Height = 24
            Action = actToggleAcquire
            GroupIndex = 1
            Down = True
            Flat = True
            Transparent = False
          end
          object btnToggleLease: TSpeedButton
            Left = 49
            Top = 0
            Width = 49
            Height = 24
            Action = actToggleLease
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object btnToggleConsign: TSpeedButton
            Left = 98
            Top = 0
            Width = 49
            Height = 24
            Action = actToggleConsign
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object sepDeliveryToggleAcquireLeaseConsign: TToolButton
            Left = 147
            Top = 0
            Width = 8
            Caption = 'sepDeliveryToggleAcquireLeaseConsign'
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
        object pnlNavigatorClient: TPanel
          Left = 450
          Top = 0
          Width = 261
          Height = 24
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 6
          object tlbToggleSaleEnv: TToolBar
            Left = 43
            Top = 0
            Width = 218
            Height = 24
            Align = alRight
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            Images = dmMain.ilActions
            List = True
            TabOrder = 0
            object btnToggleSale: TSpeedButton
              Left = 0
              Top = 0
              Width = 105
              Height = 24
              Action = actToggleSale
              GroupIndex = 2
              Down = True
              Flat = True
              Transparent = False
            end
            object btnToggleEnv: TSpeedButton
              Left = 105
              Top = 0
              Width = 105
              Height = 24
              Action = actToggleEnv
              GroupIndex = 2
              Flat = True
              Transparent = False
            end
            object sepToggleSaleEnv: TToolButton
              Left = 210
              Top = 0
              Width = 8
              Caption = 'sepToggleSaleEnv'
              Style = tbsSeparator
            end
          end
        end
        object tlbToggleMeasures: TToolBar
          Left = 947
          Top = 0
          Width = 56
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 7
          object sepToggleMeasures: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepToggleMeasures'
            ImageIndex = 53
            Style = tbsSeparator
          end
          object btnWorkMeasure: TToolButton
            Left = 8
            Top = 0
            Action = actWorkMeasure
            Grouped = True
            Style = tbsCheck
          end
          object btnAccountMeasure: TToolButton
            Left = 32
            Top = 0
            Action = actAccountMeasure
            Grouped = True
            Style = tbsCheck
          end
        end
        object tlbPeriodDocs: TToolBar
          Left = 325
          Top = 0
          Width = 125
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 8
          object sepDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlDocs: TPanel
            Left = 8
            Top = 0
            Width = 81
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = '%ParRelProductAbbrev% '#1042#1088#1084#1048#1085#1090
            TabOrder = 0
          end
          object btnPeriodDocs: TToolButton
            Left = 89
            Top = 0
            ImageIndex = 1
            OnClick = btnPeriodDocsClick
          end
        end
        object tlbPastPresentFuturePeriods: TToolBar
          Left = 248
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbPastPresentFuturePeriods'
          Images = dmMain.ilActions
          TabOrder = 9
          object sepPastPresentFuturePeriods: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPastPresentFuturePeriods'
            Style = tbsSeparator
          end
          object btnPastPeriods: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPastPeriods
            AllowAllUp = True
            GroupIndex = 12
            Flat = True
            Transparent = False
          end
          object btnPresentPeriods: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentPeriods
            AllowAllUp = True
            GroupIndex = 13
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFuturePeriods: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFuturePeriods
            AllowAllUp = True
            GroupIndex = 14
            Down = True
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 247
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Tracking = False
        HorzScrollBar.Visible = False
        ParentFont = False
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 121
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'HAS_DOC_ITEMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Courier'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1048' '#1048' '#1054
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_PRECISION_LEVEL_NO'
            Footers = <>
            Title.Caption = #1053' '#1058
            Width = 20
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_IS_APPROVED_BY_PARTNER_SHOW'
            Footers = <>
            Title.Caption = #1057#1098#1089#1090'. '#1044#1086#1075'.'
            Width = 45
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_BASE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1072#1083#1091#1090#1072
            Visible = False
            Width = 40
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_REAL__ACQUIRE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1072#1083#1091#1090#1072
            Visible = False
            Width = 40
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_REAL__LEASE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1042#1072#1083#1091#1090#1072
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = '_REAL_ACQUIRE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_ACQUIRE_BASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_LEASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_LEASE_BASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_ACC_ACQUIRE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_ACC_LEASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = '_REAL_ACC_LEASE_BASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1045#1076'. '#1094#1077#1085#1072
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'EST_SALE_COVER_ACQUIRE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ACC_EST_SALE_COVER_ACQUIRE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086
            Visible = False
            Width = 55
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
          end
          item
            Color = 13694161
            EditButtons = <>
            FieldName = '_TOTAL_VALUE_GAINED_LEVEL_1_PART'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 1 %'
            Visible = False
            Width = 28
          end
          item
            Color = 15203047
            EditButtons = <>
            FieldName = '_TOTAL_VALUE_GAINED_LEVEL_2_PART'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 2 %'
            Visible = False
            Width = 28
          end
          item
            Color = 16055796
            EditButtons = <>
            FieldName = '_TOTAL_VALUE_GAINED_LEVEL_3_PART'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 3 %'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_VALUE_GAINED_LEVEL_4_PART'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 4 %'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_VALUE_GAINED_LEVEL_5_PART'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 5 %'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = '_TOTAL_VALUE_GAINED_LEVEL_6_PART'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 6 %'
            Visible = False
            Width = 28
          end
          item
            Color = 13694161
            EditButtons = <>
            FieldName = '_PREV_TOTAL_VG_LEVEL_1_PART_DIFF'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 1 '#177'%'
            Visible = False
            Width = 28
          end
          item
            Color = 15203047
            EditButtons = <>
            FieldName = '_PREV_TOTAL_VG_LEVEL_2_PART_DIFF'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 2 '#177'%'
            Visible = False
            Width = 28
          end
          item
            Color = 16055796
            EditButtons = <>
            FieldName = '_PREV_TOTAL_VG_LEVEL_3_PART_DIFF'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 3 '#177'%'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = '_PREV_TOTAL_VG_LEVEL_4_PART_DIFF'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 4 '#177'%'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = '_PREV_TOTAL_VG_LEVEL_5_PART_DIFF'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 5 '#177'%'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = '_PREV_TOTAL_VG_LEVEL_6_PART_DIFF'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1048#1056' 6 '#177'%'
            Visible = False
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'EST_SALE_COVER_LEASE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1059#1054#1073
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ACC_EST_SALE_COVER_LEASE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1059#1054#1073
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '_REAL__LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
            Visible = False
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = '_EST_SALE_COVER_LEASE_TOTAL_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
            Visible = False
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = '_ACC_EST_SALE_COVER_LEASE_TOTAL_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
            Visible = False
            Width = 76
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'EST_SALE_COVER_ACQUIRE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 223
          end
          item
            EditButtons = <>
            FieldName = 'ACC_EST_SALE_COVER_ACQUIRE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 223
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'EST_ENV_COVER_ACQUIRE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 223
          end
          item
            EditButtons = <>
            FieldName = 'ACC_EST_ENV_COVER_ACQUIRE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 223
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'EST_SALE_COVER_CONSIGN_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 386
          end
          item
            EditButtons = <>
            FieldName = 'ACC_EST_SALE_COVER_CONSIGN_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 386
          end
          item
            EditButtons = <>
            FieldName = 'EST_ENV_COVER_LEASE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1059#1054#1073
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ACC_EST_ENV_COVER_LEASE_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1059#1054#1073
            Visible = False
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = '_REAL__LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = '_EST_ENV_COVER_LEASE_TOTAL_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = '_ACC_EST_ENV_COVER_LEASE_TOTAL_QTY'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
            Visible = False
            Width = 76
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Width = 70
          end
          item
            Color = 11595441
            EditButtons = <>
            FieldName = '_REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'|'#1055#1057
            Visible = False
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = '_REAL_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = 
              #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'|'#1058#1055' '#1047#1072#1076#1098 +
              #1088#1078#1072#1097#1086' '#1085#1072' '#1048#1055' '#1079#1072' %BorderRelTypeStoreAction%'
            Width = 70
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_RIGHT_ARROW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'| '
            Width = 18
          end
          item
            EditButtons = <>
            FieldName = '_REAL_TRANSPORT_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'|'#1055#1077#1088' '#1044#1074#1078
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = '_REAL__PARTNER_OFFICE_NAME'
            Footers = <>
            Title.Caption = 
              #1055#1088#1080#1085#1094#1080#1087#1077#1085' '#1052#1054#1044#1045#1083' '#1079#1072' %BorderRelTypeAction% - '#1054#1073#1077#1082#1090#1086#1074#1072' '#1063#1072#1089#1090'|'#1058#1055' '#1085#1072' %' +
              'Partner% '#1079#1072' %BorderRelTypePartnerStoreAction%'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = '_REAL_MEDIATOR_COMP_SHORT_NAME'
            Footers = <>
            Title.Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1082
            Width = 87
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_REAL__SHIPMENT_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1098#1088#1075'. '#1082#1086#1076'. '#1085#1072' '#1076#1086#1089#1090'.'
            Width = 35
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_REAL_IS_PARTNER_TRANSPORT'
            Footers = <>
            Title.Caption = #1054#1088#1075'. '#1090#1088#1072#1085#1089#1087'.'
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = '_REAL__HAS_CUSTOMHOUSE'
            Footers = <>
            Title.Caption = #1052#1080#1090'- '#1085#1080#1094#1072
            Width = 27
          end>
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 1003
      Height = 161
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object gbParRelProduct: TGroupBox
        Left = 0
        Top = 0
        Width = 1003
        Height = 153
        Align = alTop
        Caption = ' %ParRelProduct% '
        TabOrder = 0
        DesignSize = (
          1003
          153)
        object lblIsRegular: TLabel
          Left = 272
          Top = 24
          Width = 85
          Height = 13
          Caption = #1056#1077#1078#1080#1084' '#1087#1091#1083#1089#1072#1094#1080#1080
          FocusControl = cbIsRegular
        end
        inline frStatus: TfrParRelProductStatus
          Left = 8
          Top = 24
          Width = 207
          Height = 38
          Constraints.MaxHeight = 38
          Constraints.MaxWidth = 207
          Constraints.MinHeight = 38
          Constraints.MinWidth = 207
          TabOrder = 0
          TabStop = True
          inherited lblCurrentStatus: TLabel
            Width = 34
          end
          inherited lblReachMonths: TLabel
            Width = 6
          end
          inherited lblExistanceMonths: TLabel
            Width = 6
          end
          inherited lblMonths: TLabel
            Width = 11
          end
        end
        inline frPartner: TfrPartnerExFieldEditFrame
          Left = 376
          Top = 13
          Width = 619
          Height = 60
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 155
          Constraints.MinHeight = 49
          TabOrder = 3
          TabStop = True
          inherited gbPartner: TGroupBox
            Width = 619
            Caption = ' '#1055#1072#1088#1090#1085#1100#1086#1088' - %Partner% '
            inherited pnlNameAndButtons: TPanel
              Width = 194
              inherited pnlRightButtons: TPanel
                Left = 158
              end
              inherited pnlPartnerName: TPanel
                Width = 158
                DesignSize = (
                  158
                  28)
                inherited edtPartnerName: TDBEdit
                  Width = 163
                end
                inherited cbPartner: TJvDBLookupCombo
                  Width = 177
                end
              end
              inherited pnlNameAndButtonsTop: TPanel
                Width = 194
                inherited lblPartner: TLabel
                  Width = 76
                end
              end
            end
            inherited pnlPaddingRight: TPanel
              Left = 498
            end
            inherited pnlPartnerCode: TPanel
              inherited lblPartnerCode: TLabel
                Width = 19
              end
            end
            inherited frPartnerStatus: TfrCompanyStatus
              inherited lblCurrentStatus: TLabel
                Width = 34
              end
              inherited lblReachMonths: TLabel
                Width = 6
              end
              inherited lblExistanceMonths: TLabel
                Width = 6
              end
              inherited lblMonths: TLabel
                Width = 11
              end
              inherited dsData: TDataSource
                DataSet = frPartner.cdsPartner
              end
            end
            inherited pnlPriority: TPanel
              inherited lblPriority: TLabel
                Width = 38
              end
            end
            inherited pnlCountry: TPanel
              Left = 504
            end
            inherited pnlParRelButton: TPanel
              Left = 544
            end
          end
        end
        object tlbDocs: TToolBar
          Left = 226
          Top = 40
          Width = 36
          Height = 22
          Align = alNone
          Anchors = [akTop, akRight]
          AutoSize = True
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object btnDocs: TToolButton
            Left = 0
            Top = 0
            ImageIndex = 1
            OnClick = btnDocsClick
          end
        end
        inline frProduct: TfrProductExFieldEditFrame
          Left = 8
          Top = 80
          Width = 987
          Height = 65
          HorzScrollBar.Visible = False
          VertScrollBar.Visible = False
          Constraints.MaxHeight = 549
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          TabStop = True
          inherited gbTreeNode: TGroupBox
            Width = 987
            inherited pnlTreeNode: TPanel
              Width = 85
              inherited pnlTreeNodeName: TPanel
                Width = 47
                inherited edtTreeNodeName: TDBEdit
                  Width = 46
                end
              end
              inherited pnlTreeNodeNo: TPanel
                Left = -97
              end
              inherited pnlRightButtons: TPanel
                Left = 26
              end
              inherited pnlProductLabels: TPanel
                Width = 85
              end
            end
            inherited pnlRight: TPanel
              Left = 215
            end
          end
        end
        object cbIsRegular: TJvDBComboBox
          Left = 272
          Top = 40
          Width = 97
          Height = 21
          DataField = 'IS_REGULAR'
          DataSource = dsData
          Items.Strings = (
            #1055#1091#1083#1089#1080#1088#1072#1097
            #1056#1077#1075#1091#1083#1103#1088#1077#1085)
          TabOrder = 2
          Values.Strings = (
            #1055#1091#1083#1089#1080#1088#1072#1097
            #1056#1077#1075#1091#1083#1103#1088#1077#1085)
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
    end
    object pnlTimeLine: TPanel
      Left = 8
      Top = 169
      Width = 1003
      Height = 128
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        1003
        128)
      object tlMain: TAbmesTimeLine
        Left = 0
        Top = 0
        Width = 1003
        Height = 128
        Align = alClient
        Color = clWhite
        HelperYears = False
        ParentShowHint = False
        ShowHint = True
        ScrollArrows = [scrollLeft, scrollRight]
        TabStop = True
        TabOrder = 0
        YearFont.Charset = DEFAULT_CHARSET
        YearFont.Color = clWindowText
        YearFont.Height = -11
        YearFont.Name = 'Microsoft Sans Serif'
        YearFont.Style = []
        YearWidth = 320
        TopOffset = 55
        ShowHiddenItemHints = False
        ShowItemHint = True
        ShowMonthNames = True
        FirstVisibleDate = 38687.000000000000000000
        Items = <>
        ItemHeight = 6
        HorzSupports = False
        Style = tlOwnerDrawVariable
        OnItemClick = tlMainItemClick
        OnItemDblClick = tlMainItemDblClick
        OnDrawItem = tlMainDrawItem
        OnMeasureItem = tlMainMeasureItem
        BeforePaint = tlMainBeforePaint
        AfterPaint = tlMainAfterPaint
      end
      object pnlTimeLineLegend: TPanel
        Left = 270
        Top = 105
        Width = 475
        Height = 17
        Anchors = [akLeft, akBottom]
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object shpParRelProductPeriods: TShape
          Left = 0
          Top = 6
          Width = 24
          Height = 6
          Brush.Color = 16491565
        end
        object lblParRelProductPeriodsTimeLine: TLabel
          Left = 30
          Top = 1
          Width = 97
          Height = 13
          AutoSize = False
          Caption = '%ParRelProductAbbrev% ('#1082'-'#1074#1086'/'#1084#1077#1089'.)'
        end
        object shpParRelPeriodsTimeLine: TShape
          Left = 284
          Top = 6
          Width = 24
          Height = 6
          Brush.Color = clRed
        end
        object lblParRelPeriodsTimeLine: TLabel
          Left = 316
          Top = 1
          Width = 49
          Height = 13
          AutoSize = False
          Caption = '%ParRelPeriodAbbrev%'
        end
        object shpProductPeriodsTimeLine: TShape
          Left = 388
          Top = 6
          Width = 24
          Height = 6
          Brush.Color = clGreen
        end
        object lblProductPeriodsTimeLine: TLabel
          Left = 420
          Top = 1
          Width = 53
          Height = 13
          AutoSize = False
          Caption = '%ProductPeriodAbbrev%'
        end
        object shpCurrentParRelProductPeriod: TShape
          Left = 136
          Top = 6
          Width = 24
          Height = 6
          Brush.Color = 13314305
        end
        object lblCurrentParRelProductPeriodsTimeLine: TLabel
          Left = 168
          Top = 1
          Width = 92
          Height = 13
          AutoSize = False
          Caption = #1058#1077#1082#1091#1097' ('#1082'-'#1074#1086'/'#1084#1077#1089'.)'
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 272
    Top = 368
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryParRelProductPeriods
    Filtered = True
    FieldDefs = <
      item
        Name = 'PARTNER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PAR_REL_PRODUCT_PERIOD_CODE'
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
        Name = 'DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'IS_APPROVED_BY_PARTNER'
        DataType = ftFloat
      end
      item
        Name = 'EST_SALE_COVER_ACQUIRE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'EST_SALE_COVER_LEASE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'EST_SALE_COVER_LEASE_DURATION'
        DataType = ftFloat
      end
      item
        Name = 'EST_SALE_COVER_CONSIGN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'EST_ENV_COVER_ACQUIRE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'EST_ENV_COVER_LEASE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'EST_ENV_COVER_LEASE_DURATION'
        DataType = ftFloat
      end
      item
        Name = 'ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACQUIRE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_ACQUIRE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_LEASE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'OVERRIDE_STORE'
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_PARTNER_OFFICE'
        DataType = ftFloat
      end
      item
        Name = 'TRANSPORT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_TRANSPORT_DURATION'
        DataType = ftFloat
      end
      item
        Name = 'MEDIATOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MEDIATOR_COMPANY_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'OVERRIDE_MEDIATOR_COMPANY'
        DataType = ftFloat
      end
      item
        Name = 'SHIPMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_SHIPMENT_TYPE'
        DataType = ftFloat
      end
      item
        Name = 'IS_PARTNER_TRANSPORT'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_IS_PARTNER_TRANSPORT'
        DataType = ftFloat
      end
      item
        Name = 'CUSTOMHOUSE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OVERRIDE_CUSTOMHOUSE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_ACQUIRE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_LEASE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'INHRT_PARTNER_OFFICE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_TRANSPORT_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_MEDIATOR_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_MED_COMPANY_SHORT_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'INHRT_SHIPMENT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_IS_PARTNER_TRANSPORT'
        DataType = ftFloat
      end
      item
        Name = 'INHRT_CUSTOMHOUSE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTMENT_LEVEL_1_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTMENT_LEVEL_2_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTMENT_LEVEL_3_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTMENT_LEVEL_4_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTMENT_LEVEL_5_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'INVESTMENT_LEVEL_6_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PRECISION_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BALANCE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_EST_SALE_COVER_ACQUIRE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_EST_SALE_COVER_LEASE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_EST_SALE_COVER_CONSIGN_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_EST_ENV_COVER_ACQUIRE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_EST_ENV_COVER_LEASE_QTY'
        DataType = ftFloat
      end
      item
        Name = 'ACC_ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end>
    BeforeInsert = cdsGridDataBeforeInsert
    BeforeEdit = cdsGridDataBeforeEdit
    BeforePost = cdsGridDataBeforePost
    AfterScroll = cdsGridDataAfterScroll
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 240
    Top = 368
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPAR_REL_PRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      OnChange = cdsGridDataBEGIN_DATEChange
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      OnChange = cdsGridDataEND_DATEChange
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_APPROVED_BY_PARTNER: TAbmesFloatField
      DisplayLabel = #1057#1098#1089#1090#1086#1103#1085#1080#1077' '#1085#1072' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086#1089#1090
      FieldName = 'IS_APPROVED_BY_PARTNER'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'EST_SALE_COVER_ACQUIRE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataEST_SALE_COVER_LEASE_QTY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'EST_SALE_COVER_LEASE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataEST_SALE_COVER_LEASE_DURATION: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1077#1084#1085#1080' '#1089#1090#1098#1087#1082#1080
      FieldName = 'EST_SALE_COVER_LEASE_DURATION'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataEST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'EST_SALE_COVER_CONSIGN_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataEST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'EST_ENV_COVER_ACQUIRE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataEST_ENV_COVER_LEASE_QTY: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'EST_ENV_COVER_LEASE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataEST_ENV_COVER_LEASE_DURATION: TAbmesFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1077#1084#1085#1080' '#1089#1090#1098#1087#1082#1080
      FieldName = 'EST_ENV_COVER_LEASE_DURATION'
      DisplayFormat = ',0.##'
    end
    object cdsGridDataACQUIRE_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072' '#1079#1072' '#1087#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldName = 'ACQUIRE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'ACQUIRE_CURRENCY_CODE'
      OnChange = cdsGridDataACQUIRE_CURRENCY_CODEChange
    end
    object cdsGridDataACQUIRE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'ACQUIRE_CURRENCY_FIXING'
    end
    object cdsGridDataOVERRIDE_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_ACQUIRE_PRICE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataLEASE_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1045#1076#1080#1085#1080#1095#1085#1072' '#1094#1077#1085#1072' '#1079#1072' '#1085#1072#1077#1084
      FieldName = 'LEASE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataLEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'LEASE_CURRENCY_CODE'
      OnChange = cdsGridDataLEASE_CURRENCY_CODEChange
    end
    object cdsGridDataLEASE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'LEASE_CURRENCY_FIXING'
    end
    object cdsGridDataLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataOVERRIDE_LEASE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_LEASE_PRICE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
      OnChange = cdsGridDataSTORE_CODEChange
    end
    object cdsGridDataSTORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataOVERRIDE_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'PARTNER_OFFICE_CODE'
    end
    object cdsGridDataOVERRIDE_PARTNER_OFFICE: TAbmesFloatField
      FieldName = 'OVERRIDE_PARTNER_OFFICE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataTRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'TRANSPORT_DURATION_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataOVERRIDE_TRANSPORT_DURATION: TAbmesFloatField
      FieldName = 'OVERRIDE_TRANSPORT_DURATION'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'MEDIATOR_COMPANY_CODE'
      OnChange = cdsGridDataMEDIATOR_COMPANY_CODEChange
    end
    object cdsGridDataMEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'MEDIATOR_COMP_SHORT_NAME'
    end
    object cdsGridDataOVERRIDE_MEDIATOR_COMPANY: TAbmesFloatField
      FieldName = 'OVERRIDE_MEDIATOR_COMPANY'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsGridDataOVERRIDE_SHIPMENT_TYPE: TAbmesFloatField
      FieldName = 'OVERRIDE_SHIPMENT_TYPE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'IS_PARTNER_TRANSPORT'
      DisplayBoolValues = #1055#1072#1088#1090#1085'.;'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PARTNER_TRANSPORT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
    end
    object cdsGridDataOVERRIDE_CUSTOMHOUSE: TAbmesFloatField
      FieldName = 'OVERRIDE_CUSTOMHOUSE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataRESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'RESOLVE_DURATION_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataOVERRIDE_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_RESOLVE_DURATION_DAYS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEST_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'EST_SPEC_FIN_MODEL_CODE'
    end
    object cdsGridDataEST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'EST_SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object cdsGridDataOVERRIDE_EST_SPEC_FIN_MODEL: TAbmesFloatField
      FieldName = 'OVERRIDE_EST_SPEC_FIN_MODEL'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_CURRENCY_CODE'
    end
    object cdsGridDataINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_CURRENCY_CODE'
    end
    object cdsGridDataINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataINHRT_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_STORE_CODE'
      OnChange = cdsGridDataINHRT_STORE_CODEChange
    end
    object cdsGridDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'INHRT_PARTNER_OFFICE_CODE'
    end
    object cdsGridDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_TRANSPORT_DURATION_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'INHRT_MEDIATOR_COMPANY_CODE'
      OnChange = cdsGridDataINHRT_MEDIATOR_COMPANY_CODEChange
    end
    object cdsGridDataINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_MEDIATOR_COMP_SHORT_NAME'
    end
    object cdsGridDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INHRT_SHIPMENT_TYPE_CODE'
    end
    object cdsGridDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'INHRT_IS_PARTNER_TRANSPORT'
      DisplayBoolValues = #1055#1072#1088#1090#1085'.;'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'INHRT_CUSTOMHOUSE_CODE'
    end
    object cdsGridDataINHRT_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_RESOLVE_DURATION_DAYS'
      DisplayFormat = ',0'
    end
    object cdsGridDataINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_CODE'
    end
    object cdsGridDataINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object cdsGridDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object cdsGridDataBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataACC_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_SALE_COVER_ACQUIRE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataACC_EST_SALE_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_SALE_COVER_LEASE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataACC_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_SALE_COVER_CONSIGN_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataACC_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_ENV_COVER_ACQUIRE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataACC_EST_ENV_COVER_LEASE_QTY: TAbmesFloatField
      FieldName = 'ACC_EST_ENV_COVER_LEASE_QTY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataACC_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_ACQUIRE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataACC_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_LEASE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object cdsGridDataPREV_TOTAL_VG_LEVEL_1_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_1_PART'
    end
    object cdsGridDataPREV_TOTAL_VG_LEVEL_2_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_2_PART'
    end
    object cdsGridDataPREV_TOTAL_VG_LEVEL_3_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_3_PART'
    end
    object cdsGridDataPREV_TOTAL_VG_LEVEL_4_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_4_PART'
    end
    object cdsGridDataPREV_TOTAL_VG_LEVEL_5_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_5_PART'
    end
    object cdsGridDataPREV_TOTAL_VG_LEVEL_6_PART: TAbmesFloatField
      FieldName = 'PREV_TOTAL_VG_LEVEL_6_PART'
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsGridDataCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsGridDataCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsGridDataCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsGridDataIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_ACC_INHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INHRT_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INHRT_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INHRT_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_BALANCE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_BALANCE_QUANTITY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072' '#1085#1072' '#1087#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldKind = fkLookup
      FieldName = '_ACQUIRE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'ACQUIRE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072' '#1085#1072' '#1085#1072#1077#1084
      FieldKind = fkLookup
      FieldName = '_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
      FieldKind = fkLookup
      FieldName = '_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsGridData_PARTNER_OFFICE_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1085#1072' %BorderRelTypeName% '#1079#1072' %BorderRelTypePartnerStoreAction%'
      FieldKind = fkLookup
      FieldName = '_PARTNER_OFFICE_NAME'
      LookupDataSet = cdsPartnerOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'PARTNER_OFFICE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1082#1086#1076
      FieldKind = fkLookup
      FieldName = '_SHIPMENT_TYPE_ABBREV'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = 'SHIPMENT_TYPE_ABBREV'
      KeyFields = 'SHIPMENT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIPMENT_TYPE_SHOW_NAME'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'SHIPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_CUSTOMHOUSE_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1080#1090#1085#1080#1094#1072
      FieldKind = fkLookup
      FieldName = '_CUSTOMHOUSE_NAME'
      LookupDataSet = cdsCustomhouses
      LookupKeyFields = 'CUSTOMHOUSE_CODE'
      LookupResultField = 'CUSTOMHOUSE_NAME'
      KeyFields = 'CUSTOMHOUSE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_HAS_CUSTOMHOUSE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_HAS_CUSTOMHOUSE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_INHRT_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_ACQUIRE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_ACQUIRE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'INHRT_LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsGridData_INHRT_PARTNER_OFFICE_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055' '#1085#1072' %BorderRelTypeName% '#1079#1072' %BorderRelTypePartnerStoreAction%'
      FieldKind = fkLookup
      FieldName = '_INHRT_PARTNER_OFFICE_NAME'
      LookupDataSet = cdsPartnerOffices
      LookupKeyFields = 'OFFICE_CODE'
      LookupResultField = 'OFFICE_NAME'
      KeyFields = 'INHRT_PARTNER_OFFICE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_INHRT_SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1058#1098#1088#1075#1086#1074#1089#1082#1080' '#1082#1086#1076
      FieldKind = fkLookup
      FieldName = '_INHRT_SHIPMENT_TYPE_ABBREV'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = 'SHIPMENT_TYPE_ABBREV'
      KeyFields = 'INHRT_SHIPMENT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_SHIPMENT_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_SHIPMENT_TYPE_SHOW_NAME'
      LookupDataSet = cdsShipmentTypes
      LookupKeyFields = 'SHIPMENT_TYPE_CODE'
      LookupResultField = '_SHOW_NAME'
      KeyFields = 'INHRT_SHIPMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridData_INHRT_CUSTOMHOUSE_NAME: TAbmesWideStringField
      DisplayLabel = #1052#1080#1090#1085#1080#1094#1072
      FieldKind = fkLookup
      FieldName = '_INHRT_CUSTOMHOUSE_NAME'
      LookupDataSet = cdsCustomhouses
      LookupKeyFields = 'CUSTOMHOUSE_CODE'
      LookupResultField = 'CUSTOMHOUSE_NAME'
      KeyFields = 'INHRT_CUSTOMHOUSE_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_INHRT_HAS_CUSTOMHOUSE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INHRT_HAS_CUSTOMHOUSE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_RIGHT_ARROW: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_RIGHT_ARROW'
      Size = 1
      Calculated = True
    end
    object cdsGridData_AGGR_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AGGR_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_AGGR_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AGGR_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_AGGR_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AGGR_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_AGGR_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AGGR_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_AGGR_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_AGGR_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_1_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_INVESTMENT_LEVEL_1_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_2_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_INVESTMENT_LEVEL_2_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_3_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_INVESTMENT_LEVEL_3_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_4_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_INVESTMENT_LEVEL_4_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_5_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_INVESTMENT_LEVEL_5_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_AGGR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_AGGR_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_SINGLE_PRICE_FULL_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SINGLE_PRICE_FULL_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_1_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_2_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_3_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_4_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_5_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_6_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_AGGR_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_AGGR_INVESTMENT_LEVEL_6_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_FULL_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_FULL_INVESTMENT_LEVEL_6_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_AGGR_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_AGGR_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_AGGR_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_AGGR_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_AGGR_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_AGGR_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_FULL_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_FULL_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_FULL_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_FULL_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_FULL_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_FULL_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_FULL_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_FULL_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_FULL_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_FULL_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_FULL_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_FULL_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_FULL_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_1: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BASE_VALUE_GAINED_LEVEL_1'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_2: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BASE_VALUE_GAINED_LEVEL_2'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_3: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BASE_VALUE_GAINED_LEVEL_3'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_4: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BASE_VALUE_GAINED_LEVEL_4'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_5: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BASE_VALUE_GAINED_LEVEL_5'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_BASE_VALUE_GAINED_LEVEL_6: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_BASE_VALUE_GAINED_LEVEL_6'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_TOTAL_VALUE_GAINED_LEVEL_1_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VALUE_GAINED_LEVEL_1_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_TOTAL_VALUE_GAINED_LEVEL_2_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VALUE_GAINED_LEVEL_2_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_TOTAL_VALUE_GAINED_LEVEL_3_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VALUE_GAINED_LEVEL_3_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_TOTAL_VALUE_GAINED_LEVEL_4_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VALUE_GAINED_LEVEL_4_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_TOTAL_VALUE_GAINED_LEVEL_5_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VALUE_GAINED_LEVEL_5_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_TOTAL_VALUE_GAINED_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_TOTAL_VALUE_GAINED_LEVEL_6_PART'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_REAL_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL__ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL__ACQUIRE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_REAL_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL__LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL__LEASE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_REAL__LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL__LEASE_DATE_UNIT_NAME'
      Calculated = True
    end
    object cdsGridData_REAL_STORE_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL_STORE_IDENTIFIER'
      Size = 50
      Calculated = True
    end
    object cdsGridData_REAL__PARTNER_OFFICE_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL__PARTNER_OFFICE_NAME'
      Size = 100
      Calculated = True
    end
    object cdsGridData_REAL_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_TRANSPORT_DURATION_DAYS'
      DisplayFormat = ',0.'
      Calculated = True
    end
    object cdsGridData_REAL_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL_MEDIATOR_COMP_SHORT_NAME'
      Calculated = True
    end
    object cdsGridData_REAL__SHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL__SHIPMENT_TYPE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_REAL_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_IS_PARTNER_TRANSPORT'
      DisplayBoolValues = #1055#1072#1088#1090#1085'.;'#1048#1055
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_REAL__HAS_CUSTOMHOUSE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL__HAS_CUSTOMHOUSE'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_REAL_ACC_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACC_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACC_ACQUIRE_BASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL_ACC_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACC_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL_ACC_LEASE_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACC_LEASE_BASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_RESOLVE_DURATION_DAYS'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_SPEC_FIN_MODEL_NAME'
      Size = 100
      Calculated = True
    end
    object cdsGridData_EST_SALE_COVER_LEASE_TOTAL_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EST_SALE_COVER_LEASE_TOTAL_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_EST_ENV_COVER_LEASE_TOTAL_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_EST_ENV_COVER_LEASE_TOTAL_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_SALE_COVER_ACQUIRE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_SALE_COVER_LEASE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_ENV_COVER_ACQUIRE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_ENV_COVER_LEASE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_PREV_TOTAL_VG_LEVEL_1_PART_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PREV_TOTAL_VG_LEVEL_1_PART_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_PREV_TOTAL_VG_LEVEL_2_PART_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PREV_TOTAL_VG_LEVEL_2_PART_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_PREV_TOTAL_VG_LEVEL_3_PART_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PREV_TOTAL_VG_LEVEL_3_PART_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_PREV_TOTAL_VG_LEVEL_4_PART_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PREV_TOTAL_VG_LEVEL_4_PART_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_PREV_TOTAL_VG_LEVEL_5_PART_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PREV_TOTAL_VG_LEVEL_5_PART_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_PREV_TOTAL_VG_LEVEL_6_PART_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PREV_TOTAL_VG_LEVEL_6_PART_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_BASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_BASE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_SALE_COVER_ACQUIRE_BASE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_SALE_COVER_LEASE_BASE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_ENV_COVER_ACQUIRE_BASE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_EST_ENV_COVER_LEASE_BASE_TOTAL_PRICE'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsGridData_REAL_ACQUIRE_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_ACQUIRE_BASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_REAL_LEASE_BASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_REAL_LEASE_BASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_EST_SALE_COVER_LEASE_TOTAL_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_EST_SALE_COVER_LEASE_TOTAL_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_ACC_EST_ENV_COVER_LEASE_TOTAL_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_EST_ENV_COVER_LEASE_TOTAL_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_PRECISION_LEVEL_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_NO'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'PRECISION_LEVEL_CODE'
      LookupResultField = 'PRECISION_LEVEL_NO'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_PRECISION_LEVEL_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_SHOW_NAME'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'PRECISION_LEVEL_CODE'
      LookupResultField = '_PRECISION_LEVEL_SHOW_NAME'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_PRECISION_LEVEL_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_COLOR'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'PRECISION_LEVEL_CODE'
      LookupResultField = 'COLOR'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_PRECISION_LEVEL_BACKGROUND_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_BACKGROUND_COLOR'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'PRECISION_LEVEL_CODE'
      LookupResultField = 'BACKGROUND_COLOR'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_IS_APPROVED_BY_PARTNER_SHOW: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IS_APPROVED_BY_PARTNER_SHOW'
      DisplayBoolValues = #1044#1074#1091#1089#1090#1088'.;'#1048#1055
      FieldValueType = fvtBoolean
      Calculated = True
    end
    object cdsGridData_VALUE_GAINED_LEVEL_6: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_VALUE_GAINED_LEVEL_6'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_MONTHS_IN_PERIOD: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_MONTHS_IN_PERIOD'
      Calculated = True
    end
    object cdsGridData_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      DisplayLabel = 
        #1057#1088#1077#1076#1085#1086#1084#1077#1089#1077#1095#1085#1086' '#1088#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1095#1088#1077 +
        #1079' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldKind = fkCalculated
      FieldName = '_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_ACC_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY: TAbmesFloatField
      DisplayLabel = 
        #1057#1088#1077#1076#1085#1086#1084#1077#1089#1077#1095#1085#1086' '#1089#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' ' +
        #1095#1088#1077#1079' '#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldKind = fkCalculated
      FieldName = '_ACC_AVG_MONTH_EST_SALE_COVER_ACQUIRE_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      DisplayLabel = 
        #1057#1088#1077#1076#1085#1086#1084#1077#1089#1077#1095#1085#1086' '#1088#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1045#1083#1057' '#1095#1088#1077#1079' '#1055#1088#1080 +
        #1076#1086#1073#1080#1074#1072#1085#1077
      FieldKind = fkCalculated
      FieldName = '_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_ACC_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY: TAbmesFloatField
      DisplayLabel = 
        #1057#1088#1077#1076#1085#1086#1084#1077#1089#1077#1095#1085#1086' '#1089#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1045#1083#1057' '#1095#1088#1077#1079' ' +
        #1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldKind = fkCalculated
      FieldName = '_ACC_AVG_MONTH_EST_ENV_COVER_ACQUIRE_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField
      DisplayLabel = 
        #1057#1088#1077#1076#1085#1086#1084#1077#1089#1077#1095#1085#1086' '#1088#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' '#1095#1088#1077 +
        #1079' '#1042#1098#1074#1077#1078#1076#1072#1085#1077
      FieldKind = fkCalculated
      FieldName = '_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_ACC_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY: TAbmesFloatField
      DisplayLabel = 
        #1057#1088#1077#1076#1085#1086#1084#1077#1089#1077#1095#1085#1086' '#1089#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1073#1077#1079#1087#1077#1095#1072#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1076#1072#1078#1073#1080' ' +
        #1095#1088#1077#1079' '#1042#1098#1074#1077#1078#1076#1072#1085#1077
      FieldKind = fkCalculated
      FieldName = '_ACC_AVG_MONTH_EST_SALE_COVER_CONSIGN_QTY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_MAX_PAR_REL_PRODUCT_PERIOD_CODE: TAggregateField
      FieldName = '_MAX_PAR_REL_PRODUCT_PERIOD_CODE'
      Active = True
      Expression = 'Max(PAR_REL_PRODUCT_PERIOD_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 611
    Top = 368
    inherited actForm: TAction
      Caption = '%ParRelProduct% - '#1040#1089#1087#1077#1082#1090' "'#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072'" - %s'
    end
    object actToggleBaseCurrency: TAction
      Hint = #1042#1072#1083#1091#1090#1072' / '#1054#1089#1085#1086#1074#1085#1072' '#1042#1072#1083#1091#1090#1072
      ImageIndex = 38
      OnExecute = actToggleBaseCurrencyExecute
    end
    object actToggleValueGainedDiff: TAction
      Caption = '% / '#177'%'
      GroupIndex = 3
      Hint = #1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' % / '#1048#1085#1076#1091#1089#1090#1088#1080#1072#1083#1077#1085' '#1056#1077#1079#1091#1083#1090#1072#1090' '#177'%'
      OnExecute = actToggleValueGainedDiffExecute
    end
    object actToggleAcquire: TAction
      AutoCheck = True
      Caption = '%AcquireShortAbbrev%'
      Checked = True
      GroupIndex = 1
      OnExecute = actToggleAcquireExecute
      OnUpdate = actToggleAcquireUpdate
    end
    object actToggleLease: TAction
      AutoCheck = True
      Caption = '%LeaseShortAbbrev%'
      GroupIndex = 1
      OnExecute = actToggleLeaseExecute
      OnUpdate = actToggleLeaseUpdate
    end
    object actToggleConsign: TAction
      AutoCheck = True
      Caption = '%ConsignShortAbbrev%'
      GroupIndex = 1
      OnExecute = actToggleConsignExecute
      OnUpdate = actToggleConsignUpdate
    end
    object actToggleSale: TAction
      AutoCheck = True
      Caption = #1054#1073#1077#1079#1087'. '#1055#1088#1086#1076#1072#1078#1073#1080
      Checked = True
      GroupIndex = 2
      OnExecute = actToggleSaleExecute
      OnUpdate = actToggleSaleUpdate
    end
    object actToggleEnv: TAction
      AutoCheck = True
      Caption = #1054#1073#1077#1079#1087'. '#1045#1083#1057
      GroupIndex = 2
      OnExecute = actToggleEnvExecute
      OnUpdate = actToggleEnvUpdate
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 4
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 4
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
    end
    object actCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      ImageIndex = 4
      OnExecute = actCreateLikeExecute
      OnUpdate = actCreateLikeUpdate
    end
    object actPastPeriods: TAction
      Caption = #1052
      GroupIndex = 12
      Hint = #1052#1080#1085#1072#1083#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actPresentPeriods: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 13
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
    object actFuturePeriods: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 14
      Hint = #1041#1098#1076#1077#1097#1080
      OnExecute = actPastPresentFuturePeriodsExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    AfterPost = pdsGridDataParamsAfterPost
    Left = 240
    Top = 400
    object pdsGridDataParamsPARTNER_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_CODE'
    end
    object pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
    end
    object pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 272
    Top = 400
  end
  inherited dsData: TDataSource
    Left = 272
    Top = 336
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvParRelProduct'
    BeforePost = cdsDataBeforePost
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 240
    Top = 336
    object cdsDataPARTNER_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnChange = cdsDataPRODUCT_CODEChange
    end
    object cdsDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_REGULAR: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1056#1077#1078#1080#1084' '#1087#1091#1083#1089#1072#1094#1080#1080
      FieldName = 'IS_REGULAR'
      DisplayBoolValues = #1056#1077#1075#1091#1083#1103#1088#1077#1085';'#1055#1091#1083#1089#1080#1088#1072#1097
      FieldValueType = fvtBoolean
    end
    object cdsDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsDataMEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataSTATUS_CHANGED: TAbmesFloatField
      FieldName = 'STATUS_CHANGED'
      FieldValueType = fvtBoolean
    end
    object cdsDataqryParRelProductPeriods: TDataSetField
      FieldName = 'qryParRelProductPeriods'
    end
    object cdsData_COMMON_STATUS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_COMMON_STATUS_CODE'
      Calculated = True
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 320
    Top = 368
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 352
    Top = 368
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object cdsPartnerOffices: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvCompanyOffices'
    BeforeOpen = cdsPartnerOfficesBeforeOpen
    Left = 384
    Top = 368
    object cdsPartnerOfficesOFFICE_CODE: TAbmesFloatField
      FieldName = 'OFFICE_CODE'
    end
    object cdsPartnerOfficesOFFICE_NAME: TAbmesWideStringField
      FieldName = 'OFFICE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsShipmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvShipmentTypes'
    OnCalcFields = cdsShipmentTypesCalcFields
    Left = 416
    Top = 368
    object cdsShipmentTypesSHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_TYPE_CODE'
    end
    object cdsShipmentTypesSHIPMENT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_ABBREV'
      Size = 5
    end
    object cdsShipmentTypesSHIPMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SHIPMENT_TYPE_NAME'
      Size = 50
    end
    object cdsShipmentTypes_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_NAME'
      Size = 100
      Calculated = True
    end
  end
  object cdsCustomhouses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCustomhouses'
    Left = 448
    Top = 368
    object cdsCustomhousesCUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'CUSTOMHOUSE_CODE'
      Required = True
    end
    object cdsCustomhousesCUSTOMHOUSE_NAME: TAbmesWideStringField
      FieldName = 'CUSTOMHOUSE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsPrecisionLevels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPrecisionLevels'
    OnCalcFields = cdsPrecisionLevelsCalcFields
    Left = 480
    Top = 368
    object cdsPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object cdsPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_NO'
    end
    object cdsPrecisionLevelsPRECISION_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'PRECISION_LEVEL_NAME'
      Size = 50
    end
    object cdsPrecisionLevelsCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object cdsPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
    object cdsPrecisionLevels_PRECISION_LEVEL_SHOW_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PRECISION_LEVEL_SHOW_NAME'
      Size = 50
      Calculated = True
    end
  end
  object cdsPRPPInheritedData: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
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
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
        Size = 8
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Size = 8
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
      end>
    ProviderName = 'prvPRPPInheritedData'
    Left = 320
    Top = 400
    object cdsPRPPInheritedDataINHRT_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_SINGLE_PRICE'
    end
    object cdsPRPPInheritedDataINHRT_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_ACQUIRE_CURRENCY_CODE'
    end
    object cdsPRPPInheritedDataINHRT_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_SINGLE_PRICE'
    end
    object cdsPRPPInheritedDataINHRT_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_CURRENCY_CODE'
    end
    object cdsPRPPInheritedDataINHRT_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_LEASE_DATE_UNIT_CODE'
    end
    object cdsPRPPInheritedDataINHRT_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_STORE_CODE'
    end
    object cdsPRPPInheritedDataINHRT_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsPRPPInheritedDataINHRT_PARTNER_OFFICE_CODE: TAbmesFloatField
      FieldName = 'INHRT_PARTNER_OFFICE_CODE'
    end
    object cdsPRPPInheritedDataINHRT_TRANSPORT_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_TRANSPORT_DURATION_DAYS'
    end
    object cdsPRPPInheritedDataINHRT_MEDIATOR_COMPANY_CODE: TAbmesFloatField
      FieldName = 'INHRT_MEDIATOR_COMPANY_CODE'
    end
    object cdsPRPPInheritedDataINHRT_MEDIATOR_COMP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'INHRT_MEDIATOR_COMP_SHORT_NAME'
    end
    object cdsPRPPInheritedDataINHRT_SHIPMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'INHRT_SHIPMENT_TYPE_CODE'
    end
    object cdsPRPPInheritedDataINHRT_IS_PARTNER_TRANSPORT: TAbmesFloatField
      FieldName = 'INHRT_IS_PARTNER_TRANSPORT'
    end
    object cdsPRPPInheritedDataINHRT_CUSTOMHOUSE_CODE: TAbmesFloatField
      FieldName = 'INHRT_CUSTOMHOUSE_CODE'
    end
    object cdsPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_CODE: TAbmesFloatField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_CODE'
    end
    object cdsPRPPInheritedDataINHRT_EST_SPEC_FIN_MODEL_NAME: TAbmesWideStringField
      FieldName = 'INHRT_EST_SPEC_FIN_MODEL_NAME'
      Size = 100
    end
    object cdsPRPPInheritedDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
    end
    object cdsPRPPInheritedDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
    end
    object cdsPRPPInheritedDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
    end
    object cdsPRPPInheritedDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
    end
    object cdsPRPPInheritedDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
    end
    object cdsPRPPInheritedDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
    end
    object cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
    end
    object cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
    end
    object cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
    end
    object cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
    end
    object cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
    end
    object cdsPRPPInheritedDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
    end
    object cdsPRPPInheritedDataPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object cdsPRPPInheritedDataBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
    end
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvMeasures'
    BeforeOpen = cdsMeasuresBeforeOpen
    Left = 512
    Top = 368
    object cdsMeasuresMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
      Required = True
    end
    object cdsMeasuresMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsParRel: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvParRel'
    Left = 352
    Top = 400
    object cdsParRelPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsParRelBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsParRelPRIORITY_CODE: TAbmesFloatField
      FieldName = 'PRIORITY_CODE'
    end
    object cdsParRelqryParRelPeriods: TDataSetField
      FieldName = 'qryParRelPeriods'
    end
  end
  object cdsParRelPeriods: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsParRelqryParRelPeriods
    Params = <>
    Left = 352
    Top = 432
    object cdsParRelPeriodsPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsParRelPeriodsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsParRelPeriodsPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
    end
    object cdsParRelPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsParRelPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
  object cdsProductPeriodsHeader: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductPeriods'
    Left = 384
    Top = 400
    object cdsProductPeriodsHeaderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProductPeriodsHeaderqryProductPeriods: TDataSetField
      FieldName = 'qryProductPeriods'
    end
  end
  object cdsProductPeriods: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsProductPeriodsHeaderqryProductPeriods
    Params = <>
    Left = 384
    Top = 432
    object cdsProductPeriodsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
    end
    object cdsProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsProductPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
  end
end
