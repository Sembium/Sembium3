inherited fmExceptEvents: TfmExceptEvents
  ActiveControl = nil
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
  ClientHeight = 654
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 619
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 4
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 3
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 5
      Visible = False
    end
    object pnlInsertDetail: TPanel
      Left = 0
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnInsertDetail: TBitBtn
        Left = 8
        Top = 0
        Width = 105
        Height = 25
        Action = actInsertRootOrChildDamage
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
        TabOrder = 0
      end
    end
    object pnlDeleteDetail: TPanel
      Left = 113
      Top = 0
      Width = 113
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnDeleteDetail: TBitBtn
        Left = 8
        Top = 0
        Width = 105
        Height = 25
        Action = actDelDetailRecord
        Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlEditDetail: TPanel
      Left = 226
      Top = 0
      Width = 121
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnEditDetail: TBitBtn
        Left = 8
        Top = 0
        Width = 105
        Height = 25
        Action = actEditDetailRecord
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
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 619
    inherited sptDetail: TSplitter
      Top = 343
      Width = 1001
    end
    inherited pnlDetailGrid: TPanel
      Top = 346
      Width = 1001
      Height = 265
      inherited grdDetail: TAbmesDBGrid [0]
        Top = 0
        Width = 1001
        Height = 265
        Visible = False
      end
      inherited pnlDetailNavigator: TPanel [1]
        Left = 4
        Width = 477
        Align = alNone
        Visible = False
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      object pcDetailViews: TPageControl
        Left = 0
        Top = 0
        Width = 1001
        Height = 265
        ActivePage = tsExceptEventDamages
        Align = alClient
        HotTrack = True
        TabOrder = 2
        object tsExceptEventDamages: TTabSheet
          Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103
          object pnlExceptEventDamagesTop: TPanel
            Left = 0
            Top = 0
            Width = 993
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navExceptEventDamages: TDBColorNavigator
              Left = 145
              Top = 0
              Width = 168
              Height = 24
              DataSource = dsDetail
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
              Align = alLeft
              Flat = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              BeforeAction = navExceptEventDamagesBeforeAction
            end
            object tlbExceptEventDamageDocs: TToolBar
              Left = 313
              Top = 0
              Width = 113
              Height = 24
              Align = alLeft
              ButtonWidth = 36
              Caption = 'tlbExceptEventDamageDocs'
              Images = dmMain.ilDocs
              TabOrder = 1
              object sepExceptEventDamageProductDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepExceptEventDamageProductDoc'
                ImageIndex = 99
                Style = tbsSeparator
              end
              object lblExceptEventDamageProductDoc: TLabel
                Left = 8
                Top = 0
                Width = 25
                Height = 22
                Caption = #1059#1054#1073' '
                Layout = tlCenter
              end
              object btnExceptEventDamageProductDoc: TToolButton
                Left = 33
                Top = 0
                Action = actExceptEventDamageProductDoc
              end
            end
            object tlbMove: TToolBar
              Left = 0
              Top = 0
              Width = 145
              Height = 24
              Align = alLeft
              ButtonHeight = 24
              ButtonWidth = 40
              Images = dmMain.ilActions
              TabOrder = 2
              object btnStartMoving: TToolButton
                Left = 0
                Top = 0
                Action = actStartMoving
                AllowAllUp = True
              end
              object btnFinishMoving: TToolButton
                Left = 40
                Top = 0
                Action = actFinishMoving
              end
              object btnMakeRoot: TToolButton
                Left = 80
                Top = 0
                Action = actMakeRoot
              end
            end
          end
          object grdExceptEventDamages: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 993
            Height = 213
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch]
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 6
            OnDblClick = grdExceptEventDamagesDblClick
            OnDrawColumnCell = grdExceptEventDamagesDrawColumnCell
            OnGetCellParams = grdExceptEventDamagesGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'FULL_NO'
                Footers = <>
                Title.Caption = #1057#1090#1088#1091#1082#1090'. No'
                Width = 138
              end
              item
                EditButtons = <>
                FieldName = 'STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072' '#1040#1090#1082
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'DAMAGE_WORKDAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088'. '#1040#1090#1082
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'EE_DAMAGE_PROCESS_TYPE_NAME'
                Footers = <>
                Title.Caption = #1055#1088#1094'. '#1057#1080#1089#1090#1077#1084#1072
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'PROCESS_IDENTIFIER'
                Footers = <>
                Title.Caption = 'ID '#1054#1055
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'PROCESS_PRODUCT_NAME'
                Footers = <>
                Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 165
              end
              item
                EditButtons = <>
                FieldName = 'PROCESS_PRODUCT_NO'
                Footers = <>
                Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_BEGIN_DATE'
                Footers = <>
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'PROCESS_PRODUCT_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1055#1083#1072#1085
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'PROCESS_PRODUCT_MEASURE'
                Footers = <>
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1052'.'#1077#1076'.'
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_QUANTITY'
                Footers = <>
                Title.Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080' '#1085#1072' '#1060#1080#1085#1072#1083' '#1085#1072' ID '#1054#1055'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'|'#1054#1090#1082#1083'.'
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'DAMAGED_PRICE'
                Footers = <>
                Title.Caption = #1055#1057' '#1087#1086' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077
                Width = 68
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsExceptEventTasks: TTabSheet
          Caption = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
          ImageIndex = 1
          object pnlExceptEventTasksTop: TPanel
            Left = 0
            Top = 0
            Width = 993
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navExceptEventTasks: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 144
              Height = 24
              DataSource = dsExceptEventTasks
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
              Align = alLeft
              Flat = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              BeforeAction = navExceptEventTasksBeforeAction
            end
            object tlbExceptEventTaskDocs: TToolBar
              Left = 152
              Top = 0
              Width = 313
              Height = 22
              Align = alNone
              ButtonWidth = 36
              Caption = 'tlbExceptEventTaskDocs'
              Images = dmMain.ilDocs
              TabOrder = 1
              object lblExceptEventTaskDoc: TLabel
                Left = 0
                Top = 0
                Width = 84
                Height = 13
                Caption = #1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080' '
                Layout = tlCenter
              end
              object btnExceptEventTaskDoc: TToolButton
                Left = 84
                Top = 0
                Action = actExceptEventTaskDoc
              end
              object sepExceptEventTaskDoc: TToolButton
                Left = 120
                Top = 0
                Width = 8
                Caption = 'sepExceptEventTaskDoc'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object pnlExceptEventTaskDeptDoc: TPanel
                Left = 128
                Top = 0
                Width = 36
                Height = 22
                BevelOuter = bvNone
                Caption = #1058#1055' '
                TabOrder = 0
              end
              object btnExceptEventTaskDeptDoc: TToolButton
                Left = 164
                Top = 0
                Action = actExceptEventTaskDeptDoc
              end
              object sepExceptEventTaskDeptDoc: TToolButton
                Left = 200
                Top = 0
                Width = 8
                Caption = 'sepExceptEventTaskDeptDoc'
                ImageIndex = 2
                Style = tbsSeparator
              end
              object lblExceptEventTaskEmployeeDoc: TLabel
                Left = 208
                Top = 0
                Width = 52
                Height = 13
                Caption = #1057#1083#1091#1078#1080#1090#1077#1083' '
                Layout = tlCenter
              end
              object btnExceptEventTaskEmployeeDoc: TToolButton
                Left = 260
                Top = 0
                Action = actExceptEventTaskEmployeeDoc
              end
            end
          end
          object grdExceptEventTasks: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 993
            Height = 213
            Align = alClient
            DataGrouping.GroupLevels = <>
            DataSource = dsExceptEventTasks
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
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VTitleMargin = 13
            OnDblClick = grdExceptEventTasksDblClick
            OnDrawColumnCell = grdExceptEventTasksDrawColumnCell
            OnGetCellParams = grdExceptEventTasksGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Title.Orientation = tohVertical
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'EXCEPT_EVENT_TASK_NO'
                Footers = <>
                Title.Caption = 'No'
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'EE_TASK_RESOLVE_TYPE_SHOW_NAME'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = #1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'TASK_REAL_WORKDAYS'
                Footers = <>
                Title.Caption = #1055#1077#1088'. '#1056#1083'.'
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1058#1055' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '#1085#1072' '#1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'EMPLOYEE_NO'
                Footers = <>
                Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '#1085#1072' '#1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080'|'#1050#1086#1076
              end
              item
                EditButtons = <>
                FieldName = 'EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083' '#1056#1077#1072#1083#1080#1079#1072#1090#1086#1088' '#1085#1072' '#1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080'|'#1048#1084#1077
                Width = 191
              end
              item
                EditButtons = <>
                FieldName = 'DESCRIPTION'
                Footers = <>
                Title.Caption = #1055#1088#1077#1076#1087#1080#1089#1072#1085#1080' '#1052#1077#1088#1082#1080
                Width = 297
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_DATE'
                Footers = <>
                Title.Caption = #1060#1080#1085#1072#1083'|'#1044#1072#1090#1072' '#1055#1083#1072#1085
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'TASK_WORKDAYS_LEFT'
                Footers = <>
                Title.Caption = #1060#1080#1085#1072#1083'|'#1056#1079#1088#1074'.'
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'CLOSE_DATE'
                Footers = <>
                Title.Caption = #1060#1080#1085#1072#1083'|'#1044#1072#1090#1072' '#1054#1090#1095'.'
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'HAS_PROBLEMS_ENCOUNTERED'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Wingdings'
                Font.Style = []
                Footers = <>
                Title.Caption = #1060#1080#1085#1072#1083'|'#1055#1088#1086#1073#1083#1077#1084#1080
                Width = 56
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 335
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited navData: TDBColorNavigator
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbRefresh]
          Hints.Strings = ()
        end
        object tlbExceptEventDocs: TToolBar
          Left = 248
          Top = 0
          Width = 132
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepExceptEventDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepExceptEventDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblExceptEventDoc: TLabel
            Left = 8
            Top = 0
            Width = 19
            Height = 24
            Caption = #1053#1054' '
            Layout = tlCenter
          end
          object btnExceptEventDoc: TToolButton
            Left = 27
            Top = 0
            Action = actExceptEventDoc
          end
          object sepExceptEventProductDoc: TToolButton
            Left = 63
            Top = 0
            Width = 8
            Caption = 'sepExceptEventProductDoc'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object lblExceptEventProductDoc: TLabel
            Left = 71
            Top = 0
            Width = 25
            Height = 24
            Caption = #1059#1054#1073' '
            Layout = tlCenter
          end
          object btnExceptEvent: TToolButton
            Left = 96
            Top = 0
            Action = actExceptEventProductDoc
          end
        end
        object tlbActions: TToolBar
          Left = 931
          Top = 0
          Width = 70
          Height = 24
          Align = alRight
          Caption = 'tlbActions'
          Images = dmMain.ilActions
          TabOrder = 4
          object btnToggleDescription: TToolButton
            Tag = 6
            Left = 0
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
            ImageIndex = 54
            Style = tbsCheck
          end
          object btnToggleDeptsName: TToolButton
            Tag = 4
            Left = 23
            Top = 0
            Hint = #1057#1084#1077#1085#1103' '#1050#1086#1076'/'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1058#1055
            ImageIndex = 152
            Style = tbsCheck
          end
          object btnToggleGeneratorIdentifier: TToolButton
            Tag = 2
            Left = 46
            Top = 0
            Hint = 
              #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1045#1076#1080#1085#1080#1094#1072', '#1086#1090' '#1082#1086#1103#1090#1086' '#1077' '#1087#1088#1077#1076#1080#1079#1074#1080#1082#1072#1085#1086' '#1088#1077#1075#1080#1089#1090#1088 +
              #1080#1088#1072#1085#1077' '#1085#1072' '#1053#1054
            ImageIndex = 153
            Style = tbsCheck
          end
        end
        object tlbCopyProductNo: TToolBar
          Left = 380
          Top = 0
          Width = 23
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          Caption = 'tlbActions'
          Images = dmMain.ilActions
          TabOrder = 5
          object btnCopyProductNoToClipboard: TToolButton
            Left = 0
            Top = 0
            Action = actCopyProductNoToClipboard
          end
        end
        object tlbExceptEventDocsContinued: TToolBar
          Left = 403
          Top = 0
          Width = 238
          Height = 24
          Align = alLeft
          ButtonWidth = 36
          Caption = 'tlbActions'
          Images = dmMain.ilDocs
          TabOrder = 6
          object sepOrgTaskProposalDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepOrgTaskProposalDoc'
            Style = tbsSeparator
          end
          object lblOrgTaskProposalDoc: TLabel
            Left = 8
            Top = 0
            Width = 40
            Height = 22
            Caption = #1055#1088#1086#1077#1082#1090' '
            Layout = tlCenter
          end
          object btnOrgTaskProposalDoc: TToolButton
            Left = 48
            Top = 0
            Action = actOrgTaskProposalDoc
          end
          object sepExceptEventDeptDoc: TToolButton
            Left = 84
            Top = 0
            Width = 8
            Caption = 'sepExceptEventDeptDoc'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblExceptEventDeptDoc: TLabel
            Left = 92
            Top = 0
            Width = 18
            Height = 22
            Caption = #1058#1055' '
            Layout = tlCenter
          end
          object btnExceptEventDeptDoc: TToolButton
            Left = 110
            Top = 0
            Action = actExceptEventDeptDoc
          end
        end
        object pnlConsequenceExceptEventNo: TPanel
          Left = 838
          Top = 0
          Width = 195
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 7
          Visible = False
          object lblConsequenceExceptEventNo: TLabel
            Left = 0
            Top = 0
            Width = 91
            Height = 24
            Align = alLeft
            Caption = #1055#1088#1080#1095#1080#1085#1080' '#1079#1072' ID '#1053#1054
            Layout = tlCenter
          end
          object edtConsequenceExceptEventNo: TDBEdit
            Left = 104
            Top = 0
            Width = 81
            Height = 21
            Color = clBtnFace
            DataField = 'CAUSED_EXCEPT_EVENT_NO'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 0
          end
          object pnlShowConsequenceExceptEvent: TPanel
            Left = 165
            Top = 2
            Width = 18
            Height = 18
            BevelOuter = bvNone
            TabOrder = 1
            object btnShowConsequenceExceptEvent: TSpeedButton
              Left = 0
              Top = 0
              Width = 18
              Height = 18
              Action = actShowConsequenceExceptEvent
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
          end
        end
        object pnlCauseExceptEventNo: TPanel
          Left = 641
          Top = 0
          Width = 197
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 8
          Visible = False
          object lblCauseExceptEventNo: TLabel
            Left = 0
            Top = 0
            Width = 101
            Height = 24
            Align = alLeft
            Caption = #1057#1083#1077#1076#1089#1090#1074#1080#1103' '#1086#1090' ID '#1053#1054
            Layout = tlCenter
          end
          object edtCauseExceptEventNo: TDBEdit
            Left = 112
            Top = 0
            Width = 81
            Height = 21
            Color = clBtnFace
            DataField = 'CAUSE_EXCEPT_EVENT_NO'
            DataSource = dsGridDataParams
            ReadOnly = True
            TabOrder = 0
          end
          object pnlShowCauseExceptEvent: TPanel
            Left = 173
            Top = 2
            Width = 18
            Height = 18
            BevelOuter = bvNone
            TabOrder = 1
            object btnShowCauseExceptEvent: TSpeedButton
              Left = 0
              Top = 0
              Width = 18
              Height = 18
              Action = actShowCauseExceptEvent
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF000000000000000000FF00FF00FF00FF00FF00FF000000000000000000FF00
                FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 275
        FooterColor = 15258325
        FooterRowCount = 1
        HorzScrollBar.Visible = False
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        UseMultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STATE_CODE'
            Footers = <>
            Title.Caption = #1057#1090#1072#1090#1091#1089
            Title.Orientation = tohVertical
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_NO'
            Footers = <>
            Title.Caption = 'ID '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|No'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_DATE'
            Footers = <>
            Title.Caption = 'ID '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1044#1072#1090#1072
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_NO'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CREATE_EMPLOYEE_ABBREV_NAME'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
            Footers = <>
            Title.Caption = #1054#1073#1093#1074#1072#1090
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'EE_TYPE_FULL_NO'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
            Footers = <>
            Title.Caption = #1042#1080#1076
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'HAS_CAUSES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Wingdings 3'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1079#1094'|'#1055
            Width = 12
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_CAUSES'
            Footers = <>
            Title.Caption = #1055#1079#1094'|ID '#1053#1054' '#1055#1088#1080#1095#1080#1085#1080
            Visible = False
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'HAS_CONSEQUENCES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Wingdings 3'
            Font.Style = []
            Footers = <>
            Title.Caption = #1055#1079#1094'|'#1057
            Width = 12
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_CONSEQUENCES'
            Footers = <>
            Title.Caption = #1055#1079#1094'|ID '#1053#1054' '#1057#1083#1077#1076#1089#1090#1074#1080#1103
            Visible = False
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Tag = 2
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 158
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_QUANTITY'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077'|'#1084'.'#1077#1076'.'
            Visible = False
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_PSD_SINGLE_PRICE_IN_BC'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_PSD_TOTAL_PRICE_IN_BC'
            Footers = <>
            Title.Caption = #1059#1052' '#1059#1054#1073'|'#1042#1057'1'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'PROCESS_OBJECT_IDENTIFIER'
            Footers = <>
            Tag = 3
            Title.Caption = 'ID '#1054#1055
            Visible = False
            Width = 158
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
            Footers = <>
            Tag = 6
            Title.Caption = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077'|'#1055#1088#1094'. '#1057#1080#1089#1090#1077#1084#1072
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'DETECT_DEPT_IDENTIFIER'
            Footers = <>
            Tag = 406
            Title.Caption = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077'|'#1058#1055
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'DETECT_DEPT_NAME'
            Footers = <>
            Tag = 506
            Title.Caption = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077'|'#1058#1055
            Visible = False
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'DETECT_EMPLOYEE_NO'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'DETECT_EMPLOYEE_ABBREV_NAME'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
            Footers = <>
            Tag = 6
            Title.Caption = #1042#1098#1079#1085#1080#1082#1074#1072#1085#1077'|'#1055#1054#1085#1090
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Tag = 406
            Title.Caption = #1042#1098#1079#1085#1080#1082#1074#1072#1085#1077'|'#1058#1055
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Tag = 506
            Title.Caption = #1042#1098#1079#1085#1080#1082#1074#1072#1085#1077'|'#1058#1055
            Visible = False
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CTRL_DEPT_IDENTIFIER'
            Footers = <>
            Tag = 406
            Title.Caption = #1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077'|'#1058#1055
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CTRL_DEPT_NAME'
            Footers = <>
            Tag = 506
            Title.Caption = #1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077'|'#1058#1055
            Visible = False
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CTRL_MAIN_EMPLOYEE'
            Footers = <>
            Tag = 6
            Title.Caption = #1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077'|'#1043#1083'. '#1054#1090#1075'.'
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'IS_SINGLE_RESOLVABLE'
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Symbol'
            Font.Style = []
            Footers = <>
            Tag = 6
            Title.Caption = #1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077'|'#1055#1041#1055'-'#1045
            Title.Orientation = tohVertical
            Width = 16
          end
          item
            EditButtons = <>
            FieldName = 'DMG_RESOLVE_PLAN_END_DATE'
            Footers = <>
            Tag = 6
            Title.Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103'|'#1055#1083#1072#1085
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'DMG_RESOLVE_DATE'
            Footers = <>
            Tag = 6
            Title.Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103'|'#1054#1090#1095#1077#1090
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'DMG_RESOLVE_REAL_WORKDAYS'
            Footers = <>
            Tag = 6
            Title.Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103'|'#1055#1077#1088' '#1056#1083
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'DMG_RESOLVE_WORKDAYS_LEFT'
            Footers = <>
            Tag = 6
            Title.Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103'|'#1056#1079' '#1088#1074'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'EXCEPT_EVENT_TOTAL_PRICE'
            Footer.FieldName = '_SUM_DAMAGED_PRICE'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Tag = 6
            Title.Caption = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103'|'#1055#1057' '#1087#1086' '#1053#1054
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'RESOLVE_PLAN_END_DATE'
            Footers = <>
            Tag = 6
            Title.Caption = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086'|'#1055#1083#1072#1085
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'RESOLVE_DATE'
            Footers = <>
            Tag = 6
            Title.Caption = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086'|'#1054#1090#1095#1077#1090
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'RESOLVE_REAL_WORKDAYS'
            Footers = <>
            Tag = 6
            Title.Caption = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086'|'#1055#1077#1088' '#1056#1083
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'RESOLVE_WORKDAYS_LEFT'
            Footers = <>
            Tag = 6
            Title.Caption = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086'|'#1056#1079' '#1088#1074'.'
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            Tag = 7
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
            Visible = False
            Width = 583
          end
          item
            EditButtons = <>
            FieldName = 'ORG_TASK_PROPOSAL_NO'
            Footers = <>
            Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090
            Width = 49
          end>
      end
      object pnlGridButtons: TPanel
        Left = 0
        Top = 299
        Width = 1001
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          1001
          36)
        object btnInsertExceptEvent: TBitBtn
          Left = 0
          Top = 8
          Width = 105
          Height = 25
          Action = actInsertRecord
          Anchors = [akLeft, akBottom]
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
          TabOrder = 0
        end
        object btnEditExceptEvent: TBitBtn
          Left = 113
          Top = 8
          Width = 105
          Height = 25
          Action = actEditRecord
          Anchors = [akLeft, akBottom]
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
          TabOrder = 1
        end
        object btnSetOrgTaskProposal: TBitBtn
          Left = 864
          Top = 8
          Width = 137
          Height = 25
          Action = actSetOrgTaskProposal
          Caption = #1057#1074#1098#1088#1079#1074#1072#1085#1077' '#1089' '#1055#1088#1086#1077#1082#1090'...'
          TabOrder = 8
        end
        object btnShowOrgTaskProposal: TBitBtn
          Left = 776
          Top = 8
          Width = 81
          Height = 25
          Action = actShowOrgTaskProposal
          Caption = #1055#1088#1086#1077#1082#1090'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FFFF
            FF007F7F7F00000000000000000000000000FFFFFF0000000000FFFFFF000000
            00000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFF000000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F00FFFF
            FF00FFFFFF00FFFFFF000000000000FFFF0000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000FFFFFF007F7F
            7F007F7F7F00FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF00000000007F7F7F00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF00FFFFFF00FFFFFF007F7F7F0000000000FFFFFF007F7F
            7F007F7F7F00FFFFFF00000000000000000000000000FF00FF0000000000FFFF
            FF007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000FF000000000000FF00FF00000000000000
            00007F7F7F00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
            FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 7
        end
        object btnCauseExceptEvents: TBitBtn
          Left = 264
          Top = 8
          Width = 121
          Height = 25
          Action = actShowCauseExceptEvents
          Caption = #1053#1054' - '#1055#1088#1080#1095#1080#1085#1080'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000FF0000000000FF00FF00FF00
            FF0000000000000000000000FF000000FF000000FF000000FF000000FF000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000FF000000FF000000FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 3
        end
        object btnCausedExceptEvents: TBitBtn
          Left = 392
          Top = 8
          Width = 121
          Height = 25
          Action = actShowCausedExceptEvents
          Caption = #1053#1054' - '#1057#1083#1077#1076#1089#1090#1074#1080#1103'...'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
            FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000000000000000000000FF000000FF000000
            FF000000FF000000FF000000000000000000FF00FF00FF00FF00000000000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF000000FF000000000000000000000000000000
            000000000000000000000000000000000000000000000000FF000000FF000000
            FF000000FF000000FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF000000FF000000
            FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000FF00000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphRight
          TabOrder = 4
        end
        object btnAttachExceptEventsAsCause: TBitBtn
          Left = 520
          Top = 8
          Width = 25
          Height = 25
          Action = actAttachExceptEventsAsCause
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000707
            0700070707000707070007070700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00070707009696
            960085858500969696009696960007070700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700A0A0A0007A7A
            7A000707070007070700C2C2C2009696960007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700A0A0A0006F6F6F000707
            0700FF00FF00FF00FF0007070700C2C2C20007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000707070066666600040404000707
            07000E0E0E00FF00FF0007070700C2C2C20007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700040404005C5C5C005858
            580007070700070707008B8B8B009696960007070700FF00FF00FF00FF00FF00
            FF00FF00FF00070707000707070007070700070707009D9D9D007A7A7A005858
            5800040404007E7E7E00C2C2C20007070700FF00FF00FF00FF00FF00FF00FF00
            FF0007070700C2C2C200737373000404040098989800B2B2B200979797000404
            040073737300C2C2C20007070700FF00FF00FF00FF00FF00FF00FF00FF000707
            0700C2C2C2007E7E7E0004040400585858007A7A7A009D9D9D00070707000707
            07000707070007070700FF00FF00FF00FF00FF00FF00FF00FF00070707009696
            96008B8B8B000707070007070700585858005C5C5C000404040007070700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700C2C2
            C20007070700FF00FF000E0E0E0007070700040404006666660007070700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700C2C2
            C20007070700FF00FF00FF00FF00070707006F6F6F00A0A0A00007070700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00070707009696
            9600C2C2C20007070700070707007A7A7A00A0A0A00007070700FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000707
            07009696960096969600858585009696960007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0007070700070707000707070007070700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object btnAttachExceptEventsAsConsequence: TBitBtn
          Left = 232
          Top = 8
          Width = 25
          Height = 25
          Action = actAttachExceptEventsAsConsequence
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000707
            0700070707000707070007070700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00070707009696
            960085858500969696009696960007070700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700A0A0A0007A7A
            7A000707070007070700C2C2C2009696960007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700A0A0A0006F6F6F000707
            0700FF00FF00FF00FF0007070700C2C2C20007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000707070066666600040404000707
            07000E0E0E00FF00FF0007070700C2C2C20007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700040404005C5C5C005858
            580007070700070707008B8B8B009696960007070700FF00FF00FF00FF00FF00
            FF00FF00FF00070707000707070007070700070707009D9D9D007A7A7A005858
            5800040404007E7E7E00C2C2C20007070700FF00FF00FF00FF00FF00FF00FF00
            FF0007070700C2C2C200737373000404040098989800B2B2B200979797000404
            040073737300C2C2C20007070700FF00FF00FF00FF00FF00FF00FF00FF000707
            0700C2C2C2007E7E7E0004040400585858007A7A7A009D9D9D00070707000707
            07000707070007070700FF00FF00FF00FF00FF00FF00FF00FF00070707009696
            96008B8B8B000707070007070700585858005C5C5C000404040007070700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700C2C2
            C20007070700FF00FF000E0E0E0007070700040404006666660007070700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0007070700C2C2
            C20007070700FF00FF00FF00FF00070707006F6F6F00A0A0A00007070700FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00070707009696
            9600C2C2C20007070700070707007A7A7A00A0A0A00007070700FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000707
            07009696960096969600858585009696960007070700FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0007070700070707000707070007070700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object btnDetachExceptEvents: TBitBtn
          Left = 560
          Top = 8
          Width = 25
          Height = 25
          Action = actDetachExceptEvents
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00
            FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00
            FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
            FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00
            FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00
            FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00
            FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conExceptEvents
    FieldDefs = <
      item
        Name = 'EXCEPT_EVENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_NO'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'EXCEPT_EVENT_TYPE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_NO'
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
        Name = 'PRODUCT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftWideString
        Size = 250
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
        Name = 'DETECT_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'CTRL_DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'CTRL_MAIN_EMPLOYEE'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'DMG_RESOLVE_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DMG_RESOLVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DMG_RESOLVE_REAL_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'DMG_RESOLVE_WORKDAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'RESOLVE_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RESOLVE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RESOLVE_REAL_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'RESOLVE_WORKDAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'EXCEPT_EVENT_LEVEL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_LEVEL_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'HAS_CAUSES'
        DataType = ftFloat
      end
      item
        Name = 'HAS_CONSEQUENCES'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ORG_TASK_PROPOSAL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ORG_TASK_PROPOSAL_NO'
        DataType = ftFloat
      end
      item
        Name = 'OTP_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OTP_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OTP_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'OTP_BIND_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OTP_BIND_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'OTP_BIND_TIME'
        DataType = ftTimeStamp
      end
      item
        Name = 'DEPT_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETECT_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CTRL_DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PROCESS_OBJECT_IDENTIFIER'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'PRC_CONCRETE_OP_SHORT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'PRODUCT_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_MEASURE_ABBREV'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'CREATE_EMPLOYEE_ABBREV_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'DETECT_EMPLOYEE_ABBREV_NAME'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'PRODUCT_PSD_SINGLE_PRICE_IN_BC'
        DataType = ftFloat
      end
      item
        Name = 'EE_TYPE_FULL_NO'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'CREATE_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETECT_EMPLOYEE_NO'
        DataType = ftFloat
      end
      item
        Name = 'EXCEPT_EVENT_CAUSES'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'EXCEPT_EVENT_CONSEQUENCES'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'PRODUCT_PSD_TOTAL_PRICE_IN_BC'
        DataType = ftFloat
      end
      item
        Name = 'IS_SINGLE_RESOLVABLE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IS_ACTIVATED'
        DataType = ftFloat
      end
      item
        Name = 'IS_CLOSED'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
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
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OM_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALE_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DCD_OBJECT_CODE'
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
        Name = 'HAS_GENERATOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_GENERATOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_GENERATOR'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_OM_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_BEGIN_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OMG_END_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'S_REQUEST_LINE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_GEN_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'D_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_TASK_PROPOSAL_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'OTP_CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CREATE_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CAUSED_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAUSED_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'CAUSE_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CAUSE_EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_IS_CAUSED'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'CREATE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DETECT_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_MAIN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_MAIN_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_NORMALIZED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_NORMALIZED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DAMAGES_NORMALIZED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DMG_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'DMG_RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CTRL_DEPTS_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_DAMAGES'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASKS_RESOLVED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_RESOLVED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_CONFIRM_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASKS_RESOLVED_STATE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RESOLVE_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESOLVE_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_TASKS'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_STATE_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPTS_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SINGLE_RESOLVABLE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SINGLE_RESOLVABLE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'SINGLE_RESOLVABLE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEvents'
    object cdsGridDataEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataSTATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATE_CODE'
      OnGetText = cdsGridDataSTATE_CODEGetText
    end
    object cdsGridDataEXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_NO'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataEXCEPT_EVENT_TYPE_SHORT_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_TYPE_SHORT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDETECT_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DETECT_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataCTRL_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'CTRL_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataCTRL_MAIN_EMPLOYEE: TAbmesWideStringField
      FieldName = 'CTRL_MAIN_EMPLOYEE'
      Size = 54
    end
    object cdsGridDataDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_PLAN_END_DATE'
    end
    object cdsGridDataDMG_RESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'DMG_RESOLVE_DATE'
    end
    object cdsGridDataDMG_RESOLVE_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_REAL_WORKDAYS'
    end
    object cdsGridDataDMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      FieldName = 'DMG_RESOLVE_WORKDAYS_LEFT'
    end
    object cdsGridDataEXCEPT_EVENT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_PLAN_END_DATE'
    end
    object cdsGridDataRESOLVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESOLVE_DATE'
    end
    object cdsGridDataRESOLVE_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'RESOLVE_REAL_WORKDAYS'
    end
    object cdsGridDataRESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      FieldName = 'RESOLVE_WORKDAYS_LEFT'
    end
    object cdsGridDataCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsGridDataEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object cdsGridDataEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
      Size = 100
    end
    object cdsGridDataHAS_CAUSES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_CAUSES'
      DisplayBoolValues = 't;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_CONSEQUENCES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_CONSEQUENCES'
      DisplayBoolValues = 'u;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
      Size = 100
    end
    object cdsGridDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
    end
    object cdsGridDataORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object cdsGridDataOTP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OTP_DOC_BRANCH_CODE'
    end
    object cdsGridDataOTP_DOC_CODE: TAbmesFloatField
      FieldName = 'OTP_DOC_CODE'
    end
    object cdsGridDataOTP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'OTP_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTP_BIND_EMPLOYEE_CODE'
    end
    object cdsGridDataOTP_BIND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_DATE'
    end
    object cdsGridDataOTP_BIND_TIME: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_TIME'
    end
    object cdsGridDataDEPT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_BRANCH_CODE'
    end
    object cdsGridDataDEPT_DOC_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_CODE'
    end
    object cdsGridDataDEPT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsGridDataDETECT_DEPT_NAME: TAbmesWideStringField
      FieldName = 'DETECT_DEPT_NAME'
      Size = 100
    end
    object cdsGridDataCTRL_DEPT_NAME: TAbmesWideStringField
      FieldName = 'CTRL_DEPT_NAME'
      Size = 100
    end
    object cdsGridDataPROCESS_OBJECT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_OBJECT_IDENTIFIER'
      Size = 250
    end
    object cdsGridDataPRC_CONCRETE_OP_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_CONCRETE_OP_SHORT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
    end
    object cdsGridDataPRODUCT_MEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'PRODUCT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsGridDataCREATE_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083'|'#1048#1084#1077
      FieldName = 'CREATE_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object cdsGridDataDETECT_EMPLOYEE_ABBREV_NAME: TAbmesWideStringField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1080#1083'|'#1048#1084#1077
      FieldName = 'DETECT_EMPLOYEE_ABBREV_NAME'
      Size = 54
    end
    object cdsGridDataPRODUCT_PSD_SINGLE_PRICE_IN_BC: TAbmesFloatField
      DisplayLabel = #1059#1052' '#1059#1054#1073'|'#1042#1057'1 '#1079#1072' 1 '#1059#1054#1073
      FieldName = 'PRODUCT_PSD_SINGLE_PRICE_IN_BC'
    end
    object cdsGridDataEE_TYPE_FULL_NO: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076'|'#1057#1090#1088#1091#1082#1090'. No'
      FieldName = 'EE_TYPE_FULL_NO'
      Size = 100
    end
    object cdsGridDataCREATE_EMPLOYEE_NO: TAbmesFloatField
      DisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1083'|'#1050#1086#1076
      FieldName = 'CREATE_EMPLOYEE_NO'
    end
    object cdsGridDataDETECT_EMPLOYEE_NO: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1080#1083'|'#1050#1086#1076
      FieldName = 'DETECT_EMPLOYEE_NO'
    end
    object cdsGridDataEXCEPT_EVENT_CAUSES: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_CAUSES'
      Size = 4000
    end
    object cdsGridDataEXCEPT_EVENT_CONSEQUENCES: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_CONSEQUENCES'
      Size = 4000
    end
    object cdsGridDataPRODUCT_PSD_TOTAL_PRICE_IN_BC: TAbmesFloatField
      FieldName = 'PRODUCT_PSD_TOTAL_PRICE_IN_BC'
    end
    object cdsGridDataIS_SINGLE_RESOLVABLE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_SINGLE_RESOLVABLE'
      Required = True
      DisplayBoolValues = #1062';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_ACTIVATED: TAbmesFloatField
      FieldName = 'IS_ACTIVATED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_CLOSED: TAbmesFloatField
      FieldName = 'IS_CLOSED'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_SUM_DAMAGED_PRICE: TAggregateField
      FieldName = '_SUM_DAMAGED_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'SUM(EXCEPT_EVENT_TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    Left = 184
    Top = 0
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1080' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103
    end
    inherited actFilter: TAction
      Visible = True
    end
    inherited actDelDetailRecord: TAction
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
    end
    inherited actEditDetailRecord: TAction
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
    end
    object actExceptEventTaskDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080
      ImageIndex = 98
      OnExecute = actExceptEventTaskDocExecute
      OnUpdate = actExceptEventTaskDocUpdate
    end
    object actExceptEventTaskDeptDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1058#1055
      ImageIndex = 98
      OnExecute = actExceptEventTaskDeptDocExecute
      OnUpdate = actExceptEventTaskDeptDocUpdate
    end
    object actExceptEventTaskEmployeeDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
      ImageIndex = 98
      OnExecute = actExceptEventTaskEmployeeDocExecute
      OnUpdate = actExceptEventTaskEmployeeDocUpdate
    end
    object actInsertRootOrChildDamage: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actInsertRootOrChildDamageExecute
      OnUpdate = actInsertRootOrChildDamageUpdate
    end
    object actInsertRootDamage: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1042#1098#1079#1083#1086#1074#1086' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1042#1098#1079#1083#1086#1074#1086' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077
      ImageIndex = 4
      OnExecute = actInsertRootDamageExecute
      OnUpdate = actInsertRootDamageUpdate
    end
    object actExceptEventDamageProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1059#1054#1073
      ImageIndex = 98
      OnExecute = actExceptEventDamageProductDocExecute
      OnUpdate = actExceptEventDamageProductDocUpdate
    end
    object actExceptEventDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      ImageIndex = 98
      OnExecute = actExceptEventDocExecute
      OnUpdate = actExceptEventDocUpdate
    end
    object actExceptEventProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1059#1054#1073' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      ImageIndex = 98
      OnExecute = actExceptEventProductDocExecute
      OnUpdate = actExceptEventProductDocUpdate
    end
    object actStartMoving: TAction
      GroupIndex = 2
      Hint = #1053#1072#1095#1072#1083#1086' '#1085#1072' '#1087#1088#1077#1084#1077#1089#1090#1074#1072#1085#1077
      ImageIndex = 121
      OnExecute = actStartMovingExecute
      OnUpdate = actStartMovingUpdate
    end
    object actFinishMoving: TAction
      Hint = #1055#1088#1077#1084#1077#1089#1090#1074#1072#1085#1077
      ImageIndex = 123
      OnExecute = actFinishMovingExecute
      OnUpdate = actFinishMovingUpdate
    end
    object actMakeRoot: TAction
      Hint = #1055#1088#1077#1084#1077#1089#1090#1080' '#1082#1072#1090#1086' '#1082#1086#1088#1077#1085
      ImageIndex = 124
      OnExecute = actMakeRootExecute
      OnUpdate = actMakeRootUpdate
    end
    object actCopyProductNoToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' id '#1094#1080#1092#1088#1086#1074' '#1085#1072' '#1059#1054#1073' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      ShortCut = 16451
      OnExecute = actCopyProductNoToClipboardExecute
      OnUpdate = actCopyProductNoToClipboardUpdate
    end
    object actOrgTaskProposalDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1077#1082#1090
      ImageIndex = 98
      OnExecute = actOrgTaskProposalDocExecute
      OnUpdate = actOrgTaskProposalDocUpdate
    end
    object actShowOrgTaskProposal: TAction
      Caption = #1055#1088#1086#1077#1082#1090'...'
      Hint = #1055#1088#1086#1077#1082#1090
      ImageIndex = 151
      OnExecute = actShowOrgTaskProposalExecute
      OnUpdate = actShowOrgTaskProposalUpdate
    end
    object actSetOrgTaskProposal: TAction
      Caption = #1057#1074#1098#1088#1079#1074#1072#1085#1077' '#1089' '#1055#1088#1086#1077#1082#1090'...'
      Hint = #1057#1074#1098#1088#1079#1074#1072#1085#1077' '#1089' '#1055#1088#1086#1077#1082#1090
      OnExecute = actSetOrgTaskProposalExecute
      OnUpdate = actSetOrgTaskProposalUpdate
    end
    object actExceptEventDeptDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1058#1055' '#1085#1072' '#1042#1098#1079#1085#1080#1082#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      ImageIndex = 98
      OnExecute = actExceptEventDeptDocExecute
      OnUpdate = actExceptEventDeptDocUpdate
    end
    object actShowCausedExceptEvents: TAction
      Caption = #1053#1054' - '#1057#1083#1077#1076#1089#1090#1074#1080#1103'...'
      Hint = #1053#1054' - '#1057#1083#1077#1076#1089#1090#1074#1080#1103
      ImageIndex = 37
      OnExecute = actShowCausedExceptEventsExecute
      OnUpdate = actShowCausedExceptEventsUpdate
    end
    object actShowCauseExceptEvents: TAction
      Caption = #1053#1054' - '#1055#1088#1080#1095#1080#1085#1080'...'
      Hint = #1053#1054' - '#1055#1088#1080#1095#1080#1085#1080
      ImageIndex = 36
      OnExecute = actShowCauseExceptEventsExecute
      OnUpdate = actShowCauseExceptEventsUpdate
    end
    object actShowCauseExceptEvent: TAction
      ImageIndex = 101
      OnExecute = actShowCauseExceptEventExecute
      OnUpdate = actShowCauseExceptEventUpdate
    end
    object actShowConsequenceExceptEvent: TAction
      ImageIndex = 101
      OnExecute = actShowConsequenceExceptEventExecute
      OnUpdate = actShowConsequenceExceptEventUpdate
    end
    object actDetachExceptEvents: TAction
      ImageIndex = 11
      OnExecute = actDetachExceptEventsExecute
      OnUpdate = actDetachExceptEventsUpdate
    end
    object actAttachExceptEventsAsCause: TAction
      Hint = #1047#1072#1082#1072#1095#1072#1085#1077' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1090#1077' '#1053#1054' '#1082#1072#1090#1086' '#1055#1088#1080#1095#1080#1085#1080' '#1079#1072'...'
      ImageIndex = 154
      OnExecute = actAttachExceptEventsAsCauseExecute
      OnUpdate = actAttachExceptEventsAsCauseUpdate
    end
    object actAttachExceptEventsAsConsequence: TAction
      Hint = #1047#1072#1082#1072#1095#1072#1085#1077' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1090#1077' '#1053#1054' '#1082#1072#1090#1086' '#1057#1083#1077#1076#1089#1090#1074#1080#1103' '#1086#1090'...'
      ImageIndex = 154
      OnExecute = actAttachExceptEventsAsConsequenceExecute
      OnUpdate = actAttachExceptEventsAsConsequenceUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    object pdsGridDataParamsMIN_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_STATE_CODE'
    end
    object pdsGridDataParamsMAX_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_STATE_CODE'
    end
    object pdsGridDataParamsEXCEPT_EVENT_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'EXCEPT_EVENT_NO'
    end
    object pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'CREATE_BEGIN_DATE'
    end
    object pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'CREATE_END_DATE'
    end
    object pdsGridDataParamsEXCEPT_EVENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076
      FieldName = 'EXCEPT_EVENT_TYPE_CODE'
    end
    object pdsGridDataParamsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1093#1074#1072#1090
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object pdsGridDataParams_EXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EXCEPT_EVENT_LEVEL_NAME'
      LookupDataSet = cdsExceptEventLevels
      LookupKeyFields = 'EXCEPT_EVENT_LEVEL_CODE'
      LookupResultField = 'EXCEPT_EVENT_LEVEL_NAME'
      KeyFields = 'EXCEPT_EVENT_LEVEL_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      DisplayLabel = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1077#1085' '#1054#1087#1077#1088#1072#1085#1090
      FieldName = 'PRC_CONCRETE_OP_CODE'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '#1087#1086' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField
      FieldName = 'ALL_FILTERED_PRODUCTS'
      ProviderFlags = []
    end
    object pdsGridDataParamsDETECT_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1058#1055
      FieldName = 'DETECT_DEPT_CODE'
    end
    object pdsGridDataParamsHAS_GENERATOR: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1044#1074#1080#1078#1077#1085#1080#1077
      FieldName = 'HAS_GENERATOR'
    end
    object pdsGridDataParamsOMG_PRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1054#1055#1042' - '#1055#1088#1086#1094#1077#1089
      FieldName = 'OMG_PRODUCTION_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsOMG_SALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1054#1055#1042' - '#1058#1055' '#1043#1083'.'
      FieldName = 'OMG_SALE_BRANCH_CODE'
    end
    object pdsGridDataParams_OMG_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OMG_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'OMG_SALE_BRANCH_CODE'
      Size = 46
      Lookup = True
    end
    object pdsGridDataParamsOMG_SALE_NO: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1054#1055#1042' - No'
      FieldName = 'OMG_SALE_NO'
    end
    object pdsGridDataParamsOMG_SALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1054#1055#1042' - '#1042#1080#1076
      FieldName = 'OMG_SALE_TYPE_CODE'
    end
    object pdsGridDataParams_OMG_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OMG_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'OMG_SALE_TYPE_CODE'
      Size = 3
      Lookup = True
    end
    object pdsGridDataParamsOMG_BEGIN_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = 
        #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1054#1055#1042' - '#1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - ' +
        #1054#1090
      FieldName = 'OMG_BEGIN_PRIORITY_CODE'
    end
    object pdsGridDataParamsOMG_END_PRIORITY_CODE: TAbmesFloatField
      DisplayLabel = 
        #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1054#1055#1042' - '#1054#1089#1085'. '#1055#1088#1080#1086#1088#1080#1090#1077#1090' - ' +
        #1044#1086
      FieldName = 'OMG_END_PRIORITY_CODE'
    end
    object pdsGridDataParamsOMG_OM_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = 
        #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - ID '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1044#1074#1080#1078#1077#1085#1080#1077 +
        ' - '#1058#1055' '#1043#1083'.'
      FieldName = 'OMG_OM_BRANCH_CODE'
    end
    object pdsGridDataParams_OMG_OM_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OMG_OM_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'OMG_OM_BRANCH_CODE'
      Size = 46
      Lookup = True
    end
    object pdsGridDataParamsOMG_OM_NO: TAbmesFloatField
      DisplayLabel = 
        #1059#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - ID '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1044#1074#1080#1078#1077#1085#1080#1077 +
        ' - No'
      FieldName = 'OMG_OM_NO'
    end
    object pdsGridDataParamsCTRL_DEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055' '#1079#1072' '#1055#1088#1077#1086#1076#1086#1083#1103#1074#1072#1085#1077
      FieldName = 'CTRL_DEPT_CODE'
    end
    object pdsGridDataParamsCTRL_MAIN_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1043#1083#1072#1074#1077#1085' '#1054#1090#1075#1086#1074#1086#1088#1085#1080#1082
      FieldName = 'CTRL_MAIN_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsDAMAGES_NORMALIZED_STATE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1074#1083#1072#1076#1103#1074#1072#1085#1077
      FieldName = 'DAMAGES_NORMALIZED_STATE'
    end
    object pdsGridDataParamsDAMAGES_CONFIRM_STATE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1055#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1077
      FieldName = 'DAMAGES_CONFIRM_STATE'
    end
    object pdsGridDataParamsDMG_RESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'DMG_RESOLVE_PLAN_BEGIN_DATE'
    end
    object pdsGridDataParamsDMG_RESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1042#1088#1084#1048#1085#1090' '#1079#1072' '#1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'DMG_RESOLVE_PLAN_END_DATE'
    end
    object pdsGridDataParamsMIN_DMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1042#1088#1084#1048#1085#1090' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'MIN_DMG_RESOLVE_WORKDAYS_LEFT'
    end
    object pdsGridDataParamsMAX_DMG_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1042#1088#1084#1048#1085#1090' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'MAX_DMG_RESOLVE_WORKDAYS_LEFT'
    end
    object pdsGridDataParamsDMG_RESOLVE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1080#1090#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'DMG_RESOLVE_BEGIN_DATE'
    end
    object pdsGridDataParamsDMG_RESOLVE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1054#1090#1095#1080#1090#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'DMG_RESOLVE_END_DATE'
    end
    object pdsGridDataParamsIS_FILTERED_BY_DAMAGES: TAbmesFloatField
      DisplayLabel = ' '#1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1086' '#1055#1086#1088#1072#1078#1077#1085#1080#1077
      FieldName = 'IS_FILTERED_BY_DAMAGES'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
    end
    object pdsGridDataParams_EE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EE_DAMAGE_PROCESS_TYPE_NAME'
      LookupDataSet = cdsExceptEventDamageProcessTypes
      LookupKeyFields = 'EE_DAMAGE_PROCESS_TYPE_CODE'
      LookupResultField = 'EE_DAMAGE_PROCESS_TYPE_NAME'
      KeyFields = 'EE_DAMAGE_PROCESS_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsMLL_PRODUCTION_ORDER_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1042' - '#1055#1088#1086#1094#1077#1089
      FieldName = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
    end
    object pdsGridDataParamsMLL_SALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1042' - '#1058#1055' '#1043#1083'.'
      FieldName = 'MLL_SALE_BRANCH_CODE'
    end
    object pdsGridDataParams_MLL_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MLL_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'MLL_SALE_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParamsMLL_SALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1042' - No'
      FieldName = 'MLL_SALE_NO'
    end
    object pdsGridDataParamsMLL_SALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1042' - '#1042#1080#1076
      FieldName = 'MLL_SALE_TYPE_CODE'
    end
    object pdsGridDataParams_MLL_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MLL_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'MLL_SALE_TYPE_CODE'
      Lookup = True
    end
    object pdsGridDataParamsDEL_DELIVERY_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1044' - '#1058#1080#1087
      FieldName = 'DEL_DELIVERY_DEAL_TYPE_CODE'
    end
    object pdsGridDataParamsDEL_DCD_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1044' - '#1058#1055' '#1043#1083'.'
      FieldName = 'DEL_DCD_BRANCH_CODE'
    end
    object pdsGridDataParams_DEL_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEL_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'DEL_DCD_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParamsDEL_DCD_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1044' - '#1055#1044#1044' No'
      FieldName = 'DEL_DCD_CODE'
    end
    object pdsGridDataParamsDEL_DELIVERY_PROJECT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1044' - '#1054#1055#1044' No'
      FieldName = 'DEL_DELIVERY_PROJECT_CODE'
    end
    object pdsGridDataParamsSHP_SALE_DEAL_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1055' - '#1058#1080#1087
      FieldName = 'SHP_SALE_DEAL_TYPE_CODE'
    end
    object pdsGridDataParamsSHP_SALE_BRANCH_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1055' - '#1058#1055' '#1043#1083'.'
      FieldName = 'SHP_SALE_BRANCH_CODE'
    end
    object pdsGridDataParams_SHP_SALE_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHP_SALE_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'SHP_SALE_BRANCH_CODE'
      Size = 50
      Lookup = True
    end
    object pdsGridDataParamsSHP_SALE_NO: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1055' - '#1054#1055#1055' No'
      FieldName = 'SHP_SALE_NO'
    end
    object pdsGridDataParamsSHP_SALE_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1055' - '#1042#1080#1076
      FieldName = 'SHP_SALE_TYPE_CODE'
    end
    object pdsGridDataParams_SHP_SALE_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHP_SALE_TYPE_ABBREV'
      LookupDataSet = cdsSaleTypes
      LookupKeyFields = 'SALE_TYPE_CODE'
      LookupResultField = 'SALE_TYPE_ABBREV'
      KeyFields = 'SHP_SALE_TYPE_CODE'
      Lookup = True
    end
    object pdsGridDataParamsSHP_SALE_SHIPMENT_NO: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1054#1055#1055' - '#1056#1072#1079#1082#1083'. '#8470
      FieldName = 'SHP_SALE_SHIPMENT_NO'
    end
    object pdsGridDataParamsEE_DMG_PROCESS_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1054#1074#1083#1072#1076#1103#1074#1072#1085#1077' '#1085#1072' '#1042#1077#1088#1080#1078#1085#1080' '#1055#1086#1088#1072#1078#1077#1085#1080#1103' - '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'EE_DMG_PROCESS_PRODUCT_CODE'
    end
    object pdsGridDataParamsTASKS_RESOLVED_STATE: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1055#1088#1077#1091#1089#1090#1072#1085#1086 +
        #1074#1103#1074#1072#1085#1077
      FieldName = 'TASKS_RESOLVED_STATE'
    end
    object pdsGridDataParamsTASKS_CONFIRM_STATE: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1055#1086#1090#1074#1098#1088#1078#1076#1077 +
        #1085#1080#1077
      FieldName = 'TASKS_CONFIRM_STATE'
    end
    object pdsGridDataParamsRESOLVE_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1055#1088#1077#1091#1089#1090'. - '#1053#1072#1095#1072#1083#1086
      FieldName = 'RESOLVE_PLAN_BEGIN_DATE'
    end
    object pdsGridDataParamsRESOLVE_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1055#1088#1077#1091#1089#1090'. - '#1050#1088#1072#1081
      FieldName = 'RESOLVE_PLAN_END_DATE'
    end
    object pdsGridDataParamsMIN_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1055#1088#1077#1091#1089#1090'. - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'MIN_RESOLVE_WORKDAYS_LEFT'
    end
    object pdsGridDataParamsMAX_RESOLVE_WORKDAYS_LEFT: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1055#1088#1077#1091#1089#1090'. - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'MAX_RESOLVE_WORKDAYS_LEFT'
    end
    object pdsGridDataParamsRESOLVE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1085#1072 +
        ' '#1054#1090#1095#1080#1090#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'RESOLVE_BEGIN_DATE'
    end
    object pdsGridDataParamsRESOLVE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1085#1072 +
        ' '#1054#1090#1095#1080#1090#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'RESOLVE_END_DATE'
    end
    object pdsGridDataParamsIS_FILTERED_BY_TASKS: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1060#1080#1083#1090#1088#1080#1088#1072#1085 +
        #1077' '#1087#1086' '#1057#1098#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' '#1055#1072#1082#1077#1090' '#1086#1090' '#1052#1077#1088#1082#1080
      FieldName = 'IS_FILTERED_BY_TASKS'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsMIN_TASK_STATE_CODE: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1057#1090#1072#1090#1080#1089' - ' +
        #1054#1090
      FieldName = 'MIN_TASK_STATE_CODE'
    end
    object pdsGridDataParamsMAX_TASK_STATE_CODE: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1057#1090#1072#1090#1091#1089' - ' +
        #1044#1086
      FieldName = 'MAX_TASK_STATE_CODE'
    end
    object pdsGridDataParamsTASK_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1044#1072#1090#1072' '#1060#1080#1085#1072#1083' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'TASK_PLAN_BEGIN_DATE'
    end
    object pdsGridDataParamsTASK_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1044#1072#1090#1072' '#1060#1080#1085#1072#1083' - '#1050#1088#1072#1081
      FieldName = 'TASK_PLAN_END_DATE'
    end
    object pdsGridDataParamsMIN_TASK_WORKDAYS_LEFT: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1044#1072#1090#1072' '#1060#1080#1085#1072#1083' - '#1056#1077#1079#1077#1088#1074' - '#1054#1090
      FieldName = 'MIN_TASK_WORKDAYS_LEFT'
    end
    object pdsGridDataParamsMAX_TASK_WORKDAYS_LEFT: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1042#1088#1084#1048#1085#1090' '#1079#1072 +
        ' '#1044#1072#1090#1072' '#1060#1080#1085#1072#1083' - '#1056#1077#1079#1077#1088#1074' - '#1044#1086
      FieldName = 'MAX_TASK_WORKDAYS_LEFT'
    end
    object pdsGridDataParamsTASK_DEPT_CODE: TAbmesFloatField
      DisplayLabel = 
        #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1058#1055' - '#1056#1077#1072#1083 +
        #1080#1079#1072#1090#1086#1088' '#1085#1072' '#1052#1077#1088#1082#1080
      FieldName = 'TASK_DEPT_CODE'
    end
    object pdsGridDataParamsTASK_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'TASK_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsEXCEPT_EVENT_TASK_HAS_PROBLEMS: TAbmesFloatField
      DisplayLabel = #1055#1088#1077#1091#1089#1090#1072#1085#1086#1074#1103#1074#1072#1085#1077' '#1044#1077#1081#1089#1090#1074#1080#1077#1090#1086' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1055#1088#1086#1073#1083#1077#1084#1080
      FieldName = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
    end
    object pdsGridDataParamsORG_TASK_PROPOSAL_NO: TAbmesFloatField
      DisplayLabel = #1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072' - ID '#1055#1088#1086#1077#1082#1090
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object pdsGridDataParamsOTP_CREATE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'OTP_CREATE_BEGIN_DATE'
    end
    object pdsGridDataParamsOTP_CREATE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1088#1077#1076#1086#1090#1074#1088#1072#1090#1103#1074#1072#1085#1077' '#1085#1072' '#1041#1098#1076#1077#1097#1072' '#1055#1086#1103#1074#1072' - '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'OTP_CREATE_END_DATE'
    end
    object pdsGridDataParamsCAUSED_EXCEPT_EVENT_NO: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1055#1088#1080#1095#1080#1085#1072' '#1079#1072' ID '#1053#1054' No'
      FieldName = 'CAUSED_EXCEPT_EVENT_NO'
    end
    object pdsGridDataParamsCAUSE_EXCEPT_EVENT_NO: TAbmesFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1053#1077#1076#1086#1087#1091#1089#1090#1080#1084#1086' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1077' - '#1057#1083#1077#1076#1089#1090#1074#1080#1077' '#1086#1090' ID '#1053#1054' No'
      FieldName = 'CAUSE_EXCEPT_EVENT_NO'
    end
    object pdsGridDataParamsEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_EXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EXCEPT_EVENT_GEN_TYPE_NAME'
      LookupDataSet = cdsExceptEventGenTypes
      LookupKeyFields = 'EXCEPT_EVENT_GEN_TYPE_CODE'
      LookupResultField = 'EXCEPT_EVENT_GEN_TYPE_NAME'
      KeyFields = 'EXCEPT_EVENT_GEN_TYPE_CODE'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object pdsGridDataParamsOM_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OM_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsOM_CODE: TAbmesFloatField
      FieldName = 'OM_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSHIPMENT_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSHIPMENT_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SHIPMENT_OBJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsML_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsML_OBJECT_CODE: TAbmesFloatField
      FieldName = 'ML_OBJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsDELIVERY_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsDELIVERY_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_OBJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsDCD_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsDCD_OBJECT_CODE: TAbmesFloatField
      FieldName = 'DCD_OBJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsDELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsS_REQUEST_BRANCH_CODE: TAbmesFloatField
      FieldName = 'S_REQUEST_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_S_REQUEST_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_S_REQUEST_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'S_REQUEST_BRANCH_CODE'
      ProviderFlags = []
      Size = 46
      Lookup = True
    end
    object pdsGridDataParamsS_REQUEST_NO: TAbmesFloatField
      FieldName = 'S_REQUEST_NO'
      ProviderFlags = []
    end
    object pdsGridDataParamsS_REQUEST_LINE_NO: TAbmesFloatField
      FieldName = 'S_REQUEST_LINE_NO'
      ProviderFlags = []
    end
    object pdsGridDataParamsD_DCD_BRANCH_CODE: TAbmesFloatField
      FieldName = 'D_DCD_BRANCH_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParams_D_DCD_BRANCH_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_D_DCD_BRANCH_IDENTIFIER'
      LookupDataSet = cdsBranches
      LookupKeyFields = 'BRANCH_CODE'
      LookupResultField = 'BRANCH_IDENTIFIER'
      KeyFields = 'D_DCD_BRANCH_CODE'
      ProviderFlags = []
      Size = 46
      Lookup = True
    end
    object pdsGridDataParamsD_DCD_CODE: TAbmesFloatField
      FieldName = 'D_DCD_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsD_DELIVERY_PROJECT_CODE: TAbmesFloatField
      FieldName = 'D_DELIVERY_PROJECT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsCOMPANY_CODE: TAbmesFloatField
      FieldName = 'COMPANY_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsEXCEPT_EVENT_IS_CAUSE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_IS_CAUSE'
    end
    object pdsGridDataParamsEXCEPT_EVENT_IS_CAUSED: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_IS_CAUSED'
    end
    object pdsGridDataParamsDETECT_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DETECT_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsSINGLE_RESOLVABLE: TAbmesFloatField
      FieldName = 'SINGLE_RESOLVABLE'
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conExceptEvents
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_DAMAGES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ML_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_PRODUCTION_ORDER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MLL_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DELIVERY_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DCD_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEL_DELIVERY_PROJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DAMAGE_PROCESS_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIPMENT_OBJECT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_DEAL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_BRANCH_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHP_SALE_SHIPMENT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EE_DMG_PROCESS_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMPANY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvExceptEventDamages'
    BeforeOpen = cdsDetailBeforeOpen
    AfterOpen = cdsDetailAfterOpen
    BeforeClose = cdsDetailBeforeClose
    Top = 512
    object cdsDetailEXCEPT_EVENT_DAMAGE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_DAMAGE_CODE'
    end
    object cdsDetailFULL_NO: TAbmesWideStringField
      FieldName = 'FULL_NO'
      Size = 250
    end
    object cdsDetailFORMATED_FULL_NO: TAbmesWideStringField
      FieldName = 'FORMATED_FULL_NO'
      Size = 250
    end
    object cdsDetailEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
    object cdsDetailPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsDetailLOCAL_NO: TAbmesFloatField
      FieldName = 'LOCAL_NO'
    end
    object cdsDetailSTATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATE_CODE'
      OnGetText = cdsDetailSTATE_CODEGetText
    end
    object cdsDetailCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsDetailEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NAME'
      Size = 100
    end
    object cdsDetailPRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PRODUCT_QUANTITY'
      DisplayFormat = '0.##'
    end
    object cdsDetailDAMAGE_WORKDAYS: TAbmesFloatField
      FieldName = 'DAMAGE_WORKDAYS'
    end
    object cdsDetailPROCESS_IDENTIFIER: TAbmesWideStringField
      FieldName = 'PROCESS_IDENTIFIER'
      Size = 100
    end
    object cdsDetailPROCESS_PRODUCT_NO: TAbmesFloatField
      FieldName = 'PROCESS_PRODUCT_NO'
    end
    object cdsDetailPROCESS_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PROCESS_PRODUCT_NAME'
      Size = 100
    end
    object cdsDetailPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsDetailPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsDetailPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDetailPLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_BEGIN_DATE'
      OnGetText = cdsDetailPLAN_BEGIN_DATEGetText
    end
    object cdsDetailPLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_END_DATE'
    end
    object cdsDetailPROCESS_PRODUCT_QUANTITY: TAbmesFloatField
      FieldName = 'PROCESS_PRODUCT_QUANTITY'
      DisplayFormat = '0.##'
    end
    object cdsDetailPROCESS_PRODUCT_MEASURE: TAbmesWideStringField
      FieldName = 'PROCESS_PRODUCT_MEASURE'
      Size = 5
    end
    object cdsDetailDAMAGED_PRICE: TAbmesFloatField
      FieldName = 'DAMAGED_PRICE'
      DisplayFormat = '0,'
    end
    object cdsDetailSATISFIES_FILTER: TAbmesFloatField
      FieldName = 'SATISFIES_FILTER'
      FieldValueType = fvtBoolean
    end
  end
  inherited dsDetail: TDataSource
    Top = 512
  end
  object cdsExceptEventTasks: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <
      item
        DataType = ftFloat
        Name = 'IS_FILTERED_BY_TASKS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TASK_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_TASK_WORKDAYS_LEFT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_TASK_HAS_PROBLEMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TASK_DEPTS_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXCEPT_EVENT_CODE'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'prvExceptEventTasks'
    BeforeOpen = cdsExceptEventTasksBeforeOpen
    AfterOpen = cdsExceptEventTasksAfterOpen
    AfterCancel = cdsDetailAfterCancel
    OnReconcileError = cdsDetailReconcileError
    Top = 544
    object cdsExceptEventTasksEXCEPT_EVENT_TASK_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TASK_CODE'
    end
    object cdsExceptEventTasksSTATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATE_CODE'
      OnGetText = cdsExceptEventTasksSTATE_CODEGetText
    end
    object cdsExceptEventTasksEXCEPT_EVENT_TASK_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_TASK_NO'
    end
    object cdsExceptEventTasksCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsExceptEventTasksTASK_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'TASK_REAL_WORKDAYS'
    end
    object cdsExceptEventTasksDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsExceptEventTasksDEPT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_BRANCH_CODE'
    end
    object cdsExceptEventTasksDEPT_DOC_CODE: TAbmesFloatField
      FieldName = 'DEPT_DOC_CODE'
    end
    object cdsExceptEventTasksDEPT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'DEPT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTasksEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
    object cdsExceptEventTasksEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsExceptEventTasksEMPLOYEE_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_BRANCH_CODE'
    end
    object cdsExceptEventTasksEMPLOYEE_DOC_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_DOC_CODE'
    end
    object cdsExceptEventTasksEMPLOYEE_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EMPLOYEE_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTasksDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 2000
    end
    object cdsExceptEventTasksDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsExceptEventTasksDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsExceptEventTasksHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTasksPLAN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_DATE'
    end
    object cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTERED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_PROBLEMS_ENCOUNTERED'
      OnGetText = cdsExceptEventTasksHAS_PROBLEMS_ENCOUNTEREDGetText
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTasksTASK_WORKDAYS_LEFT: TAbmesFloatField
      FieldName = 'TASK_WORKDAYS_LEFT'
    end
    object cdsExceptEventTasksCLOSE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CLOSE_DATE'
    end
    object cdsExceptEventTasksIS_ANNULED: TAbmesFloatField
      FieldName = 'IS_ANNULED'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTasksSATISFIES_FILTER: TAbmesFloatField
      FieldName = 'SATISFIES_FILTER'
      FieldValueType = fvtBoolean
    end
    object cdsExceptEventTasksEE_TASK_RESOLVE_TYPE_SHOW_NAME: TAbmesWideStringField
      FieldName = 'EE_TASK_RESOLVE_TYPE_SHOW_NAME'
      Size = 208
    end
  end
  object dsExceptEventTasks: TDataSource
    DataSet = cdsExceptEventTasks
    Left = 32
    Top = 544
  end
  object pmInsertExceptEventDamage: TPopupMenu
    Left = 32
    Top = 584
    object N1: TMenuItem
      Action = actInsertDetailRecord
    end
    object N2: TMenuItem
      Action = actInsertRootDamage
    end
  end
  object ilExceptEventDamages: TImageList
    Left = 112
    Top = 518
    Bitmap = {
      494C010104000800140010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003939390000000000000000000000
      0000181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000844A
      4A00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000844A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00DEDEDE00BDB5AD00C6BDAD00BDB5AD00B5B5AD00DEDEDE00FFFF
      FF00000000000000000000000000000000003939390000000000000000003939
      390031313100DEDEDE00ADB5B500ADBDB500ADBDB500ADB5B500DEDEDE00E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00DEDEDE00BDB5AD00C6BDAD00C6B5AD00B5B5AD006B3939000000
      FF00844A4A000000000000000000000000000000000000000000000000000000
      0000F7F7F700DEDEDE00ADB5B500ADBDB500ADBDB500ADB5B5006B3939000000
      FF00844A4A00000000000000000000000000000000000000000000000000EFEF
      EF00CEBDAD00E7942900FFBD3100FFC63900FFC63900FFB53100CE842900E7E7
      DE00FFFFFF000000000000000000000000000000000000000000FFFFFF00D6D6
      D600394A42001084520029EF9C0031EFA50031EFA50029EF9C0021B57300DEE7
      E700D6D6D600000000000000000000000000000000000000000000000000EFEF
      EF00CEBDAD00EF9C2900FFC63100FFCE3900FFCE3900734A08000000FF001010
      FF000000FF00844A4A0000000000000000000000000000000000FFFFFF00D6D6
      D600ADC6BD0021C67B0029EF9C0031EFA50031EFA500734A08000000FF001010
      FF000000FF00844A4A0000000000000000000000000000000000F7F7F700DECE
      BD00FFAD3100FFCE5A0018100800FFE78400FFE78400FFDE7300FFC65200FF9C
      2900DED6C600FFFFFF0000000000000000000000000000000000E7E7E700BDD6
      CE00189C5A001852390063FFBD0073FFC60073FFC60063FFBD0042F7A5000000
      0000000000003131310000000000000000000000000000000000F7F7F700E7CE
      BD00FFAD3100FFD65A00FFE77B00FFEF8C006B3939000000FF000000FF000000
      FF000000FF000000FF00844A4A00000000000000000000000000E7E7E700BDD6
      CE0029EF8C004AF7AD0063FFBD0073FFC6006B3939000000FF000000FF000000
      FF000000FF000000FF00844A4A00000000000000000000000000C6B5A500F79C
      3100FFC66B007B734A0008080800FFEFA500FFEFA500FFEF9C00FFDE8C00FFBD
      5A00E78C2100CEC6C600000000000000000000000000000000009CBDAD0029D6
      84004AD694000818100084FFC6008CFFCE008CFFCE0084FFC600214A39000808
      0800000000002931310000000000000000000000000000000000CEB5A500FF9C
      3100FFCE6B00FFEF9400FFF7A5006B3939006B3939006B3939000000FF000000
      FF000808FF00844A4A00844A4A00844A4A0000000000000000009CBDAD0029D6
      84005AF7AD007BFFBD0084FFC6006B3939006B3939006B3939000000FF000000
      FF000808FF00844A4A00844A4A00844A4A0000000000F7F7F700D6843100FFAD
      4A00FFCE7B000808080029211000AD945A00FFDE8C00FFDE8C00FFDE8C00FFCE
      7300F79C3100B57B4200000000000000000000000000F7F7F70029B5730042D6
      94006BEFAD00183129005AC694007BFFBD007BFFBD0073FFBD00000000004ABD
      840029CE8400429C7300000000000000000000000000FFFFFF00D68C3100FFAD
      4A00FFD68400FFE79400FFE79400FFE79400FFE794006B3939000000FF000000
      FF000000FF00844A4A00000000000000000000000000F7F7F70029B5730042D6
      94006BEFAD0073F7BD007BFFBD007BFFBD007BFFBD006B3939000000FF000000
      FF000000FF00844A4A00000000000000000000000000BDB5AD00CE731800FFA5
      4A009C733900080808008C6B3900735A3100FFC66B00FFC66B00FFC66B00FFBD
      6300EF9C3900B5631000DEDEDE000000000000000000ADBDB50010AD630042D6
      8C005AE7A50031845A00296B4A005AEFAD005AEFAD00215239000821180052E7
      9C0031CE8400089C5200DEDEDE000000000000000000BDB5AD006B393900844A
      4A00844A4A00844A4A00844A4A00FFCE7300FFCE73006B3939000000FF000000
      FF000000FF00844A4A00DEDEDE000000000000000000ADBDB5006B393900844A
      4A00844A4A00844A4A00844A4A005AEFAD005AEFAD006B3939000000FF000000
      FF000000FF00844A4A00DEDEDE000000000000000000A5947B00BD6B1000EF94
      3100181000006B421800E794390018100000FFAD4200FFA54200FFA54200F79C
      3900DE842100AD630800BDB5AD0000000000000000007B9C8C0010A55A0029C6
      7B0031D6840029AD6B000831180039DE8C0039DE8C00000000002194630031CE
      840021BD730008945200ADB5B5000000000000000000A5947B006B3939000000
      FF000000FF000000FF00844A4A00FFAD4200FFAD42006B3939000000FF000000
      FF000000FF00844A4A00BDB5AD0000000000000000007B9C8C006B3939000000
      FF000000FF000000FF00844A4A0039DE8C0039DE8C006B3939000000FF000000
      FF000000FF00844A4A00ADB5B50000000000000000009C8C7300AD630800945A
      180000000000EF942900F794290031210800BD732100EF942900EF942900E78C
      2900CE7B1800A55A0800B5ADA5000000000000000000739484000894520021BD
      730021C67B0029C67B000010080021B57300105A31000010080029C67B0021C6
      730018AD6300088C4A00A5B5AD0000000000000000009C8C73006B3939000000
      FF000000FF000000FF00844A4A00FF9C3100FF9C31006B3939000000FF000000
      FF000000FF00844A4A00B5ADA5000000000000000000739484006B3939000000
      FF000000FF000000FF00844A4A0029CE7B0029CE7B006B3939000000FF000000
      FF000000FF00844A4A00A5B5AD000000000000000000ADA59400A55A10002110
      080052391800EFA55200EFA552006B4A2100845A2900EFA55200E79C5200E79C
      5200CE8439008C520800CECEC600000000000000000094ADA500088C4A0042B5
      840042C6840042C68C00185A3900216B4A00080808002973520042C6840042BD
      840031AD7300087B4200C6CECE000000000000000000ADA594006B3939000000
      FF000000FF000000FF00844A4A00F7AD5200F7AD52006B3939006B3939005A42
      29006B393900844A4A00CECEC600000000000000000094ADA5006B3939000000
      FF000000FF000000FF00844A4A0042CE8C0042CE8C006B3939006B3939005A42
      29006B393900844A4A00C6CECE000000000000000000E7E7E7006B3908000000
      0000E7B57300EFB57300EFB57300BD8C5A0031291800EFB57B00EFB57300E7AD
      7300C68C520084522100000000000000000000000000E7E7E7000873420063BD
      8C0063C6940063C69C0042846300102118000808080063CE9C0063C6940063C6
      940042A57B0018734A00000000000000000000000000E7E7E7006B3939000000
      FF000000FF000000FF00844A4A00F7BD7B00F7BD7B00F7BD7B00F7BD7B00EFB5
      7B00CE94520084522100000000000000000000000000E7E7E7006B3939000000
      FF000000FF000000FF00844A4A0063CE9C0063CE9C0063CE9C0063C6940063C6
      940042A57B0018734A0000000000000000003939390000000000080808003929
      1800EFC69400EFC69400EFC69400F7C6940018101000D6AD8400EFC69400E7BD
      9400A5733900A59C940000000000000000000000000000000000638C7B0052A5
      7B007BC6A5007BCEA5007BCEA50008080800396352007BCEA5007BC6A5007BC6
      A500318C630094A59C0000000000000000006B3939006B3939006B3939000000
      FF000000FF000000FF00844A4A00844A4A00844A4A00F7CE9C00F7CE9C00EFC6
      9C00AD7B4200AD9C940000000000000000006B3939006B3939006B3939000000
      FF000000FF000000FF00844A4A00844A4A00844A4A007BCEA5007BC6A5007BC6
      A500318C630094A59C000000000000000000393939000000000000000000CEBD
      AD00D6B58C00EFCEAD00F7CEAD00F7D6AD00524239009C8C7300EFCEAD00C6A5
      7B008C735A000000000000000000000000000000000000000000F7F7F700397B
      5A0073B5940094CEAD0094CEAD000810100094CEB50094CEB50094C6AD0063A5
      8C005A846B00000000000000000000000000000000006B3939000000FF000000
      FF000000FF000000FF000000FF00844A4A00FFD6B500F7D6B500F7D6B500CEA5
      7B008C735A00000000000000000000000000000000006B3939000000FF000000
      FF000000FF000000FF000000FF00844A4A0094CEB50094CEB50094C6AD0063A5
      8C005A846B00000000000000000000000000000000000000000000000000F7F7
      F7009C846B00AD845A00DEBD9C00EFCEB5009C8C730042393100A58452009C8C
      7B0000000000000000000000000000000000000000000000000000000000F7F7
      F700638C7B004A94730084BD9C009CC6AD0094C6B5007BB59C004A8C6B007B94
      8C000000000000000000000000000000000000000000000000006B3939000000
      FF000000FF000000FF00844A4A00F7D6BD00F7D6BD00DEBD9C00AD845A009C8C
      7B000000000000000000000000000000000000000000000000006B3939000000
      FF000000FF000000FF00844A4A009CC6AD0094C6B5007BB59C004A8C6B007B94
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00A59C8C0094846B009484730031292100313131000000
      0000000000003939390000000000000000000000000000000000000000000000
      000000000000DEDEDE008CA594006B8C7B006B8C7B009CADA500E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000005A42
      29000000FF00735A3900A59C8C0094846B0094847300ADA59C00EFE7E7000000
      0000000000000000000000000000000000000000000000000000000000005A42
      29000000FF00735A39008CA594006B8C7B006B8C7B009CADA500E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800000000000000
      0000000000003939390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000844A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000844A4A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF07FFFFEFFFEFF00F000FF007F007
      E007C007E003C003C003C003C001C001C003C003C000C0008003800380038003
      8001800180018001800180018001800180018001800180018001800180018001
      80038003800380030003C003000300030007C00780078007E00FE00FC00FC00F
      F803F81FE01FE01FFF83FFFFF7FFF7FF00000000000000000000000000000000
      000000000000}
  end
  object cdsExceptEventDamageProcessTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <>
    ProviderName = 'prvExceptEventDamgeProcessTypes'
    Left = 272
    Top = 192
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_CODE: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_CODE'
    end
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NO: TAbmesFloatField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NO'
    end
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_NAME'
      Size = 100
    end
    object cdsExceptEventDamageProcessTypesEE_DAMAGE_PROCESS_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EE_DAMAGE_PROCESS_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Params = <>
    ProviderName = 'prvBranches'
    Left = 208
    Top = 224
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 46
    end
  end
  object cdsSaleTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleTypes'
    Left = 240
    Top = 224
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
  object cdsExceptEventLevels: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <>
    ProviderName = 'prvExceptEventLevels'
    Left = 240
    Top = 256
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_CODE'
    end
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_LEVEL_NO'
    end
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_NAME'
      Size = 100
    end
    object cdsExceptEventLevelsEXCEPT_EVENT_LEVEL_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_LEVEL_ABBREV'
      Size = 100
    end
  end
  object cdsOrgTaskProposalCode: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 312
    object cdsOrgTaskProposalCodeORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
      OnChange = cdsOrgTaskProposalCodeORG_TASK_PROPOSAL_CODEChange
    end
    object cdsOrgTaskProposalCodeOTP_BIND_DATE: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_DATE'
    end
    object cdsOrgTaskProposalCodeOTP_BIND_TIME: TAbmesSQLTimeStampField
      FieldName = 'OTP_BIND_TIME'
    end
    object cdsOrgTaskProposalCodeOTP_BIND_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OTP_BIND_EMPLOYEE_CODE'
    end
  end
  object cdsExceptEventGenTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conExceptEvents
    Params = <>
    ProviderName = 'prvExceptEventGenTypes'
    ReadOnly = True
    Left = 272
    Top = 224
    object cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_CODE'
    end
    object cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NO: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_NO'
    end
    object cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_NAME: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_NAME'
      Size = 100
    end
    object cdsExceptEventGenTypesEXCEPT_EVENT_GEN_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'EXCEPT_EVENT_GEN_TYPE_ABBREV'
      Size = 100
    end
  end
  object cdsExceptEventsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 296
    object cdsExceptEventsParamsMAX_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_STATE_CODE'
    end
    object cdsExceptEventsParamsCAUSE_EXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'CAUSE_EXCEPT_EVENT_NO'
    end
    object cdsExceptEventsParamsCAUSED_EXCEPT_EVENT_NO: TAbmesFloatField
      FieldName = 'CAUSED_EXCEPT_EVENT_NO'
    end
    object cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_IS_CAUSE'
    end
    object cdsExceptEventsParamsEXCEPT_EVENT_IS_CAUSED: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_IS_CAUSED'
    end
  end
  object cdsShowExceptEventParam: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 24
    object cdsShowExceptEventParamEXCEPT_EVENT_CODE: TAbmesFloatField
      FieldName = 'EXCEPT_EVENT_CODE'
    end
  end
end
