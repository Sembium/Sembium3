inherited fmSaleRequestGroups: TfmSaleRequestGroups
  Caption = 
    #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductClas' +
    'sAbbrev% '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
  ClientHeight = 583
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 548
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 3
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 2
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 4
      Visible = False
    end
    object btnInsertDetailRecord: TBitBtn
      Left = 8
      Top = 0
      Width = 145
      Height = 25
      Action = actInsertDetailRecord
      Caption = #1053#1086#1074' '#1054#1044#1050' '#1087#1086' '#1055#1044#1050'...'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnEditDetailRecord: TBitBtn
      Left = 160
      Top = 0
      Width = 145
      Height = 25
      Action = actEditDetailRecord
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1054#1044#1050'...'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 548
    inherited sptDetail: TSplitter
      Top = 292
      Width = 1003
      Height = 6
    end
    inherited pnlDetailGrid: TPanel
      Top = 298
      Width = 1003
      Height = 242
      inherited pnlDetailNavigator: TPanel
        Align = alNone
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 1003
        Height = 218
        Visible = False
      end
      object pcDetail: TPageControl
        Left = 0
        Top = 24
        Width = 1003
        Height = 218
        ActivePage = tsDetailCommon
        Align = alClient
        HotTrack = True
        TabOrder = 2
        object tsDetailCommon: TTabSheet
          Caption = #1042#1088#1077#1084#1077#1074#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050
          object grdSaleOrders: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 190
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdSaleOrdersDblClick
            OnDrawColumnCell = grdSaleOrdersDrawColumnCell
            OnGetCellParams = grdSaleOrdersGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'SALE_ORDER_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1050
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1054#1044#1050
                Visible = False
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 278
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077
                Visible = False
                Width = 278
              end
              item
                EditButtons = <>
                FieldName = 'COMMON_STATUS_CODE'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1055#1079#1094'. '#1058#1049#1057' '
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1048#1048#1056
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_PERIOD_DAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1055#1083'. '#1087#1077#1088'.'
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'REAL_PERIOD_DAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1056#1083'. '#1087#1077#1088'.'
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
                Footers = <>
                Title.Caption = #1055#1077#1088#1080#1086#1076' ('#1076#1085#1080') '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077' '#1076#1086' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1054#1090#1082#1083'. %'
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'OFFER_SEND_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1055#1079#1094'. '#1048#1055
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'OFFER_ANSWER_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1055#1079#1094'. '#1050#1083#1080#1077#1085#1090
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'DECISION_DAYS_RSV'
                Footers = <>
                Title.Caption = #1056#1077#1079#1077#1088#1074' ('#1076#1085#1080') '#1079#1072' '#1055#1086#1079#1080#1094#1080#1103' '#1080' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050'|'#1056#1077#1096#1077#1085#1080#1077
                Width = 68
              end
              item
                EditButtons = <>
                FieldName = 'DECISION_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1056#1077#1096#1077#1085#1080#1077
                Width = 52
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsPrognosis: TTabSheet
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050
          ImageIndex = 1
          object grdPrognosis: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 190
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdSaleOrdersDblClick
            OnDrawColumnCell = grdSaleOrdersDrawColumnCell
            OnGetCellParams = grdSaleOrdersGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'SALE_ORDER_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1050
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1054#1044#1050
                Visible = False
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 258
                WordWrap = False
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077
                Visible = False
                Width = 258
              end
              item
                EditButtons = <>
                FieldName = 'COMMON_STATUS_CODE'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1055#1079#1094'. '#1058#1049#1057' '
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1048#1048#1056
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = '_PROGNOSIS_PERIOD_MONTHS'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1077#1088#1089#1087'. ('#1084#1077#1089')'
                Width = 79
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_PROGNOSIS_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Visible = False
                Width = 155
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_MEASURE_ABBREV'
                Footer.FieldName = '_PROGNOSIS_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_PROGNOSIS_ACC_QTY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 155
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
                Footer.FieldName = '_PROGNOSIS_ACC_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'IS_QUANTITY_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Visible = False
                Width = 14
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 63
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1053#1084'. '#1057#1090'.'
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'IS_LEASE_QUANTITY_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Width = 14
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'| '#1045#1076'. '#1094#1077#1085#1072
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'| '#1045#1076'. '#1094#1077#1085#1072
                Visible = False
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1042#1072#1083'.'
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'IS_SINGLE_PRICE_AGREED'
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1057#1098#1075#1083#1072#1089'.'
                Title.Orientation = tohVertical
                Width = 14
              end
              item
                EditButtons = <>
                FieldName = 'PROGNOSIS_TOTAL_PRICE'
                Footer.FieldName = '_SUM_PROGNOSIS_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050'|'#1054#1073#1097#1072' '#1089#1090#1086#1081#1085#1086#1089#1090' (XXX)'
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsRealization: TTabSheet
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1054#1044#1050
          ImageIndex = 2
          object grdRealization: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 995
            Height = 190
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail
            Flat = False
            FooterColor = 15258325
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            HorzScrollBar.Visible = False
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdSaleOrdersDblClick
            OnDrawColumnCell = grdSaleOrdersDrawColumnCell
            OnGetCellParams = grdSaleOrdersGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STATUS_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'ASPECT_TYPE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1089#1087#1077#1082#1090
                Title.Orientation = tohVertical
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'SALE_ORDER_ID'
                Footers = <>
                Title.Caption = 'ID '#1054#1044#1050
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_REQUEST_NO'
                Footers = <>
                Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1054#1044#1050
                Visible = False
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 187
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077
                Visible = False
                Width = 187
              end
              item
                EditButtons = <>
                FieldName = 'COMMON_STATUS_CODE'
                Footers = <>
                Title.Caption = '%ProductClassName%|'#1055#1079#1094'. '#1058#1049#1057' '
                Title.Orientation = tohVertical
                Width = 15
              end
              item
                EditButtons = <>
                FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089' '#1048#1048#1056
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
                Footers = <>
                Title.Caption = 
                  #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1058#1055' '#1085#1072' '#1050#1083#1080#1077#1085#1090' '#1079#1072' '#1055#1086#1083#1091#1095#1072#1074#1072 +
                  #1085#1077
                Width = 174
              end
              item
                EditButtons = <>
                FieldName = 'RECEIVE_DATE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1044#1072#1090#1072' '#1087#1086#1083#1091#1095'.'
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1056#1072#1073'. '#1082'-'#1074#1086
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footer.FieldName = '_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footer.FieldName = '_DISPLAY_SUM_ACC_QTY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1057#1095#1077#1090'. '#1082'-'#1074#1086
                Visible = False
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footer.FieldName = '_ACCOUNT_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = '_LEASE_DATE_INTERVAL'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1053#1072#1077#1084
                Visible = False
                Width = 99
              end
              item
                EditButtons = <>
                FieldName = 'QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086
                Visible = False
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_QTY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1053#1084'.'#1057#1090'.'
                Visible = False
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'LEASE_DATE_UNIT_NAME'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
                Visible = False
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1050'-'#1074#1086' '#1056#1072#1073'. '#1056#1077#1089#1091#1088#1089
                Visible = False
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1045#1076'. '#1094#1077#1085#1072
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_SINGLE_PRICE'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1045#1076'. '#1094#1077#1085#1072
                Visible = False
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'CURRENCY_ABBREV'
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1042#1072#1083'.'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.FieldName = '_SUM_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1080' '#1059#1089#1083#1086#1074#1080#1103' '#1087#1086' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1054#1044#1050'|'#1054#1073#1097#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' (XXX)'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'SALE_ID'
                Footers = <>
                Title.Caption = #1054#1055#1055'|ID '#1054#1055#1055
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'SALE_PRIORITY_NO'
                Footers = <>
                Title.Caption = #1054#1055#1055'|'#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 16
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object pnlDetaillNavigatorAbovePageControl: TPanel
        Left = 0
        Top = 0
        Width = 1003
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object navDetailAbovePageControl: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 144
          Height = 24
          DataSource = dsDetail
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Align = alLeft
          Flat = True
          TabOrder = 0
          BeforeAction = navDetailBeforeAction
        end
        object tlbSaleDoc: TToolBar
          Left = 168
          Top = 0
          Width = 104
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 1
          object sepBeforeSaleDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblSaleDoc: TLabel
            Left = 8
            Top = 0
            Width = 59
            Height = 22
            Caption = ' '#1054#1044#1050'/'#1054#1055#1055' '
            Layout = tlCenter
          end
          object btnSaleDoc: TToolButton
            Left = 67
            Top = 0
            Action = actSaleDoc
          end
        end
        object tlbProductDoc: TToolBar
          Left = 272
          Top = 0
          Width = 163
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 2
          object sepBeforeProductDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblProductDoc: TLabel
            Left = 8
            Top = 0
            Width = 118
            Height = 22
            Caption = ' %ProductClassAbbrev% '
            Layout = tlCenter
          end
          object btnProductDoc: TToolButton
            Left = 126
            Top = 0
            Action = actProductDoc
          end
        end
        object tbToggleQuantity: TToolBar
          Left = 955
          Top = 0
          Width = 48
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 23
          ButtonWidth = 28
          Caption = 'tbQuantity'
          EdgeInner = esNone
          EdgeOuter = esNone
          TabOrder = 3
          object btnWorkMeasure: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 23
            Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
            GroupIndex = 1
            Down = True
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF000000FFFFFFFFFFFF000000FF00FFFF00FF0000FF0000
              800000FFFF00FF000000FF00FF7F7F7F000000000000000000FFFFFFFFFFFF00
              0000FF00FFFF00FFFF00FF0000FF0000800000FF0000000080807F7F7F000000
              FFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
              800000FF008080008080000000FFFFFF000000000000FFFFFFFFFFFF000000FF
              00FFFF00FFFF00FFFF00FF0000FF0000800000FF008080008080000000000000
              FF00FFFF00FF000000FFFFFF000000FF00FFFF00FFFF00FFFF00FF0000FF0000
              800000FF008080FF00FF0000007F7F7FFF00FFFF00FF000000FFFFFF000000FF
              00FFFF00FFFF00FF0000FF0000FF0000FF0000FF0000FFFF00FFFF00FFFF00FF
              7F7F7F000000FFFFFF0000007F7F7FFF00FFFF00FF0000000000800000800000
              80000080000080FF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF
              00FF000000008080008080008080000000FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080008080FF00FF0000
              00FF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FF00000000
              8080008080008080FF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FF000000
              FF00FF000000FF00FF000000008080008080008080FF00FFFF00FFFF00FF0000
              00FF00FFFF00FFFF00FF000000FF00FF00000000000000000000808000808000
              8080FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000000000
              000000000000000000000000008080FF00FFFF00FFFF00FFFF00FF7F7F7F0000
              007F7F7FFF00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF
              00FFFF00FFFF00FFFF00FF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FF
              0080800000000000000000000000007F7F7FFF00FFFF00FFFF00FF7F7F7F0000
              007F7F7FFF00FFFF00FFFF00FFFF00FF008080008080FF00FF00000000000000
              0000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnWorkMeasureClick
          end
          object btnAccountMeasure: TSpeedButton
            Left = 24
            Top = 0
            Width = 24
            Height = 23
            Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072'/'#1084'.'#1077#1076'.'
            GroupIndex = 1
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FF7F7F7F7F7F7FFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00
              FF7F7F7F7F7F7F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FF0000000000000000007F7F7FFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000BFBF
              BF7F7F7F0000007F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF000000BFBFBFBFBFBFBFBFBF000000FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000008080008080BFBF
              BF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000
              808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000808000
              FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FF00000000808000808000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000808000000000FFFF000000FF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000
              00000000000000FFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF0000000000800000FF000000000000FF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000FF
              0000FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            Transparent = False
            OnClick = btnAccountMeasureClick
          end
        end
        object pnlShowAnnuledLines: TPanel
          Left = 144
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object btnShowAnnuledLines: TSpeedButton
            Left = 0
            Top = 0
            Width = 24
            Height = 24
            Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1072#1085#1091#1083#1080#1088#1072#1085#1080#1090#1077' '#1054#1044#1050
            AllowAllUp = True
            GroupIndex = 2
            Caption = #1040#1085
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btnShowAnnuledLinesClick
          end
        end
      end
      object pnlDetailTitle: TPanel
        Left = 656
        Top = 24
        Width = 345
        Height = 20
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = #1054#1073#1086#1089#1086#1073#1077#1085#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1086#1090' '#1055#1044#1050
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 284
      inherited pnlNavigator: TPanel
        Width = 1003
        DesignSize = (
          1003
          24)
        object btnToggleClientStuff: TSpeedButton [0]
          Left = 979
          Top = 1
          Width = 24
          Height = 21
          Action = actToggleClientStuff
          AllowAllUp = True
          Anchors = [akTop, akRight]
          GroupIndex = 3
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
            FF00000000000000FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000000000000FF000000FF000000FF000000FF000000
            FF00000000000000FF0000FFFF008484840000FFFF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF0000000000000000000000000000000000000000000000
            0000000000000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00000000000000FF000000FF000000FF000000
            00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF0000000000000000000000FF00000000000000
            00000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000000000000000000000000000
            FF000000FF000000FF0000FFFF008484840000FFFF0000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF00000000000000FF000000
            FF000000FF000000FF0000FFFF00848484008484840000FFFF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF0000FFFF0000FFFF008484840000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF00000000FFFF0000FFFF0000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF00000000FFFF0000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF00000000FFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
        inherited navData: TDBColorNavigator
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbRefresh]
          Hints.Strings = ()
        end
        object tlbClientDoc: TToolBar
          Left = 323
          Top = 0
          Width = 87
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeClientDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblClientDoc: TLabel
            Left = 8
            Top = 0
            Width = 42
            Height = 22
            Caption = ' '#1050#1083#1080#1077#1085#1090' '
            Layout = tlCenter
          end
          object btnClientDoc: TToolButton
            Left = 50
            Top = 0
            Action = actClientDoc
          end
        end
        object tlbDoc: TToolBar
          Left = 248
          Top = 0
          Width = 75
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 37
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 4
          object sepBeforeDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblDoc: TLabel
            Left = 8
            Top = 0
            Width = 30
            Height = 22
            Caption = ' '#1055#1044#1050' '
            Layout = tlCenter
          end
          object btnDoc: TToolButton
            Left = 38
            Top = 0
            Action = actDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 231
        HorzScrollBar.Visible = False
        UseMultiTitle = True
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SRG_STATUS_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'SALE_DEAL_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1080#1087' '#1055#1044#1050
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'SRG_ID'
            Footers = <>
            Title.Caption = 'ID '#1055#1044#1050
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_REQUEST_GROUP_NO'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1055#1044#1050
            Visible = False
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'IS_ACTIVATED_BY_CLIENT'
            Footers = <>
            Title.Caption = #1040#1082#1090'. '#1086#1090
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'SRG_EMPLOYEE_FULL_NAME'
            Footers = <>
            Title.Caption = #1042#1086#1076#1077#1097' '#1087#1086' '#1055#1044#1050
            Width = 41
          end
          item
            Alignment = taLeftJustify
            EditButtons = <>
            FieldName = 'COMPANY_STATUS_CODE'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1057#1090#1072#1090#1091#1089
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'PRIORITY_NO'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1055#1088'.'
            Width = 19
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_COMPANY_NAME'
            Footers = <>
            Title.Caption = #1050#1083#1080#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 444
          end
          item
            EditButtons = <>
            FieldName = 'HAS_MEDIATOR'
            Footers = <>
            Title.Caption = #1055#1086#1089#1088#1077#1076'.'
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'REALIZATION_SALE_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1054#1044#1050'|'#1040#1056#1083
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'PROGNOSIS_SALE_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' '#1054#1044#1050'|'#1040#1055#1089
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'REQUEST_SEND_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1089#1090#1072#1088#1090#1080#1088#1072#1085#1077
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'REQUEST_REGISTER_DATE'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1085#1072' '#1088#1077#1075#1080'- '#1089#1090#1088#1080#1088#1072#1085#1077
            Width = 67
          end>
      end
      object pnlGridButtons: TPanel
        Left = 0
        Top = 255
        Width = 1003
        Height = 29
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object btnInsertRecord: TBitBtn
          Left = 0
          Top = 4
          Width = 145
          Height = 25
          Action = actInsertRecord
          Caption = #1053#1086#1074' '#1055#1044#1050'...'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 0
        end
        object btnEditRecord: TBitBtn
          Left = 152
          Top = 4
          Width = 145
          Height = 25
          Action = actEditRecord
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1044#1050'...'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 1
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 48
    Top = 136
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conSaleOrders
    FieldDefs = <
      item
        Name = 'REQUEST_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_NO'
        DataType = ftFloat
      end
      item
        Name = 'SRG_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SRG_ID'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'SRG_EMPLOYEE_FULL_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'COMPANY_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = 'COMPANY_STATUS_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CLIENT_COMPANY_NAME'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'HAS_MEDIATOR'
        DataType = ftFloat
      end
      item
        Name = 'PROGNOSIS_SALE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'REALIZATION_SALE_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'REQUEST_SEND_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REQUEST_REGISTER_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_COMPANY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_DEAL_TYPE_CODE'
        DataType = ftFloat
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
        Name = 'HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_HAS_DOCUMENTATION'
        DataType = ftFloat
      end
      item
        Name = 'SALE_DEAL_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
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
        Name = 'CLIENT_REQUEST_GROUP_NO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'REQUEST_BRANCH_ID'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STREAM_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'IS_ACTIVATED_BY_CLIENT'
        DataType = ftFloat
      end
      item
        Name = 'BASE_ROLE_CODE'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
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
        Value = '8'
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_DEAL_TYPE_CODE'
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
        Name = 'IS_ACTIVATED_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVATED_BY_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LEASE_DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_SEND_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_REQUEST_REGISTER_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CLIENT_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COUNTRY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'HAS_MEDIATOR_CODE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MEDIATOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MEDIATOR_COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SRG_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STREAM_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleRequestGroups'
    Left = 16
    Top = 136
    object cdsGridDataCLIENT_COMPANY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object cdsGridDataSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsGridDataSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsGridDataREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsGridDataSRG_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'SRG_STATUS_CODE'
      OnGetText = cdsGridDataSRG_STATUS_CODEGetText
    end
    object cdsGridDataSRG_ID: TAbmesWideStringField
      FieldName = 'SRG_ID'
      Size = 171
    end
    object cdsGridDataSRG_EMPLOYEE_FULL_NAME: TAbmesWideStringField
      FieldName = 'SRG_EMPLOYEE_FULL_NAME'
      Size = 50
    end
    object cdsGridDataCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
      OnGetText = cdsGridDataCOMPANY_STATUS_CODEGetText
    end
    object cdsGridDataCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
    object cdsGridDataPRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PRIORITY_NO'
    end
    object cdsGridDataPRIORITY_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_COLOR'
    end
    object cdsGridDataPRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'PRIORITY_BACKGROUND_COLOR'
    end
    object cdsGridDataCLIENT_COMPANY_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_COMPANY_NAME'
      Size = 50
    end
    object cdsGridDataHAS_MEDIATOR: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_MEDIATOR'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPROGNOSIS_SALE_COUNT: TAbmesFloatField
      FieldName = 'PROGNOSIS_SALE_COUNT'
      OnGetText = cdsGridDataPROGNOSIS_SALE_COUNTGetText
    end
    object cdsGridDataREALIZATION_SALE_COUNT: TAbmesFloatField
      FieldName = 'REALIZATION_SALE_COUNT'
      OnGetText = cdsGridDataREALIZATION_SALE_COUNTGetText
    end
    object cdsGridDataREQUEST_SEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_SEND_DATE'
    end
    object cdsGridDataREQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      FieldName = 'REQUEST_REGISTER_DATE'
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsGridDataCLIENT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_BRANCH_CODE'
    end
    object cdsGridDataCLIENT_DOC_CODE: TAbmesFloatField
      FieldName = 'CLIENT_DOC_CODE'
    end
    object cdsGridDataCLIENT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'CLIENT_HAS_DOCUMENTATION'
    end
    object cdsGridDataCLIENT_REQUEST_GROUP_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_GROUP_NO'
      Size = 50
    end
    object cdsGridDataCLIENT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'CLIENT_PRIORITY_CODE'
    end
    object cdsGridDataSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object cdsGridDataIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      DisplayBoolValues = #1050#1083#1080#1077#1085#1090';'#1048#1055
      FieldValueType = fvtBoolean
    end
    object cdsGridDataBASE_ROLE_CODE: TAbmesFloatField
      FieldName = 'BASE_ROLE_CODE'
    end
  end
  inherited alActions: TActionList
    Left = 128
    Top = 184
    inherited actForm: TAction
      Caption = 
        #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %ProductClas' +
        'sAbbrev% '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
    end
    inherited actFilter: TAction
      Visible = True
    end
    inherited actInsertRecord: TAction
      Caption = #1053#1086#1074' '#1055#1044#1050'...'
      Hint = #1053#1086#1074' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050')'
    end
    inherited actEditRecord: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1044#1050'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1072#1082#1077#1090' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090' ('#1055#1044#1050')'
    end
    inherited actInsertDetailRecord: TAction
      Caption = #1053#1086#1074' '#1054#1044#1050' '#1087#1086' '#1055#1044#1050'...'
      Hint = #1053#1086#1074' '#1054#1044#1050' '#1087#1086' '#1055#1044#1050
    end
    inherited actEditDetailRecord: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1054#1044#1050'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1054#1044#1050
    end
    object actClientDoc: TAction
      Caption = 'actClientDoc'
      OnExecute = actClientDocExecute
      OnUpdate = actClientDocUpdate
    end
    object actDoc: TAction
      Caption = 'actDoc'
      OnExecute = actDocExecute
      OnUpdate = actDocUpdate
    end
    object actSaleDoc: TAction
      Caption = 'actSaleDoc'
      OnExecute = actSaleDocExecute
      OnUpdate = actSaleDocUpdate
    end
    object actProductDoc: TAction
      Caption = 'actProductDoc'
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actToggleClientStuff: TAction
      GroupIndex = 3
      Hint = #1050#1083#1080#1077#1085#1090#1089#1082#1086' '#1086#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1055#1044#1050', '#1054#1044#1050' '#1080' %ProductClassAbbrev%'
      ImageIndex = 24
      OnExecute = actToggleClientStuffExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 16
    Top = 168
    object pdsGridDataParamsMIN_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATUS_CODE'
    end
    object pdsGridDataParamsSALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1058#1080#1087
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object pdsGridDataParamsREQUEST_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object pdsGridDataParamsREQUEST_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'REQUEST_NO'
    end
    object pdsGridDataParamsSTREAM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1090#1086#1082
      FieldName = 'STREAM_TYPE_CODE'
    end
    object pdsGridDataParamsIS_ACTIVATED_BY_CLIENT: TAbmesFloatField
      DisplayLabel = #1040#1082#1090#1080#1074'. '#1086#1090
      FieldName = 'IS_ACTIVATED_BY_CLIENT'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsLEASE_DATE_UNIT_CODE: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object pdsGridDataParamsBEGIN_REQUEST_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REQUEST_SEND_DATE'
    end
    object pdsGridDataParamsEND_REQUEST_SEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090'-/ '#1050#1088#1072#1081
      FieldName = 'END_REQUEST_SEND_DATE'
    end
    object pdsGridDataParamsBEGIN_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_REQUEST_REGISTER_DATE'
    end
    object pdsGridDataParamsEND_REQUEST_REGISTER_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'END_REQUEST_REGISTER_DATE'
    end
    object pdsGridDataParamsCLIENT_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      FieldName = 'CLIENT_COMPANY_CODE'
    end
    object pdsGridDataParamsCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1044#1098#1088#1078#1072#1074#1072
      FieldName = 'COUNTRY_CODE'
    end
    object pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1080#1077#1085#1090' - '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_PRIORITY_CODE'
    end
    object pdsGridDataParamsHAS_MEDIATOR_CODE: TAbmesFloatField
      DisplayLabel = #1057#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1086#1089#1088#1077#1076#1085#1080#1082
      FieldName = 'HAS_MEDIATOR_CODE'
    end
    object pdsGridDataParamsMEDIATOR_COMPANY_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1089#1088#1077#1076#1085#1080#1082
      FieldName = 'MEDIATOR_COMPANY_CODE'
    end
    object pdsGridDataParamsSRG_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1086#1076#1077#1097' '#1087#1086' '#1055#1044#1050
      FieldName = 'SRG_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsREPORT_TAG: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'REPORT_TAG'
      ProviderFlags = []
      Calculated = True
    end
    object pdsGridDataParams_PRODUCT_CLASS_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CLASS_CODE'
      Calculated = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 48
    Top = 168
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 104
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conSaleOrders
    Filter = 'STATUS_CODE < 11'
    Params = <
      item
        DataType = ftFloat
        Name = 'REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUEST_NO'
        ParamType = ptInput
      end>
    ProviderName = 'prvSaleRequestGroupsDetail'
    OnCalcFields = cdsDetailCalcFields
    Left = 16
    Top = 208
    object cdsDetail_PROGNOSIS_PERIOD_MONTHS: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_PERIOD_MONTHS'
      Calculated = True
    end
    object cdsDetailSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailSTATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'STATUS_CODE'
      OnGetText = cdsDetailSTATUS_CODEGetText
    end
    object cdsDetailASPECT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ASPECT_TYPE_CODE'
    end
    object cdsDetailASPECT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'ASPECT_TYPE_ABBREV'
      Size = 100
    end
    object cdsDetailSALE_ORDER_ID: TAbmesWideStringField
      FieldName = 'SALE_ORDER_ID'
      Size = 211
    end
    object cdsDetailPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_FINISHED: TAbmesFloatField
      FieldName = 'IS_FINISHED'
      FieldValueType = fvtBoolean
    end
    object cdsDetailPLAN_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'PLAN_PERIOD_DAYS'
    end
    object cdsDetailREAL_PERIOD_DAYS: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DAYS'
    end
    object cdsDetailREAL_PERIOD_DEVIATION_PERCENT: TAbmesFloatField
      FieldName = 'REAL_PERIOD_DEVIATION_PERCENT'
      OnGetText = cdsDetailREAL_PERIOD_DEVIATION_PERCENTGetText
      DisplayFormat = ',0'
    end
    object cdsDetailOFFER_SEND_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_SEND_DAYS_RSV'
    end
    object cdsDetailOFFER_ANSWER_DAYS_RSV: TAbmesFloatField
      FieldName = 'OFFER_ANSWER_DAYS_RSV'
    end
    object cdsDetailDECISION_DAYS_RSV: TAbmesFloatField
      FieldName = 'DECISION_DAYS_RSV'
    end
    object cdsDetailDECISION_TYPE_CODE: TAbmesFloatField
      FieldName = 'DECISION_TYPE_CODE'
    end
    object cdsDetailDECISION_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DECISION_TYPE_ABBREV'
      Size = 5
    end
    object cdsDetailPROGNOSIS_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_BEGIN_DATE'
    end
    object cdsDetailPROGNOSIS_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PROGNOSIS_END_DATE'
    end
    object cdsDetailQUANTITY: TAbmesFloatField
      FieldName = 'QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsDetailMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsDetailACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailIS_QUANTITY_AGREED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_QUANTITY_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailSINGLE_PRICE: TAbmesFloatField
      FieldName = 'SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsDetailCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsDetailIS_SINGLE_PRICE_AGREED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_SINGLE_PRICE_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailTOTAL_PRICE: TAbmesFloatField
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailPROGNOSIS_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailPROGNOSIS_ACCOUNT_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailPROGNOSIS_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailPROGNOSIS_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailRECEIVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RECEIVE_DATE'
    end
    object cdsDetailSALE_ID: TAbmesWideStringField
      FieldName = 'SALE_ID'
      Size = 81
    end
    object cdsDetailPROGNOSIS_LEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_QTY'
    end
    object cdsDetailCOMMON_STATUS_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'COMMON_STATUS_CODE'
      OnGetText = cdsDetailCOMMON_STATUS_CODEGetText
    end
    object cdsDetailPROGNOSIS_LEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_CODE'
    end
    object cdsDetailIS_LEASE_QUANTITY_AGREED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_LEASE_QUANTITY_AGREED'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
    end
    object cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDetailPRODUCT_HAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOCUMENTATION'
    end
    object cdsDetail_LEASE_DATE_INTERVAL: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_LEASE_DATE_INTERVAL'
      OnGetText = cdsDetail_LEASE_DATE_INTERVALGetText
      Calculated = True
    end
    object cdsDetailPROGNOSIS_LEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'PROGNOSIS_LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailLEASE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_CODE'
    end
    object cdsDetailLEASE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'LEASE_DATE_UNIT_NAME'
      Size = 50
    end
    object cdsDetailLEASE_DATE_UNIT_QTY: TAbmesFloatField
      FieldName = 'LEASE_DATE_UNIT_QTY'
    end
    object cdsDetailPROGNOSIS_TOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'PROGNOSIS_TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailTOTAL_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetail_DISPLAY_SUM_PROGNOSIS_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_PROGNOSIS_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetail_DISPLAY_SUM_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_QUANTITY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetail_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_MEASURE_ABBREV'
      Size = 5
      Calculated = True
    end
    object cdsDetail_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsDetail_PROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsDetail_PROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_PROGNOSIS_ACC_MEASURE_ABBREV'
      Calculated = True
    end
    object cdsDetail_DISPLAY_SUM_ACC_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_ACC_QTY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetail_DISPLAY_SUM_PROGNOSIS_ACC_QTY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_DISPLAY_SUM_PROGNOSIS_ACC_QTY'
      DisplayFormat = ',0'
      Calculated = True
    end
    object cdsDetailPROGNOSIS_ACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailACCOUNT_SINGLE_PRICE: TAbmesFloatField
      FieldName = 'ACCOUNT_SINGLE_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsDetailTOTAL_ACCOUNT_LEASE_QUANTITY: TAbmesFloatField
      FieldName = 'TOTAL_ACCOUNT_LEASE_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailPROGNOSIS_ACC_TOTAL_LEASE_QTY: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACC_TOTAL_LEASE_QTY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailPROGNOSIS_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_MEASURE_CODE'
    end
    object cdsDetailPROGNOSIS_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailPROGNOSIS_ACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_ACCOUNT_MEASURE_CODE'
    end
    object cdsDetailPROGNOSIS_ACC_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_ACC_MEASURE_ABBREV'
      Size = 5
    end
    object cdsDetailPROGNOSIS_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PROGNOSIS_CURRENCY_CODE'
    end
    object cdsDetailPROGNOSIS_CURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'PROGNOSIS_CURRENCY_ABBREV'
      Size = 5
    end
    object cdsDetailCLIENT_REQUEST_NO: TAbmesWideStringField
      FieldName = 'CLIENT_REQUEST_NO'
      Size = 50
    end
    object cdsDetailCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object cdsDetailSALE_PRIORITY_NO: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_NO'
    end
    object cdsDetailSALE_PRIORITY_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_COLOR'
    end
    object cdsDetailSALE_PRIORITY_BACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'SALE_PRIORITY_BACKGROUND_COLOR'
    end
    object cdsDetailREQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'REQUEST_LINE_NO'
    end
    object cdsDetailREQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'REQUEST_BRANCH_CODE'
    end
    object cdsDetailREQUEST_NO: TAbmesFloatField
      FieldName = 'REQUEST_NO'
    end
    object cdsDetailPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
    object cdsDetailRECEIVE_PLACE_OFFICE_NAME: TAbmesWideStringField
      FieldName = 'RECEIVE_PLACE_OFFICE_NAME'
      Size = 50
    end
    object cdsDetail_SUM_PROGNOSIS_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_PROGNOSIS_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PROGNOSIS_TOTAL_PRICE)'
    end
    object cdsDetail_MIN_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_MEASURE_CODE'
      Active = True
      Expression = 'Min(MEASURE_CODE)'
    end
    object cdsDetail_MAX_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_MEASURE_CODE'
      Active = True
      Expression = 'Max(MEASURE_CODE)'
    end
    object cdsDetail_SUM_PROGNOSIS_QUANTITY: TAggregateField
      FieldName = '_SUM_PROGNOSIS_QUANTITY'
      Active = True
      Expression = 'Sum(PROGNOSIS_QUANTITY)'
    end
    object cdsDetail_SUM_TOTAL_PRICE: TAggregateField
      FieldName = '_SUM_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsDetail_SUM_QUANTITY: TAggregateField
      FieldName = '_SUM_QUANTITY'
      Active = True
      Expression = 'Sum(QUANTITY)'
    end
    object cdsDetail_MIN_PROGNOSIS_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PROGNOSIS_MEASURE_CODE'
      Active = True
      Expression = 'Min(PROGNOSIS_MEASURE_CODE)'
    end
    object cdsDetail_MAX_PROGNOSIS_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PROGNOSIS_MEASURE_CODE'
      Active = True
      Expression = 'Max(PROGNOSIS_MEASURE_CODE)'
    end
    object cdsDetail_MIN_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_ACCOUNT_MEASURE_CODE'
      Active = True
      Expression = 'Min(ACCOUNT_MEASURE_CODE)'
    end
    object cdsDetail_MAX_ACCOUNT_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_ACCOUNT_MEASURE_CODE'
      Active = True
      Expression = 'Max(ACCOUNT_MEASURE_CODE)'
    end
    object cdsDetail_MIN_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField
      FieldName = '_MIN_PROGNOSIS_ACC_MEASURE_CODE'
      Active = True
      Expression = 'Min(PROGNOSIS_ACCOUNT_MEASURE_CODE)'
    end
    object cdsDetail_MAX_PROGNOSIS_ACC_MEASURE_CODE: TAggregateField
      FieldName = '_MAX_PROGNOSIS_ACC_MEASURE_CODE'
      Active = True
      Expression = 'Max(PROGNOSIS_ACCOUNT_MEASURE_CODE)'
    end
    object cdsDetail_SUM_PROGNOSIS_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_PROGNOSIS_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(PROGNOSIS_ACCOUNT_QUANTITY)'
    end
    object cdsDetail_SUM_ACCOUNT_QUANTITY: TAggregateField
      FieldName = '_SUM_ACCOUNT_QUANTITY'
      Active = True
      Expression = 'Sum(ACCOUNT_QUANTITY)'
    end
  end
  inherited dsDetail: TDataSource
    Left = 48
    Top = 208
  end
  inherited tmrMaster: TTimer
    Left = 176
    Top = 80
  end
end
