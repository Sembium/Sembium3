inherited fmEstQuantitiesTable: TfmEstQuantitiesTable
  Caption = 
    #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev' +
    '%'
  ClientHeight = 646
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 611
    Width = 1019
    object lblCurrency: TLabel [0]
      Left = 224
      Top = 8
      Width = 54
      Height = 13
      Caption = #1042#1057'1 '#1077' '#1074' %s'
    end
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 3
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 2
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 4
      Visible = False
    end
    object btnClientParRelProducts: TBitBtn
      Left = 92
      Top = 2
      Width = 75
      Height = 25
      Action = actClientParRelProducts
      Caption = #1052#1048#1048#1056
      TabOrder = 1
    end
    object btnVendorParRelProducts: TBitBtn
      Left = 8
      Top = 2
      Width = 75
      Height = 25
      Action = actVendorParRelProducts
      Caption = #1052#1048#1044
      TabOrder = 0
    end
  end
  inherited pnlMain: TPanel
    Width = 1019
    Height = 611
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 595
      inherited pnlNavigator: TPanel
        Top = 43
        Width = 1003
        TabOrder = 2
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
        object tlbToggles: TToolBar
          Left = 605
          Top = 0
          Width = 398
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 3
          Transparent = False
          object btnInQuantities: TSpeedButton
            Left = 0
            Top = 0
            Width = 23
            Height = 24
            Action = actInQuantities
            AllowAllUp = True
            GroupIndex = 3
            Flat = True
            Transparent = False
          end
          object btnInPrices: TToolButton
            Left = 23
            Top = 0
            Action = actInPrices
            AllowAllUp = True
            Style = tbsCheck
          end
          object btnInDetails: TSpeedButton
            Left = 47
            Top = 0
            Width = 23
            Height = 24
            Action = actInDetails
            AllowAllUp = True
            GroupIndex = 81
            Flat = True
            Transparent = False
          end
          object sepOutQuantities: TToolButton
            Left = 70
            Top = 0
            Width = 8
            Caption = 'sepOutQuantities'
            Style = tbsSeparator
          end
          object btnOutQuantities: TSpeedButton
            Left = 78
            Top = 0
            Width = 23
            Height = 24
            Action = actOutQuantities
            AllowAllUp = True
            GroupIndex = 4
            Flat = True
            Transparent = False
          end
          object btnOutPrices: TToolButton
            Left = 101
            Top = 0
            Action = actOutPrices
            AllowAllUp = True
            Style = tbsCheck
          end
          object btnOutDetails: TSpeedButton
            Left = 125
            Top = 0
            Width = 23
            Height = 24
            Action = actOutDetails
            AllowAllUp = True
            GroupIndex = 82
            Flat = True
            Transparent = False
          end
          object ToolButton1: TToolButton
            Left = 148
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 25
            Style = tbsSeparator
          end
          object btnTotalQuantity: TSpeedButton
            Left = 156
            Top = 0
            Width = 23
            Height = 24
            Action = actTotalQuantity
            AllowAllUp = True
            GroupIndex = 55
            Flat = True
            Transparent = False
          end
          object btnTotalPrice: TToolButton
            Left = 179
            Top = 0
            Action = actTotalPrice
          end
          object sepDeficitQuantity: TToolButton
            Left = 203
            Top = 0
            Width = 8
            Caption = 'sepDeficitQuantity'
            Style = tbsSeparator
          end
          object btnDeficitQuantity: TSpeedButton
            Left = 211
            Top = 0
            Width = 23
            Height = 24
            Action = actDeficitQuantity
            AllowAllUp = True
            GroupIndex = 7
            Flat = True
            Transparent = False
          end
          object btnDeficitPrice: TToolButton
            Left = 234
            Top = 0
            Action = actDeficitPrice
            AllowAllUp = True
            Style = tbsCheck
          end
          object sepPassiveQuantity: TToolButton
            Left = 258
            Top = 0
            Width = 8
            Caption = 'sepPassiveQuantity'
            Style = tbsSeparator
          end
          object btnPassiveQuantity: TSpeedButton
            Left = 266
            Top = 0
            Width = 23
            Height = 24
            Action = actPassiveQuantity
            AllowAllUp = True
            GroupIndex = 9
            Flat = True
            Transparent = False
          end
          object btnPassivePrice: TToolButton
            Left = 289
            Top = 0
            Action = actPassivePrice
            AllowAllUp = True
            Style = tbsCheck
          end
          object sepWorkMeasure: TToolButton
            Left = 313
            Top = 0
            Width = 8
            Caption = 'sepWorkMeasure'
            Style = tbsSeparator
          end
          object btnWorkMeasure: TSpeedButton
            Left = 321
            Top = 0
            Width = 23
            Height = 24
            Action = actWorkMeasure
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object btnAccountMeasure: TSpeedButton
            Left = 344
            Top = 0
            Width = 23
            Height = 24
            Action = actAccountMeasure
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object sepPartnerProductNames: TToolButton
            Left = 367
            Top = 0
            Width = 8
            Caption = 'sepPartnerProductNames'
            Style = tbsSeparator
          end
          object btnPartnerProductNames: TSpeedButton
            Left = 375
            Top = 0
            Width = 23
            Height = 24
            Action = actPartnerProductNames
            AllowAllUp = True
            GroupIndex = 2
            Flat = True
            Transparent = False
          end
        end
        object tlbTopButtons: TToolBar
          Left = 176
          Top = 0
          Width = 47
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          EdgeInner = esNone
          Images = dmMain.ilActions
          TabOrder = 4
          object sepCopy: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepCopy'
            ImageIndex = 13
            Style = tbsSeparator
          end
          object btnCopy: TToolButton
            Left = 8
            Top = 0
            Action = actCopyToClipboard
            DropdownMenu = pmCopy
            Style = tbsDropDown
          end
        end
        object tlbProductDocs: TToolBar
          Left = 223
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          object sepProductDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepProductDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlProductDocs: TPanel
            Left = 8
            Top = 0
            Width = 33
            Height = 24
            Align = alLeft
            BevelOuter = bvNone
            Caption = '%ProductClassAbbrev%'
            TabOrder = 0
          end
          object btnProductDocs: TToolButton
            Left = 41
            Top = 0
            Action = actProductDocs
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Top = 67
        Width = 1003
        Height = 528
        TabOrder = 3
        TitleParams.MultiTitle = True
        TitleParams.VTitleMargin = 8
        OnGetCellParams = grdDataGetCellParams
      end
      object pnlHeader: TPanel
        Left = 0
        Top = 0
        Width = 1003
        Height = 37
        Align = alTop
        TabOrder = 0
        object lblProduct: TLabel
          Left = 8
          Top = 11
          Width = 106
          Height = 13
          Caption = '%ProductClassName%'
        end
        object lblDateUnit: TLabel
          Left = 480
          Top = 11
          Width = 84
          Height = 13
          Caption = #1042#1088#1077#1084#1077#1074#1072' '#1089#1090#1098#1087#1082#1072
        end
        object lblDateUnitCount: TLabel
          Left = 674
          Top = 11
          Width = 64
          Height = 13
          Caption = #1041#1088#1086#1081' '#1089#1090#1098#1087#1082#1080
        end
        object lblDatePeriod: TLabel
          Left = 804
          Top = 11
          Width = 40
          Height = 13
          Caption = #1042#1088#1084#1048#1085#1090
        end
        object pnlDateUnit: TPanel
          Left = 569
          Top = 7
          Width = 84
          Height = 22
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15000804
          TabOrder = 0
        end
        object pnlDateUnitCount: TPanel
          Left = 743
          Top = 7
          Width = 40
          Height = 22
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = 15000804
          TabOrder = 1
        end
        object pnlProductOuter: TPanel
          Left = 103
          Top = 7
          Width = 354
          Height = 22
          BevelOuter = bvNone
          TabOrder = 2
          object pnlProduct: TPanel
            Left = 0
            Top = 0
            Width = 318
            Height = 22
            Align = alClient
            Alignment = taLeftJustify
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15000804
            TabOrder = 0
          end
          object tlbFilterProductDocs: TToolBar
            Left = 318
            Top = 0
            Width = 36
            Height = 22
            Align = alRight
            AutoSize = True
            ButtonWidth = 36
            EdgeInner = esNone
            Images = dmMain.ilDocs
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object btnFilterProductDocs: TToolButton
              Left = 0
              Top = 0
              Action = actFilterProductDocs
            end
          end
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 848
          Top = 7
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 3
          TabStop = True
          inherited edtInterval: TJvDBComboEdit
            ParentFlat = False
          end
          inherited dsData: TDataSource
            DataSet = pdsGridDataParams
          end
        end
      end
      object pnlHeaderSeparator: TPanel
        Left = 0
        Top = 37
        Width = 1003
        Height = 6
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  inherited dsGridData: TDataSource
    Left = 240
    Top = 344
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
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
        Name = 'DATE_UNIT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_QUANTITIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'OUT_QUANTITIES'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'DEFICIT'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PARTNER_COMMON_LEVEL'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MIN_PRP_STATUS_CODE'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'MAX_PRP_STATUS_CODE'
        ParamType = ptUnknown
        Value = '4'
      end
      item
        DataType = ftFloat
        Name = 'INCLUDE_PROJECT_QUANTITIES'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftTimeStamp
        Name = 'BASE_DATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'prvEstQuantitiesTable'
    Left = 208
    Top = 344
  end
  inherited alActions: TActionList
    Left = 328
    Top = 312
    inherited actForm: TAction
      Caption = 
        #1042#1048#1052' - '#1058#1072#1073#1083#1080#1095#1077#1085' '#1085#1072' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1085#1080' '#1053#1072#1083#1080#1095#1085#1086#1089#1090#1080' '#1086#1090' %ProductClassAbbrev' +
        '%'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 1
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
      OnUpdate = actWorkMeasureUpdate
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 1
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
      OnUpdate = actAccountMeasureUpdate
    end
    object actPartnerProductNames: TAction
      GroupIndex = 2
      Hint = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1103' '#1085#1072' %ProductClassAbbrev% '#1086#1090' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
      ImageIndex = 24
      OnExecute = actPartnerProductNamesExecute
      OnUpdate = actPartnerProductNamesUpdate
    end
    object actInQuantities: TAction
      Caption = #1055
      GroupIndex = 3
      Hint = #1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      OnExecute = actInQuantitiesExecute
      OnUpdate = actInQuantitiesUpdate
    end
    object actInPrices: TAction
      GroupIndex = 11
      Hint = #1042#1057'1 '#1085#1072' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      ImageIndex = 38
      OnExecute = actInPricesExecute
      OnUpdate = actInPricesUpdate
    end
    object actInDetails: TAction
      Caption = #1044
      GroupIndex = 81
      Hint = #1044#1077#1090#1072#1081#1083#1085#1080' '#1055#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      OnExecute = actInDetailsExecute
      OnUpdate = actInDetailsUpdate
    end
    object actOutQuantities: TAction
      Caption = #1058
      GroupIndex = 4
      Hint = #1058#1077#1075#1083#1077#1085#1080#1103
      OnExecute = actOutQuantitiesExecute
      OnUpdate = actOutQuantitiesUpdate
    end
    object actOutPrices: TAction
      GroupIndex = 12
      Hint = #1042#1057'1 '#1085#1072' '#1058#1077#1075#1083#1077#1085#1080#1103
      ImageIndex = 38
      OnExecute = actOutPricesExecute
      OnUpdate = actOutPricesUpdate
    end
    object actOutDetails: TAction
      Caption = #1044
      GroupIndex = 82
      Hint = #1044#1077#1090#1072#1081#1083#1085#1080' '#1058#1077#1075#1083#1077#1085#1080#1103
      OnExecute = actOutDetailsExecute
      OnUpdate = actOutDetailsUpdate
    end
    object actTotalQuantity: TAction
      Checked = True
      GroupIndex = 55
      Hint = #1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 74
      OnExecute = actTotalQuantityExecute
      OnUpdate = actTotalQuantityUpdate
    end
    object actTotalPrice: TAction
      GroupIndex = 66
      Hint = #1042#1057'1 '#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 38
      OnExecute = actTotalPriceExecute
      OnUpdate = actTotalPriceUpdate
    end
    object actDeficitQuantity: TAction
      Checked = True
      GroupIndex = 7
      Hint = #1044#1077#1092#1080#1094#1080#1090
      ImageIndex = 71
      OnExecute = actDeficitQuantityExecute
      OnUpdate = actDeficitQuantityUpdate
    end
    object actDeficitPrice: TAction
      GroupIndex = 8
      Hint = #1042#1057'1 '#1085#1072' '#1044#1077#1092#1080#1094#1080#1090
      ImageIndex = 38
      OnExecute = actDeficitPriceExecute
      OnUpdate = actDeficitPriceUpdate
    end
    object actPassiveQuantity: TAction
      GroupIndex = 9
      Hint = #1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 73
      OnExecute = actPassiveQuantityExecute
      OnUpdate = actPassiveQuantityUpdate
    end
    object actPassivePrice: TAction
      GroupIndex = 10
      Hint = #1042#1057'1 '#1085#1072' '#1055#1072#1089#1080#1074#1085#1072' '#1053#1072#1083#1080#1095#1085#1086#1089#1090
      ImageIndex = 38
      OnExecute = actPassivePriceExecute
      OnUpdate = actPassivePriceUpdate
    end
    object actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      ImageIndex = 14
      ShortCut = 16451
      OnExecute = actCopyToClipboardExecute
      OnUpdate = actCopyToClipboardUpdate
    end
    object actCopyNameToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNameToClipboardExecute
    end
    object actCopyNoToClipboard: TAction
      Caption = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1085#1086#1084#1077#1088#1072' '#1074' '#1073#1091#1092#1077#1088#1072
      OnExecute = actCopyNoToClipboardExecute
    end
    object actProductDocs: TAction
      ImageIndex = 1
      OnExecute = actProductDocsExecute
      OnUpdate = actProductDocsUpdate
    end
    object actFilterProductDocs: TAction
      Caption = 'actFilterProductDocs'
      ImageIndex = 1
      OnExecute = actFilterProductDocsExecute
      OnUpdate = actFilterProductDocsUpdate
    end
    object actClientProductParRelProducts: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actClientProductParRelProductsExecute
      OnUpdate = actClientProductParRelProductsUpdate
    end
    object actVendorProductParRelProducts: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actVendorProductParRelProductsExecute
      OnUpdate = actVendorProductParRelProductsUpdate
    end
    object actClientPartnerParRelProducts: TAction
      Caption = #1057#1091#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actClientPartnerParRelProductsExecute
      OnUpdate = actClientPartnerParRelProductsUpdate
    end
    object actVendorPartnerParRelProducts: TAction
      Caption = #1057#1091#1073#1077#1082#1090#1086#1074' '#1088#1072#1079#1088#1077#1079'...'
      OnExecute = actVendorPartnerParRelProductsExecute
      OnUpdate = actVendorPartnerParRelProductsUpdate
    end
    object actClientParRelProducts: TAction
      Caption = #1052#1048#1048#1056
      OnExecute = actClientParRelProductsExecute
      OnUpdate = actClientParRelProductsUpdate
    end
    object actVendorParRelProducts: TAction
      Caption = #1052#1048#1044
      OnExecute = actVendorParRelProductsExecute
      OnUpdate = actVendorParRelProductsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    Left = 208
    Top = 376
    object pdsGridDataParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056'/'#1048#1044' '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object pdsGridDataParamsMIN_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056'/'#1048#1044' - '#1054#1090
      FieldName = 'MIN_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsMAX_PRP_STATUS_CODE: TAbmesFloatField
      DisplayLabel = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1048#1048#1056'/'#1048#1044' - '#1044#1086
      FieldName = 'MAX_PRP_STATUS_CODE'
    end
    object pdsGridDataParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      DisplayLabel = #1053#1080#1074#1086' '#1048#1048#1056'/'#1048#1044' '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      DisplayWidth = 4000
      FieldName = 'CHOSEN_PRODUCTS'
      Required = True
      OnChange = pdsGridDataParamsCHOSEN_PRODUCTSChange
      Size = 4000
    end
    object pdsGridDataParamsIN_QUANTITIES: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1075#1085#1086#1079#1085#1080' '#1087#1086#1089#1090#1098#1087#1083#1077#1085#1080#1103
      FieldName = 'IN_QUANTITIES'
    end
    object pdsGridDataParamsOUT_QUANTITIES: TAbmesFloatField
      DisplayLabel = #1055#1088#1086#1075#1085#1086#1079#1085#1080' '#1090#1077#1075#1083#1077#1085#1080#1103
      FieldName = 'OUT_QUANTITIES'
    end
    object pdsGridDataParamsDEFICIT: TAbmesFloatField
      DisplayLabel = #1044#1077#1092#1080#1094#1080#1090
      FieldName = 'DEFICIT'
    end
    object pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'DATE_UNIT_CODE'
    end
    object pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DATE_UNIT_COUNT'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      ConstraintErrorMessage = 'DATE_UNIT_CODE'
      DisplayLabel = #1053#1072#1095#1072#1083#1085#1072' '#1076#1072#1090#1072
      FieldName = 'BEGIN_DATE'
      OnChange = pdsGridDataParamsBEGIN_DATEChange
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1050#1088#1072#1081#1085#1072' '#1076#1072#1090#1072
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object pdsGridDataParamsBASE_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1080' - '#1050#1098#1084' '#1076#1072#1090#1072
      FieldName = 'BASE_DATE'
      Required = True
    end
    object pdsGridDataParamsINCLUDE_PROJECT_QUANTITIES: TAbmesFloatField
      DisplayLabel = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1086#1085#1085#1080' '#1085#1072#1083#1080#1095#1085#1086#1089#1090#1080' - '#1055#1088#1086#1077#1082#1090#1085#1080
      FieldName = 'INCLUDE_PROJECT_QUANTITIES'
    end
    object pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = '_PRODUCT_CODE'
    end
    object pdsGridDataParams_PRODUCT_NAME: TAbmesWideStringField
      FieldName = '_PRODUCT_NAME'
      ProviderFlags = []
      Size = 100
    end
    object pdsGridDataParams_PRODUCT_NO: TAbmesFloatField
      FieldName = '_PRODUCT_NO'
      ProviderFlags = []
    end
    object pdsGridDataParams_PRODUCT_HAS_DOC_ITEMS: TAbmesFloatField
      FieldName = '_PRODUCT_HAS_DOC_ITEMS'
      ProviderFlags = []
      FieldValueType = fvtBoolean
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 240
    Top = 376
  end
  inherited dsData: TDataSource
    Left = 240
    Top = 312
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 208
    Top = 312
  end
  object pmCopy: TPopupMenu
    Left = 192
    Top = 80
    object miCopyNoToClipboard: TMenuItem
      Action = actCopyNoToClipboard
      Default = True
    end
    object miCopyNameToClipboard: TMenuItem
      Action = actCopyNameToClipboard
    end
  end
  object pgdData: TPrintDBGridEh
    DBGridEh = grdData
    Options = []
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.500000000000000000
    Page.RightMargin = 1.500000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Microsoft Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Microsoft Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 328
    Top = 376
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C666E696C5C66636861
      727365743020417269616C3B7D7B5C66315C666E696C5C666368617273657432
      30347B5C2A5C666E616D6520417269616C3B7D417269616C204359523B7D7B5C
      66325C666E696C5C66636861727365743230347B5C2A5C666E616D652054696D
      6573204E657720526F6D616E3B7D54696D6573204E657720526F6D616E204359
      523B7D7D0D0A5C766965776B696E64345C7563315C706172645C71635C6C616E
      67313033335C756C5C625C695C6673333220466F726D43617074696F6E5C6C61
      6E67313032365C66315C7061720D0A5C756C6E6F6E655C62305C667331365C70
      61720D0A5C706172645C6C616E67313033335C69305C66305C6673323220706C
      626C5C6C616E67313032365C66312050726F647563743A205C6C616E67313033
      332050524F445543545F4E414D455C7461625C7061720D0A5C663020706C626C
      44617465556E69745C6C616E67313032365C6631203A205C6C616E6731303333
      5C663020444154455C6631205F554E49545C7461625C7461625C663020706C62
      6C44617465556E6974436F756E745C6C616E67313032365C6631203A205C6C61
      6E67313033335C663020444154455F554E49545C6631205F434F554E545C7461
      625C7461625C663020706C626C44617465496E74657276616C5C6C616E673130
      32365C6631203A205C6C616E67313033335C663020444154455F494E54455256
      414C5C7061720D0A706C626C50726F64756374436F6D6D6F6E4C6576656C5C6C
      616E67313032365C6631203A205C6C616E67313033335C66302050524F445543
      545F434F4D4D4F4E5F4C4556454C5C7461625C74616220706C626C506172746E
      6572436F6D6D6F6E4C6576656C5C6C616E67313032365C6631203A205C6C616E
      67313033335C663020504152544E45525F434F4D4D4F4E5F4C4556454C5C6631
      5C7061720D0A5C6C616E67313032365C66325C667332365C7061720D0A7D0D0A
      00}
  end
  object cdsParRelProductsParams: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 344
    object cdsParRelProductsParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object cdsParRelProductsParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsParRelProductsParamsBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
    end
    object cdsParRelProductsParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
    end
    object cdsParRelProductsParamsMATERIAL_CODE: TAbmesFloatField
      FieldName = 'MATERIAL_CODE'
    end
    object cdsParRelProductsParamsPRODUCT_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PRODUCT_COMMON_LEVEL'
    end
    object cdsParRelProductsParamsPARTNER_COMMON_LEVEL: TAbmesFloatField
      FieldName = 'PARTNER_COMMON_LEVEL'
    end
  end
  object pmClientParRelProducts: TPopupMenu
    Left = 200
    Top = 520
    object miClientProductParRelProducts: TMenuItem
      Action = actClientProductParRelProducts
      Default = True
    end
    object miClientPartnerParRelProducts: TMenuItem
      Action = actClientPartnerParRelProducts
    end
  end
  object pmVendorParRelProducts: TPopupMenu
    Left = 248
    Top = 520
    object miVendorProductParRelProducts: TMenuItem
      Action = actVendorProductParRelProducts
      Default = True
    end
    object miVendorPartnerParRelProducts: TMenuItem
      Action = actVendorPartnerParRelProducts
    end
  end
end
