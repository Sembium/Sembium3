inherited fmModelMovementsOverview: TfmModelMovementsOverview
  Left = 234
  Top = 129
  ActiveControl = nil
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103
  ClientHeight = 476
  ClientWidth = 806
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 441
    Width = 806
    inherited pnlOKCancel: TPanel
      Left = 538
      TabOrder = 3
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 449
      TabOrder = 2
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 717
      TabOrder = 4
      Visible = False
    end
    object pnlEditButton: TPanel
      Left = 0
      Top = 0
      Width = 128
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnEdit: TBitBtn
        Left = 8
        Top = 2
        Width = 113
        Height = 25
        Action = actEditRecord
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
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
        Spacing = -1
        TabOrder = 0
      end
    end
    object pnlPrintButton: TPanel
      Left = 360
      Top = 0
      Width = 89
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
    end
    object btnModelStatus: TBitBtn
      Left = 128
      Top = 2
      Width = 105
      Height = 25
      Action = actModelStatus
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      DoubleBuffered = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
        FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
        000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
        0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
        FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
        FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
        FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
        0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
        00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
        0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
        0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
        0000FFFF0000FFFF000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      ParentDoubleBuffered = False
      Spacing = -1
      TabOrder = 5
    end
  end
  inherited pnlMain: TPanel
    Width = 806
    Height = 441
    inherited pnlGrid: TPanel
      Width = 790
      Height = 425
      inherited pnlNavigator: TPanel
        Width = 774
        Align = alNone
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
        Top = 0
        Width = 790
        Height = 425
        UseMultiTitle = True
        Visible = False
        VTitleMargin = 6
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MM_IDENTIFIER'
            Footers = <>
            Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1053#1086#1084#1077#1088
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'MODEL_MOVEMENT_TYPE_ABBREV'
            Footers = <>
            Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077#1042
            Width = 15
          end
          item
            EditButtons = <>
            FieldName = 'MM_DATE'
            Footers = <>
            Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1044#1072#1090#1072
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'FROM_STAGE_NO'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076'. '#1086#1090'|'#1045#1090
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'FROM_DEPT_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076'. '#1086#1090'|'#1058#1055
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TO_STAGE_NO'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076'. '#1082#1098#1084'|'#1045#1090
            Width = 20
          end
          item
            EditButtons = <>
            FieldName = 'TO_DEPT_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1077#1076'. '#1082#1098#1084'|'#1058#1055
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 148
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_CUSTOM_CODE'
            Footers = <>
            Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|'#1053#1086#1084#1077#1088
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'CLIENT_PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1086#1089#1085#1086#1074#1085#1080#1103' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1087#1086#1088#1098#1095#1082#1072#1090#1072' '#1086#1090' '#1050#1083#1080#1077#1085#1090#1072
            Visible = False
            Width = 212
            WordWrap = False
          end
          item
            EditButtons = <>
            FieldName = 'DETAIL_TECH_QUANTITY'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086'|'#1050'-'#1074#1086
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086'|'#1052'.'#1077#1076
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Visible = False
            Width = 148
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_CUSTOM_CODE'
            Footers = <>
            Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|'#1053#1086#1084#1077#1088
            Visible = False
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_PRODUCT_QUANTITY'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086'|'#1050'-'#1074#1086
            Visible = False
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086'|'#1052'.'#1077#1076
            Visible = False
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'TOTAL_PRICE'
            Footers = <>
            Title.Caption = #1062#1077#1085#1072' *'
            Width = 50
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'IS_STORNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_DATE'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1044#1072#1090#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_TIME'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1063#1072#1089
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1057#1083#1091#1078'.'
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'STORNO_DATE'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1044#1072#1090#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'STORNO_TIME'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1063#1072#1089
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'STORNO_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1057#1083#1091#1078'.'
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'LIMITING_DATE'
            Footers = <>
            Title.Caption = #1056'-'#1052#1054#1044#1045#1083' - '#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1044#1072#1090#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LIMITING_TIME'
            Footers = <>
            Title.Caption = #1056'-'#1052#1054#1044#1045#1083' - '#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1063#1072#1089
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'LIMITING_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1056'-'#1052#1054#1044#1045#1083' - '#1040#1082#1090#1080#1074#1080#1088#1072#1085'|'#1057#1083#1091#1078
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'MODEL_CLOSE_DATE'
            Footers = <>
            Title.Caption = #1056'-'#1052#1054#1044#1045#1083' - '#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1044#1072#1090#1072
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'MODEL_CLOSE_TIME'
            Footers = <>
            Title.Caption = #1056'-'#1052#1054#1044#1045#1083' - '#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1063#1072#1089
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'MODEL_CLOSE_EMPLOYEE_NAME'
            Footers = <>
            Title.Caption = #1056'-'#1052#1054#1044#1045#1083' - '#1055#1088#1080#1082#1083#1102#1095#1077#1085'|'#1057#1083#1091#1078
            Width = 33
          end>
      end
      object pcMain: TPageControl
        Left = 0
        Top = 0
        Width = 790
        Height = 425
        ActivePage = tsMain
        Align = alClient
        HotTrack = True
        TabOrder = 2
        object tsMain: TTabSheet
          Caption = #1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103
          object grdMain: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 782
            Height = 397
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
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
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 5
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'MM_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|ID'
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'MM_DATE'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'MLL_OBJECT_IDENTIFIER'
                Footers = <>
                Title.Caption = 'ID '#1056#1052' '#1087#1086' '#1054#1055#1042
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'PRIORITY_FULL_NAME'
                Footers = <>
                Title.Caption = #1054#1089#1085'. '#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 16
              end
              item
                Color = 15461355
                EditButtons = <>
                FieldName = 'WORK_PRIORITY_NO'
                Footers = <>
                Title.Caption = #1054#1087'.   '#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 24
              end
              item
                EditButtons = <>
                FieldName = 'FROM_STAGE_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078'. '#1054#1058'|'#1045#1090#1072#1087
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'TO_STAGE_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078'. '#1050#1066#1052'|'#1045#1090#1072#1087
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'WASTE_INFO'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078'. '#1050#1066#1052'|'#1041#1083#1086#1082'.'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DETAIL_NAME'
                Footers = <>
                Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 152
              end
              item
                EditButtons = <>
                FieldName = 'DETAIL_CUSTOM_CODE'
                Footers = <>
                Title.Caption = #1050#1088#1072#1081#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|id '#1094#1080#1092#1088#1086#1074
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'DETAIL_TECH_QUANTITY'
                Footer.FieldName = '_SUM_DETAIL_TECH_QUANTITY'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086'|'#1050'-'#1074#1086
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'MEASURE_ABBREV'
                Footer.FieldName = '_AGG_MEASURE_ABBREV'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086'|'#1052'.'#1077#1076'.'
                Width = 29
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Visible = False
                Width = 152
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_CUSTOM_CODE'
                Footers = <>
                Title.Caption = #1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090'|id '#1094#1080#1092#1088#1086#1074
                Visible = False
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_PRODUCT_QUANTITY'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086'|'#1050'-'#1074#1086
                Visible = False
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_MEASURE_ABBREV'
                Footers = <>
                Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086'|'#1052'.'#1077#1076'.'
                Visible = False
                Width = 29
              end
              item
                EditButtons = <>
                FieldName = 'CLIENT_PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1054#1079#1085#1072#1095#1077#1085#1080#1077' '#1085#1072' '#1086#1089#1085#1086#1074#1085#1080#1103' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1087#1086#1088#1098#1095#1082#1072#1090#1072' '#1086#1090' '#1050#1083#1080#1077#1085#1090#1072
                Visible = False
                Width = 310
                WordWrap = False
              end
              item
                EditButtons = <>
                FieldName = 'TOTAL_PRICE'
                Footer.FieldName = 'SUM_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1042#1057'1 /XXX/'
                Width = 50
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'IS_STORNO'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Title.Orientation = tohVertical
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsSysInfo: TTabSheet
          Caption = #1057#1080#1089'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          ImageIndex = 1
          object grdSysInfo: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 782
            Height = 378
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 5
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdDataGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'MM_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|ID'
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'MM_DATE'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078#1077#1085#1080#1077'|'#1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'MLL_OBJECT_IDENTIFIER'
                Footers = <>
                Title.Caption = 'ID '#1056#1052' '#1087#1086' '#1054#1055#1042
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'PRIORITY_FULL_NAME'
                Footers = <>
                Title.Caption = #1054#1089#1085'. '#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 16
              end
              item
                Color = 15461355
                EditButtons = <>
                FieldName = 'WORK_PRIORITY_NO'
                Footers = <>
                Title.Caption = #1054#1087'.   '#1055#1088'.'
                Title.Orientation = tohVertical
                Width = 24
              end
              item
                EditButtons = <>
                FieldName = 'FROM_STAGE_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078'. '#1054#1058'|'#1045#1090#1072#1087
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'TO_STAGE_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078'. '#1050#1066#1052'|'#1045#1090#1072#1087
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'WASTE_INFO'
                Footers = <>
                Title.Caption = #1044#1074#1080#1078'. '#1050#1066#1052'|'#1041#1083#1086#1082'.'
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1044#1072#1090#1072
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_TIME'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1063#1072#1089
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_EMPLOYEE_ABBREV'
                Footers = <>
                Title.Caption = #1057#1098#1079#1076#1072#1076#1077#1085#1086'|'#1057#1083#1091#1078'.'
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'STORNO_DATE'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1044#1072#1090#1072
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'STORNO_TIME'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1063#1072#1089
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'STORNO_EMPLOYEE_ABBREV'
                Footers = <>
                Title.Caption = #1040#1085#1091#1083#1080#1088#1072#1085#1086'|'#1057#1083#1091#1078'.'
                Width = 34
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlFiller: TPanel
            Left = 0
            Top = 378
            Width = 782
            Height = 19
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
          end
        end
      end
    end
    object pnlTopRight: TPanel
      Left = 239
      Top = 4
      Width = 548
      Height = 24
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object pnlFilter2: TPanel
        Left = 96
        Top = 0
        Width = 24
        Height = 24
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object btnFilter2: TSpeedButton
          Left = 0
          Top = 0
          Width = 24
          Height = 24
          Action = actFilter
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
            FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
      object navData2: TDBColorNavigator
        Left = 0
        Top = 0
        Width = 96
        Height = 24
        DataSource = dsGridData
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        Flat = True
        TabOrder = 0
        BeforeAction = navDataBeforeAction
      end
      object pnlTopRightInner: TPanel
        Left = 412
        Top = 0
        Width = 136
        Height = 24
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object btnDetailsData: TSpeedButton
          Left = 0
          Top = 0
          Width = 55
          Height = 24
          Hint = #1050#1088#1072#1081#1085#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1063#1072#1089#1090#1080
          GroupIndex = 4
          Down = True
          Caption = #1050#1057#1063
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFF
            FFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            0000000000000000FF00FF000000FFFFFFFFFFFFFFFFFF000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000FF00FF0000000000
            00000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            0000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FF0000
            00FF00FFFF00FFFF00FF000000000000000000000000000000000000FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000000000
            840084840084840084000000FF00FFFF00FFFF00FFFF00FF0000000000000000
            00000000000000FF00FF000000000000840084840084840084000000FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00FFFF00FF000000000000
            000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF000000FF00FF0000000000
            00000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF000000000000FF00FF000000FFFFFFFFFFFFFFFFFF000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000FFFF
            FFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FF000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnDetailsDataClick
        end
        object btnProductsData: TSpeedButton
          Left = 55
          Top = 0
          Width = 55
          Height = 24
          Hint = #1042#1093#1086#1076#1103#1097#1080' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1063#1072#1089#1090#1080
          GroupIndex = 4
          Caption = #1053#1057#1063
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            00FFFF00BDBD848484FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF00FFFF00FFFF00BDBD848484FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF00FFFF00FFFF00BDBD848484FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FFFF00FFFF00BDBD84
            8484FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF00FFFF00FFFF00BDBD848484FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FFFF00
            FFFF00BDBD848484FF00FFFF00FF848484848484FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF00FFFF00FFFF00BDBD8484848484840000
            00000000848484FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF00FFFF00FFFF00BDBD000000000000000000000000FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FFFF0000000000000000
            00848484848484FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF000000000000000000848484000000FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000000000008484840000
            0000FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
            000000000000000084848400000000FFFFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnProductsDataClick
        end
        object btnToggleProductDisplay: TSpeedButton
          Left = 110
          Top = 0
          Width = 24
          Height = 24
          Action = actToggleProductDisplay
          AllowAllUp = True
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
        end
      end
      object tlbTopGridButtons2: TToolBar
        Left = 120
        Top = 0
        Width = 56
        Height = 24
        Align = alLeft
        AutoSize = True
        ButtonHeight = 24
        ButtonWidth = 24
        Caption = 'tlbTopGridButtons'
        Images = dmMain.ilActions
        TabOrder = 3
        object sepBeforeExportButton: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepBeforeExportButton'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object btnExport2: TToolButton
          Left = 8
          Top = 0
          Action = actExcelExport
        end
        object btnPrintOnNavigator2: TToolButton
          Left = 32
          Top = 0
          Action = actPrint
        end
      end
      object tlbDetailDoc: TToolBar
        Left = 258
        Top = 0
        Width = 73
        Height = 24
        Align = alLeft
        ButtonWidth = 36
        Images = dmMain.ilDocs
        TabOrder = 4
        object sepBeforeDetailDoc: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepBeforeMovementDoc'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object lblDetailDoc: TLabel
          Left = 8
          Top = 0
          Width = 28
          Height = 22
          Caption = ' '#1050#1057#1063' '
          Layout = tlCenter
        end
        object btnDetailDoc: TToolButton
          Left = 36
          Top = 0
          Action = actDetailDoc
        end
      end
      object tlbMovementDoc: TToolBar
        Left = 176
        Top = 0
        Width = 82
        Height = 24
        Align = alLeft
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbMovementDoc'
        Images = dmMain.ilDocs
        TabOrder = 5
        object sepBeforeMovementDoc: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepBeforeMovementDoc'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object lblMovementDoc: TLabel
          Left = 8
          Top = 0
          Width = 38
          Height = 22
          Caption = ' '#1044#1074#1080#1078'. '
          Layout = tlCenter
        end
        object btnMovementDoc: TToolButton
          Left = 46
          Top = 0
          Action = actMovementDoc
        end
      end
      object tlbProductDoc: TToolBar
        Left = 331
        Top = 0
        Width = 81
        Height = 24
        Align = alLeft
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbDeptDoc'
        Images = dmMain.ilDocs
        TabOrder = 6
        object sepBeforeProductDoc: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepBeforeMovementDoc'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object lblProductDoc: TLabel
          Left = 8
          Top = 0
          Width = 29
          Height = 22
          Caption = ' '#1053#1057#1063' '
          Layout = tlCenter
        end
        object btnProductDoc: TToolButton
          Left = 37
          Top = 0
          Action = actProductDoc
        end
        object sepBeforeDetailsData: TToolButton
          Left = 73
          Top = 0
          Width = 8
          Caption = 'sepBeforeDetailsData'
          ImageIndex = 0
          Style = tbsSeparator
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 160
    Top = 248
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conModelMovements
    FieldDefs = <
      item
        Name = 'MM_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MM_IDENTIFIER'
        DataType = ftWideString
        Size = 81
      end
      item
        Name = 'MM_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ML_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'MLL_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 237
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_CUSTOM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'FROM_STAGE_IDENTIFIER'
        DataType = ftWideString
        Size = 87
      end
      item
        Name = 'TO_STAGE_IDENTIFIER'
        DataType = ftWideString
        Size = 87
      end
      item
        Name = 'WASTE_INFO'
        DataType = ftWideString
        Size = 82
      end
      item
        Name = 'DETAIL_TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_CUSTOM_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_PRODUCT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'ACCOUNT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'IS_STORNO'
        DataType = ftFloat
      end
      item
        Name = 'CLIENT_PRODUCT_NAME'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'MEASURE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 49
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
        Name = 'STORNO_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STORNO_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 49
      end
      item
        Name = 'STORNO_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'STORNO_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'OM_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OM_CODE'
        DataType = ftFloat
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
        Name = 'WORK_PRIORITY_CODE'
        DataType = ftFloat
      end
      item
        Name = 'WORK_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC'
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
        Name = 'HAS_DOC'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'START_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_PERIOD_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'IS_STORNO'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCTION_ORDER_TYPE_CODE'
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
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MLL_NO_AS_TEXT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_FORK_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FROM_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TO_STAGE_OR_WASTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_3'
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
        DataType = ftWideString
        Name = 'RESULT_PRODUCT_CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DETAIL_CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'FROM_STAGE_CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TO_STAGE_CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'TO_WASTE_CHOSEN_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvModelMovements'
    OnCalcFields = cdsGridDataCalcFields
    Left = 128
    Top = 248
    object cdsGridDataMM_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083#1072#1074#1085#1086
      FieldName = 'MM_BRANCH_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsGridDataMM_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'MM_CODE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsGridDataMM_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'MM_IDENTIFIER'
      Size = 81
    end
    object cdsGridDataMM_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'MM_DATE'
    end
    object cdsGridDataML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
    end
    object cdsGridDataMLL_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataMLL_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLL_OBJECT_CODE'
    end
    object cdsGridDataMLL_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'MLL_OBJECT_IDENTIFIER'
      Size = 237
    end
    object cdsGridDataDETAIL_NAME: TAbmesWideStringField
      DisplayLabel = #1044#1077#1090#1072#1081#1083
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsGridDataDETAIL_CUSTOM_CODE: TAbmesFloatField
      DisplayLabel = #1053#1086#1084#1077#1088
      FieldName = 'DETAIL_CUSTOM_CODE'
    end
    object cdsGridDataFROM_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'FROM_STAGE_IDENTIFIER'
      Size = 87
    end
    object cdsGridDataTO_STAGE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'TO_STAGE_IDENTIFIER'
      Size = 87
    end
    object cdsGridDataWASTE_INFO: TAbmesWideStringField
      FieldName = 'WASTE_INFO'
      Size = 82
    end
    object cdsGridDataDETAIL_TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1058#1077#1093#1085'. '#1082'-'#1074#1086
      FieldName = 'DETAIL_TECH_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataMEASURE_ABBREV: TAbmesWideStringField
      DisplayLabel = #1052'.'#1077#1076
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataTOTAL_PRICE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'TOTAL_PRICE'
      DisplayFormat = ',0.00'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_CUSTOM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CUSTOM_CODE'
    end
    object cdsGridDataACCOUNT_PRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_PRODUCT_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsGridDataACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataIS_STORNO: TAbmesFloatField
      FieldName = 'IS_STORNO'
      DisplayBoolValues = #1040#1085';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCLIENT_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'CLIENT_PRODUCT_NAME'
      Size = 50
    end
    object cdsGridDataMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsGridData_SUM_DETAIL_TECH_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_DETAIL_TECH_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsGridData_AGG_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_AGG_MEASURE_ABBREV'
      Size = 10
      Calculated = True
    end
    object cdsGridDataSTORNO_TIME: TAbmesSQLTimeStampField
      FieldName = 'STORNO_TIME'
      OnGetText = cdsGridDataSTORNO_TIMEGetText
    end
    object cdsGridDataSTORNO_DATE: TAbmesSQLTimeStampField
      FieldName = 'STORNO_DATE'
    end
    object cdsGridDataSTORNO_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'STORNO_EMPLOYEE_ABBREV'
      Size = 49
    end
    object cdsGridDataSTORNO_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'STORNO_EMPLOYEE_CODE'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
      OnGetText = cdsGridDataCREATE_TIMEGetText
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataCREATE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'CREATE_EMPLOYEE_ABBREV'
      Size = 49
    end
    object cdsGridDataCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsGridDataOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object cdsGridDataOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
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
    object cdsGridDataWORK_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'WORK_PRIORITY_CODE'
    end
    object cdsGridDataWORK_PRIORITY_NO: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'WORK_PRIORITY_NO'
    end
    object cdsGridData_REPORT_TITLE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_REPORT_TITLE'
      Size = 100
      Calculated = True
    end
    object cdsGridDataDETAIL_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_BRANCH_CODE'
    end
    object cdsGridDataDETAIL_DOC_CODE: TAbmesFloatField
      FieldName = 'DETAIL_DOC_CODE'
    end
    object cdsGridDataDETAIL_HAS_DOC: TAbmesFloatField
      FieldName = 'DETAIL_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOC: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC: TAbmesFloatField
      FieldName = 'HAS_DOC'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataSUM_DETAIL_TECH_QUANTITY: TAggregateField
      FieldName = 'SUM_DETAIL_TECH_QUANTITY'
      Active = True
      DisplayFormat = ',0.#'
      Expression = 'Sum(DETAIL_TECH_QUANTITY)'
    end
    object cdsGridDataSUM_TOTAL_PRICE: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SUM_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(TOTAL_PRICE)'
    end
    object cdsGridDataAGG_MEASURE_CODE: TAggregateField
      FieldName = 'AGG_MEASURE_CODE'
      Active = True
      Expression = 'Max(MEASURE_CODE) - Min(MEASURE_CODE)'
    end
  end
  inherited alActions: TActionList
    Left = 248
    Top = 216
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1045#1090#1072#1087#1085#1080' '#1044#1074#1080#1078#1077#1085#1080#1103
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actShowAccountData: TAction
      GroupIndex = 1
      Hint = 
        #1055#1086#1082#1072#1078#1080'/'#1057#1082#1088#1080#1081' '#1076#1072#1085#1085#1080' '#1079#1072' '#1053#1072#1095#1072#1083#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1085#1072' '#1063#1072#1089#1090' '#1080' '#1089#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082#1086#1083#1080#1095 +
        #1077#1089#1090#1074#1086
      ImageIndex = 28
    end
    object actToggleProductDisplay: TAction
      GroupIndex = 3
      Hint = 
        #1055#1086#1082#1072#1079#1074#1072' / '#1089#1082#1088#1080#1074#1072' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1059#1087#1088#1072#1074#1083#1103#1077#1084#1080#1103' '#1054#1073#1077#1082#1090' '#1087#1086' '#1087#1086#1088#1098#1095#1082#1072#1090#1072' ' +
        #1086#1090' '#1050#1083#1080#1077#1085#1090#1072
      ImageIndex = 24
      OnExecute = actToggleProductDisplayExecute
    end
    object actMovementDoc: TAction
      OnExecute = actMovementDocExecute
      OnUpdate = actMovementDocUpdate
    end
    object actDetailDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1050#1057#1063' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
      OnExecute = actDetailDocExecute
      OnUpdate = actDetailDocUpdate
    end
    object actProductDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1053#1057#1063' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1044#1074#1080#1078#1077#1085#1080#1077
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actModelStatus: TAction
      Caption = #1057#1083#1077#1076#1077#1085#1077'...'
      ImageIndex = 18
      OnExecute = actModelStatusExecute
      OnUpdate = actModelStatusUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 128
    Top = 280
    object pdsGridDataParamsOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
    end
    object pdsGridDataParamsOM_NO: TAbmesFloatField
      FieldName = 'OM_NO'
    end
    object pdsGridDataParamsSTART_PERIOD_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'START_PERIOD_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_PERIOD_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1044#1072#1090#1072' '#1085#1072' '#1044#1074#1080#1078#1077#1085#1080#1077' - '#1050#1088#1072#1081
      FieldName = 'END_PERIOD_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsIS_STORNO: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldName = 'IS_STORNO'
    end
    object pdsGridDataParamsPRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'PRODUCTION_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsSALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1043#1083'.'
      FieldName = 'SALE_BRANCH_CODE'
    end
    object pdsGridDataParamsSALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1055#1042' No'
      FieldName = 'SALE_NO'
    end
    object pdsGridDataParamsSALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'SALE_TYPE_CODE'
    end
    object pdsGridDataParamsBEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1054#1090
      FieldName = 'BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsEND_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = #1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - '#1044#1086
      FieldName = 'END_PRIORITY_CODE'
    end
    object pdsGridDataParamsMLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'MLL_NO_AS_TEXT'
      OnValidate = pdsGridDataParamsMLL_NO_AS_TEXTValidate
      Size = 255
    end
    object pdsGridDataParamsMLL_FORK_NO: TAbmesFloatField
      FieldName = 'MLL_FORK_NO'
    end
    object pdsGridDataParamsRESULT_PRODUCT_CHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' ID '#1054#1055#1042
      FieldName = 'RESULT_PRODUCT_CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsDETAIL_CHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1050#1057#1063
      FieldName = 'DETAIL_CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsFROM_STAGE_NO: TAbmesFloatField
      DisplayLabel = #1054#1058' - '#1045#1090#1072#1087' No'
      FieldName = 'FROM_STAGE_NO'
    end
    object pdsGridDataParamsFROM_STAGE_CHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1054#1058' - '#1058#1055' '#1055#1088#1077#1076#1072#1074#1072#1097#1086
      FieldName = 'FROM_STAGE_CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsTO_STAGE_OR_WASTE: TAbmesFloatField
      DisplayLabel = #1050#1066#1052
      FieldName = 'TO_STAGE_OR_WASTE'
    end
    object pdsGridDataParamsTO_STAGE_NO: TAbmesFloatField
      DisplayLabel = #1050#1066#1052' - '#1045#1090#1072#1087' No'
      FieldName = 'TO_STAGE_NO'
    end
    object pdsGridDataParamsTO_STAGE_CHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1050#1066#1052' - '#1045#1090#1072#1087' No'
      FieldName = 'TO_STAGE_CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsTO_WASTE_CHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1050#1066#1052' - '#1058#1055' '#1055#1088#1080#1077#1084#1072#1097#1086' '#1059#1054#1073' '#1041#1083#1086#1082#1080#1088#1072#1097
      FieldName = 'TO_WASTE_CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParams_OM_BRANCH_CODE_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OM_BRANCH_CODE_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'OM_BRANCH_CODE'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_CODE_AND_NAME'
      KeyFields = 'SALE_BRANCH_CODE'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object pdsGridDataParams_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'SALE_TYPE_CODE'
      ProviderFlags = []
      Size = 10
      Lookup = True
    end
    object pdsGridDataParamsPRODUCTION_ORDER_BASE_TYPE_CODE: TAbmesFloatField
      FieldName = 'PRODUCTION_ORDER_BASE_TYPE_CODE'
      ProviderFlags = []
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 160
    Top = 280
  end
  inherited dsData: TDataSource
    Left = 160
    Top = 216
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 128
    Top = 216
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 312
    Top = 216
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 143
    end
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 344
    Top = 216
    object cdsSaleTypesSALE_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_TYPE_CODE'
    end
    object cdsSaleTypesSALE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_TYPE_ABBREV'
      Size = 3
    end
    object cdsSaleTypesSALE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_TYPE_NAME'
      Size = 50
    end
  end
  object cdsStageInfo: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conModelMovements
    Params = <
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLMS_OBJECT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvStageInfo'
    Left = 128
    Top = 320
    object cdsStageInfoMLMS_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_BRANCH_CODE'
    end
    object cdsStageInfoMLMS_OBJECT_CODE: TAbmesFloatField
      FieldName = 'MLMS_OBJECT_CODE'
    end
    object cdsStageInfoSALE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_BRANCH_CODE'
    end
    object cdsStageInfoSALE_NO: TAbmesFloatField
      FieldName = 'SALE_NO'
    end
    object cdsStageInfoIS_MODEL_ARCHIVED: TAbmesFloatField
      FieldName = 'IS_MODEL_ARCHIVED'
    end
    object cdsStageInfoIS_MODEL_CLOSED: TAbmesFloatField
      FieldName = 'IS_MODEL_CLOSED'
    end
    object cdsStageInfoIS_MODEL_ANNULED: TAbmesFloatField
      FieldName = 'IS_MODEL_ANNULED'
    end
    object cdsStageInfoMODEL_LIMITING_DATE: TAbmesSQLTimeStampField
      FieldName = 'MODEL_LIMITING_DATE'
    end
    object cdsStageInfoMLL_NO_AS_TEXT: TAbmesWideStringField
      FieldName = 'MLL_NO_AS_TEXT'
      Size = 100
    end
    object cdsStageInfoFORK_NO: TAbmesFloatField
      FieldName = 'FORK_NO'
    end
    object cdsStageInfoML_MODEL_STAGE_NO: TAbmesFloatField
      FieldName = 'ML_MODEL_STAGE_NO'
    end
  end
end
