inherited frTreeNodeParams: TfrTreeNodeParams
  Width = 519
  OnResize = FrameResize
  object pnlCaption: TPanel [0]
    Left = 0
    Top = 0
    Width = 519
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderWidth = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object tlbButtons: TToolBar
      Left = 477
      Top = 2
      Width = 40
      Height = 22
      Align = alRight
      AutoSize = True
      ButtonWidth = 22
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
      TabOrder = 0
      Transparent = False
      DesignSize = (
        40
        22)
      object btnCopyValue: TSpeedButton
        Left = 0
        Top = 0
        Width = 20
        Height = 22
        Action = actCopyParamValue
        Anchors = [akLeft, akTop, akBottom]
        Flat = True
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
      object btnMaximize: TSpeedButton
        Left = 20
        Top = 0
        Width = 20
        Height = 22
        Action = actMaximize
        Flat = True
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
    end
    object tlbDocs: TToolBar
      Left = 182
      Top = 2
      Width = 255
      Height = 22
      Align = alRight
      AutoSize = True
      ButtonWidth = 36
      Caption = 'tlbDocs'
      Images = dmMain.ilDocs
      TabOrder = 1
      object pnlDocsLeftMargin: TPanel
        Left = 0
        Top = 0
        Width = 8
        Height = 22
        Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
        Align = alLeft
        BevelOuter = bvNone
        Caption = ' '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object pnlDocsCaption: TPanel
        Left = 8
        Top = 0
        Width = 22
        Height = 22
        Hint = #1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1098#1088
        Align = alLeft
        BevelOuter = bvNone
        Caption = #1051#1055
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object btnDocs: TToolButton
        Left = 30
        Top = 0
        Action = actDocs
      end
      object sepDocs: TToolButton
        Left = 66
        Top = 0
        Width = 8
        Caption = 'sepDocs'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object pnlNomDocsCaption: TPanel
        Left = 74
        Top = 0
        Width = 37
        Height = 22
        Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
        Align = alLeft
        BevelOuter = bvNone
        Caption = #1053#1043#1051#1055
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object btnNomDocs: TToolButton
        Left = 111
        Top = 0
        Action = actNomDocs
      end
      object sepNomDocs: TToolButton
        Left = 147
        Top = 0
        Width = 8
        Caption = 'sepNomDocs'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object pnlValueNomItemCaption: TPanel
        Left = 155
        Top = 0
        Width = 56
        Height = 22
        Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
        Align = alLeft
        BevelOuter = bvNone
        Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object btnValueNomItemDocs: TToolButton
        Left = 211
        Top = 0
        Action = actValueNomItemDocs
      end
      object sepValueNomItemDocs: TToolButton
        Left = 247
        Top = 0
        Width = 8
        Caption = 'sepValueNomItemDocs'
        ImageIndex = 0
        Style = tbsSeparator
      end
    end
    object pnlCaptionLeft: TPanel
      Left = 2
      Top = 2
      Width = 180
      Height = 22
      Hint = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072' '#1043#1088#1091#1087#1072' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      Align = alClient
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object tlbShowNotDefined: TToolBar
      Left = 437
      Top = 2
      Width = 40
      Height = 22
      Align = alRight
      AutoSize = True
      ButtonWidth = 22
      Color = clBtnFace
      ParentColor = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 3
      Transparent = False
      object btnShowNotDefined: TSpeedButton
        Left = 0
        Top = 0
        Width = 40
        Height = 22
        Action = actShowNotDefined
        AllowAllUp = True
        GroupIndex = 5
        Flat = True
        Layout = blGlyphRight
        ParentShowHint = False
        ShowHint = True
        Transparent = False
      end
    end
  end
  object grdParams: TAbmesDBGrid [1]
    Left = 0
    Top = 26
    Width = 519
    Height = 214
    Align = alClient
    DataSource = dsData
    DrawMemoText = True
    DynProps = <>
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.Visible = False
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch]
    TabOrder = 1
    OnDrawColumnCell = grdParamsDrawColumnCell
    OnGetCellParams = grdParamsGetCellParams
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NODE_PARAM_ORDER_NO'
        Footers = <>
        Title.Alignment = taRightJustify
        Title.Caption = #1053#1072#1088#1077#1076#1073#1072
        Width = 50
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'NODE_PARAM_NAME'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 150
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'PARAM_VALUE'
        Footers = <>
        Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  inherited alActions: TActionList
    Left = 56
    Top = 128
    object actCopyParamValue: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1089#1090#1086#1081#1085#1086#1089#1090#1090#1072' '#1085#1072' '#1087#1072#1088#1072#1084#1077#1090#1098#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      OnExecute = actCopyParamValueExecute
      OnUpdate = actCopyParamValueUpdate
    end
    object actMaximize: TAction
      Caption = '1'
      OnExecute = actMaximizeExecute
      OnUpdate = actMaximizeUpdate
    end
    object actDocs: TAction
      Caption = 'actDocs'
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
    object actNomDocs: TAction
      Caption = 'actNomDocs'
      ImageIndex = 1
      OnExecute = actNomDocsExecute
      OnUpdate = actNomDocsUpdate
    end
    object actValueNomItemDocs: TAction
      Caption = 'actValueNomItemDocs'
      ImageIndex = 1
      OnExecute = actValueNomItemDocsExecute
      OnUpdate = actValueNomItemDocsUpdate
    end
    object actShowNotDefined: TAction
      Caption = '2'
      GroupIndex = 5
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1085#1077#1087#1088#1080#1089#1098#1097#1080#1090#1077' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1088#1080
      ImageIndex = 16
      OnExecute = actShowNotDefinedExecute
      OnUpdate = actShowNotDefinedUpdate
    end
  end
  inherited dsData: TDataSource
    DataSet = cdsParams
    Left = 88
    Top = 160
  end
  object cdsParams: TAbmesClientDataSet
    Aggregates = <>
    AggregatesActive = True
    ConnectionBroker = dmMain.conProductsTree
    Filter = '(IS_INHERITED = 0) or (IS_DEFINED = 1)'
    Filtered = True
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'prvShowNodeParams'
    Left = 56
    Top = 160
    object cdsParamsNODE_PARAM_CODE: TAbmesFloatField
      FieldName = 'NODE_PARAM_CODE'
    end
    object cdsParamsNODE_PARAM_NAME: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAME'
      Size = 50
    end
    object cdsParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
    end
    object cdsParamsPARAM_VALUE: TAbmesWideStringField
      FieldName = 'PARAM_VALUE'
      Size = 250
    end
    object cdsParamsVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object cdsParamsIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
      FieldValueType = fvtBoolean
    end
    object cdsParamsIS_INHERITED: TAbmesFloatField
      FieldName = 'IS_INHERITED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_BRANCH_CODE'
    end
    object cdsParamsNOM_DOC_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_CODE'
    end
    object cdsParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'NOM_HAS_DOC_ITEMS'
    end
    object cdsParamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsParamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsParamsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
    end
    object cdsParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_CODE'
    end
    object cdsParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
    end
    object cdsParams_IS_NOT_DEFINED_COUNT: TAggregateField
      FieldName = '_IS_NOT_DEFINED_COUNT'
      Active = True
      DisplayName = ''
      Expression = 'Sum(1 - IS_DEFINED)'
    end
  end
end
