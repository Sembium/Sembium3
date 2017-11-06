inherited fmOrgPrcDataDistribution: TfmOrgPrcDataDistribution
  ActiveControl = nil
  BorderStyle = bsSizeable
  Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1074' '#1057#1080#1089#1090#1077#1084#1072#1090#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072
  ClientHeight = 670
  ClientWidth = 1007
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 635
    Width = 1007
    inherited pnlOKCancel: TPanel
      Left = 739
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 650
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 918
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1007
    Height = 635
    inherited sptDetail: TSplitter
      Top = 354
      Width = 991
    end
    inherited pnlDetailGrid: TPanel
      Top = 357
      Width = 991
      Height = 270
      inherited pnlDetailNavigator: TPanel
        Left = 112
        Top = 64
        Width = 369
        Align = alNone
        Visible = False
        inherited navDetail: TDBColorNavigator
          Width = 97
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 97
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Left = 112
        Top = 88
        Width = 657
        Height = 100
        Align = alNone
      end
      object pcDetail: TPageControl
        Left = 0
        Top = 0
        Width = 991
        Height = 270
        ActivePage = tsDepts
        Align = alClient
        TabOrder = 2
        object tsDepts: TTabSheet
          Caption = #1058#1055' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
          object pnlDeptsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object tlbDeptDoc: TToolBar
              Left = 56
              Top = 0
              Width = 273
              Height = 24
              Align = alLeft
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              TabOrder = 0
              object sepDeptsDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                ImageIndex = 99
                Style = tbsSeparator
              end
              object pnlDeptDoc: TPanel
                Left = 8
                Top = 0
                Width = 49
                Height = 24
                BevelOuter = bvNone
                Caption = #1058#1055
                TabOrder = 0
              end
              object btnDeptDoc: TToolButton
                Left = 57
                Top = 0
                Action = actDeptDoc
              end
              object pnlDeptProductDoc: TPanel
                Left = 93
                Top = 0
                Width = 44
                Height = 24
                BevelOuter = bvNone
                Caption = #1054#1087#1052
                TabOrder = 1
              end
              object btnDeptProductDoc: TToolButton
                Left = 137
                Top = 0
                Action = actDeptProductDoc
              end
            end
            inline frDeptsTreeListExpander: TfrGridTreeListExpanderFrame
              Left = 0
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              Constraints.MaxHeight = 24
              Constraints.MaxWidth = 56
              Constraints.MinHeight = 24
              Constraints.MinWidth = 56
              TabOrder = 1
            end
          end
          object grdDepts: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 218
            Align = alClient
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = dsDetail
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            RowHeight = 19
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            VTitleMargin = 9
            OnDrawColumnCell = grdDeptsDrawColumnCell
            OnGetCellParams = grdDeptsGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'DEPT_NAME'
                Footers = <>
                Title.Caption = #1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 421
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1058#1055'|'#1050#1086#1076
                Width = 99
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsOccupations: TTabSheet
          Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
          ImageIndex = 1
          object grdOccupations: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 218
            Align = alClient
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = dsOccupations
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghExtendVertLines]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            OnDrawColumnCell = grdOccupationsDrawColumnCell
            Columns = <
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'IS_OCCUPIED'
                Footers = <>
                Title.Caption = #1057#1090#1072'- '#1090#1091#1089
                Width = 24
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'IS_MAIN'
                Footers = <>
                Title.Caption = #1042#1080#1076
                Width = 29
              end
              item
                EditButtons = <>
                FieldName = 'OCCUPATION_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 371
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'EMPLOYEE_NAME'
                Footers = <>
                Tag = 3
                Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
                Width = 183
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_EMPLOYEE_DAY_DIFF'
                Footers = <>
                Tag = 3
                Title.Caption = #1057#1083#1091#1078#1080#1090#1077#1083'|'#1056#1079#1088#1074' '#1044#1083'. '#1053#1072#1079#1085'.'
                Width = 51
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_PHASE'
                Footers = <>
                Title.Caption = #1060' '#1072' '#1079' '#1072
                Width = 13
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_LEVEL'
                Footers = <>
                Title.Caption = #1054#1088#1075'. '#1085#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 16
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078'- '#1085#1086#1089#1090#1090#1072
                Width = 47
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_DAY_DIFF'
                Footers = <>
                Title.Caption = #1056#1079#1088#1074' '#1044#1083'.'
                Width = 30
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
          object pnlOccupationsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navOccupations: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 97
              Height = 24
              DataSource = dsOccupations
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbOccupationDoc: TToolBar
              Left = 97
              Top = 0
              Width = 197
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              TabOrder = 1
              object sepOccupationDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Style = tbsSeparator
              end
              object pnlOccupationDoc: TPanel
                Left = 8
                Top = 0
                Width = 65
                Height = 24
                BevelOuter = bvNone
                Caption = #1044#1083#1098#1078#1085#1086#1089#1090
                TabOrder = 0
              end
              object btnOccupationDoc: TToolButton
                Left = 73
                Top = 0
                Action = actOccupationDoc
              end
              object pnlOccupationProductDoc: TPanel
                Left = 109
                Top = 0
                Width = 44
                Height = 24
                BevelOuter = bvNone
                Caption = #1044#1056#1054#1088
                TabOrder = 1
              end
              object btnOccupationProductDoc: TToolButton
                Left = 153
                Top = 0
                Action = actOccupationProductDoc
              end
              object sepOccupations: TToolButton
                Left = 189
                Top = 0
                Width = 8
                ImageIndex = 99
                Style = tbsSeparator
              end
            end
            object btnOccupations: TBitBtn
              Left = 302
              Top = 0
              Width = 155
              Height = 23
              Action = actOccupations
              Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
              TabOrder = 2
            end
            object tlbOccupationButtons: TToolBar
              Left = 959
              Top = 0
              Width = 24
              Height = 24
              Align = alRight
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Images = dmMain.ilActions
              TabOrder = 3
              object btnToggleEmployee: TToolButton
                Tag = 2
                Left = 0
                Top = 0
                Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
                ImageIndex = 62
                Style = tbsCheck
              end
            end
          end
        end
        object tsOrgTaskProposals: TTabSheet
          Caption = #1055#1088#1086#1077#1082#1090#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
          ImageIndex = 2
          object pnlOrgTaskProposalsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navOrgTaskProposals: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 97
              Height = 24
              DataSource = dsOrgTaskProposals
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbProjectDoc: TToolBar
              Left = 97
              Top = 0
              Width = 221
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              TabOrder = 1
              object sepProjectDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Style = tbsSeparator
              end
              object pnlProjectDoc: TPanel
                Left = 8
                Top = 0
                Width = 49
                Height = 24
                BevelOuter = bvNone
                Caption = #1055#1088#1086#1077#1082#1090
                TabOrder = 0
              end
              object btnProjectDoc: TToolButton
                Left = 57
                Top = 0
                Action = actProjectDoc
              end
              object pnlProjectProductDoc: TPanel
                Left = 93
                Top = 0
                Width = 84
                Height = 24
                BevelOuter = bvNone
                Caption = #1059#1054#1073' - '#1055#1088#1086#1077#1082#1090
                TabOrder = 1
              end
              object btnProjectProductDoc: TToolButton
                Left = 177
                Top = 0
                Action = actProjectProductDoc
              end
              object sepOrgTaskProposals: TToolButton
                Left = 213
                Top = 0
                Width = 8
                Caption = 'sepOrgTaskProposals'
                ImageIndex = 99
                Style = tbsSeparator
              end
            end
            object btnOrgTaskProposals: TBitBtn
              Left = 326
              Top = 0
              Width = 131
              Height = 23
              Action = actOrgTaskProposals
              Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080'...'
              TabOrder = 2
            end
          end
          object grdOrgTaskProposals: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 218
            Align = alClient
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = dsOrgTaskProposals
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghExtendVertLines]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            VTitleMargin = 12
            OnDrawColumnCell = grdOrgTaskProposalsDrawColumnCell
            Columns = <
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OTP_STATE_CODE'
                Footers = <>
                Title.Caption = #1057#1090#1072#1090#1091#1089
                Width = 51
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'ORG_TASK_PROPOSAL_NO'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|No'
                Width = 30
              end
              item
                EditButtons = <>
                FieldName = 'DESCRIPTION'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1054#1087#1080#1089#1072#1085#1080#1077
                Width = 400
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'CLOSE_DATE'
                Footers = <>
                Title.Caption = 'ID '#1055#1088#1086#1077#1082#1090'|'#1044#1072#1090#1072' '#1085#1072' '#1055#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077
                Width = 75
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1058#1055' '#1059#1087#1088'. '#1055#1088'.'
                Width = 62
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsProfessions: TTabSheet
          Caption = #1056#1086#1083#1077#1074#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
          ImageIndex = 3
          object pnlProfessionsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navProfessions: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 97
              Height = 24
              DataSource = dsProfessions
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              Flat = True
              TabOrder = 0
            end
            object tlbProfessionDoc: TToolBar
              Left = 97
              Top = 0
              Width = 200
              Height = 24
              Align = alLeft
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              TabOrder = 1
              object sepProfessionDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Style = tbsSeparator
              end
              object pnlProfessionDoc: TPanel
                Left = 8
                Top = 0
                Width = 68
                Height = 24
                BevelOuter = bvNone
                Caption = #1055#1088#1086#1094'. '#1056#1086#1083#1103
                TabOrder = 0
              end
              object btnProfessionDoc: TToolButton
                Left = 76
                Top = 0
                Action = actProfessionDoc
              end
            end
          end
          object grdProfessions: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 218
            Align = alClient
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = dsProfessions
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghIncSearch, dghPreferIncSearch, dghExtendVertLines]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            VTitleMargin = 12
            OnDrawColumnCell = grdOrgTaskProposalsDrawColumnCell
            Columns = <
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'PROFESSION_FULL_NO'
                Footers = <>
                Title.Caption = #1050#1086#1076
                Width = 86
              end
              item
                EditButtons = <>
                FieldName = 'PROFESSION_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 356
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    inherited pnlGrid: TPanel
      Width = 991
      Height = 346
      inherited pnlNavigator: TPanel
        Width = 1001
        Align = alNone
        Visible = False
        inherited pnlFilterButton: TPanel
          Left = 97
        end
        inherited navData: TDBColorNavigator
          Width = 97
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 121
        end
      end
      inherited grdData: TAbmesDBGrid
        Left = 40
        Top = 32
        Width = 882
        Height = 46
        Align = alNone
        BorderStyle = bsNone
        UseMultiTitle = True
        Visible = False
      end
      object pcMaster: TPageControl
        Left = 0
        Top = 0
        Width = 991
        Height = 346
        ActivePage = tsBaseOps
        Align = alClient
        TabOrder = 2
        OnChange = pcMasterChange
        object tsBaseOps: TTabSheet
          Caption = #1042#1086#1083#1077#1074#1086' '#1080' '#1048#1076#1077#1081#1085#1086' '#1055#1088#1086#1089#1090#1088#1072#1085#1089#1090#1074#1086' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072' ('#1042#1048#1055#1057')'
          object pnlBaseOpsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navBaseOps: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 24
              Height = 24
              DataSource = dsGridData
              VisibleButtons = [nbRefresh]
              Align = alLeft
              Flat = True
              TabOrder = 0
              BeforeAction = navBaseOpsBeforeAction
            end
            object pnlBaseOpsFilter: TPanel
              Left = 24
              Top = 0
              Width = 24
              Height = 24
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object btnBaseOpsFilter: TSpeedButton
                Left = 0
                Top = 0
                Width = 24
                Height = 24
                Action = actFilter
                Flat = True
              end
            end
            object tlbBaseOpDoc: TToolBar
              Left = 104
              Top = 0
              Width = 169
              Height = 24
              Align = alLeft
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              TabOrder = 2
              object sepBaseOpsDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                ImageIndex = 99
                Style = tbsSeparator
              end
              object pnlBaseOpDocLabel: TPanel
                Left = 8
                Top = 0
                Width = 45
                Height = 24
                BevelOuter = bvNone
                Caption = #1055#1088#1086#1094#1077#1089
                TabOrder = 0
              end
              object btnBaseOpDoc: TToolButton
                Left = 53
                Top = 0
                Action = actBaseOpDoc
              end
            end
            inline frBaseOpsTreeListExpander: TfrGridTreeListExpanderFrame
              Left = 48
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              Constraints.MaxHeight = 24
              Constraints.MaxWidth = 56
              Constraints.MinHeight = 24
              Constraints.MinWidth = 56
              TabOrder = 3
            end
          end
          object grdBaseOps: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 294
            Align = alClient
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = dsGridData
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            RowHeight = 19
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            VTitleMargin = 9
            OnDrawColumnCell = grdBaseOpsDrawColumnCell
            OnGetCellParams = grdBaseOpsGetCellParams
            Columns = <
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'PRC_OBJECT_SHORT_NAME'
                Footers = <>
                Title.Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 180
              end
              item
                EditButtons = <>
                FieldName = 'PRC_OBJECT_NAME'
                Footers = <>
                Title.Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 244
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'NOT_OCCUPATION_DEPT_COUNT'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1042#1048#1055#1057'|'#1054#1087#1058#1055
                Width = 73
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'NOT_MASTERED_OCCUPATION_COUNT'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1042#1048#1055#1057'|'#1044#1083#1098#1078#1085#1086#1089#1090#1085#1072
                Width = 73
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'NOT_CLOSED_OTP_COUNT'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1042#1048#1055#1057'|'#1055#1088#1086#1077#1082#1090#1085#1072
                Width = 73
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tsConcreteOps: TTabSheet
          Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080' ('#1055#1054#1085#1090')'
          ImageIndex = 1
          object pnlConcreteOpsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object navConcreteOps: TDBColorNavigator
              Left = 0
              Top = 0
              Width = 24
              Height = 24
              DataSource = dsConcreteOps
              VisibleButtons = [nbRefresh]
              Align = alLeft
              Flat = True
              TabOrder = 0
              BeforeAction = navConcreteOpsBeforeAction
            end
            object pnlConcreteOpsFilter: TPanel
              Left = 24
              Top = 0
              Width = 24
              Height = 24
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object btnConcreteOpsFilter: TSpeedButton
                Left = 0
                Top = 0
                Width = 24
                Height = 24
                Action = actFilter
                Flat = True
              end
            end
            object tlbConcreteOpDoc: TToolBar
              Left = 104
              Top = 0
              Width = 89
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              TabOrder = 2
              object sepConcreteOpsDoc: TToolButton
                Left = 0
                Top = 0
                Width = 8
                ImageIndex = 99
                Style = tbsSeparator
              end
              object pnlConcreteOpDoc: TPanel
                Left = 8
                Top = 0
                Width = 45
                Height = 24
                BevelOuter = bvNone
                Caption = #1055#1088#1086#1094#1077#1089
                TabOrder = 0
              end
              object btnConcreteOpDoc: TToolButton
                Left = 53
                Top = 0
                Action = actConcreteOpDoc
              end
            end
            inline frConcreteOpsTreeListExpander: TfrGridTreeListExpanderFrame
              Left = 48
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              Constraints.MaxHeight = 24
              Constraints.MaxWidth = 56
              Constraints.MinHeight = 24
              Constraints.MinWidth = 56
              TabOrder = 3
            end
          end
          object grdConcreteOps: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 294
            Align = alClient
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = dsConcreteOps
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Microsoft Sans Serif'
            FooterFont.Style = []
            Options = [dgTitles, dgIndicator, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            RowHeight = 19
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Microsoft Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.VisibleMode = sbAlwaysShowEh
            VTitleMargin = 9
            OnDrawColumnCell = grdConcreteOpsDrawColumnCell
            OnGetCellParams = grdConcreteOpsGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'PRC_CONCRETE_OP_DISPLAY_NAME'
                Footers = <>
                Title.Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1080' '#1054#1087#1077#1088#1072#1085#1090#1080
                Width = 476
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'NOT_OCCUPATION_DEPT_COUNT'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1054#1085#1090'|'#1054#1087#1058#1055
                Width = 73
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'NOT_MASTERED_OCCUPATION_COUNT'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1054#1085#1090'|'#1044#1083#1098#1078#1085#1086#1089#1090#1085#1072
                Width = 73
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'NOT_CLOSED_OTP_COUNT'
                Footers = <>
                Title.Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1079#1072' '#1055#1054#1085#1090'|'#1055#1088#1086#1077#1082#1090#1085#1072
                Width = 73
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 152
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    FieldDefs = <
      item
        Name = 'PRC_FUNC_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRC_KNOWL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRC_BASE_OP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'PRC_OBJECT_CODE'
        DataType = ftWideString
        Size = 168
      end
      item
        Name = 'PARENT_PRC_OBJECT_CODE'
        DataType = ftWideString
        Size = 250
      end
      item
        Name = 'PRC_OBJECT_NAME'
        DataType = ftWideString
        Size = 400
      end
      item
        Name = 'PRC_OBJECT_SHORT_NAME'
        DataType = ftWideString
        Size = 120
      end
      item
        Name = 'PRC_OBJECT_IMAGE_INDEX'
        DataType = ftFloat
      end
      item
        Name = 'SORT_PRC_OBJECT_NO'
        DataType = ftWideString
        Size = 100
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
        Name = 'DOC_OWNER_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NOT_CLOSED_OTP_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_OTP_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'NOT_OCCUPATION_DEPT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DEPT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'NOT_MASTERED_OCCUPATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_OCCUPATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = '1_PRC_DISTRIB_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = '1_PRC_DISTRIBUTION_COUNT'
        DataType = ftFloat
      end
      item
        Name = '1_IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = '2_PRC_DISTRIB_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = '2_PRC_DISTRIBUTION_COUNT'
        DataType = ftFloat
      end
      item
        Name = '2_IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = '3_PRC_DISTRIB_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = '3_PRC_DISTRIBUTION_COUNT'
        DataType = ftFloat
      end
      item
        Name = '3_IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = '4_PRC_DISTRIB_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = '4_PRC_DISTRIBUTION_COUNT'
        DataType = ftFloat
      end
      item
        Name = '4_IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = '5_PRC_DISTRIB_STATUS_CODE'
        DataType = ftFloat
      end
      item
        Name = '5_PRC_DISTRIBUTION_COUNT'
        DataType = ftFloat
      end
      item
        Name = '5_IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end>
    Params = <
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
        Name = 'PRC_BASE_OP_CODE'
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
        Name = 'PRC_BASE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
        Value = '6'
      end
      item
        DataType = ftFloat
        Name = 'OTP_DISTRIBUTION_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
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
        Name = 'PRC_CONCRETE_ACTION_CODE'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
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
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOrgPrcDataBaseOps'
    BeforeClose = cdsGridDataBeforeClose
    Top = 152
  end
  inherited alActions: TActionList
    Top = 264
    inherited actForm: TAction
      Caption = #1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090#1080' '#1074' '#1057#1080#1089#1090#1077#1084#1072#1090#1072' '#1079#1072' '#1054#1089#1098#1097#1077#1089#1090#1074#1103#1074#1072#1085#1077' '#1085#1072' '#1057#1091#1073#1077#1082#1090#1085#1086#1089#1090#1090#1072
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actBaseOpDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1094#1077#1089
      ImageIndex = 98
      OnExecute = actBaseOpDocExecute
      OnUpdate = actBaseOpDocUpdate
    end
    object actConcreteOpDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1094#1077#1089
      ImageIndex = 98
      OnExecute = actConcreteOpDocExecute
      OnUpdate = actConcreteOpDocUpdate
    end
    object actProfessionDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1094#1077#1089#1085#1072' '#1056#1086#1083#1103
      ImageIndex = 98
      OnExecute = actProfessionDocExecute
      OnUpdate = actProfessionDocUpdate
    end
    object actProjectDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1077#1082#1090
      ImageIndex = 98
      OnExecute = actProjectDocExecute
      OnUpdate = actProjectDocUpdate
    end
    object actProjectProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1059#1054#1073' - '#1055#1088#1086#1077#1082#1090
      ImageIndex = 98
      OnExecute = actProjectProductDocExecute
      OnUpdate = actProjectProductDocUpdate
    end
    object actOccupationDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090
      ImageIndex = 98
      OnExecute = actOccupationDocExecute
      OnUpdate = actOccupationDocUpdate
    end
    object actOccupationProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1044#1056#1054#1088
      ImageIndex = 98
      OnExecute = actOccupationProductDocExecute
      OnUpdate = actOccupationProductDocUpdate
    end
    object actDeptDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1058#1055
      ImageIndex = 98
      OnExecute = actDeptDocExecute
      OnUpdate = actDeptDocUpdate
    end
    object actDeptProductDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1054#1087#1052
      ImageIndex = 98
      OnExecute = actDeptProductDocExecute
      OnUpdate = actDeptProductDocUpdate
    end
    object actOccupations: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
      OnExecute = actOccupationsExecute
      OnUpdate = actOccupationsUpdate
    end
    object actOrgTaskProposals: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1088#1086#1077#1082#1090#1080
      OnExecute = actOrgTaskProposalsExecute
      OnUpdate = actOrgTaskProposalsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Top = 184
    object pdsGridDataParamsTO_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1098#1084' '#1076#1072#1090#1072
      FieldName = 'TO_DATE'
      Required = True
    end
    object pdsGridDataParamsMIN_DISTRIBUTION_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1054#1090
      FieldName = 'MIN_DISTRIBUTION_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_DISTRIBUTION_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' - '#1044#1086
      FieldName = 'MAX_DISTRIBUTION_STATUS_CODE'
    end
    object pdsGridDataParamsOTP_DISTRIBUTION_STATE_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1077#1082#1090#1085#1072' '#1077#1092#1077#1082#1090#1080#1088#1072#1085#1086#1089#1090
      FieldName = 'OTP_DISTRIBUTION_STATE_CODE'
    end
    object pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1094#1077#1089#1085#1072' '#1057#1090#1088#1091#1082#1090#1091#1088#1072
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
  end
  inherited dsGridDataParams: TDataSource
    Top = 184
  end
  inherited dsData: TDataSource
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 120
  end
  inherited pmInsertMenu: TPopupMenu
    Left = 0
    Top = 232
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvOrgPrcDataDepts'
    BeforeOpen = cdsDetailBeforeOpen
    AfterOpen = cdsDetailAfterOpen
    BeforeClose = cdsDetailBeforeClose
    Top = 480
  end
  inherited dsDetail: TDataSource
    Left = 0
    Top = 512
  end
  inherited tmrMaster: TTimer
    Left = 376
  end
  object cdsProcessActions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProcessActions'
    Left = 416
    object cdsProcessActionsPRC_ACTION_CODE: TAbmesFloatField
      FieldName = 'PRC_ACTION_CODE'
      Required = True
    end
    object cdsProcessActionsPRC_ACTION_NO: TAbmesFloatField
      FieldName = 'PRC_ACTION_NO'
      Required = True
    end
    object cdsProcessActionsPRC_ACTION_NAME: TAbmesWideStringField
      FieldName = 'PRC_ACTION_NAME'
      Required = True
      Size = 50
    end
    object cdsProcessActionsPRC_ACTION_ABBREV: TAbmesWideStringField
      FieldName = 'PRC_ACTION_ABBREV'
      Required = True
      Size = 10
    end
  end
  object cdsOccupations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvOrgPrcDataOccupations'
    BeforeOpen = cdsOccupationsBeforeOpen
    AfterOpen = cdsOccupationsAfterOpen
    OnReconcileError = cdsGridDataReconcileError
    Left = 32
    Top = 480
  end
  object dsOccupations: TDataSource
    DataSet = cdsOccupations
    Left = 32
    Top = 512
  end
  object cdsConcreteOps: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'OTP_DISTRIBUTION_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_DISTRIBUTION_STATUS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
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
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvOrgPrcDataConcreteOps'
    BeforeOpen = cdsConcreteOpsBeforeOpen
    AfterOpen = cdsConcreteOpsAfterOpen
    AfterScroll = cdsConcreteOpsAfterScroll
    OnReconcileError = cdsGridDataReconcileError
    Left = 64
    Top = 152
  end
  object dsConcreteOps: TDataSource
    DataSet = cdsConcreteOps
    Left = 96
    Top = 152
  end
  object dsOrgTaskProposals: TDataSource
    DataSet = cdsOrgTaskProposals
    Left = 64
    Top = 512
  end
  object cdsOrgTaskProposals: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
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
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_ACTION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvOrgPrcDataOrgTaskProposals'
    BeforeOpen = cdsOrgTaskProposalsBeforeOpen
    AfterOpen = cdsOrgTaskProposalsAfterOpen
    OnReconcileError = cdsGridDataReconcileError
    Left = 64
    Top = 480
  end
  object ilOrgTaskProposalRollupStatuses: TImageList
    Top = 560
    Bitmap = {
      494C010102000800240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF00BABAEF00BABA
      EF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABAEF00BABA
      EF00BABAEF00BABAEF007C7CEF007C7CEF0045C69D0045C69D00BCE3D600BCE3
      D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3D600BCE3
      D600BCE3D600BCE3D60045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7CEF007C7C
      EF007C7CEF007C7CEF007C7CEF007C7CEF0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C69D0045C6
      9D0045C69D0045C69D0045C69D0045C69D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ilOrgTaskProposalRollupStatusesGrey: TImageList
    Left = 32
    Top = 560
    Bitmap = {
      494C010102000800240010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C000C0C0C000C0C0C000D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object dsProfessions: TDataSource
    DataSet = cdsProfessions
    Left = 96
    Top = 512
  end
  object cdsProfessions: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'PRC_BASE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRC_CONCRETE_OP_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvOrgPrcDataProfessions'
    BeforeOpen = cdsProfessionsBeforeOpen
    OnReconcileError = cdsGridDataReconcileError
    Left = 96
    Top = 480
  end
  object cdsOccupationsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 480
    object cdsOccupationsParamsSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object cdsOccupationsParamsPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
    end
    object cdsOccupationsParamsPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
    end
    object cdsOccupationsParamsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
    end
    object cdsOccupationsParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
    end
  end
  object cdsOrgTaskProposalsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 480
    object cdsOrgTaskProposalsParamsMAX_PROPOSAL_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_PROPOSAL_STATE_CODE'
    end
    object cdsOrgTaskProposalsParamsPRC_FUNC_CODE: TAbmesFloatField
      FieldName = 'PRC_FUNC_CODE'
    end
    object cdsOrgTaskProposalsParamsPRC_KNOWL_CODE: TAbmesFloatField
      FieldName = 'PRC_KNOWL_CODE'
    end
    object cdsOrgTaskProposalsParamsPRC_BASE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_BASE_OP_CODE'
    end
    object cdsOrgTaskProposalsParamsPRC_CONCRETE_OP_CODE: TAbmesFloatField
      FieldName = 'PRC_CONCRETE_OP_CODE'
    end
  end
end
