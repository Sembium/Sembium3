inherited fmDeptsTreeEditorEdit: TfmDeptsTreeEditorEdit
  Left = 311
  Top = 151
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1055#1086#1083#1077' - %s'
  ClientHeight = 491
  ClientWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 456
    Width = 793
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 525
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      Left = 436
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      Left = 704
      TabOrder = 3
      Visible = False
    end
    object btnDeptPeriods: TBitBtn
      Left = 8
      Top = 2
      Width = 81
      Height = 25
      Action = actDeptPeriods
      Caption = #1059#1052' '#1058#1055'...'
      TabOrder = 0
    end
  end
  inline frProduct: TfrProductFieldEditFrame [1]
    Left = 176
    Top = 160
    Width = 609
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Anchors = [akLeft, akTop, akRight]
    Constraints.MaxHeight = 49
    TabOrder = 3
    TabStop = True
    inherited gbTreeNode: TGroupBox
      Width = 609
      Caption = ' '#1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1052#1103#1089#1090#1086' ('#1054#1087#1052') '#1085#1072' '#1058#1055' '
      inherited pnlTreeNode: TPanel
        Width = 593
        inherited pnlTreeNodeName: TPanel
          Width = 411
          inherited edtTreeNodeName: TDBEdit
            Width = 410
          end
        end
        inherited pnlTreeNodeNo: TPanel
          Left = 411
        end
        inherited pnlRightButtons: TPanel
          Left = 534
        end
      end
    end
  end
  object gbDeptIdentification: TGroupBox [2]
    Left = 8
    Top = 8
    Width = 777
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1058#1055' '
    TabOrder = 0
    DesignSize = (
      777
      65)
    object lblName: TLabel
      Left = 176
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = edtName
    end
    object lblDeptType: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
      FocusControl = edtCustomCode
    end
    object tlbDocs: TToolBar
      Left = 730
      Top = 31
      Width = 38
      Height = 24
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonWidth = 36
      Caption = 'tlbDocs'
      Images = dmMain.ilDocs
      TabOrder = 4
      object btnDocs: TToolButton
        Left = 0
        Top = 0
        Action = actDocumentationData
      end
    end
    object edtName: TDBEdit
      Left = 176
      Top = 32
      Width = 545
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NODE_NAME'
      DataSource = dsData
      TabOrder = 3
    end
    object edtSuffixLetter: TDBEdit
      Left = 143
      Top = 32
      Width = 18
      Height = 21
      DataField = 'SUFFIX_LETTER'
      DataSource = dsData
      TabOrder = 2
    end
    object edtCustomCode: TDBEdit
      Left = 73
      Top = 32
      Width = 70
      Height = 21
      DataField = 'NODE_NO'
      DataSource = dsData
      TabOrder = 1
    end
    object cbDeptType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DeleteKeyClear = False
      DataField = '_DEPT_TYPE_ABBREV'
      DataSource = dsData
      DisplayEmpty = ' '
      TabOrder = 0
    end
  end
  object gbOptions: TGroupBox [3]
    Left = 8
    Top = 80
    Width = 777
    Height = 73
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1054#1073#1097#1086' '#1061#1072#1088#1072#1082#1090#1077#1088#1080#1079#1080#1088#1072#1085#1077' '#1085#1072' '#1058#1055' '
    TabOrder = 1
    DesignSize = (
      777
      73)
    object lblsExternal: TLabel
      Left = 552
      Top = 19
      Width = 72
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1055#1086#1076#1074#1083#1072#1089#1090#1085#1086#1089#1090
    end
    object lblIsRecurrent: TLabel
      Left = 664
      Top = 19
      Width = 19
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1042#1080#1076
    end
    object chbIsBranch: TAbmesDBCheckBox
      Left = 8
      Top = 32
      Width = 121
      Height = 17
      Caption = #1058#1055' '#1043#1083#1072#1074#1085#1086
      DataField = 'IS_BRANCH'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
      ImmediateUpdateField = True
    end
    object cbIsExternal: TJvDBComboBox
      Left = 552
      Top = 35
      Width = 105
      Height = 21
      DataField = 'IS_EXTERNAL'
      DataSource = dsData
      Anchors = [akTop, akRight]
      Items.Strings = (
        #1042#1098#1090#1088#1077#1096#1085#1086
        #1042#1098#1085#1096#1085#1086)
      TabOrder = 2
      Values.Strings = (
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbIsRecurrent: TJvDBComboBox
      Left = 664
      Top = 35
      Width = 105
      Height = 21
      DataField = 'IS_RECURRENT'
      DataSource = dsData
      Anchors = [akTop, akRight]
      Items.Strings = (
        #1059#1089#1090#1072#1085#1086#1074#1077#1085#1086
        #1055#1091#1083#1089#1080#1088#1072#1097#1086)
      TabOrder = 3
      Values.Strings = (
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object gbStore: TGroupBox
      Left = 104
      Top = 16
      Width = 441
      Height = 43
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object bvlStore: TBevel
        Left = 231
        Top = 10
        Width = 9
        Height = 27
        Shape = bsLeftLine
      end
      object lblIsStore: TLabel
        Left = 24
        Top = 18
        Width = 106
        Height = 13
        Caption = #1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1086' '#1079#1072
        ParentShowHint = False
        ShowHint = True
      end
      object chbIsStore: TAbmesDBCheckBox
        Left = 8
        Top = 16
        Width = 17
        Height = 17
        Color = clBtnFace
        DataField = 'IS_STORE'
        DataSource = dsData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsComputerizedStore: TAbmesDBCheckBox
        Left = 240
        Top = 16
        Width = 111
        Height = 17
        Caption = #1050#1086#1084#1087#1102#1090#1098#1088#1080#1079#1080#1088#1072#1085#1086
        DataField = 'IS_COMPUTERIZED_STORE'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object chbIsFinStore: TAbmesDBCheckBox
        Left = 360
        Top = 16
        Width = 75
        Height = 17
        Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1086
        DataField = 'IS_FIN_STORE'
        DataSource = dsData
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        ImmediateUpdateField = True
      end
      object cbStoreType: TJvDBLookupCombo
        Left = 136
        Top = 16
        Width = 89
        Height = 21
        DropDownCount = 3
        DataField = 'STORE_TYPE_CODE'
        DataSource = dsData
        LookupField = 'STORE_TYPE_CODE'
        LookupDisplay = 'STORE_TYPE_ABBREV;STORE_TYPE_NAME'
        LookupSource = dsStoreTypes
        TabOrder = 1
      end
    end
  end
  object gbDateInterval: TGroupBox [4]
    Left = 8
    Top = 160
    Width = 161
    Height = 49
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1058#1055' '
    TabOrder = 2
    inline frDateIntervalFrame1: TfrDateIntervalFrame
      Left = 8
      Top = 17
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
    end
  end
  object pcMain: TPageControl [5]
    Left = 8
    Top = 216
    Width = 777
    Height = 232
    ActivePage = tsPrcData
    Anchors = [akLeft, akTop, akRight, akBottom]
    HotTrack = True
    TabOrder = 4
    object tsPrcData: TTabSheet
      BorderWidth = 7
      Caption = #1055#1088#1086#1094#1077#1089#1077#1085' '#1054#1073#1093#1074#1072#1090
      ImageIndex = 2
    end
    object tsDeptOWDPriorities: TTabSheet
      Caption = #1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
      ImageIndex = 3
      inline frDeptOWDPriorities: TfrDeptOWDPriorities
        Left = 0
        Top = 0
        Width = 769
        Height = 204
        Align = alClient
        TabOrder = 1
        inherited pnlIncluded: TPanel
          Width = 353
          Height = 204
          inherited pnlIncludedNavigator: TPanel
            Width = 353
            inherited navIncluded: TDBColorNavigator
              Hints.Strings = ()
            end
          end
          inherited grdIncluded: TAbmesDBGrid
            Width = 353
            Height = 180
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlButtons: TPanel
          Left = 353
          Height = 204
          inherited pnlProductButtons: TPanel
            Top = 25
          end
        end
        inherited pnlExcluded: TPanel
          Left = 397
          Width = 372
          Height = 204
          inherited pnlExcludedNavigator: TPanel
            Width = 372
            inherited navExcluded: TDBColorNavigator
              Left = 276
              Hints.Strings = ()
            end
          end
          inherited grdExcluded: TAbmesDBGrid
            Width = 372
            Height = 180
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
                Footers = <>
                Title.Caption = #1050#1086#1076
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
                Footers = <>
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 120
              end
              item
                Alignment = taLeftJustify
                AutoFitColWidth = False
                EditButtons = <>
                FieldName = 'HAS_NOT_COVERED_DESCENDANT'
                Footers = <>
                Title.Caption = '!'
                Title.Hint = 
                  #1055#1086#1082#1072#1079#1074#1072' '#1076#1072#1083#1080' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1058#1055' '#1085#1072#1076#1086#1083#1091', '#1082#1086#1077#1090#1086' '#1086#1095#1072#1082#1074#1072' '#1087#1086#1077#1084#1072#1085#1077' '#1085#1072' '#1086#1090#1075#1086#1074 +
                  #1086#1088#1085#1086#1089#1090' '#1079#1072' '#1090#1086#1079#1080' '#1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
                Width = 17
              end>
          end
        end
        inherited dsData: TDataSource
          DataSet = cdsDeptOWDPriorities
        end
        inherited dsExcluded: TDataSource
          DataSet = cdsDeptNotOWDPriorities
        end
      end
      object pnlIsOWDPrioritiesSetComplete: TPanel
        Left = 280
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
          DataSource = dsDeptOWDPriorities
          TabOrder = 1
        end
      end
    end
    object tsMinQuantities: TTabSheet
      BorderWidth = 6
      Caption = #1047#1072#1076#1077#1083#1080
      object pnlMinQuantitiesButtons: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object navMinQuantities: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 168
          Height = 24
          DataSource = dsStoreMinQuantities
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
          Align = alLeft
          Flat = True
          TabOrder = 0
          BeforeAction = navMinQuantitiesBeforeAction
        end
        object tlbMinQuantities: TToolBar
          Left = 168
          Top = 0
          Width = 289
          Height = 24
          Align = alLeft
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbMinQuantities'
          Images = dmMain.ilActions
          TabOrder = 1
          object sepMinQuantitiesExcelExport: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepMinQuantitiesExcelExport'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnMinQuantitiesExcelExport: TToolButton
            Left = 8
            Top = 0
            Action = actMinQuantitiesExcelExport
          end
          object sepPastMinQuantities: TToolButton
            Left = 32
            Top = 0
            Width = 8
            Caption = 'sepPastMinQuantities'
            ImageIndex = 84
            Style = tbsSeparator
          end
          object btnPastMinQuantities: TSpeedButton
            Left = 40
            Top = 0
            Width = 23
            Height = 24
            Action = actPastMinQuantities
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Transparent = False
          end
          object btnPresentMinQuantities: TSpeedButton
            Left = 63
            Top = 0
            Width = 23
            Height = 24
            Action = actPresentMinQuantities
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFutureMinQuantities: TSpeedButton
            Left = 86
            Top = 0
            Width = 23
            Height = 24
            Action = actFutureMinQuantities
            AllowAllUp = True
            GroupIndex = 4
            Down = True
            Flat = True
            Transparent = False
          end
          object tlbMinQuantityDocs: TToolBar
            Left = 109
            Top = 0
            Width = 82
            Height = 24
            Align = alLeft
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 36
            EdgeInner = esNone
            Images = dmMain.ilDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object sepMinQuantityDocs: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepMinQuantityDocs'
              ImageIndex = 0
              Style = tbsSeparator
            end
            object pnlMinQuantityDocs: TPanel
              Left = 8
              Top = 0
              Width = 38
              Height = 24
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = ' '#1047#1072#1076#1077#1083
              TabOrder = 0
            end
            object btnMinQuantityDocs: TToolButton
              Left = 46
              Top = 0
              Action = actMinQuantityDocs
            end
          end
          object tlbProductDocs: TToolBar
            Left = 191
            Top = 0
            Width = 69
            Height = 24
            Align = alLeft
            AutoSize = True
            ButtonHeight = 24
            ButtonWidth = 36
            EdgeInner = esNone
            Images = dmMain.ilDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object sepProductDocs: TToolButton
              Left = 0
              Top = 0
              Width = 8
              Caption = 'sepMinQuantityDocs'
              ImageIndex = 0
              Style = tbsSeparator
            end
            object pnlProductDocs: TPanel
              Left = 8
              Top = 0
              Width = 25
              Height = 24
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = #1059#1054#1073
              TabOrder = 0
            end
            object btnProductDocs: TToolButton
              Left = 33
              Top = 0
              Action = actProductDocs
            end
          end
        end
        object tlbToggleMinQuantitiesMeasures: TToolBar
          Left = 709
          Top = 0
          Width = 48
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 2
          object btnMinQuantitiesWorkMeasure: TToolButton
            Left = 0
            Top = 0
            Action = actMinQuantitiesWorkMeasure
            Grouped = True
            Style = tbsCheck
          end
          object btnMinQuantitiesAccountMeasure: TToolButton
            Left = 24
            Top = 0
            Action = actMinQuantitiesAccountMeasure
            Grouped = True
            Style = tbsCheck
          end
        end
      end
      object grdMinQuantities: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 757
        Height = 168
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = dsStoreMinQuantities
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        HorzScrollBar.Visible = False
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
        VTitleMargin = 6
        OnDblClick = grdMinQuantitiesDblClick
        OnDrawColumnCell = grdMinQuantitiesDrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NAME'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 436
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_NO'
            Footers = <>
            Title.Caption = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090'|id '#1094#1080#1092#1088#1086#1074
            Width = 70
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'MIN_QUANTITY'
            Footers = <>
            Title.Caption = #1056#1072#1073#1086#1090#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
          end
          item
            EditButtons = <>
            FieldName = 'ACCOUNT_MIN_QUANTITY'
            Footers = <>
            Title.Caption = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = '_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = '_ACCOUNT_MEASURE_ABBREV'
            Footers = <>
            Title.Caption = #1052'.'#1077#1076'.'
            Visible = False
            Width = 30
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited alActions: TActionList [6]
    Left = 248
    inherited actForm: TAction
      Caption = #1058#1077#1093#1085#1086#1083#1086#1075#1080#1095#1085#1086' '#1055#1086#1083#1077' - %s'
    end
    object actDocumentationData: TAction
      Hint = #1048#1048#1054
      ImageIndex = 1
      OnExecute = actDocumentationDataExecute
    end
    object actDeptPeriods: TAction
      Caption = #1059#1052' '#1058#1055'...'
      OnExecute = actDeptPeriodsExecute
    end
    object actMinQuantityDocs: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1079#1072#1076#1077#1083
      ImageIndex = 1
      OnExecute = actMinQuantityDocsExecute
      OnUpdate = actMinQuantityDocsUpdate
    end
    object actMinQuantitiesExcelExport: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      OnExecute = actMinQuantitiesExcelExportExecute
      OnUpdate = actMinQuantitiesExcelExportUpdate
    end
    object actMinQuantitiesWorkMeasure: TAction
      AutoCheck = True
      Caption = 'actMinQuantitiesWorkMeasure'
      Checked = True
      GroupIndex = 1
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 23
      OnExecute = actMinQuantitiesWorkMeasureExecute
    end
    object actMinQuantitiesAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 28
      OnExecute = actMinQuantitiesAccountMeasureExecute
    end
    object actPastMinQuantities: TAction
      Caption = #1052
      GroupIndex = 2
      Hint = #1052#1080#1085#1072#1083#1080' '#1079#1072#1076#1077#1083#1080
      OnExecute = actPastPresentFutureMinQuantitiesExecute
    end
    object actPresentMinQuantities: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 3
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080' '#1079#1072#1076#1077#1083#1080
      OnExecute = actPastPresentFutureMinQuantitiesExecute
    end
    object actFutureMinQuantities: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 4
      Hint = #1041#1098#1076#1077#1097#1080' '#1079#1072#1076#1077#1083#1080
      OnExecute = actPastPresentFutureMinQuantitiesExecute
    end
    object actAddMinQuantity: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actAddMinQuantityExecute
      OnUpdate = actAddMinQuantityUpdate
    end
    object actEditMinQuantity: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditMinQuantityExecute
      OnUpdate = actEditMinQuantityUpdate
    end
    object actDelMinQuantity: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 5
      OnExecute = actDelMinQuantityExecute
      OnUpdate = actDelMinQuantityUpdate
    end
    object actProductDocs: TAction
      Caption = 'actProductDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1059#1054#1073' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1047#1072#1076#1077#1083
      ImageIndex = 1
      OnExecute = actProductDocsExecute
      OnUpdate = actProductDocsUpdate
    end
    object actIsOWDPrioritiesSetComplete: TAction
      Hint = #1050#1088#1072#1081#1085#1072' '#1054#1087#1088#1077#1076#1077#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1056#1077#1078#1080#1084#1080' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
      ImageIndex = 105
      OnExecute = actIsOWDPrioritiesSetCompleteExecute
      OnUpdate = actIsOWDPrioritiesSetCompleteUpdate
    end
  end
  inherited dsData: TDataSource [7]
    Left = 96
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 64
  end
  object cdsStoreMinQuantities: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Filtered = True
    IndexFieldNames = 'PRODUCT_NO; BEGIN_DATE'
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvStoreMinQuantities'
    BeforeOpen = cdsStoreMinQuantitiesBeforeOpen
    BeforePost = cdsStoreMinQuantitiesBeforePost
    OnFilterRecord = cdsStoreMinQuantitiesFilterRecord
    OnNewRecord = cdsStoreMinQuantitiesNewRecord
    Left = 320
    object cdsStoreMinQuantitiesPRODUCT_STORE_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_STORE_CODE'
    end
    object cdsStoreMinQuantitiesPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1054#1073
      FieldName = 'PRODUCT_CODE'
      Required = True
      OnChange = cdsStoreMinQuantitiesPRODUCT_CODEChange
    end
    object cdsStoreMinQuantitiesPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsStoreMinQuantitiesPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsStoreMinQuantitiesMEASURE_CODE: TAbmesFloatField
      FieldName = 'MEASURE_CODE'
    end
    object cdsStoreMinQuantitiesACCOUNT_MEASURE_CODE: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_CODE'
    end
    object cdsStoreMinQuantitiesACCOUNT_MEASURE_COEF: TAbmesFloatField
      FieldName = 'ACCOUNT_MEASURE_COEF'
    end
    object cdsStoreMinQuantitiesPRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'PRODUCT_HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsStoreMinQuantitiesSTORE_CODE: TAbmesFloatField
      FieldName = 'STORE_CODE'
    end
    object cdsStoreMinQuantitiesBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsStoreMinQuantitiesBEGIN_DATEGetText
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsStoreMinQuantitiesEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      Required = True
      DisplayFormat = 'ww\e\iiii'
    end
    object cdsStoreMinQuantitiesIS_PAST: TAbmesFloatField
      FieldName = 'IS_PAST'
      FieldValueType = fvtBoolean
    end
    object cdsStoreMinQuantitiesIS_PRESENT: TAbmesFloatField
      FieldName = 'IS_PRESENT'
      FieldValueType = fvtBoolean
    end
    object cdsStoreMinQuantitiesIS_FUTURE: TAbmesFloatField
      FieldName = 'IS_FUTURE'
      FieldValueType = fvtBoolean
    end
    object cdsStoreMinQuantitiesMIN_QUANTITY: TAbmesFloatField
      DisplayLabel = #1047#1072#1076#1077#1083
      FieldName = 'MIN_QUANTITY'
      Required = True
      OnChange = cdsStoreMinQuantitiesMIN_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITY: TAbmesFloatField
      FieldName = 'ACCOUNT_MIN_QUANTITY'
      OnChange = cdsStoreMinQuantitiesACCOUNT_MIN_QUANTITYChange
      DisplayFormat = ',0.###'
      EditFormat = '0.###'
    end
    object cdsStoreMinQuantitiesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsStoreMinQuantitiesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsStoreMinQuantitiesHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsStoreMinQuantities_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsStoreMinQuantities_ACCOUNT_MEASURE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_ACCOUNT_MEASURE_ABBREV'
      LookupDataSet = cdsMeasures
      LookupKeyFields = 'MEASURE_CODE'
      LookupResultField = 'MEASURE_ABBREV'
      KeyFields = 'ACCOUNT_MEASURE_CODE'
      Size = 5
      Lookup = True
    end
    object cdsStoreMinQuantities_MAX_PRODUCT_STORE_CODE: TAggregateField
      FieldName = '_MAX_PRODUCT_STORE_CODE'
      Active = True
      Expression = 'Max(PRODUCT_STORE_CODE)'
    end
  end
  object dsStoreMinQuantities: TDataSource
    DataSet = cdsStoreMinQuantities
    Left = 320
    Top = 32
  end
  object cdsMeasures: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvMeasures'
    Left = 416
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
  object cdsStoreTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <>
    ProviderName = 'prvStoreTypes'
    Left = 384
    object cdsStoreTypesSTORE_TYPE_CODE: TAbmesFloatField
      FieldName = 'STORE_TYPE_CODE'
      Required = True
    end
    object cdsStoreTypesSTORE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STORE_TYPE_NAME'
      Required = True
      Size = 100
    end
    object cdsStoreTypesSTORE_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STORE_TYPE_ABBREV'
      Required = True
      Size = 100
    end
  end
  object dsStoreTypes: TDataSource
    DataSet = cdsStoreTypes
    Left = 384
    Top = 32
  end
  object cdsDeptOWDPriorities: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conDeptsTreeEditor
    Params = <
      item
        DataType = ftFloat
        Name = 'DEPT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptOWDPriorities'
    BeforeOpen = cdsDeptOWDPrioritiesBeforeOpen
    OnNewRecord = cdsDeptOWDPrioritiesNewRecord
    Left = 504
    object cdsDeptOWDPrioritiesDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODE: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Required = True
      OnChange = cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_CODEChange
    end
    object cdsDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODE: TAbmesFloatField
      FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
      Required = True
      OnGetText = cdsDeptOWDPrioritiesDEPT_OWDP_COVER_TYPE_CODEGetText
    end
    object cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NO: TAbmesFloatField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
    end
    object cdsDeptOWDPrioritiesOCC_WORK_DEPT_PRIORITY_NAME: TAbmesWideStringField
      FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
      Size = 50
    end
    object cdsDeptOWDPriorities_DEPT_OWDP_COVER_TYPE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEPT_OWDP_COVER_TYPE_NAME'
      LookupDataSet = cdsDeptOWDPCoverTypes
      LookupKeyFields = 'DEPT_OWDP_COVER_TYPE_CODE'
      LookupResultField = 'DEPT_OWDP_COVER_TYPE_NAME'
      KeyFields = 'DEPT_OWDP_COVER_TYPE_CODE'
      Size = 100
      Lookup = True
    end
    object cdsDeptOWDPrioritiesHAS_NOT_COVERED_DESCENDANT: TAbmesFloatField
      FieldName = 'HAS_NOT_COVERED_DESCENDANT'
      FieldValueType = fvtBoolean
    end
    object cdsDeptOWDPriorities_ORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_LEVEL_CODE'
      LookupDataSet = cdsOccWorkDeptPriorities
      LookupKeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      LookupResultField = 'ORG_WORK_LEVEL_CODE'
      KeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Lookup = True
    end
    object cdsDeptOWDPriorities_OWD_PRIORITIES_COUNT: TAggregateField
      Alignment = taCenter
      FieldName = '_OWD_PRIORITIES_COUNT'
      Active = True
      Expression = 'Count(DEPT_CODE)'
    end
  end
  object dsDeptOWDPriorities: TDataSource
    DataSet = cdsDeptOWDPriorities
    Left = 504
    Top = 32
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
    Left = 536
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
    object cdsDeptNotOWDPriorities_ORG_WORK_LEVEL_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_ORG_WORK_LEVEL_CODE'
      LookupDataSet = cdsOccWorkDeptPriorities
      LookupKeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      LookupResultField = 'ORG_WORK_LEVEL_CODE'
      KeyFields = 'OCC_WORK_DEPT_PRIORITY_CODE'
      Lookup = True
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
    Left = 536
    Top = 32
  end
  object cdsDeptOWDPCoverTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    Filtered = True
    Params = <>
    ProviderName = 'prvDeptOWDPCoverTypes'
    OnFilterRecord = cdsDeptOWDPCoverTypesFilterRecord
    Left = 568
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
    Left = 640
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
