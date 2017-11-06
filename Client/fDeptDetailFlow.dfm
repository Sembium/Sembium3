inherited fmDeptDetailFlow: TfmDeptDetailFlow
  Left = 227
  Top = 196
  Caption = #1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
  ClientHeight = 622
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 587
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      TabOrder = 5
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      TabOrder = 4
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      TabOrder = 6
      Visible = False
    end
    object pnlBaseGroupsButton: TPanel
      Left = 0
      Top = 0
      Width = 129
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnBaseGroups: TBitBtn
        Left = 8
        Top = 2
        Width = 113
        Height = 25
        Action = actBaseGroups
        Caption = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080'...'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000000000000000000000000000FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000000000000000000000000000FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
          0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000FFFFFF0000000000000000000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
    end
    object pnlParRelProductsForDeptButton: TPanel
      Left = 129
      Top = 0
      Width = 208
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnParRelProductsForDept: TBitBtn
        Left = 8
        Top = 2
        Width = 193
        Height = 25
        Action = actParRelProductsForDept
        Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1058#1055' '#1074' '#1048#1048#1056
        TabOrder = 0
      end
    end
    object pnlParRelProductsForDetailAndDeptButton: TPanel
      Left = 337
      Top = 0
      Width = 208
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnParRelProductsForDetailAndDept: TBitBtn
        Left = 8
        Top = 2
        Width = 193
        Height = 25
        Action = actParRelProductsForDetailAndDept
        Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1050#1057#1063' '#1080' '#1058#1055' '#1074' '#1048#1048#1056
        TabOrder = 0
      end
    end
    object pnlResizeWorkspaceButton: TPanel
      Left = 626
      Top = 0
      Width = 34
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 587
    inherited sptDetail: TSplitter
      Top = 266
      Width = 1001
    end
    inherited pnlDetailGrid: TPanel
      Top = 269
      Width = 1001
      Height = 310
      object btnDeptDetailGroupToolNeeds: TSpeedButton [0]
        Left = 144
        Top = 0
        Width = 265
        Height = 22
        Action = actDeptDetailGroupToolNeeds
      end
      object btnDeptDetailToolNeeds: TSpeedButton [1]
        Left = 416
        Top = 0
        Width = 249
        Height = 22
        Action = actDeptDetailToolNeeds
      end
      inherited pnlDetailNavigator: TPanel
        Width = 129
        Align = alNone
        inherited navDetail: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbDetailGridButtons: TToolBar
          Left = 96
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 409
        Height = 285
        Align = alNone
        Anchors = [akLeft, akTop, akBottom]
        FooterRowCount = 1
        FooterParams.Color = 15258325
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 7
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_GROUP_NAME'
            Footers = <>
            Width = 121
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TECH_QUANTITY'
            Footer.FieldName = '_SUM_TECH_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086'|'#1050'-'#1074#1086
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
            Footer.FieldName = '_TECH_MEASURE_ABBR'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086'|'#1052'.'#1077#1076'.'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GROUP_OPERATION_COUNT'
            Footer.FieldName = 'SUM_GROUP_OPERATION_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' XXX'
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_COUNT'
            Footer.FieldName = 'SUM_DETAIL_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CAPACITY_BUSY_HOURS'
            Footer.FieldName = 'SUM_CAPACITY_BUSY_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 62
          end>
      end
      object grdDetail2: TAbmesDBGrid
        Left = 416
        Top = 24
        Width = 585
        Height = 285
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dsDetail2
        DynProps = <>
        FooterRowCount = 1
        FooterParams.Color = 15258325
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
        ReadOnly = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 7
        OnDblClick = grdDetail2DblClick
        OnGetCellParams = grdDetail2GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_NAME'
            Footers = <>
            Title.Caption = #1050#1057#1063'|id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
            Width = 174
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_NO'
            Footers = <>
            Title.Caption = #1050#1057#1063'|id '#1094#1080#1092#1088#1086#1074
            Width = 76
          end
          item
            CellButtons = <>
            Color = 15532031
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1048' '#1048' '#1054
            Width = 13
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BASE_GROUP_COUNT'
            Footers = <>
            Width = 31
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TECH_QUANTITY'
            Footer.FieldName = '_SUM_GROUP_TECH_QUANTITY'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086'|'#1050'-'#1074#1086
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_TECH_MEASURE_ABBR'
            Footer.FieldName = '_GROUP_TECH_MEASURE_ABBR'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1055#1088#1077#1084#1080#1085#1072#1074#1072#1097#1086'|'#1052'.'#1077#1076'.'
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OPERATION_COUNT'
            Footer.FieldName = 'SUM_GROUP_OPERATION_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' XXX'
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MODEL_COUNT'
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' YYY'
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CAPACITY_BUSY_HOURS'
            Footer.FieldName = 'SUM_GROUP_CAPACITY_BUSY_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 62
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object pnlDetail2Navigator: TPanel
        Left = 904
        Top = 0
        Width = 97
        Height = 24
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        object navDetail2: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 96
          Height = 24
          DataSource = dsDetail2
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 0
          BeforeAction = navDetailBeforeAction
        end
      end
      object tlbDetail2: TToolBar
        Left = 760
        Top = 0
        Width = 77
        Height = 24
        Align = alNone
        AutoSize = True
        ButtonHeight = 24
        Caption = 'tlbTopGridButtons'
        Images = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        object btnSpecDocStatus: TToolButton
          Left = 0
          Top = 0
          Action = actSpecDocStatus
        end
        object sepAfterSpecDocStatus: TToolButton
          Left = 23
          Top = 0
          Width = 8
          ImageIndex = 87
          Style = tbsSeparator
        end
        object btnCopyToClipboard: TToolButton
          Left = 31
          Top = 0
          Action = actCopyToClipboard
          DropdownMenu = pmCopy
          Style = tbsDropDown
        end
        object sepBeforeDetailDoc: TToolButton
          Left = 69
          Top = 0
          Width = 8
          Caption = 'sepBeforeDetailDoc'
          ImageIndex = 86
          Style = tbsSeparator
        end
      end
      object tlbDetailDoc: TToolBar
        Left = 832
        Top = 0
        Width = 72
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbDeptDoc'
        Images = dmMain.ilDocs
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        object lblDetailDoc: TLabel
          Left = 0
          Top = 0
          Width = 28
          Height = 22
          Caption = ' '#1050#1057#1063' '
          Layout = tlCenter
        end
        object btnDetailDoc: TToolButton
          Left = 28
          Top = 0
          Action = actDetailDoc
        end
        object sepBeforeNavDetail2: TToolButton
          Left = 64
          Top = 0
          Width = 8
          Caption = 'sepBeforeNavDetail2'
          ImageIndex = 0
          Style = tbsSeparator
        end
      end
    end
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 258
      inherited pnlNavigator: TPanel
        Width = 1001
        object btnDeptToolNeeds: TSpeedButton [0]
          Left = 344
          Top = 0
          Width = 209
          Height = 22
          Action = actDeptToolNeeds
        end
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
        object tlbDeptDoc: TToolBar
          Left = 176
          Top = 0
          Width = 65
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Caption = 'tlbDeptDoc'
          Images = dmMain.ilDocs
          TabOrder = 3
          object sepBeforeDeptDoc: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeDeptDoc'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object lblDeptDoc: TLabel
            Left = 8
            Top = 0
            Width = 21
            Height = 22
            Caption = ' '#1058#1055' '
            Layout = tlCenter
          end
          object btnDeptDoc: TToolButton
            Left = 29
            Top = 0
            Action = actDeptDoc
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 552
        Height = 234
        FooterRowCount = 1
        FooterParams.Color = 15258325
        TitleParams.MultiTitle = True
        OnGetCellParams = grdDataGetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055'|'#1050#1086#1076
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = #1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 258
          end
          item
            CellButtons = <>
            Color = 15532031
            DynProps = <>
            EditButtons = <>
            FieldName = 'DEPT_HAS_DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = #1048' '#1048' '#1054
            Width = 13
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUM_OPERATION_COUNT'
            Footer.FieldName = 'SUM_SUM_OPERATION_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Title.Caption = #1041#1088#1086#1081' XXX'
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DETAIL_COUNT'
            Footer.FieldName = 'SUM_DETAIL_COUNT'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CAPACITY_BUSY_HOURS'
            Footer.FieldName = 'SUM_CAPACITY_BUSY_HOURS'
            Footer.ValueType = fvtFieldValue
            Footers = <>
            Width = 62
          end>
      end
      object pnlMasterRight: TPanel
        Left = 552
        Top = 24
        Width = 449
        Height = 234
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'CAPACITY_BUSY_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'SUM_OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_COUNT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'DEPT_IDENTIFIER; DEPT_CODE'
        Options = [ixUnique]
      end>
    IndexName = 'idxDefault'
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' - '#1050#1086#1076
      FieldName = 'DEPT_IDENTIFIER'
      Size = 50
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsGridDataDEPT_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1048#1048#1054
      FieldName = 'DEPT_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataDEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsGridDataCAPACITY_BUSY_HOURS: TAbmesFloatField
      DisplayLabel = #1053#1077#1086#1073#1093#1086#1076#1080#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090' ('#1095'.)'
      FieldName = 'CAPACITY_BUSY_HOURS'
      DisplayFormat = ',0.#'
    end
    object cdsGridDataSUM_OPERATION_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'SUM_OPERATION_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataDETAIL_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1050#1057#1063
      FieldName = 'DETAIL_COUNT'
      DisplayFormat = ',0'
    end
    object cdsGridDataSUM_SUM_OPERATION_COUNT: TAggregateField
      FieldName = 'SUM_SUM_OPERATION_COUNT'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(SUM_OPERATION_COUNT)'
    end
    object cdsGridDataSUM_DETAIL_COUNT: TAggregateField
      FieldName = 'SUM_DETAIL_COUNT'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(DETAIL_COUNT)'
    end
    object cdsGridDataSUM_CAPACITY_BUSY_HOURS: TAggregateField
      FieldName = 'SUM_CAPACITY_BUSY_HOURS'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.#'
      Expression = 'Sum(CAPACITY_BUSY_HOURS)'
    end
  end
  inherited alActions: TActionList
    Left = 592
    Top = 0
    inherited actForm: TAction
      Caption = #1055#1086#1090#1086#1094#1080' '#1086#1090' '#1059#1054#1073' '#1087#1088#1077#1079' '#1058#1055
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actBaseGroups: TAction
      Caption = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080'...'
      Hint = #1041#1072#1079#1086#1074#1080' '#1043#1088#1091#1087#1080
      ImageIndex = 47
      OnExecute = actBaseGroupsExecute
      OnUpdate = actBaseGroupsUpdate
    end
    object actDeptDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1086#1090#1086' '#1058#1055
      OnExecute = actDeptDocExecute
      OnUpdate = actDeptDocUpdate
    end
    object actDetailDoc: TAction
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1072#1090#1072' '#1050#1057#1063
      OnExecute = actDetailDocExecute
      OnUpdate = actDetailDocUpdate
    end
    object actCopyToClipboard: TAction
      Caption = 'actCopyToClipboard'
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' id '#1094#1080#1092#1088#1086#1074' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      ShortCut = 16451
      OnExecute = actCopyToClipboardExecute
      OnUpdate = actCopyToClipboardUpdate
    end
    object actCopyNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' id '#1083#1086#1075#1080#1095#1077#1089#1082#1080' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' id '#1083#1086#1075#1080#1095#1077#1089#1082#1080' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNameToClipboardExecute
    end
    object actCopyNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' id '#1094#1080#1092#1088#1086#1074' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072' id '#1094#1080#1092#1088#1086#1074' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNoToClipboardExecute
    end
    object actParRelProductsForDept: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1058#1055' '#1074' '#1048#1048#1056
      OnExecute = actParRelProductsForDeptExecute
      OnUpdate = actParRelProductsForDeptUpdate
    end
    object actParRelProductsForDeptPartnerOriented: TAction
      Caption = #1057#1091#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actParRelProductsForDeptPartnerOrientedExecute
      OnUpdate = actParRelProductsForDeptPartnerOrientedUpdate
    end
    object actParRelProductsForDeptProductOriented: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actParRelProductsForDeptProductOrientedExecute
      OnUpdate = actParRelProductsForDeptProductOrientedUpdate
    end
    object actParRelProductsForDetailAndDept: TAction
      Caption = #1042#1082#1083#1102#1095#1074#1072#1085#1077' '#1085#1072' '#1050#1057#1063' '#1080' '#1058#1055' '#1074' '#1048#1048#1056
      OnExecute = actParRelProductsForDetailAndDeptExecute
      OnUpdate = actParRelProductsForDetailAndDeptUpdate
    end
    object actParRelProductsForDetailAndDeptPartnerOriented: TAction
      Caption = #1057#1091#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actParRelProductsForDetailAndDeptPartnerOrientedExecute
      OnUpdate = actParRelProductsForDetailAndDeptPartnerOrientedUpdate
    end
    object actParRelProductsForDetailAndDeptProductOriented: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actParRelProductsForDetailAndDeptProductOrientedExecute
      OnUpdate = actParRelProductsForDetailAndDeptProductOrientedUpdate
    end
    object actDeptToolNeeds: TAction
      Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055'...'
      Hint = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055
      OnExecute = actDeptToolNeedsExecute
      OnUpdate = actDeptToolNeedsUpdate
    end
    object actDeptDetailGroupToolNeeds: TAction
      Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055' '#1080' '#1056#1086#1076' '#1050#1057#1063'...'
      Hint = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055' '#1080' '#1056#1086#1076' '#1050#1057#1063
      OnExecute = actDeptDetailGroupToolNeedsExecute
      OnUpdate = actDeptDetailGroupToolNeedsUpdate
    end
    object actDeptDetailToolNeeds: TAction
      Caption = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055' '#1080' '#1050#1057#1063'...'
      Hint = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097#1080' '#1056#1077#1089#1091#1088#1089#1080' '#1079#1072' '#1054#1087#1058#1055' '#1080' '#1050#1057#1063
      OnExecute = actDeptDetailToolNeedsExecute
      OnUpdate = actDeptDetailToolNeedsUpdate
    end
    object actSpecDocStatus: TAction
      Hint = #1057#1090#1088#1091#1082#1090#1091#1088#1085#1080' '#1080' '#1052#1072#1088#1096#1088#1091#1090#1085#1080' '#1052#1048#1048#1054
      ImageIndex = 113
      OnExecute = actSpecDocStatusExecute
      OnUpdate = actSpecDocStatusUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    DataSet = cdsDetail2
    object pdsGridDataParamsFLOW_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1085#1072' '#1055#1088#1077#1084#1080#1085#1072#1074#1072#1097#1080#1103' '#1055#1086#1090#1086#1082
      FieldName = 'FLOW_LEVEL'
      Required = True
    end
    object pdsGridDataParamsFLOW_TYPE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1055#1088#1077#1084#1080#1085#1072#1074#1072#1097' '#1055#1086#1090#1086#1082
      FieldName = 'FLOW_TYPE'
      Required = True
    end
    object pdsGridDataParamsCHOSEN_DEPTS: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'CHOSEN_DEPTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_DETAIL_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1050#1057#1063
      FieldName = 'CHOSEN_DETAIL_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_DEPT_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1086' '#1052#1103#1089#1090#1086' ('#1054#1087#1052') '#1085#1072' '#1058#1055
      FieldName = 'CHOSEN_DEPT_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1087#1088#1077#1084#1080#1085#1072#1074#1072#1085#1077' '#1087#1088#1077#1079' '#1058#1055' - '#1053#1072#1095#1072#1083#1086
      FieldName = 'BEGIN_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '#1085#1072' '#1055#1083#1072#1085#1086#1074#1086' '#1087#1088#1077#1084#1080#1085#1072#1074#1072#1085#1077' '#1087#1088#1077#1079' '#1058#1055' - '#1050#1088#1072#1081
      FieldName = 'END_DATE'
      DisplayFormat = 'ww\e\iiii'
      AbmesEditFormat = 'ww\e\iiii'
    end
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsTOOL_DETAIL_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1084#1087#1083#1077#1082#1090#1086#1074#1072#1097' '#1088#1077#1089#1091#1088#1089
      FieldName = 'TOOL_DETAIL_CODE'
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'idxDefault'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_GROUP_IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'CAPACITY_BUSY_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'GROUP_OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'GROUP_MODEL_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_COUNT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'DEPT_CODE; DETAIL_GROUP_NAME; DETAIL_GROUP_CODE'
        Options = [ixUnique]
        GroupingLevel = 1
      end>
    IndexName = 'idxDefault'
    StoreDefs = True
    OnCalcFields = cdsDetailCalcFields
    Left = 64
    Top = 336
    object cdsDetailDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailDETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailDETAIL_GROUP_NO: TAbmesFloatField
      DisplayLabel = #1056#1086#1076' '#1050#1057#1063
      FieldName = 'DETAIL_GROUP_NO'
    end
    object cdsDetailDETAIL_GROUP_NAME: TAbmesWideStringField
      DisplayLabel = #1056#1086#1076' '#1050#1057#1063
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object cdsDetailDETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetailTECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1050'-'#1074#1086
      FieldName = 'TECH_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetailCAPACITY_BUSY_HOURS: TAbmesFloatField
      DisplayLabel = #1053#1077#1086#1073#1093#1086#1076#1080#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090' ('#1095'.)'
      FieldName = 'CAPACITY_BUSY_HOURS'
      DisplayFormat = ',0.#'
    end
    object cdsDetailGROUP_OPERATION_COUNT: TAbmesFloatField
      FieldName = 'GROUP_OPERATION_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetailDETAIL_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1050#1057#1063
      FieldName = 'DETAIL_COUNT'
    end
    object cdsDetail_SUM_TECH_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_TECH_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsDetail_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_TECH_MEASURE_ABBR'
      Size = 5
      Calculated = True
    end
    object cdsDetailSUM_TECH_QUANTITY: TAggregateField
      FieldName = 'SUM_TECH_QUANTITY'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.##'
      Expression = 'Sum(TECH_QUANTITY)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetailMIN_TECH_MEASURE_ABBR: TAggregateField
      FieldName = 'MIN_TECH_MEASURE_ABBR'
      Active = True
      DisplayName = ''
      Expression = 'Min(DETAIL_GROUP_TECH_MEASURE_ABBR)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetailMAX_TECH_MEASURE_ABBR: TAggregateField
      FieldName = 'MAX_TECH_MEASURE_ABBR'
      Active = True
      DisplayName = ''
      Expression = 'Max(DETAIL_GROUP_TECH_MEASURE_ABBR)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetailSUM_GROUP_OPERATION_COUNT: TAggregateField
      FieldName = 'SUM_GROUP_OPERATION_COUNT'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(GROUP_OPERATION_COUNT)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetailSUM_DETAIL_COUNT: TAggregateField
      FieldName = 'SUM_DETAIL_COUNT'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(DETAIL_COUNT)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetailSUM_CAPACITY_BUSY_HOURS: TAggregateField
      FieldName = 'SUM_CAPACITY_BUSY_HOURS'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.#'
      Expression = 'Sum(CAPACITY_BUSY_HOURS)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
  end
  inherited dsDetail: TDataSource
    OnDataChange = dsDetailDataChange
    Left = 96
    Top = 336
  end
  inherited tmrMaster: TTimer
    Left = 624
  end
  object cdsDetail2: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conNeeds
    FieldDefs = <
      item
        Name = 'DEPT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'DEPT_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'DEPT_IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_GROUP_IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'DETAIL_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NO'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DETAIL_HAS_DOC'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_IS_ACTIVE'
        DataType = ftFloat
      end
      item
        Name = 'DETAIL_TECH_MEASURE_ABBR'
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'BASE_GROUP_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'TECH_QUANTITY'
        DataType = ftFloat
      end
      item
        Name = 'CAPACITY_BUSY_HOURS'
        DataType = ftFloat
      end
      item
        Name = 'OPERATION_COUNT'
        DataType = ftFloat
      end
      item
        Name = 'MODEL_COUNT'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxDefault'
        Fields = 'DEPT_CODE; DETAIL_GROUP_CODE; DETAIL_NAME; DETAIL_CODE'
        Options = [ixUnique]
        GroupingLevel = 2
      end>
    IndexName = 'idxDefault'
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_DEPTS_2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_FILTERED_PRODUCTS_3'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftTimeStamp
        Name = 'END_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'BEGIN_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptInput
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOOL_DETAIL_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FLOW_LEVEL'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'FLOW_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DEPT_PRODUCTS'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_DETAIL_PRODUCTS'
        ParamType = ptInput
      end>
    ProviderName = 'prvDeptDetailFlow'
    StoreDefs = True
    AfterOpen = cdsDetail2AfterOpen
    OnCalcFields = cdsDetail2CalcFields
    BeforeGetRecords = cdsDetail2BeforeGetRecords
    Left = 440
    Top = 312
    object cdsDetail2DEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
    end
    object cdsDetail2DEPT_IDENTIFIER: TAbmesWideStringField
      DisplayLabel = #1058#1055' - '#1050#1086#1076
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsDetail2DEPT_NAME: TAbmesWideStringField
      DisplayLabel = #1058#1055
      FieldName = 'DEPT_NAME'
      Size = 100
    end
    object cdsDetail2DEPT_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1048#1048#1054
      FieldName = 'DEPT_HAS_DOC'
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsDetail2DEPT_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DEPT_IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDetail2DETAIL_GROUP_CODE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_CODE'
    end
    object cdsDetail2DETAIL_GROUP_NO: TAbmesFloatField
      DisplayLabel = #1056#1086#1076' '#1050#1057#1063
      FieldName = 'DETAIL_GROUP_NO'
    end
    object cdsDetail2DETAIL_GROUP_NAME: TAbmesWideStringField
      DisplayLabel = #1056#1086#1076' '#1050#1057#1063
      FieldName = 'DETAIL_GROUP_NAME'
      Size = 100
    end
    object cdsDetail2DETAIL_GROUP_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_GROUP_IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDetail2DETAIL_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      DisplayLabel = #1058#1077#1093'. '#1084'.'#1077#1076'.'
      FieldName = 'DETAIL_GROUP_TECH_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetail2DETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsDetail2DETAIL_NO: TAbmesFloatField
      DisplayLabel = #1050#1057#1063
      FieldName = 'DETAIL_NO'
    end
    object cdsDetail2DETAIL_NAME: TAbmesWideStringField
      DisplayLabel = #1050#1057#1063
      FieldName = 'DETAIL_NAME'
      Size = 100
    end
    object cdsDetail2DETAIL_HAS_DOC: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1048#1048#1054
      FieldName = 'DETAIL_HAS_DOC'
      DisplayBoolValues = 'i;'
      FieldValueType = fvtBoolean
    end
    object cdsDetail2DETAIL_IS_ACTIVE: TAbmesFloatField
      FieldName = 'DETAIL_IS_ACTIVE'
      FieldValueType = fvtBoolean
    end
    object cdsDetail2DETAIL_TECH_MEASURE_ABBR: TAbmesWideStringField
      DisplayLabel = #1058#1077#1093'. '#1084'.'#1077#1076'.'
      FieldName = 'DETAIL_TECH_MEASURE_ABBR'
      Size = 5
    end
    object cdsDetail2BASE_GROUP_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1041#1043
      FieldName = 'BASE_GROUP_COUNT'
    end
    object cdsDetail2TECH_QUANTITY: TAbmesFloatField
      DisplayLabel = #1058#1077#1093'. '#1082'-'#1074#1086
      FieldName = 'TECH_QUANTITY'
      DisplayFormat = ',0.##'
    end
    object cdsDetail2CAPACITY_BUSY_HOURS: TAbmesFloatField
      DisplayLabel = #1053#1077#1086#1073#1093#1086#1076#1080#1084' '#1082#1072#1087#1072#1094#1080#1090#1077#1090' ('#1095'.)'
      FieldName = 'CAPACITY_BUSY_HOURS'
      DisplayFormat = ',0.#'
    end
    object cdsDetail2OPERATION_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1086#1087#1077#1088#1072#1094#1080#1080
      FieldName = 'OPERATION_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetail2MODEL_COUNT: TAbmesFloatField
      DisplayLabel = #1041#1088#1086#1081' '#1052#1054#1044#1045#1083'-'#1080
      FieldName = 'MODEL_COUNT'
      DisplayFormat = ',0'
    end
    object cdsDetail2GROUP_PRODUCT_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'GROUP_PRODUCT_CODE'
      Calculated = True
    end
    object cdsDetail2GROUP_DEPT_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'GROUP_DEPT_CODE'
      Calculated = True
    end
    object cdsDetail2_SUM_GROUP_TECH_QUANTITY: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_SUM_GROUP_TECH_QUANTITY'
      DisplayFormat = ',0.##'
      Calculated = True
    end
    object cdsDetail2_GROUP_TECH_MEASURE_ABBR: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_GROUP_TECH_MEASURE_ABBR'
      Size = 5
      Calculated = True
    end
    object cdsDetail2SPEC_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'SPEC_PRODUCT_CODE'
    end
    object cdsDetail2COUNT_DEPT_ROWS: TAggregateField
      FieldName = 'COUNT_DEPT_ROWS'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Count(DEPT_CODE)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetail2SUM_DEPT_OPERATION_COUNT: TAggregateField
      FieldName = 'SUM_DEPT_OPERATION_COUNT'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OPERATION_COUNT)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
    object cdsDetail2SUM_GROUP_OPERATION_COUNT: TAggregateField
      FieldName = 'SUM_GROUP_OPERATION_COUNT'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0'
      Expression = 'Sum(OPERATION_COUNT)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail2SUM_GROUP_TECH_QUANTITY: TAggregateField
      FieldName = 'SUM_GROUP_TECH_QUANTITY'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.##'
      Expression = 'Sum(TECH_QUANTITY)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail2MIN_GROUP_TECH_MEASURE_ABBR: TAggregateField
      FieldName = 'MIN_GROUP_TECH_MEASURE_ABBR'
      Active = True
      DisplayName = ''
      Expression = 'Min(DETAIL_TECH_MEASURE_ABBR)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail2MAX_GROUP_TECH_MEASURE_ABBR: TAggregateField
      FieldName = 'MAX_GROUP_TECH_MEASURE_ABBR'
      Active = True
      DisplayName = ''
      Expression = 'Max(DETAIL_TECH_MEASURE_ABBR)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail2COUNT_DETAIL_CODE: TAggregateField
      FieldName = 'COUNT_DETAIL_CODE'
      Active = True
      DisplayName = ''
      Expression = 'Count(DETAIL_CODE)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail2SUM_GROUP_CAPACITY_BUSY_HOURS: TAggregateField
      FieldName = 'SUM_GROUP_CAPACITY_BUSY_HOURS'
      Active = True
      DisplayName = ''
      DisplayFormat = ',0.#'
      Expression = 'Sum(CAPACITY_BUSY_HOURS)'
      GroupingLevel = 2
      IndexName = 'idxDefault'
    end
    object cdsDetail2SUM_DEPT_CAPACITY_BUSY_HOURS: TAggregateField
      FieldName = 'SUM_DEPT_CAPACITY_BUSY_HOURS'
      Active = True
      DisplayName = ''
      Expression = 'Sum(CAPACITY_BUSY_HOURS)'
      GroupingLevel = 1
      IndexName = 'idxDefault'
    end
  end
  object dsDetail2: TDataSource
    DataSet = cdsDetail2
    Left = 472
    Top = 312
  end
  object pmCopy: TPopupMenu
    Left = 499
    Top = 210
    object miCopyNoToClipboard: TMenuItem
      Action = actCopyNoToClipboard
      Default = True
    end
    object miCopyNameToClipboard: TMenuItem
      Action = actCopyNameToClipboard
    end
  end
  object cdsParRelProductsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 728
    object cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsParRelProductsParamsDETAIL_CODE: TAbmesFloatField
      FieldName = 'DETAIL_CODE'
    end
    object cdsParRelProductsParamsSTAGE_DEPT_CODE: TAbmesFloatField
      FieldName = 'STAGE_DEPT_CODE'
    end
    object cdsParRelProductsParamsOP_DEPT_CODE: TAbmesFloatField
      FieldName = 'OP_DEPT_CODE'
    end
    object cdsParRelProductsParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object cdsParRelProductsParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
  end
  object pmParRelProductsForDept: TPopupMenu
    Left = 792
    object miParRelProductsForDeptProductOriented: TMenuItem
      Action = actParRelProductsForDeptProductOriented
      Default = True
    end
    object miParRelProductsForDeptPartnerOriented: TMenuItem
      Action = actParRelProductsForDeptPartnerOriented
    end
  end
  object pmParRelProductsForDetailAndDept: TPopupMenu
    Left = 824
    object miParRelProductsForDetailAndDeptProductOriented: TMenuItem
      Action = actParRelProductsForDetailAndDeptProductOriented
      Default = True
    end
    object miParRelProductsForDetailAndDeptPartnerOriented: TMenuItem
      Action = actParRelProductsForDetailAndDeptPartnerOriented
    end
  end
  object pmDeptToolNeeds: TPopupMenu
    Left = 392
  end
  object pmDeptDetailGroupToolNeeds: TPopupMenu
    Left = 184
    Top = 264
  end
  object pmDeptDetailToolNeeds: TPopupMenu
    Left = 456
    Top = 272
  end
end
