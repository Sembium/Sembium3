inherited TreeNodeParamFilterForm: TTreeNodeParamFilterForm
  Left = 286
  Top = 172
  ActiveControl = grdTreeNodeParams
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  ClientHeight = 249
  ClientWidth = 485
  DesignSize = (
    485
    249)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 469
    Height = 198
  end
  inherited pnlBottomButtons: TPanel
    Top = 214
    Width = 485
    inherited pnlOKCancel: TPanel
      Left = 217
      TabOrder = 3
    end
    inherited pnlClose: TPanel
      Left = 128
      TabOrder = 2
    end
    inherited pnlApply: TPanel
      Left = 396
      TabOrder = 4
    end
    inherited pnlFilterVariants: TPanel
      TabOrder = 1
    end
    object btnClear: TBitBtn
      Left = 8
      Top = 2
      Width = 105
      Height = 25
      Action = actClear
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077
      Spacing = -1
      TabOrder = 0
    end
  end
  object pnlTreeNodeParamsGrid: TPanel [2]
    Left = 16
    Top = 16
    Width = 453
    Height = 178
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTreeNodeParamsNavigator: TPanel
      Left = 0
      Top = 0
      Width = 453
      Height = 22
      Align = alTop
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object lProductParams: TLabel
        Left = 396
        Top = 0
        Width = 57
        Height = 22
        Align = alRight
        Alignment = taRightJustify
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1080
        FocusControl = grdTreeNodeParams
        Layout = tlCenter
      end
      object navTreeNodeParams: TDBColorNavigator
        Left = 0
        Top = 0
        Width = 110
        Height = 22
        DataSource = dsTreeNodeParams
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
        Align = alLeft
        Flat = True
        TabOrder = 0
        BeforeAction = navTreeNodeParamsBeforeAction
      end
      object tlbDocs: TToolBar
        Left = 110
        Top = 0
        Width = 44
        Height = 22
        Align = alLeft
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbDocs'
        Images = dmMain.ilDocs
        TabOrder = 1
        object sepDocs: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepDocs'
          ImageIndex = 31
          Style = tbsSeparator
        end
        object btnDocs: TToolButton
          Left = 8
          Top = 0
          Action = actDocs
        end
      end
    end
    object grdTreeNodeParams: TAbmesDBGrid
      Left = 0
      Top = 22
      Width = 453
      Height = 156
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = dsTreeNodeParams
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Microsoft Sans Serif'
      FooterFont.Style = []
      HorzScrollBar.Visible = False
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Microsoft Sans Serif'
      TitleFont.Style = []
      OnDblClick = grdTreeNodeParamsDblClick
      OnGetCellParams = grdTreeNodeParamsGetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NODE_PARAM_ORDER_NO'
          Footers = <>
          Title.Caption = #1053#1072#1088#1077#1076#1073#1072
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'NODE_PARAM_NAME'
          Footers = <>
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 175
        end
        item
          EditButtons = <>
          FieldName = '_SHOW_VALUE'
          Footers = <>
          Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
          Width = 192
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 224
    object actEditProductParam: TAction [3]
      Caption = 'actEditProductParam'
      OnExecute = actEditProductParamExecute
      OnUpdate = actEditProductParamUpdate
    end
    object actClear: TAction
      Caption = #1048#1079#1095#1080#1089#1090#1074#1072#1085#1077
      ImageIndex = 26
      OnExecute = actClearExecute
      OnUpdate = actClearUpdate
    end
    object actDocs: TAction
      Caption = 'actDocs'
      Hint = #1055#1086#1082#1072#1079#1074#1072' '#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1051#1086#1075#1080#1095#1077#1089#1082#1080' '#1055#1072#1088#1072#1084#1077#1090#1098#1088
      ImageIndex = 1
      OnExecute = actDocsExecute
      OnUpdate = actDocsUpdate
    end
  end
  object cdsTreeNodeParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NODE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvFilterNodeParams'
    BeforeOpen = cdsTreeNodeParamsBeforeOpen
    AfterOpen = cdsTreeNodeParamsAfterOpen
    BeforePost = cdsTreeNodeParamsBeforePost
    OnCalcFields = cdsTreeNodeParamsCalcFields
    Left = 56
    Top = 128
    object cdsTreeNodeParamsNODE_PARAM_CODE: TAbmesFloatField
      FieldName = 'NODE_PARAM_CODE'
    end
    object cdsTreeNodeParamsNODE_PARAM_NAME: TAbmesWideStringField
      FieldName = 'NODE_PARAM_NAME'
      Size = 50
    end
    object cdsTreeNodeParamsNODE_PARAM_ORDER_NO: TAbmesFloatField
      FieldName = 'NODE_PARAM_ORDER_NO'
    end
    object cdsTreeNodeParamsVALUE_TYPE: TAbmesFloatField
      FieldName = 'VALUE_TYPE'
    end
    object cdsTreeNodeParamsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
    end
    object cdsTreeNodeParamsNOM_NAME: TAbmesWideStringField
      FieldName = 'NOM_NAME'
      Size = 50
    end
    object cdsTreeNodeParamsVALUE_NOM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_CODE'
    end
    object cdsTreeNodeParamsVALUE_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_CODE'
    end
    object cdsTreeNodeParamsVALUE_NOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'VALUE_NOM_ITEM_NAME'
      Size = 50
    end
    object cdsTreeNodeParamsVALUE_FLOAT: TAbmesFloatField
      FieldName = 'VALUE_FLOAT'
    end
    object cdsTreeNodeParamsVALUE_FLOAT_MIN: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_MIN'
    end
    object cdsTreeNodeParamsVALUE_FLOAT_MAX: TAbmesFloatField
      FieldName = 'VALUE_FLOAT_MAX'
    end
    object cdsTreeNodeParamsVALUE_STRING: TAbmesWideStringField
      FieldName = 'VALUE_STRING'
      Size = 150
    end
    object cdsTreeNodeParamsIS_READ_ONLY: TAbmesFloatField
      FieldName = 'IS_READ_ONLY'
      ReadOnly = True
    end
    object cdsTreeNodeParamsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsTreeNodeParamsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsTreeNodeParamsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
    object cdsTreeNodeParamsNOM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_BRANCH_CODE'
    end
    object cdsTreeNodeParamsNOM_DOC_CODE: TAbmesFloatField
      FieldName = 'NOM_DOC_CODE'
    end
    object cdsTreeNodeParamsNOM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'NOM_HAS_DOC_ITEMS'
    end
    object cdsTreeNodeParamsVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
    end
    object cdsTreeNodeParamsVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_CODE'
    end
    object cdsTreeNodeParamsVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
    end
    object cdsTreeNodeParamsIS_DEFINED: TAbmesFloatField
      FieldName = 'IS_DEFINED'
      Required = True
      FieldValueType = fvtBoolean
    end
    object cdsTreeNodeParams_SHOW_VALUE: TAbmesWideStringField
      FieldKind = fkCalculated
      FieldName = '_SHOW_VALUE'
      Size = 50
      Calculated = True
    end
  end
  object dsTreeNodeParams: TDataSource
    DataSet = cdsTreeNodeParams
    Left = 88
    Top = 128
  end
end
