inherited frPrcDataFieldEditFrame: TfrPrcDataFieldEditFrame
  Width = 684
  Height = 397
  Align = alClient
  ParentShowHint = False
  ShowHint = True
  object pnlPrcDataTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 684
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object tlbPrcDataQuickAdd: TToolBar
      Left = 553
      Top = 0
      Width = 131
      Height = 24
      Align = alRight
      AutoSize = True
      ButtonHeight = 24
      Images = dmMain.ilActions
      TabOrder = 7
      object btnAddBranch: TToolButton
        Left = 0
        Top = 0
        Action = actPrcDataAddBranch
      end
      object btnDeleteBranch: TToolButton
        Left = 23
        Top = 0
        Action = actDeleteBranch
      end
      object sepAddDeleteAll: TToolButton
        Left = 46
        Top = 0
        Width = 8
        ImageIndex = 17
        Style = tbsSeparator
      end
      object btnPrcDataAddAll: TToolButton
        Left = 54
        Top = 0
        Action = actPrcDataAddAll
      end
      object btnPrcDataDeleteAll: TToolButton
        Left = 77
        Top = 0
        Action = actPrcDataDeleteAll
      end
      object sepToggleQuickAdd: TToolButton
        Left = 100
        Top = 0
        Width = 8
        ImageIndex = 17
        Style = tbsSeparator
      end
      object btnToggleQuickAdd: TToolButton
        Left = 108
        Top = 0
        Action = actToggleQuickAdd
        Style = tbsCheck
      end
    end
    object tlbPrcDataTopButtons: TToolBar
      Left = 0
      Top = 0
      Width = 72
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Images = dmMain.ilActions
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object btnPrcDataAdd: TToolButton
        Left = 0
        Top = 0
        Action = actPrcDataAddChildLevel
      end
      object btnPrcDataDelete: TToolButton
        Left = 24
        Top = 0
        Action = actPrcDataDelete
      end
      object btnPrcDataEdit: TToolButton
        Left = 48
        Top = 0
        Action = actPrcDataEdit
      end
    end
    object tlbDocs: TToolBar
      Left = 395
      Top = 0
      Width = 89
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 36
      Images = dmMain.ilDocs
      TabOrder = 5
      object sepDocs: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
      object pnlPrcDataDocLabel: TPanel
        Left = 8
        Top = 0
        Width = 45
        Height = 24
        BevelOuter = bvNone
        Caption = #1055#1088#1086#1094#1077#1089
        TabOrder = 0
      end
      object btnPrcDataDoc: TToolButton
        Left = 53
        Top = 0
        Action = actPrcDataDoc
      end
    end
    object tlbCurrentDateFilter: TToolBar
      Left = 213
      Top = 0
      Width = 108
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      TabOrder = 3
      object sepFilterButton: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
      object btnToggleCurrentDateFilter: TSpeedButton
        Left = 8
        Top = 0
        Width = 23
        Height = 24
        Action = actToggleCurrentDateFilter
        AllowAllUp = True
        GroupIndex = 10
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
        Transparent = False
      end
      object sepCurrentDateFilter: TToolButton
        Left = 31
        Top = 0
        Width = 8
        ImageIndex = 0
        Style = tbsSeparator
      end
      object btnPastProcesses: TSpeedButton
        Left = 39
        Top = 0
        Width = 23
        Height = 24
        Action = actPastProcesses
        AllowAllUp = True
        GroupIndex = 11
        Flat = True
        Transparent = False
      end
      object btnPresentProcesses: TSpeedButton
        Left = 62
        Top = 0
        Width = 23
        Height = 24
        Action = actPresentProcesses
        AllowAllUp = True
        GroupIndex = 12
        Flat = True
        Transparent = False
      end
      object btnFutureProcesses: TSpeedButton
        Left = 85
        Top = 0
        Width = 23
        Height = 24
        Action = actFutureProcesses
        AllowAllUp = True
        GroupIndex = 13
        Flat = True
        Transparent = False
      end
    end
    object tlbIntersectionFilter: TToolBar
      Left = 321
      Top = 0
      Width = 74
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      TabOrder = 4
      object sepIntersectionFilter: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
      object btnToggleIntersectionFilterOn: TSpeedButton
        Left = 8
        Top = 0
        Width = 33
        Height = 24
        Action = actSetIntersectionFilterOn
        GroupIndex = 21
        Down = True
        Flat = True
        Transparent = False
      end
      object btnToggleIntersectionFitlerOff: TSpeedButton
        Left = 41
        Top = 0
        Width = 33
        Height = 24
        Action = actSetIntersectionFilterOff
        GroupIndex = 21
        Flat = True
        Transparent = False
      end
    end
    object tlbExcelExport: TToolBar
      Left = 128
      Top = 0
      Width = 85
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      Caption = 'tlbExcelExport'
      Images = dmMain.ilActions
      TabOrder = 2
      object sepToggleRollup: TToolButton
        Left = 0
        Top = 0
        Width = 8
        ImageIndex = 3
        Style = tbsSeparator
      end
      object btnToggleRollup: TToolButton
        Left = 8
        Top = 0
        Action = actToggleRollup
        Style = tbsCheck
      end
      object sepExcelExport: TToolButton
        Left = 31
        Top = 0
        Width = 8
        Caption = 'sepExcelExport'
        ImageIndex = 84
        Style = tbsSeparator
      end
      object btnExcelExport: TToolButton
        Left = 39
        Top = 0
        Action = actExcelExport
      end
      object btnPrintPrcData: TToolButton
        Left = 62
        Top = 0
        Action = actPrintPrcData
      end
    end
    object tlbSpecDocStatus: TToolBar
      Left = 484
      Top = 0
      Width = 31
      Height = 24
      Align = alLeft
      AutoSize = True
      ButtonHeight = 24
      Images = dmMain.ilActions
      TabOrder = 6
      object sepSpecDocStatus: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Style = tbsSeparator
      end
      object btnSpecDocStatus: TToolButton
        Left = 8
        Top = 0
        Action = actPrcDataSpecDocStatus
      end
    end
    inline frGridTreeListExpander: TfrGridTreeListExpanderFrame
      Left = 72
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
  object pnlPrcDataMain: TPanel [1]
    Left = 0
    Top = 24
    Width = 684
    Height = 373
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object grdProcesses: TAbmesDBGrid
      Left = 0
      Top = 0
      Width = 684
      Height = 373
      Align = alClient
      AutoFitColWidths = True
      DataGrouping.GroupLevels = <>
      DataSource = dsTree
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
      PopupMenu = pmCopyPaste
      RowHeight = 19
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      VTitleMargin = 6
      OnDblClick = grdProcessesDblClick
      OnDrawColumnCell = grdProcessesDrawColumnCell
      OnDataHintShow = grdProcessesDataHintShow
      OnGetCellParams = grdProcessesGetCellParams
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'PRC_OBJECT_TREE_DISPLAY_NAME'
          Footers = <>
          Title.Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 205
        end
        item
          EditButtons = <>
          FieldName = 'PRC_OBJECT_NAME'
          Footers = <>
          Title.Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 356
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'BEGIN_DATE'
          Footers = <>
          Title.Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
          Visible = False
          Width = 125
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = '_PRC_LEARNING_STATUS_NAME'
          Footers = <>
          Title.Caption = #1057#1090#1072#1090#1091#1089
          Visible = False
          Width = 70
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'STATUS_DATE'
          Footers = <>
          Title.Caption = #1054#1090' '#1076#1072#1090#1072
          Visible = False
          Width = 70
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'STATUS_EXISTANCE_MONTHS'
          Footers = <>
          Title.Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
          Visible = False
          Width = 110
        end
        item
          Alignment = taLeftJustify
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'PRC_ORG_DISTRIB_STATUS_CODE'
          Footers = <>
          Title.Caption = #1057#1090
          Title.Hint = #1055#1088#1086#1094#1077#1089#1077#1085' '#1057#1090#1072#1090#1091#1089
          Width = 20
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited alActions: TActionList
    Left = 8
    Top = 56
    object actToggleQuickAdd: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1074#1098#1079#1084#1086#1078#1085#1080' '#1079#1072' '#1076#1086#1073#1072#1074#1103#1085#1077' '#1055#1088#1086#1094#1077#1089#1080
      ImageIndex = 16
      OnExecute = actToggleQuickAddExecute
      OnUpdate = actToggleQuickAddUpdate
    end
    object actPrcDataAddChildLevel: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 145
      OnExecute = actPrcDataAddChildLevelExecute
      OnUpdate = actPrcDataAddChildLevelUpdate
    end
    object actPrcDataQuickAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 145
      OnExecute = actPrcDataQuickAddExecute
      OnUpdate = actPrcDataQuickAddUpdate
    end
    object actPrcDataDelete: TAction
      Hint = 
        #1048#1079#1090#1088#1080#1074#1072#1085#1077' ('#1055#1088#1080' '#1079#1072#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' Ctrl '#1089#1077' '#1087#1088#1086#1087#1091#1089#1082#1072#1090' '#1087#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1103#1090#1072' '#1079#1072' ' +
        #1076#1086#1073#1072#1074#1103#1085#1077' '#1080' '#1080#1079#1090#1088#1080#1074#1072#1085#1077')'
      ImageIndex = 146
      OnExecute = actPrcDataDeleteExecute
      OnUpdate = actPrcDataDeleteUpdate
    end
    object actPrcDataEdit: TAction
      Hint = 
        #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' ('#1055#1088#1080' '#1079#1072#1076#1098#1088#1078#1072#1085#1077' '#1085#1072' Ctrl '#1089#1077' '#1087#1088#1086#1087#1091#1089#1082#1072#1090' '#1087#1086#1090#1074#1098#1088#1078#1076#1077#1085#1080#1103#1090#1072' '#1079 +
        #1072' '#1076#1086#1073#1072#1074#1103#1085#1077' '#1080' '#1080#1079#1090#1088#1080#1074#1072#1085#1077')'
      ImageIndex = 147
      OnExecute = actPrcDataEditExecute
      OnUpdate = actPrcDataEditUpdate
    end
    object actPrcDataDoc: TAction
      Hint = #1048#1048#1054' '#1085#1072' '#1055#1088#1086#1094#1077#1089
      ImageIndex = 98
      OnExecute = actPrcDataDocExecute
      OnUpdate = actPrcDataDocUpdate
    end
    object actPastProcesses: TAction
      Caption = #1052
      GroupIndex = 11
      Hint = #1052#1080#1085#1072#1083#1080
      OnExecute = actPastProcessesExecute
      OnUpdate = actPastProcessesUpdate
    end
    object actPresentProcesses: TAction
      Caption = #1053
      GroupIndex = 12
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080
      OnExecute = actPresentProcessesExecute
      OnUpdate = actPresentProcessesUpdate
    end
    object actFutureProcesses: TAction
      Caption = #1041
      GroupIndex = 13
      Hint = #1041#1098#1076#1077#1097#1080
      OnExecute = actFutureProcessesExecute
      OnUpdate = actFutureProcessesUpdate
    end
    object actToggleCurrentDateFilter: TAction
      GroupIndex = 10
      Hint = #1060#1080#1083#1090#1088#1080#1088#1072#1085#1077' '#1089#1087#1088#1103#1084#1086' '#1090#1077#1082#1091#1097#1072' '#1076#1072#1090#1072
      ImageIndex = 3
      OnExecute = actToggleCurrentDateFilterExecute
      OnUpdate = actToggleCurrentDateFilterUpdate
    end
    object actSetIntersectionFilterOn: TAction
      Caption = #1040#1082#1090
      GroupIndex = 21
      Hint = #1040#1082#1090#1091#1072#1083#1085#1080
      OnExecute = actSetIntersectionFilterOnExecute
      OnUpdate = actSetIntersectionFilterOnUpdate
    end
    object actSetIntersectionFilterOff: TAction
      Caption = #1042#1089#1095#1082
      GroupIndex = 21
      Hint = #1042#1089#1080#1095#1082#1080
      OnExecute = actSetIntersectionFilterOffExecute
      OnUpdate = actSetIntersectionFilterOffUpdate
    end
    object actExcelExport: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actExcelExportExecute
      OnUpdate = actExcelExportUpdate
    end
    object actPrintPrcData: TAction
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      OnExecute = actPrintPrcDataExecute
      OnUpdate = actPrintPrcDataUpdate
    end
    object actPrcDataSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054' '#1085#1072' '#1055#1079#1055
      ImageIndex = 113
      OnExecute = actPrcDataSpecDocStatusExecute
      OnUpdate = actPrcDataSpecDocStatusUpdate
    end
    object actPrcDataAddAll: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080
      ImageIndex = 191
      OnExecute = actPrcDataAddAllExecute
      OnUpdate = actPrcDataAddAllUpdate
    end
    object actPrcDataDeleteAll: TAction
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080
      ImageIndex = 190
      OnExecute = actPrcDataDeleteAllExecute
      OnUpdate = actPrcDataDeleteAllUpdate
    end
    object actPrcDataAddBranch: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080' '#1085#1072#1076#1086#1083#1091' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103
      ImageIndex = 192
      OnExecute = actPrcDataAddBranchExecute
      OnUpdate = actPrcDataAddBranchUpdate
    end
    object actDeleteBranch: TAction
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077' '#1085#1072' '#1074#1089#1080#1095#1082#1080' '#1085#1072#1076#1086#1083#1091' '#1086#1090' '#1080#1079#1073#1088#1072#1085#1080#1103
      ImageIndex = 195
      OnExecute = actDeleteBranchExecute
      OnUpdate = actDeleteBranchUpdate
    end
    object actToggleRollup: TAction
      Checked = True
      Hint = #1061#1086#1088#1080#1079#1086#1085#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1087#1086#1089#1083#1077#1076#1085#1086#1090#1086' '#1085#1080#1074#1086
      ImageIndex = 200
      OnExecute = actToggleRollupExecute
      OnUpdate = actToggleRollupUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 72
    Top = 56
  end
  object cdsTree: TAbmesClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'SORT_PRC_OBJECT_FORMATTED_NO'
    Params = <>
    StoreDefs = True
    OnFilterRecord = cdsTreeFilterRecord
    Left = 8
    Top = 128
    object cdsTreePRC_OBJECT_CODE: TAbmesWideStringField
      FieldName = 'PRC_OBJECT_CODE'
      Size = 200
    end
    object cdsTreeVISUAL_PARENT_PRC_OBJECT_CODE: TAbmesWideStringField
      FieldName = 'VISUAL_PARENT_PRC_OBJECT_CODE'
      Size = 200
    end
    object cdsTreeIS_IN_PRC_DATA: TAbmesFloatField
      FieldName = 'IS_IN_PRC_DATA'
      FieldValueType = fvtBoolean
    end
    object cdsTreePRC_OBJECT_SHORT_NAME: TAbmesWideStringField
      FieldName = 'PRC_OBJECT_SHORT_NAME'
      Size = 30
    end
    object cdsTreePRC_OBJECT_NAME: TAbmesWideStringField
      FieldName = 'PRC_OBJECT_NAME'
      Size = 100
    end
    object cdsTreeLEVEL_NAME: TAbmesWideStringField
      FieldName = 'LEVEL_NAME'
      Size = 50
    end
    object cdsTreePRC_OBJECT_FORMATTED_NO: TAbmesWideStringField
      FieldName = 'PRC_OBJECT_FORMATTED_NO'
      Size = 250
    end
    object cdsTreeBEGIN_DATE: TAbmesDateTimeField
      FieldName = 'BEGIN_DATE'
      OnGetText = cdsTreeBEGIN_DATEGetText
    end
    object cdsTreeEND_DATE: TAbmesDateTimeField
      FieldName = 'END_DATE'
    end
    object cdsTreeSECONDARY_CHILD_LEVEL_NAME: TAbmesWideStringField
      FieldName = 'SECONDARY_CHILD_LEVEL_NAME'
      Size = 50
    end
    object cdsTreeDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTreeDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsTreeHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsTreeSORT_PRC_OBJECT_FORMATTED_NO: TAbmesWideStringField
      FieldName = 'SORT_PRC_OBJECT_FORMATTED_NO'
      Size = 500
    end
    object cdsTreePRC_OBJECT_IMAGE_INDEX: TAbmesFloatField
      FieldName = 'PRC_OBJECT_IMAGE_INDEX'
    end
    object cdsTreeIS_FILTER_ACCEPTED: TAbmesFloatField
      FieldName = 'IS_FILTER_ACCEPTED'
      FieldValueType = fvtBoolean
    end
    object cdsTreePRC_OP_REGIME_CODE: TAbmesFloatField
      FieldName = 'PRC_OP_REGIME_CODE'
    end
    object cdsTreePRC_LEARNING_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_CODE'
    end
    object cdsTreeSTATUS_DATE: TAbmesSQLTimeStampField
      FieldName = 'STATUS_DATE'
    end
    object cdsTreeSTATUS_EXISTANCE_MONTHS: TAbmesFloatField
      Alignment = taLeftJustify
      FieldName = 'STATUS_EXISTANCE_MONTHS'
      OnGetText = cdsTreeSTATUS_EXISTANCE_MONTHSGetText
    end
    object cdsTree_PRC_LEARNING_STATUS_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRC_LEARNING_STATUS_NAME'
      LookupDataSet = cdsPrcLearningStatuses
      LookupKeyFields = 'PRC_LEARNING_STATUS_CODE'
      LookupResultField = 'PRC_LEARNING_STATUS_NAME'
      KeyFields = 'PRC_LEARNING_STATUS_CODE'
      Lookup = True
    end
    object cdsTreeIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
      FieldValueType = fvtBoolean
    end
    object cdsTreeVISUAL_LEVEL_NO: TAbmesFloatField
      FieldName = 'VISUAL_LEVEL_NO'
    end
    object cdsTree_PRINT_DATE_INTERVAL: TAbmesWideStringField
      FieldName = '_PRINT_DATE_INTERVAL'
      Size = 50
    end
    object cdsTree_PRINT_STATUS_EXISTANCE_MONTHS: TAbmesWideStringField
      FieldName = '_PRINT_STATUS_EXISTANCE_MONTHS'
    end
    object cdsTree_PRINT_PRC_LEARNING_STATUS: TAbmesWideStringField
      FieldName = '_PRINT_PRC_LEARNING_STATUS'
    end
    object cdsTree_PRINT_PRC_STATUS_DATE: TAbmesWideStringField
      FieldName = '_PRINT_PRC_STATUS_DATE'
    end
    object cdsTreeDOC_SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'DOC_SPEC_PRODUCT_CODE'
    end
    object cdsTreePRC_RING_NO: TAbmesFloatField
      FieldName = 'PRC_RING_NO'
    end
    object cdsTreePRC_RING_LOCAL_NO: TAbmesFloatField
      FieldName = 'PRC_RING_LOCAL_NO'
    end
    object cdsTreePRC_OBJECT_TREE_DISPLAY_NAME: TAbmesWideStringField
      FieldName = 'PRC_OBJECT_TREE_DISPLAY_NAME'
      Size = 40
    end
    object cdsTreePRC_ORG_DISTRIB_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRC_ORG_DISTRIB_STATUS_CODE'
    end
    object cdsTreePRC_ORG_DISTRIBUTION_COUNT: TAbmesFloatField
      FieldName = 'PRC_ORG_DISTRIBUTION_COUNT'
    end
    object cdsTreeHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
      FieldValueType = fvtBoolean
    end
  end
  object dsTree: TDataSource
    DataSet = cdsTree
    Left = 40
    Top = 128
  end
  object cdsPrcOpRegimes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <>
    ProviderName = 'prvPrcOpRegimes'
    Left = 8
    Top = 176
    object cdsPrcOpRegimesPRC_OP_REGIME_CODE: TAbmesFloatField
      FieldName = 'PRC_OP_REGIME_CODE'
      Required = True
    end
    object cdsPrcOpRegimesPRC_OP_REGIME_NO: TAbmesFloatField
      FieldName = 'PRC_OP_REGIME_NO'
      Required = True
    end
    object cdsPrcOpRegimesPRC_OP_REGIME_NAME: TAbmesWideStringField
      FieldName = 'PRC_OP_REGIME_NAME'
      Required = True
    end
    object cdsPrcOpRegimesPRC_OP_REGIME_ABBREV: TAbmesWideStringField
      FieldName = 'PRC_OP_REGIME_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsPrcLearningStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProcesses
    Params = <>
    ProviderName = 'prvPrcLearningStatuses'
    Left = 40
    Top = 176
    object cdsPrcLearningStatusesPRC_LEARNING_STATUS_CODE: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_CODE'
      Required = True
    end
    object cdsPrcLearningStatusesPRC_LEARNING_STATUS_NO: TAbmesFloatField
      FieldName = 'PRC_LEARNING_STATUS_NO'
      Required = True
    end
    object cdsPrcLearningStatusesPRC_LEARNING_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PRC_LEARNING_STATUS_NAME'
      Required = True
    end
  end
  object ilLocalPrcImages: TImageList
    Left = 168
    Top = 176
    Bitmap = {
      494C0101010008001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
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
      00000000000000000000000000000000000000000000DB009500DB009500DB00
      9500DB0095000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF1CB700FF1CB700FF1C
      B700FF1CB7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF1CB700FF1CB700FF1C
      B700FF1CB7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF75D300FF75D300FF75
      D300FF75D3000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      87FF00000000000003FF00000000000003FF00000000000003FF000000000000
      03FF00000000000087FF00000000000000000000000000000000000000000000
      000000000000}
  end
  object alCopyPaste: TActionList
    Left = 288
    Top = 160
    object actCopy: TAction
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = actCopyExecute
      OnUpdate = actCopyUpdate
    end
    object actPaste: TAction
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = actPasteExecute
      OnUpdate = actPasteUpdate
    end
  end
  object pmCopyPaste: TPopupMenu
    Left = 320
    Top = 160
    object miCopy: TMenuItem
      Action = actCopy
    end
    object miPaste: TMenuItem
      Action = actPaste
    end
  end
end
