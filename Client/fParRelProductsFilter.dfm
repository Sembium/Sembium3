inherited fmParRelProductsFilter: TfmParRelProductsFilter
  Caption = 
    #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1052#1072#1090#1088#1080#1094#1072' '#1085#1072' %ParRelProducts%%ParRelProductsStructurePar' +
    'tIncludeKind%%ParRelProductsDeptIncludeKind%%ParRelProductsKind%' +
    '%ForCommonProduct% - %ParRelProductsOrientation%'
  ClientHeight = 612
  ClientWidth = 786
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 577
    Width = 786
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 518
    end
    inherited pnlClose: TPanel
      Left = 429
    end
    inherited pnlApply: TPanel
      Left = 697
    end
  end
  object gbTop: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 769
    Height = 65
    TabOrder = 0
    object lblInvestmentLevel: TLabel
      Left = 264
      Top = 16
      Width = 56
      Height = 13
      Caption = #1042#1057'/'#1048#1056' '#1056#1077#1076
      FocusControl = cbInvestmentLevel
    end
    object lblObtainmentType: TLabel
      Left = 160
      Top = 16
      Width = 82
      Height = 13
      Caption = #1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072' '#1079#1072
      FocusControl = cbObtainmentType
    end
    object lblDateInterval: TLabel
      Left = 8
      Top = 16
      Width = 97
      Height = 13
      Caption = #1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083
      FocusControl = frDateInterval
    end
    object chkCalcReals: TAbmesDBCheckBox
      Left = 440
      Top = 34
      Width = 153
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1074#1072#1085#1077' '#1085#1072' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103
      DataField = 'CALC_REALS'
      DataSource = dsData
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      ImmediateUpdateField = True
    end
    object cbInvestmentLevel: TJvDBLookupCombo
      Left = 264
      Top = 32
      Width = 153
      Height = 21
      DataField = '_INVESTMENT_LEVEL_DESCRIPTION'
      DataSource = dsData
      TabOrder = 2
    end
    object cbObtainmentType: TJvDBLookupCombo
      Left = 160
      Top = 32
      Width = 97
      Height = 21
      DataField = '_OBTAINMENT_TYPE_ABBREV'
      DataSource = dsData
      TabOrder = 1
    end
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 32
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
  object gbParRelProduct: TGroupBox [2]
    Left = 8
    Top = 80
    Width = 769
    Height = 65
    Caption = ' %ParRelProduct% '
    TabOrder = 1
    object lblIsRegular: TLabel
      Left = 512
      Top = 16
      Width = 64
      Height = 13
      Caption = #1056#1077#1078#1080#1084' '#1087#1091#1083#1089'.'
      FocusControl = cbIsRegular
    end
    object lblBetweenParRelProductStatuses: TLabel
      Left = 108
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblParRelProductStatus: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblParRelProductStatusReach: TLabel
      Left = 240
      Top = 16
      Width = 108
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077
    end
    object lblBetweenParRelProductStatusReach: TLabel
      Left = 283
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblParRelProductStatusReachMeasure: TLabel
      Left = 341
      Top = 36
      Width = 23
      Height = 13
      Caption = #1084#1077#1089'.'
    end
    object lblParRelProductExistance: TLabel
      Left = 376
      Top = 16
      Width = 104
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074'.'
    end
    object lblBetweenParRelProductExistance: TLabel
      Left = 419
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblParRelProductExistanceMeasure: TLabel
      Left = 477
      Top = 36
      Width = 23
      Height = 13
      Caption = #1084#1077#1089'.'
    end
    object lblIsApprovedByPartner: TLabel
      Left = 608
      Top = 16
      Width = 146
      Height = 13
      Caption = #1057#1098#1089#1090#1086#1103#1085#1080#1077' '#1085#1072' '#1044#1086#1075#1086#1074#1086#1088#1077#1085#1086#1089#1090
      FocusControl = cbIsApprovedByPartner
    end
    object cbIsRegular: TJvDBComboBox
      Left = 512
      Top = 32
      Width = 81
      Height = 21
      DataField = 'IS_REGULAR'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1055#1091#1083#1089#1080#1088#1072#1097
        #1056#1077#1075#1091#1083#1103#1088#1077#1085)
      TabOrder = 6
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbMinParRelProductStatus: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 97
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MIN_PRP_STATUS_CODE'
      DataSource = dsData
      LookupField = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupDisplay = 'PAR_REL_PRODUCT_STATUS_NAME'
      LookupSource = dsParRelProductStatuses
      TabOrder = 0
    end
    object cbMaxParRelProductStatus: TJvDBLookupCombo
      Left = 120
      Top = 32
      Width = 97
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MAX_PRP_STATUS_CODE'
      DataSource = dsData
      LookupField = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupDisplay = 'PAR_REL_PRODUCT_STATUS_NAME'
      LookupSource = dsParRelProductStatuses
      TabOrder = 1
    end
    object edtMinParRelProductStatusReachMonths: TDBEdit
      Left = 240
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MIN_PRP_STATUS_REACH_MONTHS'
      DataSource = dsData
      TabOrder = 2
    end
    object edtMaxParRelProductStatusReachMonths: TDBEdit
      Left = 296
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MAX_PRP_STATUS_REACH_MONTHS'
      DataSource = dsData
      TabOrder = 3
    end
    object edtMinParRelProductExistanceMonths: TDBEdit
      Left = 376
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MIN_PRP_EXIST_MONTHS'
      DataSource = dsData
      TabOrder = 4
    end
    object edtMaxParRelProductExistanceMonths: TDBEdit
      Left = 432
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MAX_PRP_EXIST_MONTHS'
      DataSource = dsData
      TabOrder = 5
    end
    object cbIsApprovedByPartner: TJvDBComboBox
      Left = 608
      Top = 32
      Width = 153
      Height = 21
      DataField = 'IS_APPROVED_BY_PARTNER'
      DataSource = dsData
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1047#1072#1076#1072#1076#1077#1085#1080' '#1086#1090' '#1048#1055
        #1044#1074#1091#1089#1090#1088#1072#1085#1085#1086' '#1087#1088#1080#1077#1090#1080)
      TabOrder = 7
      Values.Strings = (
        ''
        '0'
        '1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object pnlProduct: TPanel [3]
    Left = 8
    Top = 152
    Width = 377
    Height = 297
    BevelOuter = bvNone
    TabOrder = 2
    inline frProductFilter: TfrParamProductFilter
      Left = 0
      Top = 64
      Width = 377
      Height = 233
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        inherited lblUsedBy: TLabel
          Width = 61
        end
        inherited lblProductOrigin: TLabel
          Width = 23
        end
        inherited lblCommonStatus: TLabel
          Width = 45
        end
        inherited lblIsActive: TLabel
          Width = 53
        end
        inherited pnlNodes: TPanel
          inherited grdChosenNodes: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlParams: TPanel
          inherited grdChosenNodeParams: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
      end
      inherited cdsChosenNodesParams: TAbmesClientDataSet
        Left = 224
        Top = 24
      end
      inherited dsChosenNodesParams: TDataSource
        Left = 256
        Top = 24
      end
    end
    object gbProductCommonLevel: TGroupBox
      Left = 0
      Top = 0
      Width = 377
      Height = 57
      Caption = ' '#1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
      TabOrder = 0
      object cbProductCommonLevel: TJvDBComboBox
        Left = 8
        Top = 24
        Width = 361
        Height = 21
        DataField = 'PRODUCT_COMMON_LEVEL'
        DataSource = dsData
        Items.Strings = (
          #1057#1090#1088#1072#1090#1077#1075#1080#1095#1077#1089#1082#1086' ('#1054#1057#1090#1088')'
          #1055#1086#1090#1077#1085#1094#1080#1072#1083#1085#1086' '#1054#1073#1086#1073#1097#1077#1085#1086' ('#1054#1055#1090#1094'+'#1045')'
          #1055#1086#1090#1077#1085#1094#1080#1072#1083#1085#1086' '#1050#1086#1085#1082#1088#1077#1090#1080#1079#1080#1088#1072#1085#1086' ('#1055'+'#1045')')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  object pnlPartner: TPanel [4]
    Left = 400
    Top = 152
    Width = 377
    Height = 417
    BevelOuter = bvNone
    TabOrder = 3
    inline frCompanyFilter: TfrCompanyFilter
      Left = 0
      Top = 64
      Width = 377
      Height = 233
      TabOrder = 1
      TabStop = True
      inherited grpTreeNodeFilter: TGroupBox
        Caption = ' %Partner% '
        inherited pnlChosenCompanies: TPanel
          inherited grdChosenCompanies: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlNotChosenCompanies: TPanel
          inherited grdNotChosenCompanies: TAbmesDBGrid
            FooterFont.Name = 'Microsoft Sans Serif'
            TitleFont.Name = 'Microsoft Sans Serif'
          end
        end
        inherited pnlBottom: TPanel
          inherited lblCommonStatus: TLabel
            Width = 45
          end
        end
      end
    end
    object gbPartnerStuff: TGroupBox
      Left = 0
      Top = 304
      Width = 377
      Height = 113
      Caption = ' '#1044#1072#1085#1085#1080' '#1079#1072' %Partner% '
      TabOrder = 2
      object lblCompanyClass: TLabel
        Left = 8
        Top = 64
        Width = 25
        Height = 13
        Caption = #1050#1083#1072#1089
      end
      object lblPriority: TLabel
        Left = 272
        Top = 16
        Width = 54
        Height = 13
        Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
      end
      object lblBetweenCompanyStatuses: TLabel
        Left = 108
        Top = 35
        Width = 9
        Height = 13
        Caption = '---'
      end
      object lblCompanyStatus: TLabel
        Left = 8
        Top = 16
        Width = 34
        Height = 13
        Caption = #1057#1090#1072#1090#1091#1089
      end
      object cbCompanyClass: TJvDBComboBox
        Left = 8
        Top = 80
        Width = 97
        Height = 21
        DataField = 'COMPANY_CLASS_CODE'
        DataSource = dsData
        Items.Strings = (
          '< '#1074#1089#1080#1095#1082#1080' >'
          #1048#1055
          #1057#1048#1063#1048
          #1057#1098#1073#1080)
        TabOrder = 3
        Values.Strings = (
          ''
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
      inline frPriorityInterval: TfrPriorityIntervalEditFrame
        Left = 272
        Top = 32
        Width = 97
        Height = 21
        Constraints.MaxHeight = 21
        Constraints.MaxWidth = 97
        Constraints.MinHeight = 21
        Constraints.MinWidth = 97
        TabOrder = 2
        TabStop = True
        inherited lblDash: TLabel
          Width = 6
        end
      end
      object cbMinCompanyStatusCode: TJvDBLookupCombo
        Left = 8
        Top = 32
        Width = 97
        Height = 21
        DropDownWidth = 250
        DeleteKeyClear = False
        DataField = 'MIN_COMPANY_STATUS_CODE'
        DataSource = dsData
        LookupField = 'COMPANY_STATUS_CODE'
        LookupDisplay = 'COMPANY_STATUS_NAME'
        LookupSource = dsCompanyStatuses
        TabOrder = 0
      end
      object cbMaxCompanyStatusCode: TJvDBLookupCombo
        Left = 120
        Top = 32
        Width = 97
        Height = 21
        DropDownWidth = 250
        DeleteKeyClear = False
        DataField = 'MAX_COMPANY_STATUS_CODE'
        DataSource = dsData
        LookupField = 'COMPANY_STATUS_CODE'
        LookupDisplay = 'COMPANY_STATUS_NAME'
        LookupSource = dsCompanyStatuses
        TabOrder = 1
      end
    end
    object gbPartnerCommonLevel: TGroupBox
      Left = 0
      Top = 0
      Width = 377
      Height = 57
      Caption = ' '#1053#1080#1074#1086' %ParRelProductAbbrev% '#1089#1087#1088#1103#1084#1086' '#1055#1072#1088#1090#1085#1100#1086#1088' '
      TabOrder = 0
      object cbPartnerCommonLevel: TJvDBComboBox
        Left = 8
        Top = 24
        Width = 361
        Height = 21
        DataField = 'PARTNER_COMMON_LEVEL'
        DataSource = dsData
        Items.Strings = (
          #1054#1073#1086#1073#1097#1077#1085#1086' ('#1054'+'#1045')'
          #1050#1086#1085#1082#1088#1077#1090#1080#1079#1080#1088#1072#1085#1086' ('#1055'+'#1045')')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 
        #1060#1080#1083#1090#1098#1088' '#1085#1072' '#1052#1072#1090#1088#1080#1094#1072' '#1085#1072' %ParRelProducts%%ParRelProductsStructurePar' +
        'tIncludeKind%%ParRelProductsDeptIncludeKind%%ParRelProductsKind%' +
        '%ForCommonProduct% - %ParRelProductsOrientation%'
    end
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Top = 584
  end
  inherited dsFilterVariants: TDataSource
    Top = 584
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
    Top = 584
  end
  object cdsCompanyStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvCompanyStatuses'
    Left = 560
    Top = 472
    object cdsCompanyStatusesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object cdsCompanyStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
  end
  object dsCompanyStatuses: TDataSource
    DataSet = cdsCompanyStatuses
    Left = 560
    Top = 520
  end
  object cdsParRelProductStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conParRelProducts
    Params = <>
    ProviderName = 'prvParRelProductStatuses'
    Left = 128
    Top = 88
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsParRelProductStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
  object dsParRelProductStatuses: TDataSource
    DataSet = cdsParRelProductStatuses
    Left = 160
    Top = 88
  end
end
