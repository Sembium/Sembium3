inherited fmParamProductFilterParamEdit: TfmParamProductFilterParamEdit
  Left = 350
  Top = 158
  ActiveControl = cbParam
  Caption = #1055#1088#1080#1089#1098#1097' '#1087#1072#1088#1072#1084#1077#1090#1098#1088' - %s'
  ClientHeight = 380
  ClientWidth = 608
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 345
    Width = 608
    inherited pnlOKCancel: TPanel
      Left = 340
    end
    inherited pnlClose: TPanel
      Left = 251
    end
    inherited pnlApply: TPanel
      Left = 519
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 608
    Height = 345
    inherited pnlGrid: TPanel
      Top = 75
      Width = 592
      Height = 262
      TabOrder = 1
      inherited pnlNavigator: TPanel
        Width = 592
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 274
        Height = 238
        Align = alLeft
        HorzScrollBar.Visible = False
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
        ReadOnly = False
        Columns = <
          item
            EditButtons = <>
            FieldName = 'VALUE_FLOAT_MIN'
            Footers = <>
            Title.Caption = #1052#1080#1085'. '#1089#1090#1086#1081#1085#1086#1089#1090
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'VALUE_FLOAT_MAX'
            Footers = <>
            Title.Caption = #1052#1072#1082#1089'. '#1089#1090#1086#1081#1085#1086#1089#1090
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'VALUE_STRING'
            Footers = <>
            Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
            Width = 240
          end>
      end
    end
    object pnlParamNomValues: TPanel
      Left = 8
      Top = 75
      Width = 592
      Height = 262
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      inline frParamNomValues: TDualGridFrame
        Left = 0
        Top = 0
        Width = 592
        Height = 262
        Align = alClient
        TabOrder = 0
        inherited pnlIncluded: TPanel
          Width = 274
          Height = 262
          inherited pnlIncludedNavigator: TPanel
            Width = 274
            inherited navIncluded: TDBColorNavigator
              Hints.Strings = ()
            end
          end
          inherited grdIncluded: TAbmesDBGrid
            Width = 274
            Height = 238
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'VALUE_NOM_ITEM_DISPLAY_NAME'
                Footers = <>
                Title.Caption = #1057#1090#1086#1081#1085#1086#1089#1090
                Width = 240
              end>
          end
        end
        inherited pnlButtons: TPanel
          Left = 274
          Height = 262
          inherited pnlProductButtons: TPanel
            Top = 54
          end
        end
        inherited pnlExcluded: TPanel
          Left = 318
          Width = 274
          Height = 262
          inherited pnlExcludedNavigator: TPanel
            Width = 274
            inherited navExcluded: TDBColorNavigator
              Left = 178
              Hints.Strings = ()
            end
          end
          inherited grdExcluded: TAbmesDBGrid
            Width = 274
            Height = 238
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
            Columns = <
              item
                EditButtons = <>
                FieldName = 'VALUE_NOM_ITEM_DISPLAY_NAME'
                Footers = <>
                Width = 240
              end>
          end
        end
        inherited dsExcluded: TDataSource
          DataSet = cdsNomItemNotValues
        end
      end
      object tlbNomItemValues: TToolBar
        Left = 128
        Top = 1
        Width = 44
        Height = 24
        Align = alNone
        AutoSize = True
        ButtonHeight = 24
        ButtonWidth = 36
        Caption = 'tlbDocs'
        Images = dmMain.ilDocs
        TabOrder = 1
        object sepNomItemValues: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepNomItemValues'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object btnNomItemValues: TToolButton
          Left = 8
          Top = 0
          Action = actNomItemValuesDocs
        end
      end
      object tlbNomItemNotValues: TToolBar
        Left = 416
        Top = 1
        Width = 44
        Height = 24
        Align = alNone
        AutoSize = True
        ButtonHeight = 24
        ButtonWidth = 36
        Caption = 'tlbDocs'
        Images = dmMain.ilDocs
        TabOrder = 2
        object btnNomItemNotValues: TToolButton
          Left = 0
          Top = 0
          Action = actNomItemNotValuesDocs
        end
        object sepNomItemNotValues: TToolButton
          Left = 36
          Top = 0
          Width = 8
          Caption = 'ToolButton2'
          ImageIndex = 2
          Style = tbsSeparator
        end
      end
    end
    object pnlTop: TPanel
      Left = 8
      Top = 8
      Width = 592
      Height = 67
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        592
        67)
      object bvlTop: TBevel
        Left = 0
        Top = 2
        Width = 593
        Height = 59
        Anchors = [akLeft, akTop, akBottom]
        Shape = bsFrame
      end
      object lblParam: TLabel
        Left = 8
        Top = 12
        Width = 101
        Height = 13
        Caption = #1055#1088#1080#1089#1098#1097' '#1087#1072#1088#1072#1084#1077#1090#1098#1088
      end
      object cbParam: TJvDBLookupCombo
        Left = 8
        Top = 31
        Width = 216
        Height = 21
        EscapeKeyReset = False
        DataField = 'NODE_PARAM_CODE'
        DataSource = dsData
        Anchors = [akTop]
        LookupField = 'PRODUCT_PARAM_CODE'
        LookupDisplay = 'PRODUCT_PARAM_NAME'
        LookupSource = dsProductParams
        TabOrder = 0
        OnChange = cbParamChange
      end
      object tlbNomDocs: TToolBar
        Left = 512
        Top = 31
        Width = 73
        Height = 22
        Align = alNone
        AutoSize = True
        ButtonWidth = 36
        Caption = 'tlbDocs'
        Images = dmMain.ilDocs
        TabOrder = 1
        object pnlNomDocsCaption: TPanel
          Left = 0
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
          Left = 37
          Top = 0
          Action = actNomDocs
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 32
    Top = 96
    inherited actForm: TAction
      Caption = #1055#1088#1080#1089#1098#1097' '#1087#1072#1088#1072#1084#1077#1090#1098#1088' - %s'
    end
    object actNomDocs: TAction
      Caption = 'actNomDocs'
      ImageIndex = 1
      OnExecute = actNomDocsExecute
      OnUpdate = actNomDocsUpdate
    end
    object actNomItemValuesDocs: TAction
      Caption = 'actNomItemValuesDocs'
      ImageIndex = 1
      OnExecute = actNomItemValuesDocsExecute
      OnUpdate = actNomItemValuesDocsUpdate
    end
    object actNomItemNotValuesDocs: TAction
      Caption = 'actNomItemNotValuesDocs'
      ImageIndex = 1
      OnExecute = actNomItemNotValuesDocsExecute
      OnUpdate = actNomItemNotValuesDocsUpdate
    end
  end
  inherited pmInsertMenu: TPopupMenu
    Left = 0
    Top = 96
  end
  object cdsNomItems: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvNomItems'
    BeforeOpen = cdsNomItemsBeforeOpen
    AfterOpen = cdsNomItemsAfterOpen
    Left = 144
    object cdsNomItemsNOM_CODE: TAbmesFloatField
      FieldName = 'NOM_CODE'
      Required = True
    end
    object cdsNomItemsNOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'NOM_ITEM_CODE'
      Required = True
    end
    object cdsNomItemsNOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'NOM_ITEM_NAME'
      Required = True
      Size = 50
    end
    object cdsNomItemsNOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object cdsNomItemsDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsNomItemsDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsNomItemsHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
    end
  end
  object dsNomItems: TDataSource
    DataSet = cdsNomItems
    Left = 184
  end
  object cdsNomItemNotValues: TAbmesClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'NOM_CODE'
        ParamType = ptInput
      end>
    Left = 312
    Top = 104
    object cdsNomItemNotValuesVALUE_NOM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_CODE'
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_CODE'
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_NAME: TAbmesWideStringField
      FieldName = 'VALUE_NOM_ITEM_NAME'
      Size = 50
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_DESCRIPTION: TAbmesWideStringField
      FieldName = 'VALUE_NOM_ITEM_DESCRIPTION'
      Size = 100
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_DISPLAY_NAME: TAbmesWideStringField
      DisplayLabel = #1057#1090#1086#1081#1085#1086#1089#1090
      FieldName = 'VALUE_NOM_ITEM_DISPLAY_NAME'
      Size = 150
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_DOC_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_CODE'
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_DOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_DOC_BRANCH_CODE'
    end
    object cdsNomItemNotValuesVALUE_NOM_ITEM_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'VALUE_NOM_ITEM_HAS_DOC_ITEMS'
    end
  end
  object cdsProductParams: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTree
    Params = <
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductParams'
    BeforeOpen = cdsProductParamsBeforeOpen
    Left = 264
    object cdsProductParamsPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
      Required = True
    end
    object cdsProductParamsPRODUCT_PARAM_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PARAM_CODE'
    end
    object cdsProductParamsPRODUCT_PARAM_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_PARAM_NAME'
      Size = 50
    end
  end
  object dsProductParams: TDataSource
    DataSet = cdsProductParams
    Left = 296
  end
end
