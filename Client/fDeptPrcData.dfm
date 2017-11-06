inherited fmDeptPrcData: TfmDeptPrcData
  ActiveControl = frDept
  Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1055#1086#1083#1077' - %s'
  ClientHeight = 530
  ClientWidth = 830
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 495
    Width = 830
    inherited pnlOKCancel: TPanel
      Left = 562
    end
    inherited pnlClose: TPanel
      Left = 473
    end
    inherited pnlApply: TPanel
      Left = 741
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 830
    Height = 495
    inherited sptDetail: TSplitter
      Top = 484
      Width = 814
      Visible = False
    end
    inherited pnlDetailGrid: TPanel
      Top = 484
      Width = 814
      Height = 0
      TabOrder = 3
      Visible = False
      inherited pnlDetailNavigator: TPanel
        Width = 814
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 814
        Height = 15
        DataSource = nil
      end
    end
    inherited pnlGrid: TPanel
      Left = 96
      Top = 80
      Align = alNone
      TabOrder = 2
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        TabStop = False
      end
    end
    object pcMain: TPageControl
      Left = 8
      Top = 65
      Width = 814
      Height = 419
      ActivePage = tsPrcData
      Align = alClient
      TabOrder = 1
      object tsPrcData: TTabSheet
        Caption = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
      end
      object tsOWDPriorities: TTabSheet
        Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
        ImageIndex = 1
        object splOWDPriorityCoveredDepts: TSplitter
          Left = 0
          Top = 187
          Width = 806
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ResizeStyle = rsUpdate
          OnCanResize = splOWDPriorityCoveredDeptsCanResize
        end
        inline frDeptOWDPriorities: TfrDeptOWDPriorities
          Left = 0
          Top = 0
          Width = 806
          Height = 187
          Align = alClient
          TabOrder = 1
          inherited pnlIncluded: TPanel
            Width = 377
            Height = 187
            inherited pnlIncludedNavigator: TPanel
              Width = 377
              inherited navIncluded: TDBColorNavigator
                Hints.Strings = ()
              end
            end
            inherited grdIncluded: TAbmesDBGrid
              Width = 377
              Height = 163
            end
          end
          inherited pnlButtons: TPanel
            Left = 377
            Height = 187
            inherited pnlProductButtons: TPanel
              Top = 17
            end
          end
          inherited pnlExcluded: TPanel
            Left = 421
            Width = 385
            Height = 187
            inherited pnlExcludedNavigator: TPanel
              Width = 385
              inherited navExcluded: TDBColorNavigator
                Left = 289
                Hints.Strings = ()
              end
            end
            inherited grdExcluded: TAbmesDBGrid
              Width = 385
              Height = 163
            end
          end
          inherited dsData: TDataSource
            DataSet = cdsGridData
          end
          inherited dsExcluded: TDataSource
            DataSet = cdsDeptNotOWDPriorities
          end
        end
        object pnlIsOWDPrioritiesSetComplete: TPanel
          Left = 304
          Top = 0
          Width = 73
          Height = 24
          BevelOuter = bvNone
          TabOrder = 0
          object lblOWDPrioritiesCount: TLabel
            Left = 0
            Top = 6
            Width = 16
            Height = 13
            Caption = #1041#1088'.'
          end
          object tlbIsOWDPrioritiesSetComplete: TToolBar
            Left = 49
            Top = 0
            Width = 24
            Height = 24
            Align = alRight
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 24
            Images = dmMain.ilActions
            TabOrder = 0
            object btnIsOWDPrioritiesSetComplete: TToolButton
              Left = 0
              Top = 0
              Action = actIsOWDPrioritiesSetComplete
            end
          end
          object edtOWDPrioritiesCount: TDBEdit
            Left = 21
            Top = 2
            Width = 25
            Height = 21
            Color = clBtnFace
            DataField = '_OWD_PRIORITIES_COUNT'
            DataSource = dsGridData
            TabOrder = 1
          end
        end
        object pnlCoveredDepts: TPanel
          Left = 0
          Top = 190
          Width = 806
          Height = 201
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object pnlCoveredDeptsTop: TPanel
            Left = 0
            Top = 0
            Width = 806
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lblCoveredDepts: TLabel
              Left = 194
              Top = 0
              Width = 612
              Height = 24
              Align = alRight
              Alignment = taRightJustify
              AutoSize = False
              Caption = 
                #1044#1088#1091#1075#1080' '#1058#1055', '#1079#1072' '#1082#1086#1080#1090#1086' '#1090#1077#1082#1091#1097#1086#1090#1086' '#1058#1055' '#1079#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1056#1077#1078#1080#1084' '#1089#1098#1097#1086' '#1087#1086#1077#1084#1072' '#1054#1090#1075#1086 +
                #1074#1086#1088#1085#1086#1089#1090' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Microsoft Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
            end
            object tlbOccupationEditButtons: TToolBar
              Left = 56
              Top = 0
              Width = 32
              Height = 24
              Align = alLeft
              AutoSize = True
              ButtonHeight = 24
              ButtonWidth = 24
              Images = dmMain.ilActions
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object sepToggleCoveredDepts: TToolButton
                Left = 0
                Top = 0
                Width = 8
                ImageIndex = 148
                Style = tbsSeparator
              end
              object btnToggleCoveredDepts: TToolButton
                Left = 8
                Top = 0
                Action = actToggleCoveredDepts
                Style = tbsCheck
              end
            end
            inline frCoveredDeptsTreeListExpander: TfrGridTreeListExpanderFrame
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
          object grdCoveredDepts: TAbmesDBGrid
            Left = 0
            Top = 24
            Width = 806
            Height = 177
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
            Options = [dgTitles, dgIndicator, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            OnDrawColumnCell = grdCoveredDeptsDrawColumnCell
            OnGetCellParams = grdCoveredDeptsGetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'DEPT_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 468
              end
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'DEPT_IDENTIFIER'
                Footers = <>
                Title.Caption = #1050#1086#1076
                Width = 100
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
                Title.Caption = #1054#1090#1075'.'
                Width = 33
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object pnlDept: TPanel
      Left = 8
      Top = 8
      Width = 814
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        814
        57)
      inline frDept: TfrDeptFieldEditFrame
        Left = 0
        Top = 0
        Width = 814
        Height = 49
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Anchors = [akLeft, akTop, akRight]
        Constraints.MaxHeight = 49
        TabOrder = 0
        inherited gbTreeNode: TGroupBox
          Width = 814
          DesignSize = (
            814
            49)
          inherited pnlTreeNode: TPanel
            Width = 798
            inherited pnlTreeNodeName: TPanel
              Width = 651
              DesignSize = (
                651
                22)
              inherited edtTreeNodeName: TDBEdit
                Width = 650
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = 651
            end
            inherited pnlRightButtons: TPanel
              Left = 762
            end
          end
        end
      end
    end
  end
  inherited dsGridData: TDataSource
    Top = 248
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsDataqryDeptOWDPriorities
    FieldDefs = <
      item
        Name = 'DEPT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEPT_OWDP_COVER_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_NO'
        DataType = ftFloat
      end
      item
        Name = 'OCC_WORK_DEPT_PRIORITY_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'HAS_NOT_COVERED_DESCENDANT'
        DataType = ftFloat
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    OnNewRecord = cdsGridDataNewRecord
    Top = 248
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsGridDataOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Required = True
      OnChange = cdsGridDataOCC_WORK_DEPT_PRIORITY_CODEChange
    end
    object cdsGridDataDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      Required = True
      OnGetText = cdsGridDataDEPT_OWDP_COVER_TYPE_CODEGetText
    end
    object cdsGridDataOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
    end
    object cdsGridDataOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Size = 50
    end
    object cdsGridData_DEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEPT_OWDP_COVER_TYPE_NAME'
      LookupDataSet = cdsDeptOWDPCoverTypes
      LookupKeyFields = 'DEPT_OWDP_COVER_TYPE_CODE'
      LookupResultField = 'DEPT_OWDP_COVER_TYPE_NAME'
      KeyFields = 'DEPT_OWDP_COVER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsGridDataHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField
      FieldName = 'HAS_NOT_COVERED_DESCENDANT'
      FieldValueType = fvtBoolean
    end
    object cdsGridData_ORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_LEVEL_CODE'
      LookupDataSet = cdsOccWorkDeptPriorities
      LookupKeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      LookupResultField = 'ORG_WORK_LEVEL_CODE'
      KeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Lookup = True
    end
    object cdsGridData_OWD_PRIORITIES_COUNT: TAggregateField
      Alignment = taCenter
      FieldName = '_OWD_PRIORITIES_COUNT'
      Active = True
      Expression = 'Count(OCC_WORK_DEPT_PRIORITY_CODE)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1055#1086#1083#1077' - %s'
    end
    object actIsOWDPrioritiesSetComplete: TAction
      Hint = #1050#1088#1072#1081#1085#1072' '#1054#1087#1088#1077#1076#1077#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
      ImageIndex = 105
      OnExecute = actIsOWDPrioritiesSetCompleteExecute
      OnUpdate = actIsOWDPrioritiesSetCompleteUpdate
    end
    object actToggleCoveredDepts: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1057#1082#1088#1080#1074#1072' '#1074#1089#1080#1095#1082#1080' '#1058#1055
      ImageIndex = 16
      OnExecute = actToggleCoveredDeptsExecute
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    Top = 312
  end
  inherited dsGridDataParams: TDataSource
    Top = 312
  end
  inherited dsData: TDataSource
    Top = 216
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptPrcData'
    Top = 216
    object cdsDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDataPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
      ProviderFlags = []
    end
    object cdsDataIS_GROUP: TAbmesFloatField
      FieldName = 'IS_GROUP'
      ProviderFlags = []
      Required = True
    end
    object cdsDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      ProviderFlags = []
      Required = True
    end
    object cdsDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
      Required = True
    end
    object cdsDataPRC_DATA: TBlobField
      FieldName = 'PRC_DATA'
      ProviderFlags = []
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsDataDEPT_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_TYPE_CODE'
      ProviderFlags = []
    end
    object cdsDataNODE_NO: TAbmesFloatField
      FieldName = 'NODE_NO'
      ProviderFlags = []
      Required = True
    end
    object cdsDataSUFFIX_LETTER: TAbmesWideStringField
      FieldName = 'SUFFIX_LETTER'
      ProviderFlags = []
      Size = 1
    end
    object cdsDataNODE_NAME: TAbmesWideStringField
      FieldName = 'NODE_NAME'
      ProviderFlags = []
      Required = True
      Size = 100
    end
    object cdsData_DEPT_TYPE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEPT_TYPE_ABBREV'
      LookupDataSet = cdsDeptTypes
      LookupKeyFields = 'DEPT_TYPE_CODE'
      LookupResultField = 'DEPT_TYPE_ABBREV'
      KeyFields = 'DEPT_TYPE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsDataHAS_OWD_PRIORITIES_CHANGES: TAbmesFloatField
      FieldName = 'HAS_OWD_PRIORITIES_CHANGES'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
    object cdsDataIS_OWD_PRIORITIES_SET_COMPLETE: TAbmesFloatField
      FieldName = 'IS_OWD_PRIORITIES_SET_COMPLETE'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsDataqryDeptOWDPriorities: TDataSetField
      FieldName = 'qryDeptOWDPriorities'
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProcesses
    Filtered = True
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
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_OWDP_COVER_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
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
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptOWDPCoveredDepts'
    AfterOpen = cdsDetailAfterOpen
    OnFilterRecord = cdsDetailFilterRecord
    object cdsDetailDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsDetailPARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsDetailDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      OnGetText = cdsDetailDEPT_NAMEGetText
      Size = 100
    end
    object cdsDetailDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      OnGetText = cdsDetailDEPT_IDENTIFIERGetText
      Size = 100
    end
    object cdsDetailIS_COVERED: TAbmesFloatField
      FieldName = 'IS_COVERED'
      FieldValueType = fvtBoolean
    end
    object cdsDetailIS_FIN_STORE: TAbmesFloatField
      FieldName = 'IS_FIN_STORE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDEPT_IMAGE_INDEX: TAbmesFloatField
      FieldName = 'DEPT_IMAGE_INDEX'
    end
    object cdsDetailHAS_COVERED_DESCENDANTS: TAbmesFloatField
      FieldName = 'HAS_COVERED_DESCENDANTS'
      FieldValueType = fvtBoolean
    end
    object cdsDetailSORT_FIELD: TAbmesWideStringField
      FieldName = 'SORT_FIELD'
      Size = 42
    end
    object cdsDetailIS_DELEGATED: TAbmesFloatField
      FieldName = 'IS_DELEGATED'
      FieldValueType = fvtBoolean
    end
    object cdsDetailHAS_DELEGATED_DESCENDANTS: TAbmesFloatField
      FieldName = 'HAS_DELEGATED_DESCENDANTS'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      OnGetText = cdsDetailDEPT_OWDP_COVER_TYPE_CODEGetText
    end
  end
  object cdsDeptTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <>
    ProviderName = 'prvDeptTypes'
    Left = 88
    Top = 216
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
  object cdsDeptNotOWDPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptNotOWDPriorities'
    BeforeOpen = cdsDeptNotOWDPrioritiesBeforeOpen
    Left = 88
    Top = 248
    object cdsDeptNotOWDPrioritiesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Required = True
    end
    object cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
      Required = True
    end
    object cdsDeptNotOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Required = True
      Size = 50
    end
    object cdsDeptNotOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField
      FieldName = 'HAS_NOT_COVERED_DESCENDANT'
      DisplayBoolValues = 
        '  !    '#1057#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1058#1055' '#1085#1072#1076#1086#1083#1091', '#1082#1086#1077#1090#1086' '#1086#1095#1072#1082#1074#1072' '#1087#1086#1077#1084#1072#1085#1077' '#1085#1072' '#1086#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090 +
        ' '#1079#1072' '#1090#1086#1079#1080' '#1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077';'
      FieldValueType = fvtBoolean
    end
  end
  object dsDeptNotOWDPriorites: TDataSource
    DataSet = cdsDeptNotOWDPriorities
    Left = 120
    Top = 248
  end
  object cdsDeptOWDPCoverTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Filtered = True
    Params = <>
    ProviderName = 'prvDeptOWDPCoverTypes'
    OnFilterRecord = cdsDeptOWDPCoverTypesFilterRecord
    Left = 120
    Top = 216
    object cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      Required = True
    end
    object cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NO: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_NO'
      Required = True
    end
    object cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DEPT_OWDP_COVER_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsDeptOWDPCoverTypesDEPT_OWDP_COVER_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'DEPT_OWDP_COVER_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object cdsOccWorkDeptPriorities: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Params = <>
    ProviderName = 'prvOccupationWorkDeptPriorities'
    Left = 200
    Top = 216
    object cdsOccWorkDeptPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsOccWorkDeptPrioritiesORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldName = 'ORG_WORK_LEVEL_CODE'
      Required = True
    end
  end
end
