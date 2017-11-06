inherited fmOrganisationTaskProposals: TfmOrganisationTaskProposals
  ActiveControl = grdProjects
  Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
  ClientHeight = 530
  ClientWidth = 1018
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 495
    Width = 1018
    inherited pnlOKCancel: TPanel
      Left = 750
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 661
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 929
      Visible = False
    end
    object btnInsertRecord: TBitBtn
      Left = 8
      Top = 2
      Width = 121
      Height = 25
      Action = actInserProposalOrProposalCycle
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
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
      TabOrder = 3
    end
    object btnEditRecord: TBitBtn
      Left = 136
      Top = 2
      Width = 121
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
      TabOrder = 4
    end
    object btnEngineeringOrder: TBitBtn
      Left = 280
      Top = 2
      Width = 75
      Height = 25
      Action = actEngineeringOrder
      Caption = #1054#1055#1048#1056'...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object btnProductionOrder: TBitBtn
      Left = 360
      Top = 2
      Width = 75
      Height = 25
      Action = actProductionOrder
      Caption = #1054#1055#1042'...'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
    end
  end
  inherited pnlMain: TPanel
    Width = 1018
    Height = 495
    inherited pnlGrid: TPanel
      Width = 1002
      Height = 479
      inherited pnlNavigator: TPanel
        Width = 1002
        inherited pnlFilterButton: TPanel
          Left = 144
        end
        inherited navData: TDBColorNavigator
          Width = 144
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 168
          Width = 505
          AutoSize = False
          object semBeforeOrgTaskProposalDoc: TToolButton
            Left = 56
            Top = 0
            Width = 8
            Caption = 'semBeforeOrgTaskProposalDoc'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object tlbDocs: TToolBar
            Left = 64
            Top = 0
            Width = 393
            Height = 24
            ButtonWidth = 36
            Images = dmMain.ilDocs
            TabOrder = 0
            object lblOrgTaskProposalDoc: TLabel
              Left = 0
              Top = 0
              Width = 43
              Height = 22
              Caption = ' '#1055#1088#1086#1077#1082#1090' '
              Layout = tlCenter
            end
            object btnOrgTaskProposalDoc: TToolButton
              Left = 43
              Top = 0
              Action = actOrgTaskProposalDoc
            end
            object sepBeforeProductDoc: TToolButton
              Left = 79
              Top = 0
              Width = 8
              Caption = 'sepBeforeProductDoc'
              ImageIndex = 1
              Style = tbsSeparator
            end
            object lblProductDoc: TLabel
              Left = 87
              Top = 0
              Width = 74
              Height = 22
              Caption = ' '#1059#1054#1073' - '#1055#1088#1086#1077#1082#1090' '
              Layout = tlCenter
            end
            object brnProductDoc: TToolButton
              Left = 161
              Top = 0
              Action = actProductDoc
            end
            object sepBeforeEngineeringOrderDoc: TToolButton
              Left = 197
              Top = 0
              Width = 8
              Caption = 'sepBeforeEngineeringOrderDoc'
              ImageIndex = 99
              Style = tbsSeparator
            end
            object lblEngineeringOrderDoc: TLabel
              Left = 205
              Top = 0
              Width = 37
              Height = 22
              Caption = ' '#1054#1055#1048#1056' '
              Layout = tlCenter
            end
            object btnEngineeringOrderDoc: TToolButton
              Left = 242
              Top = 0
              Action = actEngineeringOrderDoc
            end
            object sepBeforeProdOrderDoc: TToolButton
              Left = 278
              Top = 0
              Width = 8
              Caption = 'sepBeforeProdOrderDoc'
              ImageIndex = 99
              Style = tbsSeparator
            end
            object lblProdOrderDoc: TLabel
              Left = 286
              Top = 0
              Width = 29
              Height = 22
              Caption = ' '#1054#1055#1042' '
              Layout = tlCenter
            end
            object btnProdOrderDoc: TToolButton
              Left = 315
              Top = 0
              Action = actProdOrderDoc
            end
          end
        end
      end
      object pcGrids: TPageControl [1]
        Left = 0
        Top = 24
        Width = 1002
        Height = 455
        ActivePage = tsProjects
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        object tsProjects: TTabSheet
          BorderWidth = 4
          Caption = #1055#1088#1086#1077#1082#1090#1080
          object grdProjects: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 986
            Height = 419
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
            VTitleMargin = 14
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnGetCellParams = grdProjectsGetCellParams
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'OTP_STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'ORG_TASK_PROPOSAL_NO'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|No'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1062#1082#1083
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_DATE'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'DESCRIPTION'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1072
                Width = 174
              end
              item
                Alignment = taCenter
                Color = 15532031
                EditButtons = <>
                FieldName = 'P_DOC_EMPTINESS_REQ_CODE'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1052' '#1048' '#1048' '#1054
                Width = 16
              end
              item
                Alignment = taCenter
                Color = 15532031
                EditButtons = <>
                FieldName = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1048#1048#1054
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_BEGIN_DAYS_LEFT'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1088#1079#1088#1074' '#1057#1090#1088#1090
                Width = 30
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = '_PROJECT_PLAN_BEGIN_DATE'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1079#1072' '#1055#1088#1086#1077#1082#1090#1072
                Width = 123
              end
              item
                EditButtons = <>
                FieldName = '_PROJECT_PLAN_END_DATE'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1079#1072' '#1055#1088#1086#1077#1082#1090#1072' - '#1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
                Visible = False
                Width = 20
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCTION_END_DAYS_LEFT'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1088#1079#1088#1074' '#1060#1085#1083
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_PROPOSAL_DATE'
                Footers = <>
                Tag = 7
                Title.Caption = #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1055#1083#1072#1085'|'#1044#1072#1090#1072
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'PLAN_PROPOSAL_EMPLOYEE_ABBREV'
                Footers = <>
                Tag = 7
                Title.Caption = #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1055#1083#1072#1085'|'#1057#1083#1091#1078'.'
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'RESULT_DATE'
                Footers = <>
                Tag = 7
                Title.Caption = #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090'|'#1044#1072#1090#1072
                Width = 31
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
                Font.Charset = SYMBOL_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Symbol'
                Font.Style = []
                Footers = <>
                Tag = 7
                Title.Caption = #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1080#1076
                Width = 33
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NAME'
                Footers = <>
                Tag = 7
                Title.Caption = 
                  #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054 +
                  #1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCT_NO'
                Footers = <>
                Tag = 7
                Title.Caption = 
                  #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090'|'#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054 +
                  #1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Tag = 7
                Title.Caption = 
                  #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090'|'#1058#1055', '#1059#1087#1088'. '#1055#1088 +
                  '.'
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'MANAGER_EMPLOYEE_ABBREV'
                Footers = <>
                Tag = 7
                Title.Caption = 
                  #1047#1072#1088#1072#1078#1076#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1055#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077' '#1079#1072' '#1055#1088#1086#1077#1082#1090'|'#1056#1098#1082#1086'- '#1074#1086#1076#1080'-' +
                  ' '#1090#1077#1083
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'EO_STATE_CODE'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1054#1055#1048#1056'|'#1057#1090#1072#1090
                Visible = False
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_ORDER_IDENTIFIER'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1054#1055#1048#1056'|ID '#1054#1055#1048#1056
                Visible = False
                Width = 91
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_REAL_WORKDAYS'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1054#1055#1048#1056'|'#1055#1077#1088' '#1056#1083
                Visible = False
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_REAL_BEGIN_DATE'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1054#1090#1095'. '#1044#1072#1090#1072' '#1057#1090#1088#1090
                Visible = False
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_BEGIN_DAYS_LEFT'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1088#1079#1088#1074' '#1057#1090#1088#1090
                Visible = False
                Width = 31
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
                Visible = False
                Width = 123
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_PLAN_END_DATE'
                Footers = <>
                Title.Caption = 
                  #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - ' +
                  #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
                Visible = False
                Width = 20
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_END_DAYS_LEFT'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1088#1079#1088#1074' '#1060#1085#1083
                Visible = False
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'ENGINEERING_REAL_END_DATE'
                Footers = <>
                Tag = 9
                Title.Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1054#1090#1095'. '#1044#1072#1090#1072' '#1060#1085#1083
                Visible = False
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'ML_STATE_CODE'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1054#1055#1042'|'#1057#1090#1072#1090
                Visible = False
                Width = 26
              end
              item
                EditButtons = <>
                FieldName = 'SALE_IDENTIFIER'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1054#1055#1042'|ID '#1054#1055#1042
                Visible = False
                Width = 91
              end
              item
                EditButtons = <>
                FieldName = 'SALE_PRODUCTION_WORKDAYS'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1054#1055#1042'|'#1055#1077#1088' '#1056#1083
                Visible = False
                Width = 25
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCTION_REAL_BEGIN_DATE'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1054#1090#1095'. '#1044#1072#1090#1072' '#1057#1090#1088#1090
                Visible = False
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCTION_BEGIN_DAYS_LEFT'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1088#1079#1088#1074' '#1057#1090#1088#1090
                Visible = False
                Width = 31
              end
              item
                Color = 16115403
                EditButtons = <>
                FieldName = 'PRODUCTION_PLAN_BEGIN_DATE'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
                Visible = False
                Width = 123
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCTION_PLAN_END_DATE'
                Footers = <>
                Title.Caption = 
                  #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1055#1083#1072#1085#1086#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' -' +
                  ' '#1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
                Visible = False
                Width = 20
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCTION_END_DAYS_LEFT'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1088#1079#1088#1074' '#1060#1085#1083
                Visible = False
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'PRODUCTION_REAL_END_DATE'
                Footers = <>
                Tag = 11
                Title.Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' '#1085#1072' '#1055#1088#1086#1077#1082#1090'|'#1042#1088#1077#1084#1077#1074#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1080'|'#1054#1090#1095'. '#1044#1072#1090#1072' '#1060#1085#1083
                Visible = False
                Width = 31
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsInvestmentPrices: TTabSheet
          BorderWidth = 4
          Caption = #1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
          ImageIndex = 1
          object grdInvestmentPrices: TAbmesDBGrid
            Left = 0
            Top = 0
            Width = 986
            Height = 419
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
            VTitleMargin = 23
            OnDblClick = grdDataDblClick
            OnDrawColumnCell = grdDataDrawColumnCell
            OnSortMarkingChanged = grdDataSortMarkingChanged
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ORG_TASK_PROPOSAL_NO'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|No'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1062#1082#1083
                Width = 27
              end
              item
                EditButtons = <>
                FieldName = 'DESCRIPTION'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1054#1087#1080#1089#1072#1085#1080#1077
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PROJECT_TOTAL_PRICE'
                Footer.FieldName = 'SUM_PROJECT_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1088#1080#1085#1094#1080#1087#1085#1086'|'#1054#1073#1097#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_ENG_PROJECT_PRICE_P'
                Footer.FieldName = 'AVG_ENG_PROJECT_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1088#1080#1085#1094#1080#1087#1085#1086'|%'#1057#1079
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PROD_PROJECT_PRICE_P'
                Footer.FieldName = 'AVG_PROD_PROJECT_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1088#1080#1085#1094#1080#1087#1085#1086'|%'#1056#1083
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_BOI_TOTAL_PRICE'
                Footer.FieldName = 'SUM_BOI_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1051#1080#1084#1080#1090#1085#1086'|'#1054#1073#1097#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_DELIVERY_BOI_PRICE_P'
                Footer.FieldName = 'AVG_DELIVERY_BOI_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 2
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1051#1080#1084#1080#1090#1085#1086'|%'#1044#1089#1090
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_EXPENSE_BOI_PRICE_P'
                Footer.FieldName = 'AVG_EXPENSE_BOI_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 2
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1051#1080#1084#1080#1090#1085#1086'|%'#1056#1079#1093
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_ENG_BOI_PRICE_P'
                Footer.FieldName = 'AVG_ENG_BOI_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 3
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1051#1080#1084#1080#1090#1085#1086'|%'#1057#1079
                Visible = False
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PROD_BOI_PRICE_P'
                Footer.FieldName = 'AVG_PROD_BOI_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 3
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1051#1080#1084#1080#1090#1085#1086'|%'#1056#1083
                Visible = False
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
                Footer.FieldName = 'SUM_BOIO_PLAN_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1083#1072#1085#1086#1074#1086'|'#1054#1073#1097#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
                Footer.FieldName = 'AVG_DELIVERY_BOIO_PLAN_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 2
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1083#1072#1085#1086#1074#1086'|%'#1044#1089#1090
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
                Footer.FieldName = 'AVG_EXPENSE_BOIO_PLAN_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 2
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1083#1072#1085#1086#1074#1086'|%'#1056#1079#1093
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
                Footer.FieldName = 'AVG_ENG_BOIO_PLAN_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 3
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1083#1072#1085#1086#1074#1086'|%'#1057#1079
                Visible = False
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
                Footer.FieldName = 'AVG_PROD_BOIO_PLAN_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 3
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1055#1083#1072#1085#1086#1074#1086'|%'#1056#1083
                Visible = False
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
                Footer.FieldName = 'SUM_BOIO_ACCOUNT_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090#1085#1086'|'#1054#1073#1097#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
                Footer.FieldName = 'AVG_DELIVERY_BOIO_ACC_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 2
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090#1085#1086'|%'#1044#1089#1090
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
                Footer.FieldName = 'AVG_EXPENSE_BOIO_ACC_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 2
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090#1085#1086'|%'#1056#1079#1093
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_ENG_BOIO_ACC_PRICE_P'
                Footer.FieldName = 'AVG_ENG_BOIO_ACC_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 3
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090#1085#1086'|%'#1057#1079
                Visible = False
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PROD_BOIO_ACC_PRICE_P'
                Footer.FieldName = 'AVG_PROD_BOIO_ACC_PRICE_P'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 3
                Title.Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1085#1072' '#1048#1085#1074#1077#1089#1090#1080#1094#1080#1086#1085#1085#1080#1103' '#1055#1086#1090#1086#1082'|'#1054#1090#1095#1077#1090#1085#1086'|%'#1056#1083
                Visible = False
                Width = 32
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PRICE_DEV_PROJECT'
                Footer.FieldName = 'SUM_PRICE_DEV_PROJECT'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 4
                Title.Caption = #1053#1077#1090#1085#1086' '#1048#1079#1084#1077#1085#1077#1085#1080#1077'|'#1055#1088#1080#1085#1094#1080#1087#1085#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PRICE_DEV_BOI'
                Footer.FieldName = 'SUM_PRICE_DEV_BOI'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 4
                Title.Caption = #1053#1077#1090#1085#1086' '#1048#1079#1084#1077#1085#1077#1085#1080#1077'|'#1051#1080#1084#1080#1090#1085#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PRICE_DEV_BOIO_PLAN'
                Footer.FieldName = 'SUM_PRICE_DEV_BOIO_PLAN'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 4
                Title.Caption = #1053#1077#1090#1085#1086' '#1048#1079#1084#1077#1085#1077#1085#1080#1077'|'#1055#1083#1072#1085#1086#1074#1086
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
                Footer.FieldName = 'SUM_PRICE_DEV_BOIO_ACCOUNT'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 4
                Title.Caption = #1053#1077#1090#1085#1086' '#1048#1079#1084#1077#1085#1077#1085#1080#1077'|'#1054#1090#1095#1077#1090#1085#1086
              end
              item
                EditButtons = <>
                FieldName = 'APPLY_PRICE'
                Footer.FieldName = 'SUM_APPLY_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 5
                Title.Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103'|'#1055#1088#1080#1085#1094#1080#1087#1085#1086
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_APPLY_BOI_TOTAL_PRICE'
                Footer.FieldName = 'SUM_APPLY_BOI_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 5
                Title.Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103'|'#1051#1080#1084#1080#1090#1085#1086
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
                Footer.FieldName = 'SUM_APPLY_BOIO_PL_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 5
                Title.Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103'|'#1055#1083#1072#1085#1086#1074#1086
                Visible = False
              end
              item
                EditButtons = <>
                FieldName = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
                Footer.FieldName = 'SUM_APPLY_BOIO_ACC_TOTAL_PRICE'
                Footer.ValueType = fvtFieldValue
                Footers = <>
                Tag = 5
                Title.Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077' '#1074' '#1045#1082#1089#1087#1083#1086#1072#1090#1072#1094#1080#1103'|'#1054#1090#1095#1077#1090#1085#1086
                Visible = False
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 479
        Width = 1002
        Height = 0
        UseMultiTitle = True
        Visible = False
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ORG_TASK_PROPOSAL_NO'
            Footers = <>
          end>
      end
      object tlbToggleColumnsForInvestmentsTab: TToolBar
        Left = 819
        Top = 22
        Width = 183
        Height = 22
        Align = alNone
        AutoSize = True
        TabOrder = 3
        object btnPercentsMode: TSpeedButton
          Tag = 2
          Left = 0
          Top = 0
          Width = 103
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Caption = '% '#1044#1089#1090','#1056#1079#1093' / '#1057#1079','#1056#1083
          Flat = True
        end
        object sepToggleApplyAndPriceDeviations: TToolButton
          Left = 103
          Top = 0
          Width = 8
          Style = tbsSeparator
        end
        object btnToggleApplyAndPriceDeviations: TSpeedButton
          Tag = 4
          Left = 111
          Top = 0
          Width = 72
          Height = 22
          AllowAllUp = True
          GroupIndex = 2
          Caption = #1042#1098#1074#1077#1078#1076#1072#1085#1077
          Flat = True
        end
      end
      object tlbToggleColumnsForProjectsTab: TToolBar
        Left = 800
        Top = 22
        Width = 202
        Height = 22
        Align = alNone
        AutoSize = True
        Caption = 'tlbToggleColumnButtons'
        TabOrder = 4
        object btnProposalColumns: TSpeedButton
          Tag = 6
          Left = 0
          Top = 0
          Width = 65
          Height = 22
          GroupIndex = 3
          Down = True
          Caption = #1047#1072#1088#1072#1078#1076#1072#1085#1077
          Flat = True
        end
        object btnEngineeringColumns: TSpeedButton
          Tag = 8
          Left = 65
          Top = 0
          Width = 65
          Height = 22
          GroupIndex = 3
          Caption = #1057#1098#1079#1088#1103#1074#1072#1085#1077
          Flat = True
        end
        object btnProductionColumns: TSpeedButton
          Tag = 10
          Left = 130
          Top = 0
          Width = 72
          Height = 22
          GroupIndex = 3
          Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
          Flat = True
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 208
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conOrganisationTasks
    FieldDefs = <
      item
        Name = 'ORG_TASK_PROPOSAL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ORG_TASK_PROPOSAL_NO'
        DataType = ftFloat
      end
      item
        Name = 'ORG_TASK_PROPOSAL_CYCLE_NO'
        DataType = ftFloat
      end
      item
        Name = 'CREATE_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'P_DOC_EMPTINESS_REQ_CODE'
        DataType = ftFloat
      end
      item
        Name = 'P_DOC_IS_COMPLETE'
        DataType = ftFloat
      end
      item
        Name = 'P_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'P_UNAPPROVED_ACTIVE_DI_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'PLAN_PROPOSAL_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'RESULT_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NO'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_NAME'
        DataType = ftWideString
        Size = 100
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
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'EO_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_REAL_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_ORDER_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_OBJECT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'ML_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'SALE_PRODUCTION_WORKDAYS'
        DataType = ftFloat
      end
      item
        Name = 'PROD_ORDER_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROD_ORDER_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'OTP_STATE_CODE'
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
        Name = 'ANNUL_EMPLOYEE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PROPOSAL_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'PROD_ORDER_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'PLAN_PROPOSAL_EMPLOYEE_ABBREV'
        DataType = ftWideString
        Size = 54
      end
      item
        Name = 'EO_DOC_BRANCH_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EO_DOC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'EO_HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROJECT_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_PROJECT_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_PROJECT_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'APPLY_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_BOI_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_DELIVERY_BOI_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_EXPENSE_BOI_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_BOI_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_BOI_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_APPLY_BOI_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_BOIO_ACC_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_BOIO_ACC_PRICE_P'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PRICE_DEV_PROJECT'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PRICE_DEV_BOI'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PRICE_DEV_BOIO_PLAN'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_ORDER_IDENTIFIER'
        DataType = ftWideString
        Size = 87
      end
      item
        Name = 'SALE_IDENTIFIER'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'ENGINEERING_PLAN_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENGINEERING_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENGINEERING_BEGIN_DAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_END_DAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'ENGINEERING_REAL_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENGINEERING_REAL_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCTION_PLAN_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCTION_PLAN_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCTION_BEGIN_DAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTION_END_DAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'PRODUCTION_REAL_BEGIN_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRODUCTION_REAL_END_DATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRJ_ENG_PROJECT_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_PROJECT_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_DELIVERY_BOI_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_EXPENSE_BOI_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_BOI_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_BOI_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_DELIVERY_BOIO_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_EXPENSE_BOIO_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_BOIO_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_BOIO_PLAN_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_DELIVERY_BOIO_ACC_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_EXPENSE_BOIO_ACC_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_ENG_BOIO_ACC_PRICE'
        DataType = ftFloat
      end
      item
        Name = 'PRJ_PROD_BOIO_ACC_PRICE'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_PROPOSAL_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PROPOSAL_STATE_CODE'
        ParamType = ptInput
        Value = '13'
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
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PLAN_PROPOSAL_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'RESULT_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RESULT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_CYCLES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_CYCLES'
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
        Name = 'HAS_PRODUCTION_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_PRODUCTION_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PO_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PO_STATE_CODE'
        ParamType = ptInput
        Value = '7'
      end
      item
        DataType = ftFloat
        Name = 'HAS_PRODUCTION_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_ENGINEERING_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'HAS_ENGINEERING_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_EO_STATE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_EO_STATE_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'HAS_ENGINEERING_ORDER'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'ENGINEERING_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'PRODUCTION_PLAN_END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_FUNC_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_KNOWL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_ACTION_CODE'
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
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MANAGER_EMPLOYEE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOrganisationTaskProposals'
    OnCalcFields = cdsGridDataCalcFields
    Top = 208
    object cdsGridDataORG_TASK_PROPOSAL_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CODE'
    end
    object cdsGridDataORG_TASK_PROPOSAL_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object cdsGridDataORG_TASK_PROPOSAL_CYCLE_NO: TAbmesFloatField
      FieldName = 'ORG_TASK_PROPOSAL_CYCLE_NO'
    end
    object cdsGridDataCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsGridDataP_DOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'P_DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsGridDataP_DOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsGridDataP_DOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'P_DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataP_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_ACTIVE_DI_COUNT'
    end
    object cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsGridDataP_UNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsGridDataP_UNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'P_UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsGridDataDESCRIPTION: TAbmesWideStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsGridDataPLAN_PROPOSAL_DATE: TAbmesSQLTimeStampField
      FieldName = 'PLAN_PROPOSAL_DATE'
    end
    object cdsGridDataRESULT_DATE: TAbmesSQLTimeStampField
      FieldName = 'RESULT_DATE'
    end
    object cdsGridDataORG_TASK_PROP_RESULT_TYPE_CODE: TAbmesFloatField
      FieldName = 'ORG_TASK_PROP_RESULT_TYPE_CODE'
      OnGetText = cdsGridDataORG_TASK_PROP_RESULT_TYPE_CODEGetText
    end
    object cdsGridDataPRODUCT_NO: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'PRODUCT_NO'
    end
    object cdsGridDataPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsGridDataPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsGridDataPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataEO_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'EO_STATE_CODE'
      OnGetText = cdsGridDataEO_STATE_CODEGetText
    end
    object cdsGridDataENGINEERING_REAL_WORKDAYS: TAbmesFloatField
      FieldName = 'ENGINEERING_REAL_WORKDAYS'
    end
    object cdsGridDataENGINEERING_ORDER_CODE: TAbmesFloatField
      FieldName = 'ENGINEERING_ORDER_CODE'
    end
    object cdsGridDataSALE_OBJECT_BRANCH_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_BRANCH_CODE'
    end
    object cdsGridDataSALE_OBJECT_CODE: TAbmesFloatField
      FieldName = 'SALE_OBJECT_CODE'
    end
    object cdsGridDataML_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'ML_STATE_CODE'
      OnGetText = cdsGridDataML_STATE_CODEGetText
    end
    object cdsGridDataSALE_PRODUCTION_WORKDAYS: TAbmesFloatField
      FieldName = 'SALE_PRODUCTION_WORKDAYS'
    end
    object cdsGridDataPROD_ORDER_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_DOC_BRANCH_CODE'
    end
    object cdsGridDataPROD_ORDER_DOC_CODE: TAbmesFloatField
      FieldName = 'PROD_ORDER_DOC_CODE'
    end
    object cdsGridDataOTP_STATE_CODE: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'OTP_STATE_CODE'
      OnGetText = cdsGridDataOTP_STATE_CODEGetText
    end
    object cdsGridDataDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsGridDataDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsGridDataANNUL_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'ANNUL_EMPLOYEE_CODE'
    end
    object cdsGridDataPROPOSAL_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PROPOSAL_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPROD_ORDER_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PROD_ORDER_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPLAN_PROPOSAL_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'PLAN_PROPOSAL_EMPLOYEE_ABBREV'
      Size = 54
    end
    object cdsGridDataEO_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'EO_DOC_BRANCH_CODE'
    end
    object cdsGridDataEO_DOC_CODE: TAbmesFloatField
      FieldName = 'EO_DOC_CODE'
    end
    object cdsGridDataEO_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'EO_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataPRJ_BOIO_PLAN_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_PLAN_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PROJECT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROJECT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_ENG_PROJECT_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_PROJECT_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PROD_PROJECT_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_PROJECT_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataAPPLY_PRICE: TAbmesFloatField
      FieldName = 'APPLY_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_DELIVERY_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_EXPENSE_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_ENG_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PROD_BOI_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_APPLY_BOI_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOI_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_DELIVERY_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_EXPENSE_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_ENG_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PROD_BOIO_PLAN_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_APPLY_BOIO_PL_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_PL_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_BOIO_ACCOUNT_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_BOIO_ACCOUNT_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_DELIVERY_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_EXPENSE_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_ENG_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PROD_BOIO_ACC_PRICE_P: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_APPLY_BOIO_ACC_TOTAL_PRICE: TAbmesFloatField
      FieldName = 'PRJ_APPLY_BOIO_ACC_TOTAL_PRICE'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PRICE_DEV_PROJECT: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_PROJECT'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PRICE_DEV_BOI: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOI'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PRICE_DEV_BOIO_PLAN: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_PLAN'
      DisplayFormat = ',0'
    end
    object cdsGridDataPRJ_PRICE_DEV_BOIO_ACCOUNT: TAbmesFloatField
      FieldName = 'PRJ_PRICE_DEV_BOIO_ACCOUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataENGINEERING_ORDER_IDENTIFIER: TAbmesWideStringField
      FieldName = 'ENGINEERING_ORDER_IDENTIFIER'
      Size = 87
    end
    object cdsGridDataSALE_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SALE_IDENTIFIER'
      Size = 100
    end
    object cdsGridDataENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
      OnGetText = cdsGridDataENGINEERING_PLAN_BEGIN_DATEGetText
    end
    object cdsGridDataENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object cdsGridDataENGINEERING_BEGIN_DAYS_LEFT: TAbmesFloatField
      FieldName = 'ENGINEERING_BEGIN_DAYS_LEFT'
    end
    object cdsGridDataENGINEERING_END_DAYS_LEFT: TAbmesFloatField
      FieldName = 'ENGINEERING_END_DAYS_LEFT'
    end
    object cdsGridDataENGINEERING_REAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_REAL_BEGIN_DATE'
    end
    object cdsGridDataENGINEERING_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'ENGINEERING_REAL_END_DATE'
    end
    object cdsGridDataPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_PLAN_BEGIN_DATE'
      OnGetText = cdsGridDataPRODUCTION_PLAN_BEGIN_DATEGetText
    end
    object cdsGridDataPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_PLAN_END_DATE'
    end
    object cdsGridDataPRODUCTION_BEGIN_DAYS_LEFT: TAbmesFloatField
      FieldName = 'PRODUCTION_BEGIN_DAYS_LEFT'
    end
    object cdsGridDataPRODUCTION_END_DAYS_LEFT: TAbmesFloatField
      FieldName = 'PRODUCTION_END_DAYS_LEFT'
    end
    object cdsGridDataPRODUCTION_REAL_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_REAL_BEGIN_DATE'
    end
    object cdsGridDataPRODUCTION_REAL_END_DATE: TAbmesSQLTimeStampField
      FieldName = 'PRODUCTION_REAL_END_DATE'
    end
    object cdsGridData_PROJECT_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_PROJECT_PLAN_BEGIN_DATE'
      OnGetText = cdsGridData_PROJECT_PLAN_BEGIN_DATEGetText
      Calculated = True
    end
    object cdsGridData_PROJECT_PLAN_END_DATE: TAbmesSQLTimeStampField
      FieldKind = fkCalculated
      FieldName = '_PROJECT_PLAN_END_DATE'
      Calculated = True
    end
    object cdsGridDataPRJ_ENG_PROJECT_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_PROJECT_PRICE'
    end
    object cdsGridDataPRJ_PROD_PROJECT_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_PROJECT_PRICE'
    end
    object cdsGridDataPRJ_DELIVERY_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOI_PRICE'
    end
    object cdsGridDataPRJ_EXPENSE_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOI_PRICE'
    end
    object cdsGridDataPRJ_ENG_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOI_PRICE'
    end
    object cdsGridDataPRJ_PROD_BOI_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOI_PRICE'
    end
    object cdsGridDataPRJ_DELIVERY_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_PLAN_PRICE'
    end
    object cdsGridDataPRJ_EXPENSE_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_PLAN_PRICE'
    end
    object cdsGridDataPRJ_ENG_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_PLAN_PRICE'
    end
    object cdsGridDataPRJ_PROD_BOIO_PLAN_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_PLAN_PRICE'
    end
    object cdsGridDataPRJ_DELIVERY_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_DELIVERY_BOIO_ACC_PRICE'
    end
    object cdsGridDataPRJ_EXPENSE_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_EXPENSE_BOIO_ACC_PRICE'
    end
    object cdsGridDataPRJ_ENG_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_ENG_BOIO_ACC_PRICE'
    end
    object cdsGridDataPRJ_PROD_BOIO_ACC_PRICE: TAbmesFloatField
      FieldName = 'PRJ_PROD_BOIO_ACC_PRICE'
    end
    object cdsGridDataMANAGER_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'MANAGER_EMPLOYEE_ABBREV'
      Size = 54
    end
    object cdsGridDataSUM_PROJECT_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_PROJECT_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PROJECT_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_BOI_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_BOI_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_BOI_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_BOIO_PLAN_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_BOIO_PLAN_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_BOIO_PLAN_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_BOIO_ACCOUNT_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_BOIO_ACCOUNT_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_BOIO_ACCOUNT_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_APPLY_PRICE: TAggregateField
      FieldName = 'SUM_APPLY_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(APPLY_PRICE)'
    end
    object cdsGridDataSUM_APPLY_BOI_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_APPLY_BOI_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_APPLY_BOI_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_APPLY_BOIO_PL_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_APPLY_BOIO_PL_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_APPLY_BOIO_PL_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_APPLY_BOIO_ACC_TOTAL_PRICE: TAggregateField
      FieldName = 'SUM_APPLY_BOIO_ACC_TOTAL_PRICE'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_APPLY_BOIO_ACC_TOTAL_PRICE)'
    end
    object cdsGridDataSUM_PRICE_DEV_PROJECT: TAggregateField
      FieldName = 'SUM_PRICE_DEV_PROJECT'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PRICE_DEV_PROJECT)'
    end
    object cdsGridDataSUM_PRICE_DEV_BOI: TAggregateField
      FieldName = 'SUM_PRICE_DEV_BOI'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PRICE_DEV_BOI)'
    end
    object cdsGridDataSUM_PRICE_DEV_BOIO_PLAN: TAggregateField
      FieldName = 'SUM_PRICE_DEV_BOIO_PLAN'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PRICE_DEV_BOIO_PLAN)'
    end
    object cdsGridDataSUM_PRICE_DEV_BOIO_ACCOUNT: TAggregateField
      FieldName = 'SUM_PRICE_DEV_BOIO_ACCOUNT'
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PRICE_DEV_BOIO_ACCOUNT)'
    end
    object cdsGridDataAVG_ENG_PROJECT_PRICE_P: TAggregateField
      FieldName = 'AVG_ENG_PROJECT_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_ENG_PROJECT_PRICE) / Sum(PRJ_PROJECT_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_PROD_PROJECT_PRICE_P: TAggregateField
      FieldName = 'AVG_PROD_PROJECT_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PROD_PROJECT_PRICE) / Sum(PRJ_PROJECT_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_DELIVERY_BOI_PRICE_P: TAggregateField
      FieldName = 'AVG_DELIVERY_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_DELIVERY_BOI_PRICE) / Sum(PRJ_BOI_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_EXPENSE_BOI_PRICE_P: TAggregateField
      FieldName = 'AVG_EXPENSE_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_EXPENSE_BOI_PRICE) / Sum(PRJ_BOI_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_ENG_BOI_PRICE_P: TAggregateField
      FieldName = 'AVG_ENG_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_ENG_BOI_PRICE) / Sum(PRJ_BOI_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_PROD_BOI_PRICE_P: TAggregateField
      FieldName = 'AVG_PROD_BOI_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PROD_BOI_PRICE) / Sum(PRJ_BOI_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_DELIVERY_BOIO_PLAN_PRICE_P: TAggregateField
      FieldName = 'AVG_DELIVERY_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        'Sum(PRJ_DELIVERY_BOIO_PLAN_PRICE) / Sum(PRJ_BOIO_PLAN_TOTAL_PRIC' +
        'E)'
    end
    object cdsGridDataAVG_EXPENSE_BOIO_PLAN_PRICE_P: TAggregateField
      FieldName = 'AVG_EXPENSE_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        'Sum(PRJ_EXPENSE_BOIO_PLAN_PRICE) / Sum(PRJ_BOIO_PLAN_TOTAL_PRICE' +
        ')'
    end
    object cdsGridDataAVG_ENG_BOIO_PLAN_PRICE_P: TAggregateField
      FieldName = 'AVG_ENG_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_ENG_BOIO_PLAN_PRICE) / Sum(PRJ_BOIO_PLAN_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_PROD_BOIO_PLAN_PRICE_P: TAggregateField
      FieldName = 'AVG_PROD_BOIO_PLAN_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PROD_BOIO_PLAN_PRICE) / Sum(PRJ_BOIO_PLAN_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_DELIVERY_BOIO_ACC_PRICE_P: TAggregateField
      FieldName = 'AVG_DELIVERY_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        'Sum(PRJ_DELIVERY_BOIO_ACC_PRICE) / Sum(PRJ_BOIO_ACCOUNT_TOTAL_PR' +
        'ICE)'
    end
    object cdsGridDataAVG_EXPENSE_BOIO_ACC_PRICE_P: TAggregateField
      FieldName = 'AVG_EXPENSE_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 
        'Sum(PRJ_EXPENSE_BOIO_ACC_PRICE) / Sum(PRJ_BOIO_ACCOUNT_TOTAL_PRI' +
        'CE)'
    end
    object cdsGridDataAVG_ENG_BOIO_ACC_PRICE_P: TAggregateField
      FieldName = 'AVG_ENG_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_ENG_BOIO_ACC_PRICE) / Sum(PRJ_BOIO_ACCOUNT_TOTAL_PRICE)'
    end
    object cdsGridDataAVG_PROD_BOIO_ACC_PRICE_P: TAggregateField
      FieldName = 'AVG_PROD_BOIO_ACC_PRICE_P'
      OnGetText = PricePercentFieldsGetText
      Active = True
      DisplayFormat = ',0'
      Expression = 'Sum(PRJ_PROD_BOIO_ACC_PRICE) / Sum(PRJ_BOIO_ACCOUNT_TOTAL_PRICE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actOrgTaskProposalDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1077#1082#1090
      ImageIndex = 98
      OnExecute = actOrgTaskProposalDocExecute
      OnUpdate = actOrgTaskProposalDocUpdate
    end
    object actProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1059#1054#1073' - '#1055#1088#1086#1077#1082#1090
      ImageIndex = 98
      OnExecute = actProductDocExecute
      OnUpdate = actProductDocUpdate
    end
    object actProdOrderDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1054#1055#1042
      ImageIndex = 98
      OnExecute = actProdOrderDocExecute
      OnUpdate = actProdOrderDocUpdate
    end
    object actEngineeringOrderDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1054#1055#1048#1056
      ImageIndex = 98
      OnExecute = actEngineeringOrderDocExecute
      OnUpdate = actEngineeringOrderDocUpdate
    end
    object actAddOrgTaskProposalCycle: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1085#1086#1074' '#1062#1080#1082#1098#1083' '#1085#1072' '#1047#1072#1088#1072#1078#1076#1072#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1085#1086#1074' '#1062#1080#1082#1098#1083' '#1085#1072' '#1047#1072#1088#1072#1078#1076#1072#1085#1077
      OnExecute = actAddOrgTaskProposalCycleExecute
      OnUpdate = actAddOrgTaskProposalCycleUpdate
    end
    object actEngineeringOrder: TAction
      Caption = #1054#1055#1048#1056'...'
      Hint = #1054#1055#1048#1056
      OnExecute = actEngineeringOrderExecute
      OnUpdate = actEngineeringOrderUpdate
    end
    object actProductionOrder: TAction
      Caption = #1054#1055#1042'...'
      Hint = #1054#1055#1042
      OnExecute = actProductionOrderExecute
      OnUpdate = actProductionOrderUpdate
    end
    object actInserProposalOrProposalCycle: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actInserProposalOrProposalCycleExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 240
    object pdsGridDataParamsMIN_PROPOSAL_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_PROPOSAL_STATE_CODE'
    end
    object pdsGridDataParamsMAX_PROPOSAL_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_PROPOSAL_STATE_CODE'
    end
    object pdsGridDataParamsORG_TASK_PROPOSAL_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'ORG_TASK_PROPOSAL_NO'
    end
    object pdsGridDataParamsCREATE_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'CREATE_BEGIN_DATE'
    end
    object pdsGridDataParamsCREATE_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'CREATE_END_DATE'
    end
    object pdsGridDataParamsENGINEERING_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'ENGINEERING_PLAN_BEGIN_DATE'
    end
    object pdsGridDataParamsENGINEERING_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1057#1098#1079#1088#1103#1074#1072#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'ENGINEERING_PLAN_END_DATE'
    end
    object pdsGridDataParamsPRODUCTION_PLAN_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'PRODUCTION_PLAN_BEGIN_DATE'
    end
    object pdsGridDataParamsPRODUCTION_PLAN_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1055#1083#1072#1085#1086#1074' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103' - '#1050#1088#1072#1081
      FieldName = 'PRODUCTION_PLAN_END_DATE'
    end
    object pdsGridDataParamsHAS_ENGINEERING_ORDER: TAbmesFloatField
      DisplayLabel = #1054#1055#1048#1056
      FieldName = 'HAS_ENGINEERING_ORDER'
    end
    object pdsGridDataParamsMIN_EO_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1048#1056' - '#1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_EO_STATE_CODE'
    end
    object pdsGridDataParamsMAX_EO_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1048#1056' - '#1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_EO_STATE_CODE'
    end
    object pdsGridDataParamsHAS_PRODUCTION_ORDER: TAbmesFloatField
      DisplayLabel = #1054#1055#1042
      FieldName = 'HAS_PRODUCTION_ORDER'
    end
    object pdsGridDataParamsMIN_PO_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1042' - '#1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_PO_STATE_CODE'
    end
    object pdsGridDataParamsMAX_PO_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1054#1055#1042' - '#1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_PO_STATE_CODE'
    end
    object pdsGridDataParamsPLAN_PROPOSAL_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1077#1076#1089#1090#1072#1074#1103#1085#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'PLAN_PROPOSAL_BEGIN_DATE'
    end
    object pdsGridDataParamsPLAN_PROPOSAL_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1055#1088#1077#1076#1089#1090#1072#1074#1103#1085#1077' - '#1050#1088#1072#1081
      FieldName = 'PLAN_PROPOSAL_END_DATE'
    end
    object pdsGridDataParamsPLAN_PROPOSAL_EMPLOYEE_CODE: TAbmesFloatField
      DisplayLabel = #1057#1083#1091#1078#1080#1090#1077#1083
      FieldName = 'PLAN_PROPOSAL_EMPLOYEE_CODE'
    end
    object pdsGridDataParamsRESULT_BEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'RESULT_BEGIN_DATE'
    end
    object pdsGridDataParamsRESULT_END_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1084#1048#1085#1090' '#1085#1072' '#1056#1077#1096#1077#1085#1080#1077' - '#1050#1088#1072#1081
      FieldName = 'RESULT_END_DATE'
    end
    object pdsGridDataParamsRESULT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1056#1077#1096#1077#1085#1080#1077
      FieldName = 'RESULT_TYPE_CODE'
    end
    object pdsGridDataParamsMIN_CYCLES: TAbmesFloatField
      DisplayLabel = #1062#1080#1082#1098#1083' '#1085#1072' '#1079#1072#1088#1072#1078#1076#1072#1085#1077' - '#1054#1090
      FieldName = 'MIN_CYCLES'
    end
    object pdsGridDataParamsMAX_CYCLES: TAbmesFloatField
      DisplayLabel = #1062#1080#1082#1098#1083' '#1085#1072' '#1079#1072#1088#1072#1078#1076#1072#1085#1077' - '#1044#1086
      FieldName = 'MAX_CYCLES'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' - '#1055#1088#1086#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsALL_FILTERED_PRODUCTS: TAbmesFloatField
      FieldName = 'ALL_FILTERED_PRODUCTS'
      ProviderFlags = []
    end
    object pdsGridDataParamsDEPT_CODE: TAbmesFloatField
      DisplayLabel = #1058#1055', '#1059#1087#1088#1072#1074#1083#1103#1074#1072#1097#1086' '#1055#1088#1086#1077#1082#1090#1072
      FieldName = 'DEPT_CODE'
    end
    object pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
      FieldName = 'PRC_FUNC_CODE'
    end
    object pdsGridDataParamsPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
    end
    object pdsGridDataParamsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
    end
    object pdsGridDataParamsPRC_BASE_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_ACTION_CODE'
    end
    object pdsGridDataParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
    end
    object pdsGridDataParamsPRC_CONCRETE_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_ACTION_CODE'
    end
    object pdsGridDataParamsMANAGER_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'MANAGER_EMPLOYEE_CODE'
    end
  end
  inherited dsGridDataParams: TDataSource
    Top = 240
  end
  inherited dsData: TDataSource
    Top = 176
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 176
  end
  object pmAddOrgTaskProposal: TPopupMenu
    Left = 72
    Top = 448
    object miAddOrgTaskProposal: TMenuItem
      Action = actInsertRecord
    end
    object AddOrgTaskProposalCycle: TMenuItem
      Action = actAddOrgTaskProposalCycle
    end
  end
end
