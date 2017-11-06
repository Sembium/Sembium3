inherited frDoc: TfrDoc
  Width = 402
  Height = 217
  Constraints.MinHeight = 62
  OnResize = FrameResize
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 402
    Height = 217
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 402
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object btnInsertDocItem: TSpeedButton
        Left = 0
        Top = 2
        Width = 23
        Height = 22
        Action = actInsertMenu
        Flat = True
      end
      object btnDelDocItem: TSpeedButton
        Left = 24
        Top = 2
        Width = 23
        Height = 22
        Action = actDelDocItem
        Flat = True
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
      end
      object btnEditDocItem: TSpeedButton
        Left = 48
        Top = 2
        Width = 23
        Height = 22
        Action = actEditDocItem
        Flat = True
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
      end
      object Bevel1: TBevel
        Left = 75
        Top = 3
        Width = 7
        Height = 19
        Shape = bsLeftLine
      end
      object btnExecDocItemData: TSpeedButton
        Left = 80
        Top = 2
        Width = 23
        Height = 22
        Action = actExecDocItemData
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF0000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF0000FFFFFF00FFFFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF000000FF000000FF0000FFFFFF00FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF000000FF000000FF000000FF000000FF
          0000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF000000FF000000FF000000FF000000FF
          000000FF000000FF0000FFFFFF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF000000FF000000FF000000FF000000FF
          000000FF000000FF00008080800080808000FFFFFF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF000000FF000000FF000000FF000000FF
          00008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF000000FF000000FF0000808080008080
          8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF000000FF000000FF00008080800080808000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800000FF00008080800080808000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object Bevel2: TBevel
        Left = 107
        Top = 3
        Width = 7
        Height = 19
        Shape = bsLeftLine
      end
      object edtDocEmptinessRequirementName: TJvDBComboEdit
        Left = 112
        Top = 2
        Width = 111
        Height = 21
        TabStop = False
        BeepOnError = False
        ButtonHint = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1052#1048#1048#1054' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090
        Color = clBtnFace
        DataField = '_DOC_EMPTINESS_REQUIREMENT_NAME'
        DataSource = dsClonedDocs
        ImageKind = ikEllipsis
        ButtonWidth = 16
        ReadOnly = True
        TabOrder = 0
        OnButtonClick = edtDocEmptinessRequirementNameButtonClick
      end
      object edtDocItemCountStatus: TDBEdit
        Left = 254
        Top = 2
        Width = 41
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'DOC_ITEM_COUNT_STATUS'
        DataSource = dsClonedDocs
        ReadOnly = True
        TabOrder = 2
      end
      object edtDocStatus: TDBEdit
        Left = 232
        Top = 2
        Width = 21
        Height = 21
        TabStop = False
        Color = clBtnFace
        DataField = 'DOC_EMPTINESS_REQUIREMENT_CODE'
        DataSource = dsClonedDocs
        ReadOnly = True
        TabOrder = 1
      end
      object pnlTopRight: TPanel
        Left = 312
        Top = 0
        Width = 90
        Height = 25
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object pnlTopRightClient: TPanel
          Left = 0
          Top = 0
          Width = 65
          Height = 25
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnlToggleShowInactiveDocItems: TPanel
            Left = 33
            Top = 0
            Width = 32
            Height = 25
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object btnToggleShowInactiveDocItems: TSpeedButton
              Left = 0
              Top = 2
              Width = 31
              Height = 22
              Action = actToggleShowInactiveDocItems
              AllowAllUp = True
              GroupIndex = 10
              Flat = True
            end
          end
        end
        object tlbMaximize: TToolBar
          Left = 65
          Top = 0
          Width = 25
          Height = 25
          Align = alRight
          AutoSize = True
          ButtonHeight = 25
          ButtonWidth = 25
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Marlett'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Transparent = False
          object btnMaximize: TSpeedButton
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Action = actMaximize
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Transparent = False
          end
        end
      end
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 192
      Width = 402
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object pnlCount: TPanel
        Left = 328
        Top = 0
        Width = 74
        Height = 25
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object lblCount: TLabel
          Left = 8
          Top = 6
          Width = 16
          Height = 13
          Caption = #1041#1088'.'
        end
        object btnSetComplete: TSpeedButton
          Left = 50
          Top = 1
          Width = 23
          Height = 22
          Action = actSetComplete
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00000000000000000000000000FFFFFF000000000000FF0000000000000000
            00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            000000000000FFFFFF00000000000000000000FF000000FF000000FF00000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF000000000000FF000000FF00000000000000FF000000FF
            000000000000000000000000000000000000FFFFFF000000000000000000FFFF
            FF00000000000000000000FF000000FF000000000000FFFFFF000000000000FF
            000000FF000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
            FF000000000000FF000000FF00000000000000000000FFFFFF00000000000000
            000000FF0000000000000000000000000000FFFFFF000000000000000000FFFF
            FF000000000000FF000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF0000FF000000FF000000000000FFFFFF00FFFFFF000000000000000000FFFF
            FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
            00000000000000FF000000FF000000000000FFFFFF000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000000000FF000000FF0000000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
            0000FFFFFF00FFFFFF000000000000FF000000FF00000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00000000000000000000FF00000000000000000000FFFF
            FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000FF00FF00000000000000000000000000FFFF
            FF0000000000FFFFFF0000000000000000000000000000000000000000000000
            000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000000000000000000000000000000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object edtCount: TDBEdit
          Left = 26
          Top = 2
          Width = 23
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'ACTIVE_DOC_ITEM_COUNT'
          DataSource = dsClonedDocs
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object pnlGrid: TPanel
      Left = 0
      Top = 25
      Width = 402
      Height = 167
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object grdClonedDocItems: TAbmesDBGrid
        Left = 0
        Top = 0
        Width = 402
        Height = 167
        Align = alClient
        DataGrouping.GroupLevels = <>
        DataSource = dsClonedDocItems
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbAlwaysShowEh
        OnDblClick = grdClonedDocItemsDblClick
        OnGetCellParams = grdClonedDocItemsGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_NO'
            Footers = <>
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'IS_INACTIVE'
            Footers = <>
            Title.Caption = #1055
            Width = 14
          end
          item
            EditButtons = <>
            FieldName = '_DOC_ITEM_TYPE_NAME'
            Footers = <>
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_NAME'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = '_DEVELOP_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1060#1072#1079#1072'|'#1056
          end
          item
            EditButtons = <>
            FieldName = '_AUTHORIZE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1060#1072#1079#1072'|'#1040
          end
          item
            EditButtons = <>
            FieldName = '_APPROVE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1060#1072#1079#1072'|'#1059
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited alActions: TActionList
    Top = 80
    object actInsertMenu: TAction
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      ImageIndex = 4
      OnExecute = actInsertMenuExecute
      OnUpdate = actInsertMenuUpdate
    end
    object actInsertDocItem: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077
      OnExecute = actInsertDocItemExecute
      OnUpdate = actInsertDocItemUpdate
    end
    object actCreateLikeDocItem: TAction
      Caption = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086'...'
      Hint = #1044#1086#1073#1072#1074#1103#1085#1077' '#1082#1072#1090#1086
      OnExecute = actCreateLikeDocItemExecute
      OnUpdate = actCreateLikeDocItemUpdate
    end
    object actDelDocItem: TAction
      Hint = #1048#1079#1090#1088#1080#1074#1072#1085#1077
      ImageIndex = 5
      OnExecute = actDelDocItemExecute
      OnUpdate = actDelDocItemUpdate
    end
    object actEditDocItem: TAction
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077
      ImageIndex = 6
      OnExecute = actEditDocItemExecute
      OnUpdate = actEditDocItemUpdate
    end
    object actSetComplete: TAction
      Hint = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1082#1088#1072#1081#1085#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1086#1089#1090' '#1085#1072' '#1052#1048#1048#1054
      ImageIndex = 105
      OnExecute = actSetCompleteExecute
      OnUpdate = actSetCompleteUpdate
    end
    object actEditDocEmptinessRequirement: TAction
      Hint = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1052#1048#1048#1054' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090
      OnExecute = actEditDocEmptinessRequirementExecute
      OnUpdate = actEditDocEmptinessRequirementUpdate
    end
    object actToggleShowInactiveDocItems: TAction
      Caption = 'XX '#1055
      GroupIndex = 10
      Hint = #1055#1086#1082#1072#1079#1074#1072'/'#1089#1082#1088#1080#1074#1072' '#1087#1072#1089#1080#1074#1085#1080#1090#1077' '#1088#1077#1076#1086#1074#1077
      OnExecute = actToggleShowInactiveDocItemsExecute
      OnUpdate = actToggleShowInactiveDocItemsUpdate
    end
    object actExecDocItemData: TAction
      Hint = #1054#1090#1074#1072#1088#1103#1085#1077' '#1085#1072' '#1089#1098#1076#1098#1088#1078#1072#1085#1080#1077#1090#1086' '#1085#1072' '#1048#1048#1054
      ImageIndex = 114
      OnExecute = actExecDocItemDataExecute
      OnUpdate = actExecDocItemDataUpdate
    end
    object actMaximize: TAction
      Caption = '1'
      OnExecute = actMaximizeExecute
      OnUpdate = actMaximizeUpdate
    end
    object actLoadFromDocProfile: TAction
      Caption = #1047#1072#1088#1077#1078#1076#1072#1085#1077' '#1086#1090' '#1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083'...'
      Hint = #1047#1072#1088#1077#1078#1076#1072#1085#1077' '#1086#1090' '#1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083
      OnExecute = actLoadFromDocProfileExecute
      OnUpdate = actLoadFromDocProfileUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 32
    Top = 80
  end
  object cdsClonedDocs: TAbmesClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    OnFilterRecord = cdsClonedDocsFilterRecord
    Left = 112
    Top = 80
    object cdsClonedDocsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClonedDocsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClonedDocsDOC_EMPTINESS_REQUIREMENT_CODE: TAbmesFloatField
      Alignment = taCenter
      FieldName = 'DOC_EMPTINESS_REQUIREMENT_CODE'
      OnGetText = cdsClonedDocsDOC_EMPTINESS_REQUIREMENT_CODEGetText
    end
    object cdsClonedDocsIS_COMPLETE: TAbmesFloatField
      FieldName = 'IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsClonedDocsRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
      ProviderFlags = []
    end
    object cdsClonedDocsINACTIVE_DOC_ITEM_COUNT: TAbmesFloatField
      FieldName = 'INACTIVE_DOC_ITEM_COUNT'
    end
    object cdsClonedDocsACTIVE_DOC_ITEM_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DOC_ITEM_COUNT'
    end
    object cdsClonedDocsAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'AUTHORIZED_ACTIVE_DI_COUNT'
    end
    object cdsClonedDocsAPPROVED_ACTIVE_DOC_ITEM_COUNT: TAbmesFloatField
      FieldName = 'APPROVED_ACTIVE_DOC_ITEM_COUNT'
    end
    object cdsClonedDocsDOC_ITEM_COUNT_STATUS: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'DOC_ITEM_COUNT_STATUS'
    end
    object cdsClonedDocs_DOC_EMPTINESS_REQUIREMENT_NAME: TAbmesWideStringField
      FieldName = '_DOC_EMPTINESS_REQUIREMENT_NAME'
      Size = 100
    end
  end
  object cdsClonedDocItems: TAbmesClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Filtered = True
    Params = <>
    BeforeOpen = cdsClonedDocItemsBeforeOpen
    OnFilterRecord = cdsClonedDocItemsFilterRecord
    Left = 176
    Top = 80
    object cdsClonedDocItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClonedDocItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClonedDocItemsDOC_ITEM_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClonedDocItemsDOC_ITEM_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DOC_ITEM_NO'
      FieldValueType = fvtInteger
    end
    object cdsClonedDocItemsDOC_ITEM_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_ITEM_NAME'
      Size = 100
    end
    object cdsClonedDocItemsDOC_ITEM_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1042#1080#1076' '#1048#1048#1054
      FieldName = 'DOC_ITEM_TYPE_CODE'
    end
    object cdsClonedDocItemsIS_INACTIVE: TAbmesFloatField
      Alignment = taCenter
      DisplayLabel = #1055#1072#1089#1080#1074#1077#1085
      FieldName = 'IS_INACTIVE'
      Required = True
      DisplayBoolValues = #8730';'
      FieldValueType = fvtBoolean
    end
    object cdsClonedDocItemsNOTES: TAbmesWideStringField
      DisplayLabel = #1041#1077#1083#1077#1078#1082#1080
      FieldName = 'NOTES'
      Size = 250
    end
    object cdsClonedDocItemsCREATE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CREATE_EMPLOYEE_CODE'
    end
    object cdsClonedDocItemsCREATE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CREATE_DATE'
    end
    object cdsClonedDocItemsCREATE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CREATE_TIME'
    end
    object cdsClonedDocItemsCHANGE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'CHANGE_EMPLOYEE_CODE'
    end
    object cdsClonedDocItemsCHANGE_DATE: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_DATE'
    end
    object cdsClonedDocItemsCHANGE_TIME: TAbmesSQLTimeStampField
      FieldName = 'CHANGE_TIME'
    end
    object cdsClonedDocItemsDEVELOP_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'DEVELOP_EMPLOYEE_CODE'
    end
    object cdsClonedDocItemsDEVELOP_DATE: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_DATE'
    end
    object cdsClonedDocItemsDEVELOP_TIME: TAbmesSQLTimeStampField
      FieldName = 'DEVELOP_TIME'
    end
    object cdsClonedDocItemsAUTHORIZE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'AUTHORIZE_EMPLOYEE_CODE'
    end
    object cdsClonedDocItemsAUTHORIZE_DATE: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_DATE'
    end
    object cdsClonedDocItemsAUTHORIZE_TIME: TAbmesSQLTimeStampField
      FieldName = 'AUTHORIZE_TIME'
    end
    object cdsClonedDocItemsAPPROVE_EMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'APPROVE_EMPLOYEE_CODE'
    end
    object cdsClonedDocItemsAPPROVE_DATE: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_DATE'
    end
    object cdsClonedDocItemsAPPROVE_TIME: TAbmesSQLTimeStampField
      FieldName = 'APPROVE_TIME'
    end
    object cdsClonedDocItemsDOC_ITEM_STORAGE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_STORAGE_TYPE_CODE'
    end
    object cdsClonedDocItemsRELATIVE_PATH: TAbmesWideStringField
      DisplayLabel = #1056#1077#1083#1072#1090#1080#1074#1077#1085' '#1087#1098#1090
      FieldName = 'RELATIVE_PATH'
      Size = 250
    end
    object cdsClonedDocItemsFILE_NAME: TAbmesWideStringField
      DisplayLabel = #1048#1084#1077' '#1085#1072' '#1092#1072#1081#1083
      FieldName = 'FILE_NAME'
      Size = 250
    end
    object cdsClonedDocItemsDOC_ITEM_PATTERN_CODE: TAbmesFloatField
      DisplayLabel = #1064#1072#1073#1083#1086#1085
      FieldName = 'DOC_ITEM_PATTERN_CODE'
    end
    object cdsClonedDocItemsSTORED_FILE_BRANCH_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_BRANCH_CODE'
    end
    object cdsClonedDocItemsSTORED_FILE_CODE: TAbmesFloatField
      FieldName = 'STORED_FILE_CODE'
    end
    object cdsClonedDocItemsFILE_EXTENSION_CODE: TAbmesFloatField
      DisplayLabel = #1060#1072#1081#1083#1086#1074#1086' '#1088#1072#1079#1096#1080#1088#1077#1085#1080#1077
      FieldName = 'FILE_EXTENSION_CODE'
      ProviderFlags = []
    end
    object cdsClonedDocItemsSTORED_FILE_DATA: TBlobField
      FieldName = 'STORED_FILE_DATA'
      ProviderFlags = []
      Size = 1
    end
    object cdsClonedDocItemsIS_STORED_FILE_CHANGED: TAbmesFloatField
      FieldName = 'IS_STORED_FILE_CHANGED'
      ProviderFlags = []
      DisplayBoolValues = #1055#1088#1086#1084#1077#1085#1077#1085
      FieldValueType = fvtBoolean
    end
    object cdsClonedDocItemsRECORD_STATUS: TAbmesFloatField
      FieldName = 'RECORD_STATUS'
      ProviderFlags = []
    end
    object cdsClonedDocItems_DOC_ITEM_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1042#1080#1076
      FieldKind = fkLookup
      FieldName = '_DOC_ITEM_TYPE_NAME'
      LookupKeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupResultField = 'DOC_ITEM_TYPE_NAME'
      KeyFields = 'DOC_ITEM_TYPE_CODE'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEVELOP_EMPLOYEE_ABBREV'
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_ABBREV'
      KeyFields = 'DEVELOP_EMPLOYEE_CODE'
      LookupCache = True
      OnGetText = cdsClonedDocItems_DEVELOP_EMPLOYEE_ABBREVGetText
      Size = 5
      Lookup = True
    end
    object cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZE_EMPLOYEE_ABBREV'
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_ABBREV'
      KeyFields = 'AUTHORIZE_EMPLOYEE_CODE'
      LookupCache = True
      OnGetText = cdsClonedDocItems_AUTHORIZE_EMPLOYEE_ABBREVGetText
      Size = 5
      Lookup = True
    end
    object cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_APPROVE_EMPLOYEE_ABBREV'
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_ABBREV'
      KeyFields = 'APPROVE_EMPLOYEE_CODE'
      LookupCache = True
      OnGetText = cdsClonedDocItems_APPROVE_EMPLOYEE_ABBREVGetText
      Size = 5
      Lookup = True
    end
    object cdsClonedDocItemsDOC_ITEM_ACCESS_LEVEL_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_ACCESS_LEVEL_CODE'
    end
    object cdsClonedDocItems_AUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_AUTHORIZE_EMPLOYEE_FIRST_NAME'
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'AUTHORIZE_EMPLOYEE_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsClonedDocItems_DEVELOP_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DEVELOP_EMPLOYEE_FIRST_NAME'
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'DEVELOP_EMPLOYEE_CODE'
      LookupCache = True
      Lookup = True
    end
    object cdsClonedDocItems_APPROVE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_APPROVE_EMPLOYEE_FIRST_NAME'
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'APPROVE_EMPLOYEE_CODE'
      LookupCache = True
      Lookup = True
    end
  end
  object dsClonedDocItems: TDataSource
    DataSet = cdsClonedDocItems
    Left = 208
    Top = 80
  end
  object dsClonedDocs: TDataSource
    DataSet = cdsClonedDocs
    Left = 144
    Top = 80
  end
  object tmrResyncClonedDatasets: TTimer
    Enabled = False
    Interval = 250
    OnTimer = tmrResyncClonedDatasetsTimer
    Top = 112
  end
  object pmInsert: TPopupMenu
    Left = 112
    Top = 128
    object miInsertDocItem: TMenuItem
      Action = actInsertDocItem
    end
    object miCreateLikeDocItem: TMenuItem
      Action = actCreateLikeDocItem
    end
    object miLoadFromDocProfile: TMenuItem
      Action = actLoadFromDocProfile
    end
  end
  object cdsDocProfileDoc: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 128
    object cdsDocProfileDocDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object cdsDocProfileDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDocProfileDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
  end
end
