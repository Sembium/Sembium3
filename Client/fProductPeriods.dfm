inherited fmProductPeriods: TfmProductPeriods
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' %ProductClassCommonName%'
  ClientHeight = 367
  ClientWidth = 953
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 332
    Width = 953
    inherited pnlOKCancel: TPanel
      Left = 701
      Width = 163
      inherited btnOK: TBitBtn
        Width = 73
      end
      inherited btnCancel: TBitBtn
        Left = 82
        Width = 73
      end
    end
    inherited pnlClose: TPanel
      Left = 620
      Width = 81
      inherited btnClose: TBitBtn
        Width = 73
      end
    end
    inherited pnlApply: TPanel
      Left = 864
      Visible = False
    end
    inherited pnlDataButtons: TPanel
      Width = 455
      inherited btnAddData: TBitBtn
        Width = 97
      end
      inherited btnDeleteData: TBitBtn
        Left = 244
        Width = 97
        TabOrder = 2
      end
      inherited btnEditData: TBitBtn
        Left = 350
        TabOrder = 3
      end
      object btnCreateLike: TBitBtn
        Left = 114
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
    Width = 953
    Height = 332
    inherited pnlGrid: TPanel
      Top = 80
      Width = 937
      Height = 244
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 937
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbDocs: TToolBar
          Left = 325
          Top = 0
          Width = 133
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
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
            Width = 89
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = '%ProductPeriodAbbrev% '#1042#1088#1084#1048#1085#1090
            TabOrder = 0
          end
          object btnDocs: TToolButton
            Left = 97
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1042#1088#1084#1048#1085#1090
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnDocsClick
          end
        end
        object tlbToggle: TToolBar
          Left = 711
          Top = 0
          Width = 226
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 4
          object btnWorkInvestmentValues: TToolButton
            Left = 0
            Top = 0
            Action = actWorkInvestmentValues
            Grouped = True
            Style = tbsCheck
          end
          object btnAccountInvestmentValues: TToolButton
            Left = 24
            Top = 0
            Action = actAccountInvestmentValues
            Grouped = True
            Style = tbsCheck
          end
          object sepToggleOrderQuantities: TToolButton
            Left = 48
            Top = 0
            Width = 8
            Caption = 'sepToggleOrderQuantities'
            ImageIndex = 53
            Style = tbsSeparator
          end
          object btnToggleOrderQuantities: TToolButton
            Left = 56
            Top = 0
            Action = actToggleOrderQuantities
            AllowAllUp = True
            Grouped = True
          end
          object sepToggleSaleAndDelivery: TToolButton
            Left = 80
            Top = 0
            Width = 8
            Caption = 'sepToggleSaleAndDelivery'
            ImageIndex = 53
            Style = tbsSeparator
          end
          object btnToggleSaleAndDelivery: TSpeedButton
            Left = 88
            Top = 0
            Width = 49
            Height = 24
            Action = actToggleSaleAndDelivery
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object sepToggleFullInvestmentValue: TToolButton
            Left = 137
            Top = 0
            Width = 8
            Caption = 'sepToggleFullInvestmentValue'
            ImageIndex = 53
            Style = tbsSeparator
          end
          object btnToggleFullInvestmentValue: TToolButton
            Left = 145
            Top = 0
            Action = actToggleFullInvestmentValue
            AllowAllUp = True
            Grouped = True
          end
          object sepToggleInvestmentValuesDiff: TToolButton
            Left = 169
            Top = 0
            Width = 8
            Caption = 'sepToggleInvestmentValuesDiff'
            ImageIndex = 52
            Style = tbsSeparator
          end
          object btnToggleInvestmentValuesDiff: TSpeedButton
            Left = 177
            Top = 0
            Width = 49
            Height = 24
            Action = actToggleInvestmentValuesDiff
            AllowAllUp = True
            GroupIndex = 3
            Flat = True
            Transparent = False
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
          TabOrder = 5
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
        Width = 937
        Height = 220
        HorzScrollBar.Tracking = False
        HorzScrollBar.VisibleMode = sbNeverShowEh
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 5
        VertScrollBar.VisibleMode = sbAlwaysShowEh
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            CellButtons = <>
            Color = 16115403
            DynProps = <>
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
            Width = 124
          end
          item
            Alignment = taCenter
            CellButtons = <>
            Color = 15532031
            DynProps = <>
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
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_PRECISION_LEVEL_NO'
            Footers = <>
            Title.Caption = #1053' '#1058
            Width = 20
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_BALANCE_QUANTITY'
            Footers = <>
            Title.Caption = #1041#1072#1083#1072#1085#1089'. '#1082'-'#1074#1086
            Width = 71
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_MIN_ORDER_QUANTITY'
            Footers = <>
            Title.Caption = #1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1052#1080#1085'.'
            Visible = False
            Width = 35
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_MAX_ORDER_QUANTITY'
            Footers = <>
            Title.Caption = #1050'-'#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044'|'#1052#1072#1082#1089'.'
            Visible = False
            Width = 35
          end
          item
            CellButtons = <>
            Color = 7462772
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_INVESTMENT_LEVEL_1_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' 1'
            Width = 51
          end
          item
            CellButtons = <>
            Color = 11595441
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_INVESTMENT_LEVEL_2_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' 2'
            Width = 51
          end
          item
            CellButtons = <>
            Color = 13694161
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_INVESTMENT_LEVEL_3_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' 3'
            Width = 51
          end
          item
            CellButtons = <>
            Color = 15203047
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_INVESTMENT_LEVEL_4_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' 4'
            Width = 51
          end
          item
            CellButtons = <>
            Color = 16055796
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_INVESTMENT_LEVEL_5_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' 5'
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_INVESTMENT_LEVEL_6_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' 6'
            Width = 51
          end
          item
            CellButtons = <>
            Color = 7462772
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_1_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' '#1055'1'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 11595441
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_2_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' '#1055'2'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 13694161
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_3_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' '#1055'3'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 15203047
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_4_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' '#1055'4'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 16055796
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_5_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' '#1055'5'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_6_VALUE'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev% /%s/|'#1042#1057' '#1055'6'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 7462772
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVESTMENT_LEVEL_1_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' 1 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 11595441
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVESTMENT_LEVEL_2_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' 2 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 13694161
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVESTMENT_LEVEL_3_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' 3 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 15203047
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVESTMENT_LEVEL_4_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' 4 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 16055796
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVESTMENT_LEVEL_5_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' 5 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_INVESTMENT_LEVEL_6_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' 6 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 7462772
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_1_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' '#1055'1 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 11595441
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_2_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' '#1055'2 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 13694161
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_3_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' '#1055'3 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 15203047
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_4_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' '#1055'4 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            Color = 16055796
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_5_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' '#1055'5 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_FULL_INVESTMENT_LEVEL_6_DIFF'
            Footers = <>
            Title.Caption = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1077#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%|'#1042#1057' '#1055'6 '#177'%'
            Visible = False
            Width = 51
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_ACQUIRE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1097#1072'|'#1062#1077#1085#1072
            Width = 55
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1097#1072'|'#1042#1072#1083#1091#1090#1072
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_LEASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1053#1072#1077#1084#1086#1076#1072#1074#1072#1097#1072'|'#1062#1077#1085#1072
            Width = 55
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_LEASE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1053#1072#1077#1084#1086#1076#1072#1074#1072#1097#1072'|'#1042#1072#1083#1091#1090#1072
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1053#1072#1077#1084#1086#1076#1072#1074#1072#1097#1072'|'#1042#1088'.'#1057#1090#1098#1087#1082#1072
            Title.Hint = #1042#1088#1077#1084#1077#1074#1072' '#1057#1090#1098#1087#1082#1072
            Width = 58
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1058#1055' '#1079#1072' '#1045#1082#1089#1087#1077#1076#1080#1094#1080#1103
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_SALE_RESOLVE_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1055#1088#1086#1076#1072#1078#1073#1072'|'#1055#1077#1088#1056#1077#1079
            Title.Hint = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1088#1077#1079#1091#1083#1090#1072#1090' '#1086#1090' '#1048#1055
            Width = 43
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1097#1072'|'#1062#1077#1085#1072
            Visible = False
            Width = 55
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1097#1072'|'#1042#1072#1083#1091#1090#1072
            Visible = False
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_LEASE_SINGLE_PRICE'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1053#1072#1077#1084#1086#1076#1072#1074#1072#1097#1072'|'#1062#1077#1085#1072
            Visible = False
            Width = 55
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1053#1072#1077#1084#1086#1076#1072#1074#1072#1097#1072'|'#1042#1072#1083#1091#1090#1072
            Visible = False
            Width = 39
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1053#1072#1077#1084#1086#1076#1072#1074#1072#1097#1072'|'#1042#1088'.'#1057#1090#1098#1087#1082#1072
            Title.Hint = #1042#1088#1077#1084#1077#1074#1072' '#1057#1090#1098#1087#1082#1072
            Visible = False
            Width = 58
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_STORE_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1058#1055' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072#1085#1077
            Visible = False
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_SHOW_DELIVERY_RESOLVE_DURATION_DAYS'
            Footers = <>
            Title.Caption = #1044#1086#1089#1090#1072#1074#1082#1072'|'#1055#1077#1088#1056#1077#1079
            Title.Hint = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1088#1077#1079#1091#1083#1090#1072#1090' '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
            Visible = False
            Width = 43
          end>
      end
    end
    inline frProduct: TfrProductExFieldEditFrame
      Left = 8
      Top = 8
      Width = 937
      Height = 65
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Align = alTop
      Constraints.MaxHeight = 549
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      inherited gbTreeNode: TGroupBox
        Width = 937
        Caption = ' %ProductClassCommonName% '
        inherited pnlTreeNode: TPanel
          Width = 35
          inherited pnlTreeNodeNo: TPanel
            Left = -147
          end
          inherited pnlRightButtons: TPanel
            Left = -24
          end
          inherited pnlProductLabels: TPanel
            Width = 35
          end
        end
        inherited pnlRight: TPanel
          Left = 165
        end
      end
    end
    object pnlSeparator: TPanel
      Left = 8
      Top = 73
      Width = 937
      Height = 7
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  inherited dsGridData: TDataSource
    Left = 88
    Top = 240
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryProductPeriods
    Filtered = True
    FieldDefs = <
      item
        Name = 'PRODUCT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_PERIOD_CODE'
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
        Name = 'PRECISION_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BALANCE_QUANTITY'
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
        Name = 'SALE_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'SALE_ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ACQUIRE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_ACQUIRE_CURRENCY_FIXING'
        DataType = ftFloat
      end
      item
        Name = 'SALE_LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_LEASE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_STORE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_STORE_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DELIVERY_ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_ACQUIRE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_ACQUIRE_CURR_FIXING'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_LEASE_CURRENCY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_LEASE_DATE_UNIT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_PSD_PRICE_FROM_DELIVERY'
        DataType = ftFloat
      end
      item
        Name = 'SALE_RESOLVE_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'DELIVERY_RESOLVE_DURATION_DAYS'
        DataType = ftFloat
      end
      item
        Name = 'PREV_INVESTMENT_LEVEL_1_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PREV_INVESTMENT_LEVEL_2_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PREV_INVESTMENT_LEVEL_3_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PREV_INVESTMENT_LEVEL_4_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PREV_INVESTMENT_LEVEL_5_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'PREV_INVESTMENT_LEVEL_6_VALUE'
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
        Name = 'ACC_INVESTMENT_LEVEL_1_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_INVESTMENT_LEVEL_2_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_INVESTMENT_LEVEL_3_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_INVESTMENT_LEVEL_4_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_INVESTMENT_LEVEL_5_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_INVESTMENT_LEVEL_6_VALUE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_SALE_ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_SALE_LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_DLVRY_ACQUIRE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_DLVRY_LEASE_SINGLE_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'ACC_BALANCE_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CHANGE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'CHANGE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'IS_PAST'
        DataType = ftFloat
      end
      item
        Name = 'IS_PRESENT'
        DataType = ftFloat
      end
      item
        Name = 'IS_FUTURE'
        DataType = ftFloat
      end
      item
        Name = 'qryNotProdPerSpecModelVariants'
        DataType = ftDataSet
      end
      item
        Name = 'qryProdPerSpecModelVariants'
        DataType = ftDataSet
      end>
    BeforeInsert = cdsGridDataBeforeInsert
    BeforeEdit = cdsGridDataBeforeEdit
    BeforePost = cdsGridDataBeforePost
    OnCalcFields = cdsGridDataCalcFields
    OnFilterRecord = cdsGridDataFilterRecord
    OnNewRecord = cdsGridDataNewRecord
    Left = 56
    Top = 240
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
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
    object cdsGridDataPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object cdsGridDataBALANCE_QUANTITY: TAbmesFloatField
      DisplayLabel = #1041#1072#1083#1072#1085#1089#1080#1088#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'BALANCE_QUANTITY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataMIN_ORDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1080#1085#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      FieldName = 'MIN_ORDER_QUANTITY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
    end
    object cdsGridDataMAX_ORDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      FieldName = 'MAX_ORDER_QUANTITY'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
    end
    object cdsGridDataINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSALE_STORE_CODE: TAbmesFloatField
      FieldName = 'SALE_STORE_CODE'
      OnChange = cdsGridDataSALE_STORE_CODEChange
    end
    object cdsGridDataSALE_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072
      FieldName = 'SALE_ACQUIRE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSALE_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_CURRENCY_CODE'
      OnChange = cdsGridDataSALE_ACQUIRE_CURRENCY_CODEChange
    end
    object cdsGridDataSALE_ACQUIRE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_CURRENCY_FIXING'
      ProviderFlags = []
    end
    object cdsGridDataSALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1053#1072#1077#1084#1086#1076#1072#1074#1072#1085#1077
      FieldName = 'SALE_LEASE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataSALE_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_CURRENCY_CODE'
    end
    object cdsGridDataSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataDELIVERY_STORE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_STORE_CODE'
      OnChange = cdsGridDataDELIVERY_STORE_CODEChange
    end
    object cdsGridDataDELIVERY_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DELIVERY_STORE_IDENTIFIER'
      ProviderFlags = []
      Size = 46
    end
    object cdsGridDataDELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'DELIVERY_ACQUIRE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_CURRENCY_CODE'
      OnChange = cdsGridDataDELIVERY_ACQUIRE_CURRENCY_CODEChange
    end
    object cdsGridDataDELIVERY_ACQUIRE_CURR_FIXING: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_CURR_FIXING'
      ProviderFlags = []
    end
    object cdsGridDataDELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072' '#1079#1072' '#1053#1072#1077#1084#1072#1085#1077
      FieldName = 'DELIVERY_LEASE_SINGLE_PRICE'
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_CURRENCY_CODE'
    end
    object cdsGridDataDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldName = 'IS_PSD_PRICE_FROM_DELIVERY'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSALE_RESOLVE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1088#1077#1079#1091#1083#1090#1072#1090' '#1086#1090' '#1048#1055
      FieldName = 'SALE_RESOLVE_DURATION_DAYS'
      MaxValue = 999.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsGridDataDELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField
      DisplayLabel = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1088#1077#1079#1091#1083#1090#1072#1090' '#1086#1090' '#1044#1086#1089#1090#1072#1074#1095#1080#1082
      FieldName = 'DELIVERY_RESOLVE_DURATION_DAYS'
      MaxValue = 999.000000000000000000
      FieldValueType = fvtInteger
    end
    object cdsGridDataPREV_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataPREV_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataPREV_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataPREV_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataPREV_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataPREV_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'PREV_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataCMMN_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'CMMN_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
    end
    object cdsGridDataACC_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_1_VALUE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_2_VALUE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_3_VALUE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_4_VALUE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_5_VALUE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'ACC_INVESTMENT_LEVEL_6_VALUE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_SALE_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_SALE_LEASE_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_DLVRY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_DLVRY_ACQUIRE_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_DLVRY_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_DLVRY_LEASE_SINGLE_PRICE'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_BALANCE_QUANTITY'
      ProviderFlags = []
      OnChange = WorkOrAccountFieldChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsGridDataACC_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_MIN_ORDER_QUANTITY'
    end
    object cdsGridDataACC_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_MAX_ORDER_QUANTITY'
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
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_PRECISION_LEVEL: TAbmesFloatField
      FieldName = 'OVERRIDE_PRECISION_LEVEL'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'OVERRIDE_BALANCE_QUANTITY'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'OVERRIDE_MIN_ORDER_QUANTITY'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'OVERRIDE_MAX_ORDER_QUANTITY'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_INV_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_1_VALUE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_INV_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_2_VALUE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_INV_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_3_VALUE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_INV_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_4_VALUE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_INV_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_5_VALUE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_INV_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'OVERRIDE_INV_LEVEL_6_VALUE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_S_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_S_STORE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_S_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_S_ACQUIRE_PRICE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_S_LEASE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_S_LEASE_PRICE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_S_RESOLVE_DUR_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_S_RESOLVE_DUR_DAYS'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_D_STORE: TAbmesFloatField
      FieldName = 'OVERRIDE_D_STORE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_D_ACQUIRE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_D_ACQUIRE_PRICE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_D_LEASE_PRICE: TAbmesFloatField
      FieldName = 'OVERRIDE_D_LEASE_PRICE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_D_RESOLVE_DUR_DAYS: TAbmesFloatField
      FieldName = 'OVERRIDE_D_RESOLVE_DUR_DAYS'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOVERRIDE_IS_PSD_PRICE_FROM_DLV: TAbmesFloatField
      FieldName = 'OVERRIDE_IS_PSD_PRICE_FROM_DLV'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataINHRT_PRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'INHRT_PRECISION_LEVEL_CODE'
    end
    object cdsGridDataINHRT_BALANCE_QUANTITY: TAbmesFloatField
      DisplayLabel = #1041#1072#1083#1072#1085#1089#1080#1088#1072#1097#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'INHRT_BALANCE_QUANTITY'
    end
    object cdsGridDataINHRT_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'INHRT_MIN_ORDER_QUANTITY'
    end
    object cdsGridDataINHRT_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'INHRT_MAX_ORDER_QUANTITY'
    end
    object cdsGridDataINHRT_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INHRT_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataACC_INHRT_INV_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_1_VALUE'
    end
    object cdsGridDataACC_INHRT_INV_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_2_VALUE'
    end
    object cdsGridDataACC_INHRT_INV_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_3_VALUE'
    end
    object cdsGridDataACC_INHRT_INV_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_4_VALUE'
    end
    object cdsGridDataACC_INHRT_INV_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_5_VALUE'
    end
    object cdsGridDataACC_INHRT_INV_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'ACC_INHRT_INV_LEVEL_6_VALUE'
    end
    object cdsGridDataINHRT_S_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_STORE_CODE'
    end
    object cdsGridDataINHRT_S_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_S_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataINHRT_S_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_S_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_S_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_ACQUIRE_CURRENCY_CODE'
    end
    object cdsGridDataINHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_S_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_S_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_LEASE_CURRENCY_CODE'
    end
    object cdsGridDataINHRT_S_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_S_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataINHRT_S_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_S_RESOLVE_DURATION_DAYS'
    end
    object cdsGridDataINHRT_D_STORE_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_STORE_CODE'
    end
    object cdsGridDataINHRT_D_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'INHRT_D_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataINHRT_D_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_D_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_D_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_ACQUIRE_CURRENCY_CODE'
    end
    object cdsGridDataINHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'INHRT_D_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataINHRT_D_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_LEASE_CURRENCY_CODE'
    end
    object cdsGridDataINHRT_D_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'INHRT_D_LEASE_DATE_UNIT_CODE'
    end
    object cdsGridDataINHRT_D_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'INHRT_D_RESOLVE_DURATION_DAYS'
    end
    object cdsGridDataINHRT_IS_PSD_PRICE_FROM_DLVRY: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldName = 'INHRT_IS_PSD_PRICE_FROM_DLVRY'
      DisplayBoolValues = #1044#1086#1089#1090#1072#1074#1082#1072';'#1057#1098#1079#1076#1072#1074#1072#1085#1077
      FieldValueType = fvtBoolean
    end
    object cdsGridDataACC_INHRT_S_ACQ_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_S_ACQ_SINGLE_PRICE'
    end
    object cdsGridDataACC_INHRT_S_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_S_LEASE_SINGLE_PRICE'
    end
    object cdsGridDataACC_INHRT_D_ACQ_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_D_ACQ_SINGLE_PRICE'
    end
    object cdsGridDataACC_INHRT_D_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACC_INHRT_D_LEASE_SINGLE_PRICE'
    end
    object cdsGridDataACC_INHRT_BALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'ACC_INHRT_BALANCE_QUANTITY'
    end
    object cdsGridDataACC_INHRT_MIN_ORDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1080#1085#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      FieldName = 'ACC_INHRT_MIN_ORDER_QUANTITY'
    end
    object cdsGridDataACC_INHRT_MAX_ORDER_QUANTITY: TAbmesFloatField
      DisplayLabel = #1052#1072#1082#1089#1080#1084#1072#1083#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      FieldName = 'ACC_INHRT_MAX_ORDER_QUANTITY'
    end
    object cdsGridData_PRECISION_LEVEL_NO: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1085#1072' '#1090#1086#1095#1085#1086#1089#1090
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_NO'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'PRECISION_LEVEL_CODE'
      LookupResultField = 'PRECISION_LEVEL_NO'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_PRECISION_LEVEL_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_COLOR'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'COLOR'
      LookupResultField = 'COLOR'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_PRECISION_LEVEL_BACKGR_COLOR: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRECISION_LEVEL_BACKGR_COLOR'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'BACKGROUND_COLOR'
      LookupResultField = 'BACKGROUND_COLOR'
      KeyFields = 'PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_SALE_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072
      FieldKind = fkLookup
      FieldName = '_SALE_ACQUIRE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'SALE_ACQUIRE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_SALE_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072' '#1079#1072' '#1053#1072#1077#1084#1086#1076#1072#1074#1072#1085#1077
      FieldKind = fkLookup
      FieldName = '_SALE_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'SALE_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_SALE_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072' '#1079#1072' '#1053#1072#1077#1084#1086#1076#1072#1074#1072#1085#1077
      FieldKind = fkLookup
      FieldName = '_SALE_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'SALE_LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsGridData_DELIVERY_ACQUIRE_CURR_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072' '#1079#1072' '#1044#1086#1089#1090#1072#1074#1082#1072
      FieldKind = fkLookup
      FieldName = '_DELIVERY_ACQUIRE_CURR_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'DELIVERY_ACQUIRE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_DELIVERY_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1042#1072#1083#1091#1090#1072' '#1079#1072' '#1053#1072#1077#1084#1072#1085#1077
      FieldKind = fkLookup
      FieldName = '_DELIVERY_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'DELIVERY_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_DELIVERY_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072' '#1079#1072' '#1053#1072#1077#1084#1072#1085#1077
      FieldKind = fkLookup
      FieldName = '_DELIVERY_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'DELIVERY_LEASE_DATE_UNIT_CODE'
      Lookup = True
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
    object cdsGridData_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_1_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_2_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_3_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_4_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_5_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_INVESTMENT_LEVEL_6_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_1_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_2_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_3_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_4_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_5_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_FULL_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_FULL_INVESTMENT_LEVEL_6_DIFF'
      OnGetText = PercentFieldsGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_INVESTMENT_LEVEL_1_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_INVESTMENT_LEVEL_1_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_INVESTMENT_LEVEL_2_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_INVESTMENT_LEVEL_2_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_INVESTMENT_LEVEL_3_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_INVESTMENT_LEVEL_3_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_INVESTMENT_LEVEL_4_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_INVESTMENT_LEVEL_4_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_INVESTMENT_LEVEL_5_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_INVESTMENT_LEVEL_5_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_SALE_AGGR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_AGGR_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_SALE_FULL_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SALE_FULL_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_DLVR_INVESTMENT_LEVEL_1_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_INVESTMENT_LEVEL_1_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_DLVR_INVESTMENT_LEVEL_2_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_INVESTMENT_LEVEL_2_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_DLVR_INVESTMENT_LEVEL_3_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_INVESTMENT_LEVEL_3_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_DLVR_INVESTMENT_LEVEL_4_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_INVESTMENT_LEVEL_4_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_DLVR_INVESTMENT_LEVEL_5_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_INVESTMENT_LEVEL_5_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_DLVR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_DLVR_AGGR_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_AGGR_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_DLVR_FULL_INVESTMENT_LEVEL_6_PART: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DLVR_FULL_INVESTMENT_LEVEL_6_PART'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_1_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_1_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_2_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_2_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_3_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_3_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_4_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_4_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_5_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_5_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
      Calculated = True
    end
    object cdsGridData_CMMN_INVESTMENT_LEVEL_6_DIFF: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_CMMN_INVESTMENT_LEVEL_6_DIFF'
      OnGetText = PercentFieldsZeroGetText
      DisplayFormat = '0'
      EditFormat = '0.0'
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
    object cdsGridDataqryProdPerSpecModelVariants: TDataSetField
      FieldName = 'qryProdPerSpecModelVariants'
    end
    object cdsGridDataqryNotProdPerSpecModelVariants: TDataSetField
      FieldName = 'qryNotProdPerSpecModelVariants'
    end
    object cdsGridData_INHRT_PRECISION_LEVEL_NO: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1085#1072' '#1090#1086#1095#1085#1086#1089#1090
      FieldKind = fkLookup
      FieldName = '_INHRT_PRECISION_LEVEL_NO'
      LookupDataSet = cdsPrecisionLevels
      LookupKeyFields = 'PRECISION_LEVEL_CODE'
      LookupResultField = 'PRECISION_LEVEL_NO'
      KeyFields = 'INHRT_PRECISION_LEVEL_CODE'
      Lookup = True
    end
    object cdsGridData_INHRT_S_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_S_ACQUIRE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_S_ACQUIRE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_D_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_D_ACQUIRE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_D_ACQUIRE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_S_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_S_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_S_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_S_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_S_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'INHRT_S_LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsGridData_INHRT_D_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_D_LEASE_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'INHRT_D_LEASE_CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsGridData_INHRT_D_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_INHRT_D_LEASE_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'INHRT_D_LEASE_DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsGridData_SHOW_PRECISION_LEVEL_NO: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_PRECISION_LEVEL_NO'
      Calculated = True
    end
    object cdsGridData_SHOW_BALANCE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_BALANCE_QUANTITY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_BALANCE_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_BALANCE_QUANTITY'
      DisplayFormat = ',0.###'
      Calculated = True
    end
    object cdsGridData_SHOW_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_MIN_ORDER_QUANTITY'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_MIN_ORDER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_MIN_ORDER_QUANTITY'
      Calculated = True
    end
    object cdsGridData_SHOW_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_MAX_ORDER_QUANTITY'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_MAX_ORDER_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_MAX_ORDER_QUANTITY'
      Calculated = True
    end
    object cdsGridData_SHOW_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_INVESTMENT_LEVEL_1_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_INVESTMENT_LEVEL_2_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_INVESTMENT_LEVEL_3_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_INVESTMENT_LEVEL_4_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_ACC_INVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_INVESTMENT_LEVEL_5_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_INVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_INVESTMENT_LEVEL_6_VALUE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_SALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_SALE_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_ACQUIRE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_SALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_SALE_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_LEASE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_LEASE_DATE_UNIT_NAME'
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_STORE_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_STORE_IDENTIFIER'
      Calculated = True
    end
    object cdsGridData_SHOW_SALE_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_SALE_RESOLVE_DURATION_DAYS'
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_DLVRY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_DLVRY_ACQUIRE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_ACQUIRE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_ACC_SHOW_DLVRY_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_ACC_SHOW_DLVRY_LEASE_SINGLE_PRICE'
      DisplayFormat = ',0.00'
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_LEASE_CURRENCY_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_LEASE_DATE_UNIT_NAME'
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_STORE_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_STORE_IDENTIFIER'
      Calculated = True
    end
    object cdsGridData_SHOW_DELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SHOW_DELIVERY_RESOLVE_DURATION_DAYS'
      Calculated = True
    end
    object cdsGridData_MAX_PRODUCT_PERIOD_CODE: TAggregateField
      FieldName = '_MAX_PRODUCT_PERIOD_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Max(PRODUCT_PERIOD_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 432
    Top = 272
    inherited actForm: TAction
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1089#1082#1080' '#1052#1054#1044#1045#1083' '#1079#1072' %ProductClassCommonName%'
    end
    object actToggleSaleAndDelivery: TAction
      Caption = #1055' / '#1044
      GroupIndex = 1
      Hint = #1055#1088#1086#1076#1072#1078#1073#1072' / '#1044#1086#1089#1090#1072#1074#1082#1072
      OnExecute = actToggleSaleAndDeliveryExecute
    end
    object actToggleFullInvestmentValue: TAction
      Caption = #1055
      GroupIndex = 2
      Hint = #1042#1083#1086#1078#1077#1085#1072' / '#1055#1098#1083#1085#1072' '#1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      ImageIndex = 51
      OnExecute = actToggleFullInvestmentValueExecute
    end
    object actToggleInvestmentValuesDiff: TAction
      Caption = #1042#1057' / '#177'%'
      GroupIndex = 3
      Hint = #1042#1057' / '#177'%'
      OnExecute = actToggleInvestmentValuesDiffExecute
    end
    object actCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      ImageIndex = 4
      OnExecute = actCreateLikeExecute
      OnUpdate = actCreateLikeUpdate
    end
    object actWorkInvestmentValues: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 4
      Hint = #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1056#1072#1073#1086#1090#1085#1072' '#1052#1077#1088#1085#1072' '#1045#1076#1080#1085#1080#1094#1072' %ProductClassAbbrev%'
      ImageIndex = 23
      OnExecute = actWorkInvestmentValuesExecute
      OnUpdate = actWorkInvestmentValuesUpdate
    end
    object actAccountInvestmentValues: TAction
      AutoCheck = True
      GroupIndex = 4
      Hint = 
        #1042#1083#1086#1078#1077#1085#1080' '#1057#1090#1086#1081#1085#1086#1089#1090#1080' '#1079#1072' '#1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1052#1077#1088#1085#1072' '#1045#1076#1080#1085#1080#1094#1072' %ProductClassAbbre' +
        'v%'
      ImageIndex = 28
      OnExecute = actAccountInvestmentValuesExecute
      OnUpdate = actAccountInvestmentValuesUpdate
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
    object actToggleOrderQuantities: TAction
      GroupIndex = 8
      Hint = 'K'#1086#1083#1080#1095#1077#1089#1090#1074'o '#1079#1072' '#1054#1055#1042'/'#1054#1055#1044
      ImageIndex = 153
      OnExecute = actToggleOrderQuantitiesExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Left = 56
    Top = 272
  end
  inherited dsGridDataParams: TDataSource
    Left = 88
    Top = 272
  end
  inherited dsData: TDataSource
    Left = 88
    Top = 208
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductPeriods'
    AfterOpen = cdsDataAfterOpen
    BeforeClose = cdsDataBeforeClose
    OnCalcFields = cdsDataCalcFields
    BeforeApplyUpdates = cdsDataBeforeApplyUpdates
    Left = 56
    Top = 208
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsDataTECH_MEASURE_COEF: TAbmesFloatField
      FieldName = 'TECH_MEASURE_COEF'
    end
    object cdsDataIS_USED_BY_SALES: TAbmesFloatField
      FieldName = 'IS_USED_BY_SALES'
      FieldValueType = fvtBoolean
    end
    object cdsDataUSED_BY_SALES_PR_NO: TAbmesFloatField
      FieldName = 'USED_BY_SALES_PR_NO'
    end
    object cdsDataIS_PROVIDED_BY_DELIVERIES: TAbmesFloatField
      FieldName = 'IS_PROVIDED_BY_DELIVERIES'
      FieldValueType = fvtBoolean
    end
    object cdsDataPROV_BY_DELIVERIES_PR_NO: TAbmesFloatField
      FieldName = 'PROV_BY_DELIVERIES_PR_NO'
    end
    object cdsDataCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataIS_CONCRETE_PRODUCT: TAbmesFloatField
      FieldName = 'IS_CONCRETE_PRODUCT'
      FieldValueType = fvtBoolean
    end
    object cdsDataqryProductPeriods: TDataSetField
      FieldName = 'qryProductPeriods'
    end
  end
  object cdsPrecisionLevels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvPrecisionLevels'
    Left = 216
    Top = 272
    object cdsPrecisionLevelsPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPrecisionLevelsPRECISION_LEVEL_NO: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_NO'
    end
    object cdsPrecisionLevelsCOLOR: TAbmesFloatField
      FieldName = 'COLOR'
    end
    object cdsPrecisionLevelsBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 248
    Top = 272
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 280
    Top = 272
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object cdsCommonProductPeriodsHeader: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductPeriods'
    BeforeOpen = cdsCommonProductPeriodsHeaderBeforeOpen
    Left = 216
    Top = 240
    object cdsCommonProductPeriodsHeaderPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsCommonProductPeriodsHeaderqryProductPeriods: TDataSetField
      FieldName = 'qryProductPeriods'
    end
  end
  object cdsCommonProductPeriods: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsCommonProductPeriodsHeaderqryProductPeriods
    Params = <>
    Left = 248
    Top = 240
    object cdsCommonProductPeriodsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsCommonProductPeriodsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
    end
    object cdsCommonProductPeriodsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsCommonProductPeriodsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsCommonProductPeriodsPRECISION_LEVEL_CODE: TAbmesFloatField
      FieldName = 'PRECISION_LEVEL_CODE'
    end
    object cdsCommonProductPeriodsBALANCE_QUANTITY: TAbmesFloatField
      FieldName = 'BALANCE_QUANTITY'
    end
    object cdsCommonProductPeriodsMIN_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_ORDER_QUANTITY'
      OnChange = WorkOrAccountFieldChange
    end
    object cdsCommonProductPeriodsMAX_ORDER_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_ORDER_QUANTITY'
      OnChange = WorkOrAccountFieldChange
    end
    object cdsCommonProductPeriodsINVESTMENT_LEVEL_1_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_1_VALUE'
    end
    object cdsCommonProductPeriodsINVESTMENT_LEVEL_2_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_2_VALUE'
    end
    object cdsCommonProductPeriodsINVESTMENT_LEVEL_3_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_3_VALUE'
    end
    object cdsCommonProductPeriodsINVESTMENT_LEVEL_4_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_4_VALUE'
    end
    object cdsCommonProductPeriodsINVESTMENT_LEVEL_5_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_5_VALUE'
    end
    object cdsCommonProductPeriodsINVESTMENT_LEVEL_6_VALUE: TAbmesFloatField
      FieldName = 'INVESTMENT_LEVEL_6_VALUE'
    end
    object cdsCommonProductPeriodsSALE_STORE_CODE: TAbmesFloatField
      FieldName = 'SALE_STORE_CODE'
    end
    object cdsCommonProductPeriodsSALE_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsCommonProductPeriodsSALE_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_SINGLE_PRICE'
    end
    object cdsCommonProductPeriodsSALE_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_CURRENCY_CODE'
    end
    object cdsCommonProductPeriodsSALE_ACQUIRE_CURRENCY_FIXING: TAbmesFloatField
      FieldName = 'SALE_ACQUIRE_CURRENCY_FIXING'
    end
    object cdsCommonProductPeriodsSALE_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'SALE_LEASE_SINGLE_PRICE'
    end
    object cdsCommonProductPeriodsSALE_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_CURRENCY_CODE'
    end
    object cdsCommonProductPeriodsSALE_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'SALE_LEASE_DATE_UNIT_CODE'
    end
    object cdsCommonProductPeriodsSALE_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'SALE_RESOLVE_DURATION_DAYS'
    end
    object cdsCommonProductPeriodsDELIVERY_STORE_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_STORE_CODE'
    end
    object cdsCommonProductPeriodsDELIVERY_STORE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DELIVERY_STORE_IDENTIFIER'
      Size = 46
    end
    object cdsCommonProductPeriodsDELIVERY_ACQUIRE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_SINGLE_PRICE'
    end
    object cdsCommonProductPeriodsDELIVERY_ACQUIRE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_CURRENCY_CODE'
    end
    object cdsCommonProductPeriodsDELIVERY_ACQUIRE_CURR_FIXING: TAbmesFloatField
      FieldName = 'DELIVERY_ACQUIRE_CURR_FIXING'
    end
    object cdsCommonProductPeriodsDELIVERY_LEASE_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_SINGLE_PRICE'
    end
    object cdsCommonProductPeriodsDELIVERY_LEASE_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_CURRENCY_CODE'
    end
    object cdsCommonProductPeriodsDELIVERY_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_LEASE_DATE_UNIT_CODE'
    end
    object cdsCommonProductPeriodsDELIVERY_RESOLVE_DURATION_DAYS: TAbmesFloatField
      FieldName = 'DELIVERY_RESOLVE_DURATION_DAYS'
    end
    object cdsCommonProductPeriodsIS_PSD_PRICE_FROM_DELIVERY: TAbmesFloatField
      FieldName = 'IS_PSD_PRICE_FROM_DELIVERY'
    end
  end
  object cdsProdPerSpecModelVariants: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsGridDataqryProdPerSpecModelVariants
    Params = <>
    BeforePost = cdsProdPerSpecModelVariantsBeforePost
    OnNewRecord = cdsProdPerSpecModelVariantsNewRecord
    Left = 120
    Top = 240
    object cdsProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsProdPerSpecModelVariantsIS_EST_VARIANT: TAbmesFloatField
      FieldName = 'IS_EST_VARIANT'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
      Size = 207
    end
    object cdsProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object cdsProdPerSpecModelVariantsSMV_NO: TAbmesFloatField
      FieldName = 'SMV_NO'
    end
    object cdsProdPerSpecModelVariants_MAX_IS_EST_VARIANT: TAggregateField
      FieldName = '_MAX_IS_EST_VARIANT'
      Active = True
      DisplayName = ''
      Expression = 'Max(IS_EST_VARIANT)'
    end
  end
  object cdsNotProdPerSpecModelVariants: TAbmesClientDataSet
    Aggregates = <>
    DataSetField = cdsGridDataqryNotProdPerSpecModelVariants
    Params = <>
    BeforePost = cdsNotProdPerSpecModelVariantsBeforePost
    OnNewRecord = cdsNotProdPerSpecModelVariantsNewRecord
    Left = 152
    Top = 240
    object cdsNotProdPerSpecModelVariantsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotProdPerSpecModelVariantsPRODUCT_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsNotProdPerSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
      Size = 207
    end
    object cdsNotProdPerSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsNotProdPerSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsNotProdPerSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
    object cdsNotProdPerSpecModelVariantsSMV_NO: TAbmesFloatField
      FieldName = 'SMV_NO'
    end
  end
  object cdsSpecModelVariants: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'prvSpecModelVariants'
    BeforeOpen = cdsSpecModelVariantsBeforeOpen
    Left = 280
    Top = 240
    object cdsSpecModelVariantsSPEC_MODEL_VARIANT_NO: TAbmesFloatField
      FieldName = 'SPEC_MODEL_VARIANT_NO'
    end
    object cdsSpecModelVariantsSPEC_MODEL_VARIANT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SPEC_MODEL_VARIANT_IDENTIFIER'
      Size = 207
    end
    object cdsSpecModelVariantsMAIN_DEPT_CODE: TAbmesFloatField
      FieldName = 'MAIN_DEPT_CODE'
    end
    object cdsSpecModelVariantsMIN_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MIN_TECH_QUANTITY'
    end
    object cdsSpecModelVariantsMAX_TECH_QUANTITY: TAbmesFloatField
      FieldName = 'MAX_TECH_QUANTITY'
    end
  end
end
