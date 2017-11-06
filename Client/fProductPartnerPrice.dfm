inherited fmProductPartnerPrice: TfmProductPartnerPrice
  Left = 987
  Top = 481
  Caption = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072' '#1079#1072' '
  ClientHeight = 517
  ClientWidth = 737
  DesignSize = (
    737
    517)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 482
    Width = 737
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Left = 469
    end
    inherited pnlClose: TPanel
      Left = 380
    end
    inherited pnlApply: TPanel
      Left = 648
    end
  end
  object pnlMain: TPanel [1]
    Left = 8
    Top = 8
    Width = 721
    Height = 153
    Anchors = [akLeft, akTop, akRight]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      721
      153)
    object lblDate: TLabel
      Left = 16
      Top = 8
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
      FocusControl = frDate
    end
    object lblPartner: TLabel
      Left = 16
      Top = 56
      Width = 115
      Height = 13
      Caption = '%BorderRelTypeName%'
      FocusControl = frPartner.edtPartnerCode
    end
    object lblProduct: TLabel
      Left = 16
      Top = 104
      Width = 106
      Height = 13
      Caption = '%ProductClassName%'
      FocusControl = frProduct.edtTreeNodeNo
    end
    object lblMeasureAbbrev: TLabel
      Left = 392
      Top = 104
      Width = 27
      Height = 13
      Caption = #1052'.'#1077#1076'.'
      FocusControl = edtMeasureAbbrev
    end
    inline frDate: TfrDateFieldEditFrame
      Left = 16
      Top = 24
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
    end
    inline frPartner: TfrPartnerFieldEditFrameBald
      Left = 16
      Top = 72
      Width = 689
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Anchors = [akLeft, akTop, akRight]
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      DesignSize = (
        689
        22)
      inherited gbPartner: TGroupBox
        Width = 704
        inherited pnlNameAndButtons: TPanel
          Width = 615
          inherited pnlRightButtons: TPanel
            Left = 579
          end
          inherited pnlPartnerName: TPanel
            Width = 579
            DesignSize = (
              579
              23)
            inherited edtPartnerName: TDBEdit
              Width = 565
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 580
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 696
        end
      end
    end
    inline frProduct: TfrProductFieldEditFrameBald
      Left = 16
      Top = 120
      Width = 369
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 2
      DesignSize = (
        369
        22)
      inherited gbTreeNode: TGroupBox
        Width = 385
        DesignSize = (
          385
          49)
        inherited pnlTreeNode: TPanel
          Width = 369
          inherited pnlTreeNodeName: TPanel
            Width = 187
            DesignSize = (
              187
              22)
            inherited edtTreeNodeName: TDBEdit
              Width = 186
            end
          end
          inherited pnlTreeNodeNo: TPanel
            Left = 187
          end
          inherited pnlRightButtons: TPanel
            Left = 310
          end
        end
      end
    end
    object edtMeasureAbbrev: TDBEdit
      Left = 392
      Top = 120
      Width = 41
      Height = 21
      Color = clBtnFace
      DataField = 'MEASURE_ABBREV'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 3
    end
    object pnlPartnerProductName: TPanel
      Left = 448
      Top = 104
      Width = 265
      Height = 49
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        265
        49)
      object lblPartnerProductName: TLabel
        Left = 0
        Top = 0
        Width = 112
        Height = 13
        Caption = '%ProductClassAbbrev%'
        FocusControl = edtPartnerProductName
      end
      object edtPartnerProductName: TDBEdit
        Left = 0
        Top = 16
        Width = 257
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataField = 'PARTNER_PRODUCT_NAME'
        DataSource = dsData
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pcMain: TPageControl [2]
    Left = 8
    Top = 168
    Width = 721
    Height = 306
    ActivePage = tsMain
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object tsMain: TTabSheet
      Caption = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      object pnlPriceButtons: TPanel
        Left = 0
        Top = 0
        Width = 713
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object tlbButtons: TToolBar
          Left = 0
          Top = 0
          Width = 54
          Height = 22
          Align = alLeft
          AutoSize = True
          Customizable = True
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object btnPrint: TToolButton
            Left = 0
            Top = 0
            Action = actPrint
          end
          object sepEditNode: TToolButton
            Left = 23
            Top = 0
            Width = 8
            Caption = 'sepEditNode'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object btnEditNode: TToolButton
            Left = 31
            Top = 0
            Action = actEditNode
          end
        end
        object tlbShowInactive: TToolBar
          Left = 690
          Top = 0
          Width = 23
          Height = 22
          Align = alRight
          AutoSize = True
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Transparent = True
          object btnShowInactive: TToolButton
            Left = 0
            Top = 0
            Action = actShowInactive
            Style = tbsCheck
          end
        end
        object pnlPriceButtonsClient: TPanel
          Left = 54
          Top = 0
          Width = 636
          Height = 22
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object tlbTogglePrices: TToolBar
            Left = 546
            Top = 0
            Width = 90
            Height = 22
            Align = alRight
            AutoSize = True
            ButtonHeight = 21
            ButtonWidth = 41
            ParentShowHint = False
            ShowCaptions = True
            ShowHint = True
            TabOrder = 0
            object btnExcludeVAT: TToolButton
              Left = 0
              Top = 0
              Action = actExcludeVAT
              Grouped = True
              Style = tbsCheck
            end
            object btnIncludeVAT: TToolButton
              Left = 41
              Top = 0
              Action = actIncludeVAT
              Grouped = True
              Style = tbsCheck
            end
            object ToolButton1: TToolButton
              Left = 82
              Top = 0
              Width = 8
              Caption = 'ToolButton1'
              ImageIndex = 0
              Style = tbsSeparator
            end
          end
        end
      end
      object grdPrice: TAbmesDBGrid
        Left = 0
        Top = 22
        Width = 713
        Height = 256
        Align = alClient
        AllowedOperations = []
        AutoFitColWidths = True
        DataGrouping.GroupLevels = <>
        DataSource = dsPrice
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'Microsoft Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Microsoft Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = grdPriceGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ITEM_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1086#1074#1072' '#1081#1077#1088#1072#1088#1093#1080#1095#1085#1072' '#1089#1090#1088#1091#1082#1090#1091#1088#1072
            Width = 393
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DATE_UNIT_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1077#1084#1085#1072' '#1089#1090#1098#1087#1082#1072
            Visible = False
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'PRICE_MODIFIER_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1054#1090#1089#1090#1098#1087#1082#1072
            Width = 150
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'ITEM_VALUE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072' / '#1054#1090#1089#1090#1098#1087#1082#1072
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'CURRENCY_ABBREV'
            Footers = <>
            Title.Caption = #1042#1072#1083#1091#1090#1072
            Width = 50
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 352
    Top = 24
    inherited actForm: TAction
      Caption = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072' '#1079#1072' '
    end
    object actExcludeVAT: TAction
      AutoCheck = True
      Caption = '- '#1044#1044#1057
      Checked = True
      GroupIndex = 1
      OnExecute = actExcludeVATExecute
    end
    object actIncludeVAT: TAction
      AutoCheck = True
      Caption = '+ '#1044#1044#1057
      GroupIndex = 1
      OnExecute = actIncludeVATExecute
    end
    object actShowInactive: TAction
      AutoCheck = True
      Caption = 'actShowInactive'
      GroupIndex = 2
      Hint = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1094#1103#1083#1072#1090#1072' '#1089#1090#1088#1091#1082#1090#1091#1088#1072
      ImageIndex = 16
      OnExecute = actShowInactiveExecute
    end
    object actEditNode: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
      ImageIndex = 147
      OnExecute = actEditNodeExecute
      OnUpdate = actEditNodeUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 280
    Top = 280
  end
  inherited cdsData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'THE_DATE'
        ParamType = ptInput
      end>
    ProviderName = 'prvProductPartnerPrice'
    Left = 248
    Top = 280
    object cdsDataTHE_DATE: TAbmesSQLTimeStampField
      FieldName = 'THE_DATE'
    end
    object cdsDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsDataPRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsDataPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object cdsDataMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsDataCOMMON_PARTNER_CODE: TAbmesFloatField
      FieldName = 'COMMON_PARTNER_CODE'
    end
    object cdsDataCOMMON_PRODUCT_CODE: TAbmesFloatField
      FieldName = 'COMMON_PRODUCT_CODE'
    end
    object cdsDataPARTNER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAME'
      Size = 50
    end
    object cdsDataPAR_REL_PRODUCT_PRICE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_PRICE'
    end
    object cdsDataPAR_REL_PRODUCT_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_CURRENCY_CODE'
    end
    object cdsDataPAR_REL_PRODUCT_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_DATE_UNIT_CODE'
    end
    object cdsDataPRP_PRICE_OVERRIDDEN: TAbmesFloatField
      FieldName = 'PRP_PRICE_OVERRIDDEN'
      FieldValueType = fvtBoolean
    end
    object cdsDataCPRODUCT_PRP_PRICE: TAbmesFloatField
      FieldName = 'CPRODUCT_PRP_PRICE'
    end
    object cdsDataCPRODUCT_PRP_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CPRODUCT_PRP_CURRENCY_CODE'
    end
    object cdsDataCPRODUCT_PRP_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CPRODUCT_PRP_DATE_UNIT_CODE'
    end
    object cdsDataCPARTNER_PRP_PRICE: TAbmesFloatField
      FieldName = 'CPARTNER_PRP_PRICE'
    end
    object cdsDataCPARTNER_PRP_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CPARTNER_PRP_CURRENCY_CODE'
    end
    object cdsDataCPARTNER_PRP_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CPARTNER_PRP_DATE_UNIT_CODE'
    end
    object cdsDataCPROD_CPAR_PRP_PRICE: TAbmesFloatField
      FieldName = 'CPROD_CPAR_PRP_PRICE'
    end
    object cdsDataCPROD_CPAR_PRP_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'CPROD_CPAR_PRP_CURRENCY_CODE'
    end
    object cdsDataCPROD_CPAR_PRP_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'CPROD_CPAR_PRP_DATE_UNIT_CODE'
    end
    object cdsDataPRODUCT_PERIOD_PRICE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_PRICE'
    end
    object cdsDataPRODUCT_PERIOD_CURRENCY_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_CURRENCY_CODE'
    end
    object cdsDataPRODUCT_PERIOD_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_PERIOD_DATE_UNIT_CODE'
    end
    object cdsDataPROD_PER_PRICE_OVERRIDDEN: TAbmesFloatField
      FieldName = 'PROD_PER_PRICE_OVERRIDDEN'
      FieldValueType = fvtBoolean
    end
    object cdsDataPARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField
      FieldName = 'PARTNER_PRICE_MODIFIER_VALUE'
    end
    object cdsDataPARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRICE_MODIFIER_NAME'
      Size = 100
    end
    object cdsDataCPARTNER_PRICE_MODIFIER_VALUE: TAbmesFloatField
      FieldName = 'CPARTNER_PRICE_MODIFIER_VALUE'
    end
    object cdsDataCPARTNER_PRICE_MODIFIER_NAME: TAbmesWideStringField
      FieldName = 'CPARTNER_PRICE_MODIFIER_NAME'
      Size = 100
    end
    object cdsDataVAT_PERCENT: TAbmesFloatField
      FieldName = 'VAT_PERCENT'
    end
  end
  object cdsPrice: TAbmesClientDataSet
    Aggregates = <>
    Filter = 'IS_RESULT_ITEM = 1'
    IndexFieldNames = 'ITEM_CODE'
    Params = <>
    BeforePost = cdsPriceBeforePost
    OnCalcFields = cdsPriceCalcFields
    Left = 248
    Top = 312
    object cdsPriceITEM_CODE: TAbmesFloatField
      FieldName = 'ITEM_CODE'
    end
    object cdsPricePARENT_CODE: TAbmesFloatField
      FieldName = 'PARENT_CODE'
    end
    object cdsPriceITEM_TYPE_CODE: TAbmesFloatField
      FieldName = 'ITEM_TYPE_CODE'
    end
    object cdsPriceIS_LAST_CHILD: TAbmesFloatField
      FieldName = 'IS_LAST_CHILD'
      FieldValueType = fvtBoolean
    end
    object cdsPriceIS_PRICE: TAbmesFloatField
      FieldName = 'IS_PRICE'
      FieldValueType = fvtBoolean
    end
    object cdsPriceIS_RESULT_ITEM: TAbmesFloatField
      FieldName = 'IS_RESULT_ITEM'
      FieldValueType = fvtBoolean
    end
    object cdsPriceITEM_NAME: TAbmesWideStringField
      FieldName = 'ITEM_NAME'
      Size = 100
    end
    object cdsPricePRICE_MODIFIER_NAME: TAbmesWideStringField
      FieldName = 'PRICE_MODIFIER_NAME'
      Size = 50
    end
    object cdsPriceITEM_VALUE: TAbmesFloatField
      FieldName = 'ITEM_VALUE'
      OnGetText = cdsPriceITEM_VALUEGetText
    end
    object cdsPriceCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
    end
    object cdsPriceDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object cdsPricePRODUCT_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CODE'
    end
    object cdsPricePARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
    end
    object cdsPriceBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = 'BORDER_REL_TYPE_CODE'
      Calculated = True
    end
    object cdsPriceCURRENCY_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'CURRENCY_ABBREV'
      Size = 5
    end
    object cdsPrice_CURRENCY_ABBREV: TAbmesWideStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = '_CURRENCY_ABBREV'
      LookupDataSet = cdsCurrencies
      LookupKeyFields = 'CURRENCY_CODE'
      LookupResultField = 'CURRENCY_ABBREV'
      KeyFields = 'CURRENCY_CODE'
      Size = 5
      Lookup = True
    end
    object cdsPriceFONT_COLOR: TAbmesFloatField
      FieldName = 'FONT_COLOR'
    end
    object cdsPriceBACKGROUND_COLOR: TAbmesFloatField
      FieldName = 'BACKGROUND_COLOR'
    end
    object cdsPrice_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'DATE_UNIT_CODE'
      Lookup = True
    end
    object cdsPriceDATE_UNIT_NAME: TAbmesWideStringField
      Alignment = taCenter
      FieldName = 'DATE_UNIT_NAME'
    end
    object cdsPriceHAS_CHILDREN: TAbmesFloatField
      FieldName = 'HAS_CHILDREN'
      FieldValueType = fvtBoolean
    end
    object cdsPriceLEVEL_NO: TAbmesFloatField
      FieldName = 'LEVEL_NO'
    end
  end
  object dsPrice: TDataSource
    DataSet = cdsPrice
    Left = 280
    Top = 312
  end
  object cdsCurrencies: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCurrencies'
    Left = 328
    Top = 312
    object cdsCurrenciesCURRENCY_CODE: TAbmesFloatField
      FieldName = 'CURRENCY_CODE'
      Required = True
    end
    object cdsCurrenciesCURRENCY_ABBREV: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object cdsPrintHeader: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 376
    object cdsPrintHeaderTITLE: TAbmesWideStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object cdsPrintHeaderTHE_DATE: TAbmesDateTimeField
      FieldName = 'THE_DATE'
    end
    object cdsPrintHeaderBORDER_REL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_REL_TYPE_NAME'
    end
    object cdsPrintHeaderPARTNER_NO: TAbmesFloatField
      FieldName = 'PARTNER_NO'
    end
    object cdsPrintHeaderPARTNER_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_NAME'
      Size = 100
    end
    object cdsPrintHeaderPRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_NAME'
      Size = 100
    end
    object cdsPrintHeaderPRODUCT_NO: TAbmesFloatField
      FieldName = 'PRODUCT_NO'
    end
    object cdsPrintHeaderMEASURE_ABBREV: TAbmesWideStringField
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsPrintHeaderPARTNER_PRODUCT_NAME: TAbmesWideStringField
      FieldName = 'PARTNER_PRODUCT_NAME'
      Size = 100
    end
    object cdsPrintHeaderVAT_INCLUDED: TAbmesFloatField
      FieldName = 'VAT_INCLUDED'
      DisplayBoolValues = #1089' '#1044#1044#1057';'#1073#1077#1079' '#1044#1044#1057
      FieldValueType = fvtBoolean
    end
    object cdsPrintHeaderOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 360
    Top = 312
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object cdsBorderDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PROD_ORDER_BASE_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBorderDealTypes'
    Left = 392
    Top = 312
    object cdsBorderDealTypesBORDER_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_DEAL_TYPE_CODE'
    end
    object cdsBorderDealTypesBORDER_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'BORDER_DEAL_TYPE_NAME'
      Size = 100
    end
  end
end
