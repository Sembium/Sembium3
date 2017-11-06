inherited fmProductQuantitiesTree: TfmProductQuantitiesTree
  Left = 229
  Top = 255
  Caption = '%ProductsClassName% - '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080
  ClientWidth = 1084
  PixelsPerInch = 96
  TextHeight = 13
  inherited sptMain: TSplitter
    Left = 350
  end
  inherited pnlBottomButtons: TPanel
    Width = 1084
    object lblLegend: TLabel [0]
      Left = 8
      Top = 16
      Width = 302
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1072#1090#1072' '#1089#1072' '#1079#1072#1082#1088#1098#1075#1083#1077#1085#1080' '#1076#1086' '#1094#1077#1083#1080' '#1095#1080#1089#1083#1072'. '#1042#1072#1083#1091#1090#1072#1090#1072' '#1077' %s.'
    end
    inherited bvlFind: TBevel
      Width = 1084
    end
    inherited pnlOKCancel: TPanel
      Left = 905
    end
    inherited pnlClose: TPanel
      Left = 816
    end
  end
  inherited pnlTree: TPanel
    Width = 350
    inherited tvTree: TTreeView
      Width = 350
    end
  end
  inherited clbMain: TCoolBar
    Width = 1084
    Bands = <
      item
        Control = cbParents
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 145
        Width = 207
      end
      item
        Break = False
        Control = tlbButtons
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 220
        Width = 233
      end
      item
        Break = False
        Control = pnlToggles
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 363
        Width = 376
      end
      item
        Break = False
        Control = pnlNavChildren
        ImageIndex = -1
        MinHeight = 22
        MinWidth = 215
        Width = 228
      end>
    inherited pnlNavChildren: TPanel
      Left = 861
      Width = 219
      inherited navChildren: TDBColorNavigator
        Hints.Strings = ()
      end
      inherited tlbEditChildren: TToolBar
        Width = 92
        object btnViewStoreQuantities: TToolButton
          Left = 69
          Top = 0
          Action = actViewStoreQuantities
          ImageIndex = 6
        end
      end
      inherited tlbDocs: TToolBar
        Left = 180
      end
    end
    inherited tlbButtons: TToolBar
      Left = 218
      Width = 250
      ButtonHeight = 23
      inherited sepTwo: TToolButton
        Left = 0
        Wrap = True
        Visible = False
      end
      inherited btnPrintSubTree: TToolButton
        Left = 0
        Top = 31
      end
      inherited btnExcelExportSubTree: TToolButton
        Left = 23
        Top = 31
      end
      inherited btnExcelExport: TToolButton
        Left = 46
        Top = 31
      end
      inherited sepThree: TToolButton
        Left = 69
        Top = 31
      end
      inherited btnCopy: TToolButton
        Left = 77
        Top = 31
      end
    end
    inherited cbParents: TTreeParentsComboBox
      Left = 0
      Width = 203
    end
    object pnlToggles: TPanel
      Left = 483
      Top = 0
      Width = 363
      Height = 22
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object tlbToggleQuantityPrices: TToolBar
        Left = 0
        Top = 0
        Width = 46
        Height = 22
        Align = alLeft
        AutoSize = True
        Images = dmMain.ilActions
        TabOrder = 0
        object btnShowQuantities: TToolButton
          Left = 0
          Top = 0
          Action = actShowQuantities
          Grouped = True
          Style = tbsCheck
        end
        object btnShowAccountQuantities: TToolButton
          Left = 23
          Top = 0
          Action = actShowAccountQuantities
          Grouped = True
          Style = tbsCheck
        end
      end
      object tlbTogglePrices: TToolBar
        Left = 46
        Top = 0
        Width = 196
        Height = 22
        Align = alLeft
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 36
        ShowCaptions = True
        TabOrder = 1
        object btnShowPrices: TToolButton
          Left = 0
          Top = 0
          Action = actShowInvestedValue1
          Grouped = True
          Style = tbsCheck
        end
        object btnShowMarketPrices: TToolButton
          Left = 36
          Top = 0
          Action = actShowMarketPrices
          Grouped = True
          Style = tbsCheck
        end
        object sepShowSalePrices: TToolButton
          Left = 72
          Top = 0
          Width = 8
          Caption = 'sepShowSalePrices'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object btnShowSalePrices: TToolButton
          Left = 80
          Top = 0
          Action = actShowSalePrices
          Grouped = True
          Style = tbsCheck
        end
        object btnShowDeliveryPrices: TToolButton
          Left = 116
          Top = 0
          Action = actShowDeliveryPrices
          Grouped = True
          Style = tbsCheck
        end
        object sepShowAggergatedValues: TToolButton
          Left = 152
          Top = 0
          Width = 8
          Caption = 'sepShowAggergatedValues'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object btnShowAggergatedValues: TToolButton
          Left = 160
          Top = 0
          Action = actShowAggergatedValues
          Style = tbsCheck
        end
      end
      object tlbPriceCommands: TToolBar
        Left = 332
        Top = 0
        Width = 31
        Height = 22
        Align = alLeft
        AutoSize = True
        Images = dmMain.ilActions
        TabOrder = 2
        object sepProductPartnerPrice: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepProductPartnerPrice'
          ImageIndex = 24
          Style = tbsSeparator
        end
        object btnProductPartnerPrice: TToolButton
          Left = 8
          Top = 0
          Action = actProductPartnerPrice
        end
      end
      object tlbToggleVAT: TToolBar
        Left = 242
        Top = 0
        Width = 90
        Height = 22
        Align = alLeft
        AutoSize = True
        ButtonHeight = 21
        ButtonWidth = 41
        ShowCaptions = True
        TabOrder = 3
        object sepExcludeVAT: TToolButton
          Left = 0
          Top = 0
          Width = 8
          Caption = 'sepExcludeVAT'
          ImageIndex = 0
          Style = tbsSeparator
        end
        object btnExcludeVAT: TToolButton
          Left = 8
          Top = 0
          Action = actExcludeVAT
          Grouped = True
          Style = tbsCheck
        end
        object btnIncludeVAT: TToolButton
          Left = 49
          Top = 0
          Action = actIncludeVAT
          Grouped = True
          Style = tbsCheck
        end
      end
    end
  end
  inherited pnlDetails: TPanel
    Left = 352
    Width = 732
    inherited sptParams: TSplitter
      Width = 732
    end
    inherited grdChildren: TAbmesDBGrid
      Width = 732
      Options = [dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmChildren
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NODE_NAME'
          Footers = <>
          Title.Caption = 'id '#1083#1086#1075#1080#1095#1077#1089#1082#1080
          Width = 300
        end
        item
          Alignment = taLeftJustify
          EditButtons = <>
          FieldName = 'NODE_NO'
          Footers = <>
          Title.Caption = 'id '#1094#1080#1092#1088#1086#1074
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'LOCAL_QUANTITY'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 116
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL_QUANTITY'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 116
        end
        item
          EditButtons = <>
          FieldName = 'LOCAL_ACCOUNT_QUANTITY'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 116
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL_ACCOUNT_QUANTITY'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 116
        end
        item
          EditButtons = <>
          FieldName = 'LOCAL_TOTAL_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = #1042#1057'1 '#1074' '#1090#1077#1082'. '#1058#1055
          Visible = False
          Width = 136
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL_TOTAL_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = #1042#1057'1 '#1074' '#1048#1055
          Visible = False
          Width = 137
        end
        item
          EditButtons = <>
          FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = #1051#1057' '#1074' '#1090#1077#1082'. '#1058#1055
          Width = 136
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = #1051#1057' '#1074' '#1048#1055
          Width = 137
        end
        item
          EditButtons = <>
          FieldName = 'MEASURE_ABBREV'
          Footers = <>
          Width = 40
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'ACCOUNT_MEASURE_ABBREV'
          Footers = <>
          Title.Caption = #1052'.'#1077#1076'.'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 136
        end
        item
          EditButtons = <>
          FieldName = 'BASE_SALE_ACQUIRE_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 137
        end
        item
          EditButtons = <>
          FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Title.Caption = #1044#1089#1090' '#1062#1077#1085#1072' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
          Width = 136
        end
        item
          EditButtons = <>
          FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
          Footers = <>
          Title.Alignment = taRightJustify
          Width = 137
        end>
    end
    inherited pnlHeader: TPanel
      Width = 732
      inherited hcChildren: THeaderControl
        Width = 731
      end
    end
    inherited frTreeNodeParams: TfrTreeNodeParams
      Width = 732
      inherited pnlCaption: TPanel
        Width = 732
        inherited tlbButtons: TToolBar
          Left = 690
        end
        inherited tlbDocs: TToolBar
          Left = 417
        end
        inherited pnlCaptionLeft: TPanel
          Width = 415
        end
        inherited tlbShowNotDefined: TToolBar
          Left = 650
        end
      end
      inherited grdParams: TAbmesDBGrid
        Width = 732
      end
    end
  end
  inherited pnlFind: TPanel
    Width = 1084
    inherited pnlQuickFind: TPanel
      Width = 1084
      inherited pnlQuickFindLeft: TPanel
        Width = 353
        inherited edtFind: TEdit
          Width = 321
        end
      end
      inherited pnlQuickFindClient: TPanel
        Left = 353
        Width = 731
        inherited pnlFindNavigator: TPanel
          Left = 623
          inherited navFind: TDBColorNavigator
            Hints.Strings = ()
          end
        end
        inherited pnlFindResultStatus: TPanel
          Width = 414
        end
      end
    end
    inherited pnlFindDetails: TPanel
      Width = 1084
      inherited pnlFindOptions: TPanel
        Width = 350
        inherited bvlFindSeparator: TBevel
          Width = 339
        end
      end
      inherited grdFind: TAbmesDBGrid
        Left = 353
        Width = 731
      end
      inherited pnlFindDetailsSeparator: TPanel
        Left = 350
      end
    end
  end
  inherited alActions: TActionList
    Left = 128
    inherited actForm: TAction
      Caption = '%ProductsClassName% - '#1058#1077#1082#1091#1097#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080
    end
    object actViewStoreQuantities: TAction [10]
      Caption = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080'...'
      Hint = #1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1087#1086' '#1058#1055' '#1047#1072#1076#1098#1088#1078#1072#1097#1080
      ImageIndex = 5
      ShortCut = 32
      OnExecute = actViewStoreQuantitiesExecute
      OnUpdate = actViewStoreQuantitiesUpdate
    end
    object actShowQuantities: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      Hint = #1056#1072#1073#1086#1090#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 23
      OnExecute = actShowQuantitiesExecute
    end
    object actShowAccountQuantities: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072
      ImageIndex = 28
      OnExecute = actShowQuantitiesExecute
      OnUpdate = actShowAccountQuantitiesUpdate
    end
    object actShowInvestedValue1: TAction
      AutoCheck = True
      Caption = #1042#1057'1'
      GroupIndex = 1
      Hint = #1042#1083#1086#1078#1077#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090' '#1086#1090' '#1055#1098#1088#1074#1080' '#1088#1077#1076
      OnExecute = actShowQuantitiesExecute
    end
    object actShowMarketPrices: TAction
      AutoCheck = True
      Caption = #1051#1057
      GroupIndex = 1
      Hint = #1051#1080#1082#1074#1080#1076#1085#1072' '#1057#1090#1086#1081#1085#1086#1089#1090
      OnExecute = actShowMarketPricesExecute
    end
    object actShowSalePrices: TAction
      AutoCheck = True
      Caption = #1055#1088#1076
      GroupIndex = 1
      Hint = #1062#1077#1085#1080' '#1079#1072' '#1087#1088#1086#1076#1072#1078#1073#1072
      OnExecute = actShowSalePricesExecute
    end
    object actShowDeliveryPrices: TAction
      AutoCheck = True
      Caption = #1044#1089#1090
      GroupIndex = 1
      Hint = #1062#1077#1085#1080' '#1079#1072' '#1076#1086#1089#1090#1072#1074#1082#1072
      OnExecute = actShowDeliveryPricesExecute
    end
    object actShowAggergatedValues: TAction
      AutoCheck = True
      Caption = #1040#1075#1088#1077#1075
      GroupIndex = 2
      Hint = #1040#1075#1088#1077#1075#1080#1088#1072#1085#1077
      OnExecute = actShowAggergatedValuesExecute
    end
    object actExcludeVAT: TAction
      AutoCheck = True
      Caption = '- '#1044#1044#1057
      Checked = True
      GroupIndex = 3
      OnExecute = actExcludeVATExecute
    end
    object actIncludeVAT: TAction
      AutoCheck = True
      Caption = '+ '#1044#1044#1057
      GroupIndex = 3
      OnExecute = actIncludeVATExecute
    end
    object actProductPartnerPrice: TAction
      Hint = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072
      ImageIndex = 187
      OnExecute = actProductPartnerPriceExecute
      OnUpdate = actProductPartnerPriceUpdate
    end
  end
  inherited cdsTreeToNode: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductQuantitiesTree
  end
  inherited cdsTreeNodeChildren: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductQuantitiesTree
  end
  inherited cdsNodeChildren: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductQuantitiesTree
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'COMMON_PRODUCT_CODE'
        ParamType = ptInput
      end>
    BeforeOpen = cdsNodeChildrenBeforeOpen
    Left = 296
    Top = 58
    object cdsNodeChildrenMEASURE_ABBREV: TAbmesWideStringField [6]
      Alignment = taCenter
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsNodeChildrenACCOUNT_MEASURE_ABBREV: TAbmesWideStringField [7]
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsNodeChildrenLOCAL_QUANTITY: TAbmesFloatField [9]
      DisplayLabel = #1050'-'#1074#1086' '#1074' '#1090#1077#1082'. '#1058#1055
      FieldName = 'LOCAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsNodeChildrenTOTAL_QUANTITY: TAbmesFloatField [10]
      DisplayLabel = #1050'-'#1074#1086' '#1074' '#1048#1055
      FieldName = 'TOTAL_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsNodeChildrenLOCAL_TOTAL_PRICE: TAbmesFloatField [11]
      DisplayLabel = #1057#1090'-'#1089#1090' '#1074' '#1090#1077#1082'. '#1058#1055
      FieldName = 'LOCAL_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenTOTAL_TOTAL_PRICE: TAbmesFloatField [12]
      DisplayLabel = #1057#1090'-'#1089#1090' '#1074' '#1048#1055
      FieldName = 'TOTAL_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField [13]
      DisplayLabel = #1057#1095'.'#1082'-'#1074#1086' '#1074' '#1090#1077#1082'. '#1058#1055
      FieldName = 'LOCAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsNodeChildrenTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField [14]
      DisplayLabel = #1057#1095'.'#1082'-'#1074#1086' '#1074' '#1048#1055
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0'
    end
    object cdsNodeChildrenLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField [15]
      FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField [16]
      FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenPARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField [17]
      DisplayLabel = #1055#1088#1076' '#1062#1077#1085#1072' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField [18]
      DisplayLabel = #1041#1072#1079#1086#1074#1072' '#1055#1088#1076' '#1062#1077#1085#1072
      FieldName = 'BASE_SALE_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenPARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [19]
      DisplayLabel = #1044#1089#1090' '#1062#1077#1085#1072' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsNodeChildrenBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [20]
      DisplayLabel = #1041#1072#1079#1086#1074#1072' '#1044#1089#1090' '#1062#1077#1085#1072
      FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
  end
  inherited dsNodeChildren: TDataSource
    Left = 328
    Top = 58
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductQuantitiesTree
  end
  inherited cdsPrintTree: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductQuantitiesTree
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'LOCAL_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AGGREGATE_VALUES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NODE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_INACTIVE'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SORT_FIELD_NAMES'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'SORT_DESC_FIELD_NAMES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MAX_RECORDS'
        ParamType = ptUnknown
      end>
    object cdsPrintTreeMEASURE_ABBREV: TAbmesWideStringField [8]
      DisplayLabel = #1052'.'#1077#1076'.'
      FieldName = 'MEASURE_ABBREV'
      Size = 5
    end
    object cdsPrintTreeACCOUNT_MEASURE_ABBREV: TAbmesWideStringField [9]
      DisplayLabel = #1057#1095#1077#1090'.'#1084'.'#1077#1076'.'
      FieldName = 'ACCOUNT_MEASURE_ABBREV'
      Size = 5
    end
    object cdsPrintTreeLOCAL_QUANTITY: TAbmesFloatField [10]
      FieldName = 'LOCAL_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsPrintTreeTOTAL_QUANTITY: TAbmesFloatField [11]
      FieldName = 'TOTAL_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsPrintTreeLOCAL_ACCOUNT_QUANTITY: TAbmesFloatField [12]
      FieldName = 'LOCAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsPrintTreeTOTAL_ACCOUNT_QUANTITY: TAbmesFloatField [13]
      FieldName = 'TOTAL_ACCOUNT_QUANTITY'
      DisplayFormat = ',0.###'
    end
    object cdsPrintTreeLOCAL_TOTAL_PRICE: TAbmesFloatField [14]
      FieldName = 'LOCAL_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    object cdsPrintTreeTOTAL_TOTAL_PRICE: TAbmesFloatField [15]
      FieldName = 'TOTAL_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = ',0.00'
    end
    inherited cdsPrintTreeHAS_CHILDREN: TAbmesFloatField
      Visible = False
    end
    object cdsPrintTreeLOCAL_MARKET_TOTAL_PRICE: TAbmesFloatField [17]
      FieldName = 'LOCAL_MARKET_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = '.0.00'
    end
    object cdsPrintTreeTOTAL_MARKET_TOTAL_PRICE: TAbmesFloatField [18]
      FieldName = 'TOTAL_MARKET_TOTAL_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = '.0.00'
    end
    object cdsPrintTreePARTNER_SALE_ACQUIRE_PRICE: TAbmesFloatField [19]
      FieldName = 'PARTNER_SALE_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = '.0.00'
    end
    object cdsPrintTreeBASE_SALE_ACQUIRE_PRICE: TAbmesFloatField [20]
      FieldName = 'BASE_SALE_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = '.0.00'
    end
    object cdsPrintTreePARTNER_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [21]
      FieldName = 'PARTNER_DELIVERY_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = '.0.00'
    end
    object cdsPrintTreeBASE_DELIVERY_ACQUIRE_PRICE: TAbmesFloatField [22]
      FieldName = 'BASE_DELIVERY_ACQUIRE_PRICE'
      OnGetText = GetPriceFieldText
      DisplayFormat = '.0.00'
    end
    inherited cdsPrintTreeIS_INACTIVE: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTree_IMAGE_INDEX: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTreeIS_THOROUGHLY_ENGINEERED: TAbmesFloatField
      Visible = False
    end
    inherited cdsPrintTreeCOMMON_STATUS_CODE: TAbmesFloatField
      Visible = False
    end
    object cdsPrintTreeNODE_PARAM_NAMES: TAbmesWideStringField [27]
      FieldName = 'NODE_PARAM_NAMES'
      Visible = False
      Size = 4000
    end
    object cdsPrintTreeNODE_PARAM_VALUES: TAbmesWideStringField [28]
      FieldName = 'NODE_PARAM_VALUES'
      Visible = False
      Size = 4000
    end
  end
  inherited cdsFind: TAbmesClientDataSet
    ConnectionBroker = dmMain.conProductQuantitiesTree
  end
  inherited pdsNodeChildren: TParamDataSet
    Left = 297
    Top = 88
  end
  object pmChildren: TPopupMenu
    Images = dmMain.ilActions
    Left = 539
    Top = 50
    object miOpenChild: TMenuItem
      Action = actOpen
      Default = True
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miViewStoreQuantities: TMenuItem
      Action = actViewStoreQuantities
      ImageIndex = 6
    end
  end
end
