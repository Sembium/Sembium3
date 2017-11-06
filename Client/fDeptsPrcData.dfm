inherited fmDeptsPrcData: TfmDeptsPrcData
  ActiveControl = grdDepts
  BorderStyle = bsSizeable
  Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1097#1080#1103' '#1055#1086#1090#1077#1085#1094#1080#1072#1083' '#1074' '#1058#1057
  ClientHeight = 659
  ClientWidth = 1007
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 624
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
    Height = 624
    inherited sptDetail: TSplitter
      Top = 331
      Width = 991
    end
    inherited pnlDetailGrid: TPanel
      Top = 334
      Width = 991
      Height = 282
      inherited pnlDetailNavigator: TPanel
        Left = 160
        Top = 48
        Align = alNone
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Left = 160
        Top = 72
        TabStop = False
        Align = alNone
      end
      object pcDetail: TPageControl
        Left = 0
        Top = 0
        Width = 991
        Height = 282
        ActivePage = tsPrcData
        Align = alClient
        TabOrder = 2
        object tsPrcData: TTabSheet
          Caption = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090' '#1085#1072' '#1058#1055
        end
        object tsOccupations: TTabSheet
          Caption = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1072' '#1054#1073#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1085#1072' '#1058#1055
          ImageIndex = 1
          object pnlOccupationsTop: TPanel
            Left = 0
            Top = 0
            Width = 983
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object tlbDocs: TToolBar
              Left = 207
              Top = 0
              Width = 249
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 36
              Images = dmMain.ilDocs
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object sepDocs: TToolButton
                Left = 0
                Top = 0
                Width = 8
                ImageIndex = 63
                Style = tbsSeparator
              end
              object lblOWDPDoc: TLabel
                Left = 8
                Top = 0
                Width = 41
                Height = 24
                Caption = ' '#1056#1077#1078#1080#1084' '
                Layout = tlCenter
              end
              object btnOWDPDoc: TToolButton
                Left = 49
                Top = 0
                Action = actOWDPriorityDoc
              end
              object lblOccupationDoc: TLabel
                Left = 85
                Top = 0
                Width = 56
                Height = 24
                Caption = #1044#1083#1098#1078#1085#1086#1089#1090' '
                Layout = tlCenter
              end
              object btnOccupationDoc: TToolButton
                Left = 141
                Top = 0
                Action = actOccupationDoc
              end
              object pnlOccupationProductDocLabel: TPanel
                Left = 177
                Top = 0
                Width = 36
                Height = 24
                Align = alLeft
                BevelOuter = bvNone
                Caption = #1044#1056#1054#1088
                TabOrder = 0
              end
              object btnOccupationProductDoc: TToolButton
                Left = 213
                Top = 0
                Action = actOccupationProductDoc
              end
            end
            object tlbOccupationEditButtons: TToolBar
              Left = 0
              Top = 0
              Width = 151
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Images = dmMain.ilActions
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              object btnInserOccupation: TToolButton
                Tag = 2
                Left = 0
                Top = 0
                Action = actInsertOccupation
                DropdownMenu = pmInsertOccupationMenu
                Style = tbsDropDown
              end
              object btnDelOccupation: TToolButton
                Left = 39
                Top = 0
                Action = actDelOccupation
              end
              object btnEditOccupation: TToolButton
                Left = 63
                Top = 0
                Action = actEditOccupation
              end
              object sepToggleFilteredRecords: TToolButton
                Left = 87
                Top = 0
                Width = 8
                ImageIndex = 148
                Style = tbsSeparator
              end
              object btnToggleFilteredRecords: TToolButton
                Left = 95
                Top = 0
                Action = actToggleFilteredRecords
                Style = tbsCheck
              end
              object sepOccupationsExcelExport: TToolButton
                Left = 119
                Top = 0
                Width = 8
                Caption = 'sepOccupationsExcelExport'
                ImageIndex = 17
                Style = tbsSeparator
              end
              object btnOccupationsExcelExport: TToolButton
                Left = 127
                Top = 0
                Action = actOccupationsExcelExport
              end
            end
            inline frOccupationsTreeListExpander: TfrGridTreeListExpanderFrame
              Left = 151
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              Constraints.MaxHeight = 24
              Constraints.MaxWidth = 56
              Constraints.MinHeight = 24
              Constraints.MinWidth = 56
              TabOrder = 2
            end
            object tlbOccupationsTopRightButtons: TToolBar
              Left = 456
              Top = 0
              Width = 56
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Images = dmMain.ilActions
              TabOrder = 3
              object sepBeforeOccupationEmployee: TToolButton
                Left = 0
                Top = 0
                Width = 8
                Caption = 'sepBeforeOccupationEmployee'
                ImageIndex = 63
                Style = tbsSeparator
              end
              object btnOccupationEmployee: TToolButton
                Left = 8
                Top = 0
                Action = actOccupationEmployee
              end
              object btnEmployee: TToolButton
                Left = 32
                Top = 0
                Action = actEmployee
              end
            end
          end
          object grdOccupations: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 983
            Height = 230
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
            VTitleMargin = 6
            OnDblClick = grdOccupationsDblClick
            OnDrawColumnCell = grdOccupationsDrawColumnCell
            OnDataHintShow = grdOccupationsDataHintShow
            OnGetCellParams = grdOccupationsGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'TREE_DISPLAY_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1088#1091#1082#1090#1091#1088#1072' '#1086#1090' '#1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077' '#1080' '#1054#1073#1093#1074#1072#1097#1072#1097#1080' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
                Width = 313
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OWD_PRIORITY_STATE_CODE'
                Footers = <>
                Title.Caption = #1056#1077#1078#1080#1084'|'#1057#1090#1072#1090
                Width = 27
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
                Font.Charset = SYMBOL_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Symbol'
                Font.Style = []
                Footers = <>
                Title.Caption = #1056#1077#1078#1080#1084'|'#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090'|'#1042#1080#1076
                Width = 27
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'DEPT_OWDP_COVERING_DEPT'
                Footers = <>
                Title.Caption = #1056#1077#1078#1080#1084'|'#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090'| '#1058#1055
                Width = 47
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'IS_CAPACITY_GENERATOR'
                Footers = <>
                Title.Caption = #1056#1077#1078#1080#1084'|'#1050#1087#1094'.'
                Width = 27
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                Footers = <>
                Width = 8
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'IS_OCCUPIED'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1057#1090#1072'- '#1090#1091#1089
                Width = 26
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'IS_MAIN'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1042#1080#1076
                Width = 26
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_PHASE'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1060' '#1072' '#1079' '#1072
                Width = 15
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_LEVEL'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1054#1088#1075'. '#1085#1080#1074#1086
                Title.Orientation = tohVertical
                Width = 16
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'SHIFT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1057' '#1084'.'
                Width = 14
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078'- '#1085#1086#1089#1090#1090#1072
                Width = 47
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCCUPATION_DAYS_LEFT'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1056#1079#1088#1074'. '#1044#1083#1078'.'
                Width = 30
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = '_OCC_PRC_ACTIONS_STATUS'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
                Width = 78
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = '_PROFESSIONS_STATUS'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1056#1086#1083#1077#1074#1072' '#1040#1076#1077#1082#1074#1072#1090#1085#1086#1089#1090
                Width = 78
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'EMPLOYEE_NAME'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1057#1083#1091#1078#1080#1090#1077#1083'|'#1048#1084#1077
                Width = 38
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'ASSIGNMENT_DAYS_LEFT'
                Footers = <>
                Title.Caption = #1044#1083#1098#1078#1085#1086#1089#1090'|'#1057#1083#1091#1078#1080#1090#1077#1083'|'#1056#1079#1088#1074'. '#1053#1072#1079#1085'.'
                Width = 31
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    inherited pnlGrid: TPanel
      Width = 991
      Height = 323
      inherited pnlNavigator: TPanel
        Width = 991
        inherited pnlFilterButton: TPanel
          Left = 48
        end
        inherited navData: TDBColorNavigator
          Width = 48
          VisibleButtons = [nbEdit, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 72
        end
        object tlbDeptsDoc: TToolBar
          Left = 184
          Top = 0
          Width = 80
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDeptsDoc'
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepDeptsDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Style = tbsSeparator
          end
          object lblDeptDoc: TLabel
            Left = 8
            Top = 0
            Width = 36
            Height = 24
            Caption = #1058#1055' '
            Layout = tlCenter
          end
          object btnDeptDoc: TToolButton
            Left = 44
            Top = 0
            Action = actDeptDoc
          end
        end
        object btnOccupationsAndEmployees: TBitBtn
          Left = 312
          Top = -1
          Width = 153
          Height = 25
          Action = actOccupationsAndEmployees
          Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
          TabOrder = 4
        end
        inline frDeptsTreeListExpander: TfrGridTreeListExpanderFrame
          Left = 128
          Top = 0
          Width = 56
          Height = 24
          Align = alLeft
          Constraints.MaxHeight = 24
          Constraints.MaxWidth = 56
          Constraints.MinHeight = 24
          Constraints.MinWidth = 56
          TabOrder = 5
        end
        object tlbDeptProductSpecDocStatus: TToolBar
          Left = 264
          Top = 0
          Width = 32
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          TabOrder = 6
          object sepDeptProductSpecDocStatus: TToolButton
            Left = 0
            Top = 0
            Width = 8
            ImageIndex = 1
            Style = tbsSeparator
          end
          object btnDeptProductSpecDocStatus: TToolButton
            Left = 8
            Top = 0
            Action = actDeptProductSpecDocStatus
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Left = 152
        Top = 120
        TabStop = False
        Align = alNone
      end
      object grdDepts: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 991
        Height = 299
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
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbAlwaysShowEh
        OnDblClick = grdDeptsDblClick
        OnDrawColumnCell = grdDeptsDrawColumnCell
        OnDataHintShow = grdDeptsDataHintShow
        OnGetCellParams = grdDeptsGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = #1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 225
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055'|'#1050#1086#1076
            Width = 99
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NOT_DISTRIBUTED_DEPT_ACTIONS'
            Footers = <>
            Title.Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1057#1054#1057'|'#1087#1086' '#1058#1055'|'#1042#1048#1055#1057
            Width = 54
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NOT_DISTRIB_OCC_BASE_ACTIONS'
            Footers = <>
            Title.Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1057#1054#1057'|'#1087#1086' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'|'#1042#1048#1055#1057
            Width = 54
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NOT_DISTRIB_OCC_CONCR_ACTIONS'
            Footers = <>
            Title.Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1057#1054#1057'|'#1087#1086' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'|'#1055#1054#1085#1090
            Width = 54
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            Footers = <>
            Width = 8
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_OWD_PRIORITY_STATE_CODE'
            Footers = <>
            Title.Caption = #1054#1073#1093#1074#1072#1085#1072#1090#1086#1089#1090' '#1086#1090' '#1056#1077#1078#1080#1084#1080'|'#1057#1090#1072#1090#1091#1089
            Width = 39
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'HAS_EXEC_EXPL_OWD_PRIORITIES'
            Footers = <>
            Title.Caption = #1054#1073#1093#1074#1072#1085#1072#1090#1086#1089#1090' '#1086#1090' '#1056#1077#1078#1080#1084#1080'|'#1048#1079#1087#1098#1083#1085' '#1045#1082#1089#1087#1083
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'HAS_MNG_EXPL_OWD_PRIORITIES'
            Footers = <>
            Title.Caption = #1054#1073#1093#1074#1072#1085#1072#1090#1086#1089#1090' '#1086#1090' '#1056#1077#1078#1080#1084#1080'|'#1056#1098#1082#1086#1074' '#1045#1082#1089#1087#1083
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'HAS_EXEC_SVC_OWD_PRIORITIES'
            Footers = <>
            Title.Caption = #1054#1073#1093#1074#1072#1085#1072#1090#1086#1089#1090' '#1086#1090' '#1056#1077#1078#1080#1084#1080'|'#1048#1079#1087#1098#1083#1085' '#1054#1073#1089#1083#1091#1078#1074
            Width = 50
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            Footers = <>
            Width = 8
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'OCCUPATION_SHIFT_COUNT'
            Footers = <>
            Title.Caption = #1041#1088' '#1054#1088' '#1057#1084
            Width = 21
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARALLEL_PROCESS_COUNT'
            Footers = <>
            Title.Caption = #1050#1088#1072#1090'.|'#1054#1087#1047#1085
            Title.Orientation = tohVertical
            Width = 21
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PARALLEL_OPERATOR_COUNT'
            Footers = <>
            Title.Caption = #1050#1088#1072#1090'.|'#1044#1056#1054#1088
            Title.Orientation = tohVertical
            Width = 21
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_DAYS_LEFT'
            Footers = <>
            Title.Caption = #1056#1079#1088#1074'. '#1057#1098#1097'. '#1085#1072' '#1058#1055
            Width = 49
          end>
        object RowDetailData: TRowDetailPanelControlEh
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
        Name = 'DEPT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARENT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'IS_GROUP'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IMAGE_INDEX'
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
        Name = 'HAS_DOC_ITEMS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DEPT_BASE_ACTIONS'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL_DEPT_CONCRETE_ACTIONS'
        DataType = ftFloat
      end
      item
        Name = 'NOT_DISTRIBUTED_DEPT_ACTIONS'
        DataType = ftFloat
      end
      item
        Name = 'NOT_DISTRIB_OCC_BASE_ACTIONS'
        DataType = ftFloat
      end
      item
        Name = 'NOT_DISTRIB_OCC_CONCR_ACTIONS'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_DAYS_LEFT'
        DataType = ftFloat
      end
      item
        Name = 'OCCUPATION_SHIFT_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'PARALLEL_PROCESS_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'PARALLEL_OPERATOR_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'SORT_FIELD'
        DataType = ftWideString
        Size = 87
      end
      item
        Name = 'IS_FILTER_ACCEPTED'
        DataType = ftFloat
      end
      item
        Name = 'IS_FIN_STORE'
        DataType = ftFloat
      end
      item
        Name = 'HAS_EXEC_EXPL_OWD_PRIORITIES'
        DataType = ftFloat
      end
      item
        Name = 'HAS_MNG_EXPL_OWD_PRIORITIES'
        DataType = ftFloat
      end
      item
        Name = 'HAS_EXEC_SVC_OWD_PRIORITIES'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_OWD_PRIORITY_STATE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_PRODUCT_CODE'
        DataType = ftFloat
      end>
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
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
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
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_OCCUPATION_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptsPrcDataDepts'
    BeforeClose = cdsGridDataBeforeClose
    BeforeScroll = cdsGridDataBeforeScroll
    Top = 152
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsGridDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      OnGetText = cdsGridDataDEPT_NAMEGetText
      Size = 100
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      OnGetText = cdsGridDataDEPT_IDENTIFIERGetText
      Size = 46
    end
    object cdsGridDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEPT_IMAGE_INDEX: TAbmesFloatField
      FieldName = 'DEPT_IMAGE_INDEX'
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
    object cdsGridDataTOTAL_DEPT_BASE_ACTIONS: TAbmesFloatField
      FieldName = 'TOTAL_DEPT_BASE_ACTIONS'
    end
    object cdsGridDataTOTAL_DEPT_CONCRETE_ACTIONS: TAbmesFloatField
      FieldName = 'TOTAL_DEPT_CONCRETE_ACTIONS'
    end
    object cdsGridDataNOT_DISTRIBUTED_DEPT_ACTIONS: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'NOT_DISTRIBUTED_DEPT_ACTIONS'
      OnGetText = CountFieldGetText
    end
    object cdsGridDataNOT_DISTRIB_OCC_BASE_ACTIONS: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'NOT_DISTRIB_OCC_BASE_ACTIONS'
      OnGetText = CountFieldGetText
    end
    object cdsGridDataNOT_DISTRIB_OCC_CONCR_ACTIONS: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'NOT_DISTRIB_OCC_CONCR_ACTIONS'
      OnGetText = CountFieldGetText
    end
    object cdsGridDataDEPT_DAYS_LEFT: TAbmesFloatField
      FieldName = 'DEPT_DAYS_LEFT'
    end
    object cdsGridDataOCCUPATION_SHIFT_COUNT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'OCCUPATION_SHIFT_COUNT'
    end
    object cdsGridDataPARALLEL_PROCESS_COUNT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PARALLEL_PROCESS_COUNT'
    end
    object cdsGridDataPARALLEL_OPERATOR_COUNT: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'PARALLEL_OPERATOR_COUNT'
    end
    object cdsGridDataSORT_FIELD: TAbmesWideStringField
      FieldName = 'SORT_FIELD'
      Size = 98
    end
    object cdsGridDataIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_EXEC_EXPL_OWD_PRIORITIES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_EXEC_EXPL_OWD_PRIORITIES'
      DisplayFormat = '.'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_MNG_EXPL_OWD_PRIORITIES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_MNG_EXPL_OWD_PRIORITIES'
      DisplayFormat = '.'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataHAS_EXEC_SVC_OWD_PRIORITIES: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'HAS_EXEC_SVC_OWD_PRIORITIES'
      DisplayFormat = '.'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEPT_OWD_PRIORITY_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DEPT_OWD_PRIORITY_STATE_CODE'
    end
    object cdsGridDataDEPT_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DEPT_PRODUCT_CODE'
    end
  end
  inherited alActions: TActionList
    Top = 88
    inherited actForm: TAction
      Caption = #1056#1072#1079#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1097#1080#1103' '#1055#1086#1090#1077#1085#1094#1080#1072#1083' '#1074' '#1058#1057
    end
    inherited actPrint: TAction
      Visible = False
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actDeptDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1058#1055
      ImageIndex = 98
      OnExecute = actDeptDocExecute
      OnUpdate = actDeptDocUpdate
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
    object actOWDPriorityDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1056#1077#1078#1080#1084
      ImageIndex = 98
      OnExecute = actOWDPriorityDocExecute
      OnUpdate = actOWDPriorityDocUpdate
    end
    object actInsertOccupation: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 145
      OnExecute = actInsertOccupationExecute
      OnUpdate = actInsertOccupationUpdate
    end
    object actOccupationCreateLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086
      OnExecute = actOccupationCreateLikeExecute
      OnUpdate = actOccupationCreateLikeUpdate
    end
    object actEditOccupation: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 147
      OnExecute = actEditOccupationExecute
      OnUpdate = actEditOccupationUpdate
    end
    object actDelOccupation: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 146
      OnExecute = actDelOccupationExecute
      OnUpdate = actDelOccupationUpdate
    end
    object actOccupationsAndEmployees: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080'...'
      Hint = #1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1080
      OnExecute = actOccupationsAndEmployeesExecute
    end
    object actOccupationsAndEmployeesByDept: TAction
      Caption = #1057#1087#1088#1103#1084#1086' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072'...'
      Hint = #1057#1087#1088#1103#1084#1086' '#1054#1088#1063' '#1085#1072' '#1044#1083#1098#1078#1085#1086#1089#1090#1090#1072
      OnExecute = actOccupationsAndEmployeesByDeptExecute
    end
    object actOccupationsAndEmployeesByOccWorkDept: TAction
      Caption = #1057#1087#1088#1103#1084#1086' '#1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090'...'
      Hint = #1057#1087#1088#1103#1084#1086' '#1055#1086#1083#1077#1074#1080' '#1054#1073#1093#1074#1072#1090
      OnExecute = actOccupationsAndEmployeesByOccWorkDeptExecute
    end
    object actToggleFilteredRecords: TAction
      Checked = True
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1079#1072#1087#1080#1089#1080' '#1085#1077#1086#1090#1075#1086#1074#1072#1088#1103#1097#1080' '#1085#1072' '#1092#1080#1083#1090#1088#1080#1088#1072#1085#1077#1090#1086
      ImageIndex = 16
      OnExecute = actToggleFilteredRecordsExecute
    end
    object actOccupationsExcelExport: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actOccupationsExcelExportExecute
      OnUpdate = actOccupationsExcelExportUpdate
    end
    object actOccupationEmployee: TAction
      Hint = #1044#1083#1098#1078#1085#1086#1089#1090#1085#1086' '#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
      ImageIndex = 65
      OnExecute = actOccupationEmployeeExecute
      OnUpdate = actOccupationEmployeeUpdate
    end
    object actEmployee: TAction
      Hint = #1057#1083#1091#1078#1080#1090#1077#1083
      ImageIndex = 62
      OnExecute = actEmployeeExecute
      OnUpdate = actEmployeeUpdate
    end
    object actDeptProductSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' '#1054#1087#1052
      ImageIndex = 113
      OnExecute = actDeptProductSpecDocStatusExecute
      OnUpdate = actDeptProductSpecDocStatusUpdate
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
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsPRC_FUNC_CODE: TAbmesFloatField
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
    object pdsGridDataParamsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object pdsGridDataParams_OCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_OCC_WORK_DEPT_PRIORITY_NAME'
      LookupDataSet = cdsOccupationWorkDeptPriorities
      LookupKeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      LookupResultField = 'PRIORITY_FULL_NAME'
      KeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Size = 93
      Lookup = True
    end
    object pdsGridDataParamsORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
    end
    object pdsGridDataParamsORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
    end
    object pdsGridDataParams_ORG_WORK_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_TYPE_NAME'
      LookupDataSet = cdsOrgWorkTypes
      LookupKeyFields = 'ORG_WORK_LEVEL_CODE;ORG_WORK_MODE_CODE'
      LookupResultField = 'ORG_WORK_TYPE_NAME'
      KeyFields = 'ORG_WORK_LEVEL_CODE;ORG_WORK_MODE_CODE'
      Size = 101
      Lookup = True
    end
    object pdsGridDataParamsCHOSEN_OCCUPATION_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_OCCUPATION_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object pdsGridDataParams_SHIFT_IDENTIFIER: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_SHIFT_IDENTIFIER'
      LookupDataSet = cdsShifts
      LookupKeyFields = 'SHIFT_CODE'
      LookupResultField = 'SHIFT_IDENTIFIER'
      KeyFields = 'SHIFT_CODE'
      Size = 5
      Lookup = True
    end
    object pdsGridDataParamsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsIS_OCCUPIED: TAbmesFloatField
      FieldName = 'IS_OCCUPIED'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParamsMIN_OWD_PRIORITY_STATE_CODE: TAbmesFloatField
      FieldName = 'MIN_OWD_PRIORITY_STATE_CODE'
    end
    object pdsGridDataParamsMAX_OWD_PRIORITY_STATE_CODE: TAbmesFloatField
      FieldName = 'MAX_OWD_PRIORITY_STATE_CODE'
    end
    object pdsGridDataParamsORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
    end
    object pdsGridDataParams_ORG_WORK_ACTIVITY_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_ACTIVITY_NAME'
      LookupDataSet = cdsOrgWorkActivities
      LookupKeyFields = 'ORG_WORK_ACTIVITY_CODE'
      LookupResultField = 'ORG_WORK_ACTIVITY_NAME'
      KeyFields = 'ORG_WORK_ACTIVITY_CODE'
      Size = 100
      Lookup = True
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
    Top = 288
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROCESS_ACTION_TYPE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvDeptsPrcDataPrcData'
    BeforeOpen = cdsDetailBeforeOpen
    AfterOpen = cdsDetailAfterOpen
    BeforeClose = cdsDetailBeforeClose
    Top = 456
    object cdsDetailDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsDetailIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDetailBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
    end
    object cdsDetailEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsDetailPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsDetailDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
    end
    object cdsDetailNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
      Required = True
    end
    object cdsDetailSUFFIX_LETTER: TAbmesWideStringField
      FieldName = 'SUFFIX_LETTER'
      Size = 1
    end
    object cdsDetailNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      Required = True
      Size = 100
    end
    object cdsDetail_DEPT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEPT_TYPE_ABBREV'
      LookupDataSet = cdsDeptTypes
      LookupKeyFields = 'DEPT_TYPE_CODE'
      LookupResultField = 'DEPT_TYPE_ABBREV'
      KeyFields = 'DEPT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
  end
  inherited dsDetail: TDataSource
    Top = 456
  end
  inherited tmrMaster: TTimer
    Left = 656
  end
  object cdsDeptTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <>
    ProviderName = 'prvDeptTypes'
    Left = 112
    Top = 456
    object cdsDeptTypesDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
    end
    object cdsDeptTypesDEPT_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_ABBREV'
      Size = 5
    end
    object cdsDeptTypesDEPT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DEPT_TYPE_NAME'
      Size = 50
    end
  end
  object cdsOccupations: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
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
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_LEVEL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_MODE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHIFT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_ACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IS_OCCUPIED'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_OWD_PRIORITY_STATE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORG_WORK_ACTIVITY_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'TO_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_OCCUPATION_DEPTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptsPrcDataOccupations'
    BeforeOpen = cdsOccupationsBeforeOpen
    AfterOpen = cdsOccupationsAfterOpen
    BeforeClose = cdsOccupationsBeforeClose
    OnCalcFields = cdsOccupationsCalcFields
    OnFilterRecord = cdsOccupationsFilterRecord
    Top = 488
    object cdsOccupationsOCCUPATION_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_CODE'
    end
    object cdsOccupationsDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsOccupationsOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object cdsOccupationsDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      OnGetText = cdsOccupationsDEPT_OWDP_COVER_TYPE_CODEGetText
    end
    object cdsOccupationsSORT_FIELD: TAbmesWideStringField
      FieldName = 'SORT_FIELD'
      Size = 50
    end
    object cdsOccupationsTREE_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'TREE_DISPLAY_NAME'
      Size = 50
    end
    object cdsOccupations_IMAGE_INDEX: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_IMAGE_INDEX'
      Calculated = True
    end
    object cdsOccupationsEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 54
    end
    object cdsOccupationsASSIGNMENT_DAYS_LEFT: TAbmesFloatField
      FieldName = 'ASSIGNMENT_DAYS_LEFT'
    end
    object cdsOccupationsOWD_PRIORITY_STATE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'OWD_PRIORITY_STATE_CODE'
    end
    object cdsOccupationsIS_CAPACITY_GENERATOR: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_CAPACITY_GENERATOR'
      OnGetText = cdsOccupationsIS_CAPACITY_GENERATORGetText
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsIS_ACTIVE: TAbmesFloatField
      FieldName = 'IS_ACTIVE'
    end
    object cdsOccupationsIS_OCCUPIED: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'IS_OCCUPIED'
      OnGetText = cdsOccupationsIS_OCCUPIEDGetText
    end
    object cdsOccupationsIS_MAIN: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'IS_MAIN'
      OnGetText = cdsOccupationsIS_MAINGetText
    end
    object cdsOccupationsOCCUPATION_PHASE: TAbmesWideStringField
      FieldName = 'OCCUPATION_PHASE'
      Size = 93
    end
    object cdsOccupationsOCCUPATION_LEVEL: TAbmesFloatField
      FieldName = 'OCCUPATION_LEVEL'
    end
    object cdsOccupationsOCCUPATION_DEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'OCCUPATION_DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsOccupationsOCCUPATION_DAYS_LEFT: TAbmesFloatField
      FieldName = 'OCCUPATION_DAYS_LEFT'
    end
    object cdsOccupationsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsOccupationsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsOccupationsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsPRODUCT_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_BRANCH_CODE'
    end
    object cdsOccupationsPRODUCT_DOC_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_DOC_CODE'
    end
    object cdsOccupationsPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsEMPLOYEE_OCCUPATION_PROF_COUNT: TAbmesFloatField
      FieldName = 'EMPLOYEE_OCCUPATION_PROF_COUNT'
    end
    object cdsOccupationsOCCUPATION_PROFESSION_COUNT: TAbmesFloatField
      FieldName = 'OCCUPATION_PROFESSION_COUNT'
    end
    object cdsOccupationsOE_MASTERED_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OE_MASTERED_PRC_ACTIONS_COUNT'
    end
    object cdsOccupationsOCC_PRC_ACTIONS_COUNT: TAbmesFloatField
      FieldName = 'OCC_PRC_ACTIONS_COUNT'
    end
    object cdsOccupationsOCCUPATION_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'OCCUPATION_EMPLOYEE_CODE'
    end
    object cdsOccupations_PROFESSIONS_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_PROFESSIONS_STATUS'
      Calculated = True
    end
    object cdsOccupations_OCC_PRC_ACTIONS_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = '_OCC_PRC_ACTIONS_STATUS'
      Calculated = True
    end
    object cdsOccupationsOWDP_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'OWDP_DOC_BRANCH_CODE'
    end
    object cdsOccupationsOWDP_DOC_CODE: TAbmesFloatField
      FieldName = 'OWDP_DOC_CODE'
    end
    object cdsOccupationsOWDP_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'OWDP_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsTREE_CODE: TAbmesWideStringField
      FieldName = 'TREE_CODE'
      Size = 19
    end
    object cdsOccupationsPARENT_TREE_CODE: TAbmesWideStringField
      FieldName = 'PARENT_TREE_CODE'
      Size = 9
    end
    object cdsOccupationsDEPT_OWDP_COVERING_DEPT: TAbmesWideStringField
      FieldName = 'DEPT_OWDP_COVERING_DEPT'
      Size = 46
    end
    object cdsOccupationsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
    object cdsOccupationsEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
  end
  object dsOccupations: TDataSource
    DataSet = cdsOccupations
    Left = 32
    Top = 488
  end
  object pmInsertOccupationMenu: TPopupMenu
    Top = 424
    object miInsertOccupation: TMenuItem
      Action = actInsertOccupation
      Default = True
    end
    object miCreateLikeOccupation: TMenuItem
      Action = actOccupationCreateLike
    end
  end
  object pmOccupationsAndEmployees: TPopupMenu
    Left = 440
    object miOccupationsAndEmployeesByDept: TMenuItem
      Action = actOccupationsAndEmployeesByDept
    end
    object miOccupationsAndEmployeesByOccWorkDept: TMenuItem
      Action = actOccupationsAndEmployeesByOccWorkDept
    end
  end
  object cdsOccupationsAndEmployeesParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 472
    object cdsOccupationsAndEmployeesParamsCHOSEN_DEPTS: TAbmesWideStringField
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object cdsOccupationsAndEmployeesParamsCHOSEN_DEPTS_ONLY: TAbmesFloatField
      FieldName = 'CHOSEN_DEPTS_ONLY'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsAndEmployeesParamsWORK_DEPT_CODE: TAbmesFloatField
      FieldName = 'WORK_DEPT_CODE'
    end
    object cdsOccupationsAndEmployeesParamsIS_NOT_ACTIVE: TAbmesFloatField
      FieldName = 'IS_NOT_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsOccupationsAndEmployeesParamsSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
  end
  object cdsOccupationWorkDeptPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOccupationWorkDeptPriorities'
    Left = 88
    Top = 184
    object cdsOccupationWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
    end
    object cdsOccupationWorkDeptPrioritiesPRIORITY_FULL_NAME: TAbmesWideStringField
      FieldName = 'PRIORITY_FULL_NAME'
      Size = 93
    end
  end
  object cdsOrgWorkTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOrgWorkTypes'
    Left = 120
    Top = 184
    object cdsOrgWorkTypesORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      Required = True
    end
    object cdsOrgWorkTypesORG_WORK_MODE_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_MODE_CODE'
      Required = True
    end
    object cdsOrgWorkTypesORG_WORK_TYPE_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_TYPE_NAME'
      Size = 101
    end
  end
  object cdsShifts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conShifts
    Params = <>
    ProviderName = 'prvShifts'
    Left = 152
    Top = 184
    object cdsShiftsSHIFT_CODE: TAbmesFloatField
      FieldName = 'SHIFT_CODE'
    end
    object cdsShiftsSHIFT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'SHIFT_IDENTIFIER'
      Size = 5
    end
  end
  object ilOccupationsTree: TImageList
    Left = 64
    Top = 568
    Bitmap = {
      494C010108001000080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F8C4B000F8C4
      B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4
      B000F8C4B0000000000000000000000000000000000000000000D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D8000000000000000000000000000000000000000000F8C4B000F8C4
      B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4B000F8C4
      B000F8C4B0000000000000000000000000000000000000000000DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE0000000000000000000000000000000000F6AB9000F6B19700F6B4
      9B00F6B69D00F6B59C00F6B59C00F6B59C00F6B69D00F6B59C00F6B59C00F6B6
      9D00F6B39A00F6AB9000000000000000000000000000C8C8C800CCCCCC00CECE
      CE00CFCFCF00CECECE00CECECE00CECECE00CFCFCF00CECECE00CECECE00CFCF
      CF00CDCDCD00C8C8C800000000000000000000000000F6AB9000F6B19700F6B4
      9B00F6B69D00F6B59C00F6B59C00F6B59C00F6B69D00F6B59C00F6B59C00F6B6
      9D00F6B39A00F6AB9000000000000000000000000000D0D0D000D3D3D300D5D5
      D500D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D4D4D400D0D0D000000000000000000000000000F3947100F49E7E00F5A4
      8700F5A68900F5A68900F5A68900F5A68900F5A68900F5A68900F5A68900F5A6
      8900F4A28400F3947100000000000000000000000000B9B9B900BFBFBF00C4C4
      C400C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C2C2C200B9B9B900000000000000000000000000F3947100F49E7E00F5A4
      8700F5A68900F5A689000083FF000083FF000083FF00F5A68900F5A68900F5A6
      8900F4A28400F3947100000000000000000000000000C3C3C300C9C9C900CDCD
      CD00CDCDCD00CDCDCD00AFAFAF00AFAFAF00AFAFAF00CDCDCD00CDCDCD00CDCD
      CD00CBCBCB00C3C3C300000000000000000000000000F3947100F49E7E00F5A4
      8700F5A68900F5A68900F5A68900F5A68900F5A68900F5A68900F5A68900F5A6
      8900F4A28400F3947100000000000000000000000000B9B9B900BFBFBF00C4C4
      C400C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5
      C500C2C2C200B9B9B900000000000000000000000000F3947100F49E7E00F5A4
      8700F5A68900F5A689000083FF0000DDFF000083FF00F5A68900F5A68900F5A6
      8900F4A28400F3947100000000000000000000000000C3C3C300C9C9C900CDCD
      CD00CDCDCD00CDCDCD00AFAFAF0099999900AFAFAF00CDCDCD00CDCDCD00CDCD
      CD00CBCBCB00C3C3C30000000000000000000000000000000000DA8F7300F394
      7100F4957200F4957200F3947100F3947100F4957200F3947100F3947100F495
      7200DA8F73000000000000000000000000000000000000000000B6B6B600B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B6B6B6000000000000000000000000000000000000000000DA8F7300F394
      7100F4957200F49572000083FF0000DDFF000083FF00F3947100F3947100F495
      7200DA8F73000000000000000000000000000000000000000000C1C1C100C3C3
      C300C4C4C400C4C4C400AFAFAF0099999900AFAFAF00C3C3C300C3C3C300C4C4
      C400C1C1C1000000000000000000000000000000000000000000000000000000
      000000000000F3947100F4957200F4957200F4957200F3947100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F39471000083FF0000DDFF000083FF00F3947100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3C3C300AFAFAF0099999900AFAFAF00C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3947100F4957200F4957200F4957200F4957200F3947100F39471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F39471000083FF000083FF0000DDFF000083FF000083FF00F39471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C300AFAFAF00AFAFAF0099999900AFAFAF00AFAFAF00C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3947100F4957200F4957200F4957200F4957200F4957200F39471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000083FF0000DDFF0000DDFF0000DDFF0000DDFF0000DDFF000083FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFAFAF009999990099999900999999009999990099999900AFAFAF000000
      000000000000000000000000000000000000000000000000000000000000F394
      7100F4957200F4957200F4957200F4957200F4957200F4957200F4957200F394
      710000000000000000000000000000000000000000000000000000000000B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B90000000000000000000000000000000000000000000000000000000000F394
      7100F49572000083FF0000DDFF0000DDFF0000DDFF000083FF00F4957200F394
      710000000000000000000000000000000000000000000000000000000000C3C3
      C300C4C4C400AFAFAF00999999009999990099999900AFAFAF00C4C4C400C3C3
      C30000000000000000000000000000000000000000000000000000000000F394
      7100F4957200F4957200F4957200F4957200F4957200F4957200F4957200F495
      720000000000000000000000000000000000000000000000000000000000B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B90000000000000000000000000000000000000000000000000000000000F394
      7100F4957200F49572000083FF0000DDFF000083FF00F4957200F4957200F495
      720000000000000000000000000000000000000000000000000000000000C3C3
      C300C4C4C400C4C4C400AFAFAF0099999900AFAFAF00C4C4C400C4C4C400C4C4
      C40000000000000000000000000000000000000000000000000000000000F394
      7100F4957200F4957200F4957200F4957200F4957200F4957200F4957200F394
      710000000000000000000000000000000000000000000000000000000000B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B90000000000000000000000000000000000000000000000000000000000F394
      7100F4957200F4957200F49572000083FF00F4957200F4957200F4957200F394
      710000000000000000000000000000000000000000000000000000000000C3C3
      C300C4C4C400C4C4C400C4C4C400AFAFAF00C4C4C400C4C4C400C4C4C400C3C3
      C300000000000000000000000000000000000000000000000000000000000000
      0000F3947100F4957200F4957200F4957200F4957200F4957200F39471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F3947100F4957200F4957200F4957200F4957200F4957200F39471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C300C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3947100F4957200F4957200F4957200F3947100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3947100F4957200F4957200F4957200F3947100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3C3C300C4C4C400C4C4C400C4C4C400C3C3C300000000000000
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
      000000000000000000009B9B9A009B9B9A009B9B9A009B9B9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009B9B9A009B9B9A009B9B9A009B9B9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9A0000000000000000009B9B9A00D9D6D700D9D6D8009B9B9A00000000000000
      00009B9B9A00000000000000000000000000000000000000000000000000CCCC
      CC000000000000000000CCCCCC00EBEAEA00EBEAEA00CCCCCC00000000000000
      0000CCCCCC000000000000000000000000000000000000000000000000009B9B
      9A0000000000000000009B9B9A00D9D6D700D9D6D8009B9B9A00000000000000
      00009B9B9A00000000000000000000000000000000000000000000000000BDBD
      BD000000000000000000BDBDBD00E4E4E400E4E4E400BDBDBD00000000000000
      0000BDBDBD0000000000000000000000000000000000000000009B9B9A00CDCC
      CD009B9B9A00000000009B9B9A00D0CECF00D0CECF009B9B9A00000000009B9B
      9A00CECCCD009B9B9A0000000000000000000000000000000000CCCCCC00E5E4
      E400CCCCCC0000000000CCCCCC00E7E6E600E7E6E600CCCCCC0000000000CCCC
      CC00E6E4E500CCCCCC00000000000000000000000000000000009B9B9A00CDCC
      CD009B9B9A00000000009B9B9A00D0CECF00D0CECF009B9B9A00000000009B9B
      9A00CECCCD009B9B9A0000000000000000000000000000000000BDBDBD00DDDD
      DD00BDBDBD0000000000BDBDBD00DFDFDF00DFDFDF00BDBDBD0000000000BDBD
      BD00DEDEDE00BDBDBD000000000000000000000000009B9B9A00DFDEDD00C7C5
      C600C3C2C2009B9B9A00CECBCD00B3B1B200B2B1B100CCCACB009B9B9A00C0BD
      BE00CAC8C900D4D3D4009B9B9A000000000000000000CCCCCC00EEEEED00E2E1
      E100E0E0E000CCCCCC00E6E4E500D8D7D800D8D7D700E5E4E400CCCCCC00DFDD
      DE00E4E2E300E9E8E800CCCCCC0000000000000000009B9B9A00DFDEDD00C7C5
      C600C3C2C2009B9B9A00CECBCD00B3B1B200B2B1B100CCCACB009B9B9A00C0BD
      BE00CAC8C900D4D3D4009B9B9A000000000000000000BDBDBD00E9E9E900D9D9
      D900D7D7D700BDBDBD00DDDDDD00CCCCCC00CCCCCC00DDDDDD00BDBDBD00D4D4
      D400DBDBDB00E2E2E200BDBDBD000000000000000000000000009B9B9A00CECC
      CD00C7C5C600B0ADAF00A1A0A000B2B2B100B1B0B0009B9B9A009F9E9E00CAC7
      C800C5C4C5009B9B9A0000000000000000000000000000000000CCCCCC00E6E4
      E500E2E1E100D7D5D600CFCFCF00D8D8D700D7D7D700CCCCCC00CECECE00E4E2
      E300E1E0E000CCCCCC00000000000000000000000000000000009B9B9A00CECC
      CD00C7C5C600B0ADAF00A1A0A000B2B2B100B1B0B0009B9B9A009F9E9E00CAC7
      C800C5C4C5009B9B9A0000000000000000000000000000000000BDBDBD00DEDE
      DE00D9D9D900CACACA00C1C1C100CCCCCC00CBCBCB00BDBDBD00BFBFBF00DBDB
      DB00D8D8D800BDBDBD0000000000000000000000000000000000000000009B9B
      9A00BDBBBC00BBBABA00D3D1D2007979790079797900D3D1D200B9BAB900A2A1
      A1009B9B9A00000000000000000000000000000000000000000000000000CCCC
      CC00DDDCDC00DCDCDC00E8E7E800BBBBBB00BBBBBB00E8E7E800DBDCDB00D0CF
      CF00CCCCCC000000000000000000000000000000000000000000000000009B9B
      9A00BDBBBC00BBBABA00D3D1D2007979790079797900D3D1D200B9BAB900A2A1
      A1009B9B9A00000000000000000000000000000000000000000000000000BDBD
      BD00D3D3D300D2D2D200E1E1E100A7A7A700A7A7A700E1E1E100D2D2D200C1C1
      C100BDBDBD000000000000000000000000009B9B9A009B9B9A009B9B9A00C9C6
      C800B8B7B700CECBCD0079797900000000000000000079797900D0CDCF00AEAD
      AD00CBC8CA009B9B9A009B9B9A009B9B9A00CCCCCC00CCCCCC00CCCCCC00E3E2
      E200DBDADA00E6E4E500BBBBBB000000000000000000BBBBBB00E7E5E600D6D5
      D500E4E3E400CCCCCC00CCCCCC00CCCCCC009B9B9A009B9B9A009B9B9A00C9C6
      C800B8B7B700CECBCD0079797900000000000000000079797900D0CDCF00AEAD
      AD00CBC8CA009B9B9A009B9B9A009B9B9A00BDBDBD00BDBDBD00BDBDBD00DADA
      DA00D0D0D000DDDDDD00A7A7A7000000000000000000A7A7A700DFDFDF00C9C9
      C900DBDBDB00BDBDBD00BDBDBD00BDBDBD009B9B9A00CECCCD00C6C4C500BDBB
      BC00BFBDBE00797979000000000000000000000000000000000079797900C2C1
      C100BDBDBC00CAC7C900D1CED0009B9B9A00CCCCCC00E6E4E500E2E1E100DDDC
      DC00DEDDDD00BBBBBB0000000000000000000000000000000000BBBBBB00E0DE
      DF00DDDCDC00E4E2E300E7E6E600CCCCCC009B9B9A00CECCCD00C6C4C500BDBB
      BC00BFBDBE00797979000000000000000000000000000000000079797900C2C1
      C100BDBDBC00CAC7C800D1CED0009B9B9A00BDBDBD00DEDEDE00D9D9D900D3D3
      D300D4D4D400A7A7A70000000000000000000000000000000000A7A7A700D6D6
      D600D4D4D400DBDBDB00DFDFDF00BDBDBD009B9B9A00DDDCDC00C5C4C600BEBD
      BC00C5C3C400797979000000000000000000000000000000000079797900BDBB
      BC00C0BEBF00CCCACB00DFDEDE009B9B9A00CCCCCC00EDEDED00E1E0E000DEDD
      DD00E1E0E000BBBBBB0000000000000000000000000000000000BBBBBB00DDDC
      DC00DFDEDE00E5E4E400EEEEED00CCCCCC009B9B9A00DDDCDC00C5C4C500BEBD
      BC00C5C2C40079797900000000000000000000000000000000000083FF000083
      FF000083FF00CCCACB00DFDEDD009B9B9A00BDBDBD00E8E8E800D9D9D900D4D4
      D400D8D8D800A7A7A70000000000000000000000000000000000A0A0A000A0A0
      A000A0A0A000DDDDDD00E9E9E900BDBDBD009B9B9A009B9B9A009B9B9A00CBC9
      CA00C6C6C700B7B7B80079797900000000000000000079797900BCBABB00B6B4
      B500C9C7C8009B9B9A009B9B9A009B9B9A00CCCCCC00CCCCCC00CCCCCC00E4E3
      E400E2E2E100DADADB00BBBBBB000000000000000000BBBBBB00DDDCDC00DAD9
      D900E3E2E200CCCCCC00CCCCCC00CCCCCC009B9B9A009B9B9A009B9B9A00CBC8
      CA00C6C6C700B7B7B800797979000000000000000000797979000083FF0000DD
      FF000083FF009B9B9A009B9B9A009B9B9A00BDBDBD00BDBDBD00BDBDBD00DCDC
      DC00D9D9D900D0D0D000A7A7A7000000000000000000A7A7A700A0A0A0008080
      8000A0A0A000BDBDBD00BDBDBD00BDBDBD000000000000000000000000009B9B
      9A00CAC9C900D5D4D300C8C6C7007979790079797900CCCACB00C7C7C600C3C1
      C2009B9B9A00000000000000000000000000000000000000000000000000CCCC
      CC00E4E2E300E9E8E800E3E2E200BBBBBB00BBBBBB00E5E4E400E2E2E100E0DF
      E000CCCCCC000000000000000000000000000000000000000000000000009B9B
      9A00CAC8C900D5D4D300C8C6C7007979790079797900CCCACB000083FF0000DD
      FF000083FF00000000000000000000000000000000000000000000000000BDBD
      BD00DBDBDB00E3E3E300DADADA00A7A7A700A7A7A700DDDDDD00A0A0A0008080
      8000A0A0A00000000000000000000000000000000000000000009B9B9A00C7C6
      C600C5C2C300C8C8C900D4D3D300D0CFCF00CCCBCB00C8C7C700C6C6C500C4C2
      C300C2BFC0009B9B9A0000000000000000000000000000000000CCCCCC00E2E2
      E100E1E0E000E3E2E200E9E8E800E7E6E600E5E4E400E3E2E200E2E2E100E1E0
      E000E0DEDF00CCCCCC00000000000000000000000000000000009B9B9A00C7C6
      C500C5C2C300C8C8C900D4D3D300D0CECF00CCCACB00C8C6C7000083FF0000DD
      FF000083FF009B9B9A0000000000000000000000000000000000BDBDBD00D9D9
      D900D7D7D700DBDBDB00E2E2E200DFDFDF00DDDDDD00DADADA00A0A0A0008080
      8000A0A0A000BDBDBD000000000000000000000000009B9B9A00E0DFDF00C5C2
      C400C7C6C5009B9B9A00CCC9CB00CBC9CA00CAC8C900CECDCE009B9B9A00D3D2
      D400C5C3C400D2CFD1009B9B9A000000000000000000CCCCCC00EFEEEE00E1E0
      E000E2E2E100CCCCCC00E5E3E400E4E3E400E4E2E300E6E4E500CCCCCC00E8E8
      E900E1E0E000E8E6E700CCCCCC0000000000000000009B9B9A00E0DFDF00C5C2
      C400C7C6C5009B9B9A00CCC9CB00CBC8CA000083FF000083FF000083FF0000DD
      FF000083FF000083FF000083FF000000000000000000BDBDBD00EAEAEA00D7D7
      D700D9D9D900BDBDBD00DCDCDC00DCDCDC00A0A0A000A0A0A000A0A0A0008080
      8000A0A0A000A0A0A000A0A0A0000000000000000000000000009B9B9A00DFDE
      DE009B9B9A00000000009B9B9A00C8C6C700CAC7C8009B9B9A00000000009B9B
      9A00EBEBEB009B9B9A0000000000000000000000000000000000CCCCCC00EEEE
      ED00CCCCCC0000000000CCCCCC00E3E2E200E4E2E300CCCCCC0000000000CCCC
      CC00F4F4F400CCCCCC00000000000000000000000000000000009B9B9A00DFDE
      DD009B9B9A00000000009B9B9A00C8C6C700CAC7C8000083FF0000DDFF0000DD
      FF0000DDFF000083FF0000000000000000000000000000000000BDBDBD00E9E9
      E900BDBDBD0000000000BDBDBD00DADADA00DBDBDB00A0A0A000808080008080
      800080808000A0A0A00000000000000000000000000000000000000000009B9B
      9A0000000000000000009B9B9A00D5D3D400D5D3D4009B9B9A00000000000000
      00009B9B9A00000000000000000000000000000000000000000000000000CCCC
      CC000000000000000000CCCCCC00E9E8E800E9E8E800CCCCCC00000000000000
      0000CCCCCC000000000000000000000000000000000000000000000000009B9B
      9A0000000000000000009B9B9A00D5D3D400D5D3D4009B9B9A000083FF0000DD
      FF000083FF00000000000000000000000000000000000000000000000000BDBD
      BD000000000000000000BDBDBD00E3E3E300E3E3E300BDBDBD00A0A0A0008080
      8000A0A0A0000000000000000000000000000000000000000000000000000000
      000000000000000000009B9B9A009B9B9A009B9B9A009B9B9A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009B9B9A009B9B9A009B9B9A009B9B9A00000000000083
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000A0A0
      A00000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFC007C007C007C007
      800380038003800380038003800380038003800380038003C007C007C007C007
      F83FF83FF83FF83FF01FF01FF01FF01FF01FF01FF01FF01FE00FE00FE00FE00F
      E00FE00FE00FE00FE00FE00FE00FE00FF01FF01FF01FF01FF83FF83FF83FF83F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3FFC3FFC3FFC3FEC37EC37EC37EC37
      C423C423C423C4238001800180018001C003C003C003C003E007E007E007E007
      018001800180018003C003C003C003C003C003C003C003C00180018001800180
      E007E007E007E007C003C003C003C0038001800180018001C423C423C403C403
      EC37EC37EC07EC07FC3FFC3FFC2FFC2F00000000000000000000000000000000
      000000000000}
  end
  object cdsOrgWorkActivities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOrgWorkActivities'
    Left = 184
    Top = 184
    object cdsOrgWorkActivitiesORG_WORK_ACTIVITY_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_CODE'
      Required = True
    end
    object cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NO: TAbmesFloatField
      FieldName = 'ORG_WORK_ACTIVITY_NO'
      Required = True
    end
    object cdsOrgWorkActivitiesORG_WORK_ACTIVITY_NAME: TAbmesWideStringField
      FieldName = 'ORG_WORK_ACTIVITY_NAME'
      Required = True
      Size = 100
    end
  end
end
