inherited GridForm: TGridForm
  Left = 333
  Top = 245
  ActiveControl = grdData
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'GridForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    TabOrder = 1
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 537
    Height = 326
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 8
    TabOrder = 0
    object pnlGrid: TPanel
      Left = 8
      Top = 8
      Width = 521
      Height = 310
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlNavigator: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object pnlFilterButton: TPanel
          Left = 168
          Top = 0
          Width = 24
          Height = 24
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object btnFilter: TSpeedButton
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
        object navData: TDBColorNavigator
          Left = 0
          Top = 0
          Width = 168
          Height = 24
          DataSource = dsGridData
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit]
          Align = alLeft
          Flat = True
          TabOrder = 0
          BeforeAction = navDataBeforeAction
        end
        object tlbTopGridButtons: TToolBar
          Left = 192
          Top = 0
          Width = 56
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Caption = 'tlbTopGridButtons'
          Images = dmMain.ilActions
          TabOrder = 2
          object sepBeforeExcelExportButton: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepBeforeExcelExportButton'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object btnExcelExport: TToolButton
            Left = 8
            Top = 0
            Action = actExcelExport
          end
          object btnPrintOnNavigator: TToolButton
            Left = 32
            Top = 0
            Action = actPrint
          end
        end
      end
      object grdData: TAbmesDBGrid
        Left = 0
        Top = 24
        Width = 521
        Height = 286
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnDblClick = grdDataDblClick
        OnDrawColumnCell = grdDataDrawColumnCell
        OnSortMarkingChanged = grdDataSortMarkingChanged
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object dsGridData: TDataSource [2]
    DataSet = cdsGridData
    Left = 32
    Top = 32
  end
  object cdsGridData: TAbmesClientDataSet [3]
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeOpen = cdsGridDataBeforeOpen
    AfterOpen = cdsGridDataAfterOpen
    BeforeClose = cdsGridDataBeforeClose
    AfterPost = cdsGridDataAfterPost
    AfterCancel = cdsGridDataAfterCancel
    AfterDelete = cdsGridDataAfterDelete
    OnReconcileError = cdsGridDataReconcileError
    KeyViolationErrorMessage = #1042#1077#1095#1077' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1090#1072#1082#1098#1074' '#1079#1072#1087#1080#1089
    Top = 32
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'GridForm'
    end
    object actFilter: TAction
      Hint = #1060#1080#1083#1090#1098#1088
      ImageIndex = 3
      ShortCut = 32838
      Visible = False
      OnExecute = actFilterExecute
      OnUpdate = actFilterUpdate
    end
    object actInsertRecord: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actInsertRecordExecute
      OnUpdate = actInsertRecordUpdate
    end
    object actDelRecord: TAction
      Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 5
      OnExecute = actDelRecordExecute
      OnUpdate = actDelRecordUpdate
    end
    object actEditRecord: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditRecordExecute
      OnUpdate = actEditRecordUpdate
    end
    object actExcelExport: TAction
      Hint = #1045#1082#1089#1087#1086#1088#1090' '#1082#1098#1084' Excel'
      ImageIndex = 83
      ShortCut = 16453
      OnExecute = actExcelExportExecute
      OnUpdate = actExcelExportUpdate
    end
    object actInsertLike: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086
      ImageIndex = 4
      OnExecute = actInsertLikeExecute
      OnUpdate = actInsertLikeUpdate
    end
    object actInsertMenu: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actInsertMenuExecute
      OnUpdate = actInsertMenuUpdate
    end
    object actRefresh: TAction
      Caption = 'actRefresh'
      ShortCut = 116
      OnExecute = actRefreshExecute
      OnUpdate = actRefreshUpdate
    end
  end
  object pdsGridDataParams: TParamDataSet [5]
    BeforePost = pdsGridDataParamsBeforePost
    DataSet = cdsGridData
    Top = 64
    object pdsGridDataParamsCURRENT_FILTER_VARIANT_CODE: TAbmesFloatField
      FieldName = 'CURRENT_FILTER_VARIANT_CODE'
      ProviderFlags = []
      FieldValueType = fvtInteger
    end
  end
  object dsGridDataParams: TDataSource [6]
    DataSet = pdsGridDataParams
    Left = 32
    Top = 64
  end
  object pmInsertMenu: TPopupMenu
    Left = 88
    object miInsert: TMenuItem
      Action = actInsertRecord
      Default = True
    end
    object miInsertLike: TMenuItem
      Action = actInsertLike
    end
  end
end
