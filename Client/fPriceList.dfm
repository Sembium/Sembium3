inherited fmPriceList: TfmPriceList
  Caption = 'fmPriceList'
  ClientHeight = 576
  ClientWidth = 1019
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 541
    Width = 1019
    inherited pnlOKCancel: TPanel
      Left = 751
      TabOrder = 4
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 662
      TabOrder = 3
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 930
      TabOrder = 5
      Visible = False
    end
    object pnlProductPartnerPrice: TPanel
      Left = 0
      Top = 0
      Width = 153
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnProductPartnerPrice: TBitBtn
        Left = 8
        Top = 2
        Width = 145
        Height = 25
        Action = actProductPartnerPrice
        Caption = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072'...'
        TabOrder = 0
      end
    end
    object pnlParRelProduct: TPanel
      Left = 153
      Top = 0
      Width = 81
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object btnParRelProduct: TBitBtn
        Left = 8
        Top = 2
        Width = 73
        Height = 25
        Action = actParRelProduct
        Caption = '%ParRelProductAbbrev%...'
        TabOrder = 0
      end
    end
    object pnlProductPeriods: TPanel
      Left = 234
      Top = 0
      Width = 81
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object btnProductPeriods: TBitBtn
        Left = 8
        Top = 2
        Width = 73
        Height = 25
        Action = actProductPeriods
        Caption = '%ProductPeriodAbbrev%...'
        TabOrder = 0
      end
    end
  end
  inherited pnlMain: TPanel
    Top = 65
    Width = 1019
    Height = 476
    inherited pnlGrid: TPanel
      Width = 1003
      Height = 460
      inherited pnlNavigator: TPanel
        Width = 1003
        inherited pnlFilterButton: TPanel
          Left = 120
        end
        inherited navData: TDBColorNavigator
          Width = 120
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 144
        end
        object tlbToggles: TToolBar
          Left = 923
          Top = 0
          Width = 80
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 24
          ButtonWidth = 24
          Images = dmMain.ilActions
          List = True
          TabOrder = 3
          object btnToggleBaseCurrency: TToolButton
            Left = 0
            Top = 0
            Action = actToggleBaseCurrency
          end
          object sepWorkMeasure: TToolButton
            Left = 24
            Top = 0
            Width = 8
            Caption = 'sepWorkMeasure'
            ImageIndex = 53
            Style = tbsSeparator
          end
          object btnWorkMeasure: TToolButton
            Left = 32
            Top = 0
            Action = actWorkMeasure
            Grouped = True
            Style = tbsCheck
          end
          object btnAccountMeasure: TToolButton
            Left = 56
            Top = 0
            Action = actAccountMeasure
            Grouped = True
            Style = tbsCheck
          end
        end
        object tlbProductDocs: TToolBar
          Left = 300
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
          TabOrder = 4
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
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' '#1059#1054#1073
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnProductDocsClick
          end
        end
        object tlbPartnerDocs: TToolBar
          Left = 200
          Top = 0
          Width = 100
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonWidth = 36
          Caption = 'tlbDocs'
          Images = dmMain.ilDocs
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          object sepPartnerDocs: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepProductDocs'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object pnlPartnerDocs: TPanel
            Left = 8
            Top = 0
            Width = 56
            Height = 22
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            TabOrder = 0
            object lblPartnerDocs: TLabel
              Left = 0
              Top = 5
              Width = 56
              Height = 13
              Caption = ' %Partner% '
              Layout = tlCenter
            end
          end
          object btnPartnerDocs: TToolButton
            Left = 64
            Top = 0
            Hint = #1055#1086#1082#1072#1079#1074#1072' '#1052#1048#1048#1054' '#1085#1072' '#1080#1079#1073#1088#1072#1085#1080#1103' %Partner%'
            ImageIndex = 1
            ParentShowHint = False
            ShowHint = True
            OnClick = btnPartnerDocsClick
          end
        end
        object tlbTogglePrices: TToolBar
          Left = 833
          Top = 0
          Width = 90
          Height = 24
          Align = alRight
          AutoSize = True
          ButtonHeight = 21
          ButtonWidth = 41
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 6
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
          object sepVAT: TToolButton
            Left = 82
            Top = 0
            Width = 8
            Caption = 'sepVAT'
            ImageIndex = 0
            Style = tbsSeparator
          end
        end
        object pnlRefreshNeeded: TPanel
          Left = 377
          Top = 0
          Width = 456
          Height = 24
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlRefreshNeeded'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1003
        Height = 436
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = grdDataGetCellParams
      end
    end
  end
  object pnlObject: TPanel [2]
    Left = 0
    Top = 0
    Width = 1019
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object pnlPartner: TPanel
      Left = 0
      Top = 0
      Width = 713
      Height = 65
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      inline frPartner: TfrPartnerExFieldEditFrame
        Left = 8
        Top = 5
        Width = 691
        Height = 60
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 155
        Constraints.MinHeight = 49
        TabOrder = 0
        TabStop = True
        inherited gbPartner: TGroupBox
          Caption = ' %Partner% '
          inherited pnlNameAndButtons: TPanel
            inherited pnlNameAndButtonsTop: TPanel
              inherited lblPartner: TLabel
                Width = 76
              end
            end
          end
          inherited pnlPartnerCode: TPanel
            inherited lblPartnerCode: TLabel
              Width = 19
            end
          end
          inherited frPartnerStatus: TfrCompanyStatus
            inherited lblCurrentStatus: TLabel
              Width = 34
            end
            inherited lblReachMonths: TLabel
              Width = 6
            end
            inherited lblExistanceMonths: TLabel
              Width = 6
            end
            inherited lblMonths: TLabel
              Width = 11
            end
            inherited dsData: TDataSource
              DataSet = frPartner.cdsPartner
            end
          end
          inherited pnlPriority: TPanel
            inherited lblPriority: TLabel
              Width = 38
            end
          end
        end
      end
    end
    object pnlProduct: TPanel
      Left = 713
      Top = 0
      Width = 705
      Height = 65
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      inline frProduct: TfrProductExFieldEditFrame
        Left = 8
        Top = 5
        Width = 691
        Height = 60
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        Constraints.MaxHeight = 549
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        inherited gbTreeNode: TGroupBox
          Width = 691
          Height = 60
          inherited pnlTreeNode: TPanel
            Width = 7
            Height = 43
            inherited pnlTreeNodeName: TPanel
              Width = 5
              Height = 27
              inherited edtTreeNodeName: TDBEdit
                Width = 4
              end
            end
            inherited pnlTreeNodeNo: TPanel
              Left = -175
              Height = 27
              inherited pnlEditButtons: TPanel
                Height = 23
              end
            end
            inherited pnlRightButtons: TPanel
              Left = -52
              Height = 27
              inherited tlbDocButton: TToolBar
                Height = 27
              end
            end
            inherited pnlProductLabels: TPanel
              Width = 7
            end
          end
          inherited pnlLeft: TPanel
            Height = 43
            inherited pnlSpecState: TPanel
              Height = 43
            end
            inherited pnlLeftLeft: TPanel
              Height = 43
            end
            inherited pnlPriority: TPanel
              Height = 43
            end
          end
          inherited pnlRight: TPanel
            Left = -81
            Height = 43
            inherited pnlRightLeft: TPanel
              Height = 43
            end
            inherited pnlCommonStatus: TPanel
              Height = 43
            end
            inherited pnlPartnerProductNames: TPanel
              Height = 43
            end
            inherited pnlProductPeriodsButton: TPanel
              Height = 43
            end
            inherited pnlNotes: TPanel
              Height = 43
            end
            inherited pnlProductOrigin: TPanel
              Height = 43
            end
            inherited pnlMeasures: TPanel
              Height = 43
              inherited pnlMeasure: TPanel
                Height = 43
              end
              inherited pnlAccountMeasure: TPanel
                Height = 43
              end
              inherited pnlTechMeasure: TPanel
                Height = 43
              end
            end
            inherited pnlEngineeringButtons: TPanel
              Height = 43
              inherited pnlEngineeringButtonsRightMargin: TPanel
                Height = 28
              end
              inherited tlbEngineeringButtons: TToolBar
                Height = 28
              end
            end
          end
        end
      end
    end
    object pnlDateInterval: TPanel
      Left = 850
      Top = 0
      Width = 169
      Height = 65
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object gbDateInterval: TGroupBox
        Left = 0
        Top = 5
        Width = 161
        Height = 60
        Caption = ' '#1042#1088#1084#1048#1085#1090' '
        TabOrder = 0
        object lblDateInterval: TLabel
          Left = 8
          Top = 16
          Width = 58
          Height = 13
          Caption = #1042#1088'. '#1089#1090#1098#1087#1082#1072':'
        end
        object txtDateUnitName: TDBText
          Left = 70
          Top = 16
          Width = 65
          Height = 17
          DataField = '_DATE_UNIT_NAME'
          DataSource = dsGridDataParams
        end
        inline frDateInterval: TfrDateIntervalFrame
          Left = 8
          Top = 31
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
    end
  end
  inherited dsGridData: TDataSource
    Left = 224
    Top = 336
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conParRelProducts
    IndexFieldNames = 'HAS_PARTNER;PARTNER_NAME; PRODUCT_NAME'
    Params = <
      item
        DataType = ftWideString
        Name = 'CHOSEN_COMPANIES'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftWideString
        Name = 'CHOSEN_PRODUCTS'
        ParamType = ptInput
        Size = 4000
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PRODUCT_ORIENTATION'
        ParamType = ptInput
        Value = '0'
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
        Value = '3'
      end
      item
        DataType = ftFloat
        Name = 'DATE_UNIT_COUNT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OBTAINMENT_TYPE_CODE'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftFloat
        Name = 'PRODUCT_CLASS_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRE_PRPP'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftFloat
        Name = 'SHOW_EMPTY_LINES'
        ParamType = ptUnknown
        Value = '0'
      end>
    ProviderName = 'prvPriceList'
    Left = 192
    Top = 336
  end
  inherited alActions: TActionList
    Left = 312
    Top = 304
    inherited actForm: TAction
      Caption = 'fmPriceList'
    end
    inherited actFilter: TAction
      Visible = True
    end
    object actToggleBaseCurrency: TAction
      GroupIndex = 1
      Hint = #1044#1086#1075#1086#1074#1086#1088#1077#1085#1072' '#1042#1072#1083#1091#1090#1072' / '#1054#1089#1085#1086#1074#1085#1072' '#1042#1072#1083#1091#1090#1072
      ImageIndex = 38
      OnExecute = actToggleBaseCurrencyExecute
    end
    object actWorkMeasure: TAction
      AutoCheck = True
      Checked = True
      GroupIndex = 2
      Hint = #1056#1072#1073#1086#1090#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 23
      OnExecute = actWorkMeasureExecute
    end
    object actAccountMeasure: TAction
      AutoCheck = True
      GroupIndex = 2
      Hint = #1057#1095#1077#1090#1086#1074#1086#1076#1085#1072' '#1084#1077#1088#1085#1072' '#1077#1076#1080#1085#1080#1094#1072
      ImageIndex = 28
      OnExecute = actAccountMeasureExecute
    end
    object actProductPartnerPrice: TAction
      Caption = #1060#1086#1088#1084#1080#1088#1072#1085#1077' '#1085#1072' '#1094#1077#1085#1072'...'
      ImageIndex = 187
      OnExecute = actProductPartnerPriceExecute
      OnUpdate = actProductPartnerPriceUpdate
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
    object actParRelProduct: TAction
      Caption = '%ParRelProductAbbrev%...'
      Hint = '%ParRelProductName%'
      OnExecute = actParRelProductExecute
      OnUpdate = actParRelProductUpdate
    end
    object actProductPeriods: TAction
      Caption = '%ProductPeriodAbbrev%...'
      Hint = '%ProductPeriodAbbrev%'
      OnExecute = actProductPeriodsExecute
      OnUpdate = actProductPeriodsUpdate
    end
  end
  inherited pdsGridDataParams: TParamDataSet
    AfterOpen = pdsGridDataParamsAfterOpen
    OnCalcFields = pdsGridDataParamsCalcFields
    Left = 192
    Top = 368
    object pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATION: TAbmesFloatField
      DisplayLabel = #1054#1088#1080#1077#1085#1090#1072#1094#1080#1103
      FieldName = 'PAR_REL_PRODUCT_ORIENTATION'
      OnChange = pdsGridDataParamsPAR_REL_PRODUCT_ORIENTATIONChange
    end
    object pdsGridDataParamsREQUIRE_PRPP: TAbmesFloatField
      DisplayLabel = #1056#1077#1078#1080#1084' '#1085#1072' '#1062#1077#1085#1080
      FieldName = 'REQUIRE_PRPP'
    end
    object pdsGridDataParamsCHOSEN_COMPANIES: TAbmesWideStringField
      DisplayLabel = '%Partner%'
      FieldName = 'CHOSEN_COMPANIES'
      Size = 4000
    end
    object pdsGridDataParamsCHOSEN_PRODUCTS: TAbmesWideStringField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'CHOSEN_PRODUCTS'
      Size = 4000
    end
    object pdsGridDataParamsOBTAINMENT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1062#1077#1085#1080' '#1079#1072
      FieldName = 'OBTAINMENT_TYPE_CODE'
      Required = True
    end
    object pdsGridDataParamsDATE_UNIT_CODE: TAbmesFloatField
      ConstraintErrorMessage = 'DATE_UNIT_CODE'
      FieldName = 'DATE_UNIT_CODE'
    end
    object pdsGridDataParamsDATE_UNIT_COUNT: TAbmesFloatField
      FieldName = 'DATE_UNIT_COUNT'
    end
    object pdsGridDataParamsBEGIN_DATE: TAbmesSQLTimeStampField
      ConstraintErrorMessage = 'DATE_UNIT_CODE'
      DisplayLabel = #1042#1088#1084#1048#1085#1090
      FieldName = 'BEGIN_DATE'
    end
    object pdsGridDataParamsEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      ProviderFlags = []
    end
    object pdsGridDataParamsBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
    end
    object pdsGridDataParamsPARTNER_CODE: TAbmesFloatField
      DisplayLabel = #1055#1072#1088#1090#1085#1100#1086#1088
      FieldName = 'PARTNER_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsPRODUCT_CODE: TAbmesFloatField
      DisplayLabel = #1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsPRODUCT_CLASS_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_CLASS_CODE'
      ProviderFlags = []
    end
    object pdsGridDataParamsSHOW_EMPTY_LINES: TAbmesFloatField
      FieldName = 'SHOW_EMPTY_LINES'
      FieldValueType = fvtBoolean
    end
    object pdsGridDataParams_DATE_UNIT_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_DATE_UNIT_NAME'
      LookupDataSet = cdsDateUnits
      LookupKeyFields = 'THE_DATE_UNIT_CODE'
      LookupResultField = 'THE_DATE_UNIT_NAME'
      KeyFields = 'DATE_UNIT_CODE'
      Lookup = True
    end
    object pdsGridDataParams_PARTNER_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PARTNER_CODE'
      Calculated = True
    end
    object pdsGridDataParams_PRODUCT_CODE: TAbmesFloatField
      FieldKind = fkCalculated
      FieldName = '_PRODUCT_CODE'
      Calculated = True
    end
    object pdsGridDataParams_OBTAINMENT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1062#1077#1085#1080' '#1079#1072
      FieldKind = fkLookup
      FieldName = '_OBTAINMENT_TYPE_NAME'
      LookupDataSet = cdsBorderRelTypeObtainmentTypes
      LookupKeyFields = 'OBTAINMENT_TYPE_CODE'
      LookupResultField = 'OBTAINMENT_TYPE_NAME'
      KeyFields = 'OBTAINMENT_TYPE_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited dsGridDataParams: TDataSource
    Left = 224
    Top = 368
  end
  inherited dsData: TDataSource
    Left = 224
    Top = 304
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 192
    Top = 304
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 288
    Top = 368
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
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
    Left = 400
    Top = 368
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313032367B5C666F6E7474626C7B5C66305C6673776973735C6670
      7271325C66636861727365743230347B5C2A5C666E616D6520417269616C3B7D
      417269616C204359523B7D7B5C66315C6673776973735C66707271325C666368
      61727365743020417269616C3B7D7B5C66325C666E696C5C6663686172736574
      3230347B5C2A5C666E616D6520417269616C3B7D417269616C204359523B7D7D
      0D0A5C766965776B696E64345C7563315C706172645C71635C6C616E67313033
      335C625C66305C66733238205449544C455C7061720D0A5C706172645C62305C
      667332345C7061720D0A5C66733230204F424A4543545C7061720D0A5C663120
      706C626C44617465496E74657276616C5C6C616E67313032365C6630203A205C
      6C616E673130333320444154455F494E54455256414C5C7061720D0A5C663120
      706C626C44617465556E69744E616D655C6C616E67313032365C6630203A205C
      6C616E673130333320444154455F554E49545F4E414D455C7061720D0A5C6C61
      6E67313032365C625C66325C667332345C7061720D0A7D0D0A00}
  end
  object cdsBorderRelTypeObtainmentTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end>
    ProviderName = 'prvBorderRelTypeObtainmentTypes'
    BeforeOpen = cdsBorderRelTypeObtainmentTypesBeforeOpen
    Left = 320
    Top = 368
    object cdsBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_CODE: TAbmesFloatField
      FieldName = 'OBTAINMENT_TYPE_CODE'
    end
    object cdsBorderRelTypeObtainmentTypesOBTAINMENT_TYPE_NAME: TAbmesWideStringField
      FieldName = 'OBTAINMENT_TYPE_NAME'
      Size = 100
    end
  end
end
