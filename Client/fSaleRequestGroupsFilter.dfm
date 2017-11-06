inherited fmSaleRequestGroupsFilter: TfmSaleRequestGroupsFilter
  Caption = 
    '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %Produ' +
    'ctClassAbbrev% '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
  ClientHeight = 413
  ClientWidth = 625
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 378
    Width = 625
    TabOrder = 7
    inherited pnlOKCancel: TPanel
      Left = 357
    end
    inherited pnlClose: TPanel
      Left = 268
    end
    inherited pnlApply: TPanel
      Left = 536
    end
  end
  object gbID: TGroupBox [1]
    Left = 176
    Top = 8
    Width = 441
    Height = 65
    Caption = ' ID '#1055#1044#1050' '
    TabOrder = 1
    object lblSaleDealType: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1058#1080#1087
    end
    object lblRequestBranch: TLabel
      Left = 72
      Top = 16
      Width = 51
      Height = 13
      Caption = #1058#1055' '#1043#1083'.'
    end
    object lblRequestNo: TLabel
      Left = 136
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object lblIsActivatedByClient: TLabel
      Left = 256
      Top = 16
      Width = 47
      Height = 13
      Caption = #1040#1082#1090#1080#1074'. '#1086#1090
    end
    object lblDateUnit: TLabel
      Left = 344
      Top = 16
      Width = 80
      Height = 13
      Caption = #1053#1072#1077#1084#1085#1072' '#1057#1090#1098#1087#1082#1072
    end
    object lblStreamType: TLabel
      Left = 192
      Top = 16
      Width = 31
      Height = 13
      Caption = #1055#1086#1090#1086#1082
    end
    object cbSaleDealType: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 57
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DisplayAllFields = True
      DataField = 'SALE_DEAL_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'. >'
      LookupField = 'SALE_DEAL_TYPE_CODE'
      LookupDisplay = 'SALE_DEAL_TYPE_ABBREV;SALE_DEAL_TYPE_NAME'
      LookupSource = dsSaleDealTypes
      TabOrder = 0
    end
    object cbRequestBranch: TJvDBLookupCombo
      Left = 72
      Top = 32
      Width = 57
      Height = 21
      DisplayAllFields = True
      DataField = 'REQUEST_BRANCH_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089'.>'
      LookupField = 'BRANCH_CODE'
      LookupDisplay = 'BRANCH_IDENTIFIER'
      LookupSource = dsBranches
      TabOrder = 1
    end
    object edtRequestNo: TDBEdit
      Left = 136
      Top = 32
      Width = 49
      Height = 21
      DataField = 'REQUEST_NO'
      DataSource = dsData
      TabOrder = 2
    end
    object cbDateUnit: TJvDBLookupCombo
      Left = 344
      Top = 32
      Width = 89
      Height = 21
      DeleteKeyClear = False
      DataField = 'LEASE_DATE_UNIT_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'THE_DATE_UNIT_CODE'
      LookupDisplay = 'THE_DATE_UNIT_NAME'
      LookupSource = dsDateUnits
      TabOrder = 5
    end
    object cbStreamType: TJvDBLookupCombo
      Left = 192
      Top = 32
      Width = 57
      Height = 21
      DataField = 'STREAM_TYPE_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089' >'
      LookupField = 'STREAM_TYPE_CODE'
      LookupDisplay = 'STREAM_TYPE_ABBREV;STREAM_TYPE_NAME'
      LookupSource = dsStreamTypes
      TabOrder = 3
    end
    object cbIsActivatedByClient: TJvDBComboBox
      Left = 256
      Top = 32
      Width = 81
      Height = 21
      DataField = 'IS_ACTIVATED_BY_CLIENT'
      DataSource = dsData
      ItemHeight = 0
      Items.Strings = (
        '< '#1074#1089#1080#1095#1082#1080' >'
        #1048#1055
        #1050#1083#1080#1077#1085#1090)
      TabOrder = 4
      Values.Strings = (
        ''
        'False'
        'True')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  object gbRequestSendDate: TGroupBox [2]
    Left = 8
    Top = 80
    Width = 305
    Height = 65
    Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1057#1090#1072#1088#1090' '
    TabOrder = 2
    object lblRequestSendDate: TLabel
      Left = 88
      Top = 16
      Width = 40
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090
    end
    inline frRequestSendDate: TfrDateIntervalFrame
      Left = 88
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
  end
  object gbRequestRegisterDate: TGroupBox [3]
    Left = 320
    Top = 80
    Width = 297
    Height = 65
    Caption = ' '#1044#1072#1090#1072' '#1085#1072' '#1056#1077#1075#1080#1089#1090#1088#1080#1088#1072#1085#1077' '
    TabOrder = 3
    object lblRequestRegisterDate: TLabel
      Left = 80
      Top = 16
      Width = 40
      Height = 13
      Caption = #1042#1088#1084#1048#1085#1090
    end
    inline frRequestRegisterDate: TfrDateIntervalFrame
      Left = 80
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      inherited alActions: TActionList
        Top = 8
      end
      inherited dsData: TDataSource
        Top = 8
      end
      inherited cdsDates: TAbmesClientDataSet
        Top = 8
      end
      inherited dsDates: TDataSource
        Top = 8
      end
    end
  end
  object gbClient: TGroupBox [4]
    Left = 8
    Top = 152
    Width = 609
    Height = 65
    Caption = ' '#1050#1083#1080#1077#1085#1090' '
    TabOrder = 4
    object lblPartnerCode: TLabel
      Left = 8
      Top = 16
      Width = 19
      Height = 13
      Caption = #1050#1086#1076
    end
    object lblPartner: TLabel
      Left = 80
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object lblCountry: TLabel
      Left = 376
      Top = 16
      Width = 48
      Height = 13
      Caption = #1044#1098#1088#1078#1072#1074#1072
    end
    object lblPriority: TLabel
      Left = 504
      Top = 16
      Width = 54
      Height = 13
      Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
    end
    inline frClient: TfrPartnerFieldEditFrameBald
      Left = 8
      Top = 32
      Width = 361
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 376
        inherited pnlNameAndButtons: TPanel
          Width = 287
          inherited pnlRightButtons: TPanel
            Left = 251
          end
          inherited pnlPartnerName: TPanel
            Width = 251
            inherited edtPartnerName: TDBEdit
              Width = 237
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 252
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 368
        end
      end
      inherited alActions: TActionList
        Top = 32
      end
      inherited dsData: TDataSource
        Top = 32
      end
      inherited cdsPartners: TAbmesClientDataSet
        Top = 32
      end
      inherited dsPartners: TDataSource
        Top = 32
      end
      inherited cdsPartner: TAbmesClientDataSet
        Top = 32
      end
      inherited dsPartner: TDataSource
        Top = 32
      end
    end
    object cbCountry: TJvDBLookupCombo
      Left = 376
      Top = 32
      Width = 113
      Height = 21
      DisplayAllFields = True
      DataField = 'COUNTRY_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'COUNTRY_CODE'
      LookupDisplay = 'COUNTRY_NAME'
      LookupSource = dsCountries
      TabOrder = 1
    end
    inline frPriorityIntervalEditFrame1: TfrPriorityIntervalEditFrame
      Left = 504
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
      inherited alActions: TActionList
        Top = 16
      end
      inherited dsData: TDataSource
        Top = 16
      end
      inherited cdsPriorities: TAbmesClientDataSet
        Top = 16
      end
      inherited dsPriorities: TDataSource
        Top = 16
      end
    end
  end
  object gbMediator: TGroupBox [5]
    Left = 8
    Top = 224
    Width = 609
    Height = 73
    Caption = ' '#1057#1074#1098#1088#1079#1072#1085#1086#1089#1090' '#1089' '#1055#1086#1089#1088#1077#1076#1085#1080#1082' '
    TabOrder = 5
    object lblMediator: TLabel
      Left = 144
      Top = 24
      Width = 56
      Height = 13
      Caption = #1055#1086#1089#1088#1077#1076#1085#1080#1082
    end
    object pnlHasMediator: TJvDBRadioPanel
      Left = 4
      Top = 16
      Width = 89
      Height = 49
      BevelOuter = bvNone
      DataField = 'HAS_MEDIATOR_CODE'
      DataSource = dsData
      Items.Strings = (
        #1042#1089#1080#1095#1082#1080
        #1057#1074#1098#1088#1079#1072#1085
        #1053#1077#1089#1074#1098#1088#1079#1072#1085)
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    inline frMediator: TfrPartnerFieldEditFrameBald
      Left = 144
      Top = 40
      Width = 457
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 1
      TabStop = True
      inherited gbPartner: TGroupBox
        Width = 472
        inherited pnlNameAndButtons: TPanel
          Width = 383
          inherited pnlRightButtons: TPanel
            Left = 347
          end
          inherited pnlPartnerName: TPanel
            Width = 347
            inherited edtPartnerName: TDBEdit
              Width = 333
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 348
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 464
        end
      end
      inherited alActions: TActionList
        Top = 32
      end
      inherited dsData: TDataSource
        Top = 32
      end
      inherited cdsPartners: TAbmesClientDataSet
        Top = 32
      end
      inherited dsPartners: TDataSource
        Top = 32
      end
      inherited cdsPartner: TAbmesClientDataSet
        Top = 32
      end
      inherited dsPartner: TDataSource
        Top = 32
      end
    end
  end
  inline frSRGEmployee: TfrEmployeeFieldEditFrameLabeled [6]
    Left = 8
    Top = 304
    Width = 609
    Height = 65
    Constraints.MaxHeight = 65
    Constraints.MinHeight = 65
    TabOrder = 6
    TabStop = True
    inherited gbEmployee: TGroupBox
      Width = 609
      Caption = ' '#1042#1086#1076#1077#1097' '#1087#1086' '#1055#1044#1050' '
      inherited pnlEmployeeName: TPanel
        Width = 534
        inherited pnlRightButtons: TPanel
          Left = 498
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 498
          inherited edtEmployeeName: TDBEdit
            Width = 523
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 497
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 599
      end
      inherited pnlLabels: TPanel
        Width = 605
        inherited lblCode: TLabel
          Width = 19
        end
        inherited lblName: TLabel
          Width = 22
        end
      end
    end
  end
  object gbStatus: TGroupBox [7]
    Left = 8
    Top = 8
    Width = 161
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 0
    object lblDash: TLabel
      Left = 75
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object cbMinStatus: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 65
      Height = 21
      DropDownCount = 11
      DropDownWidth = 280
      DeleteKeyClear = False
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 0
    end
    object cbMaxStatus: TJvDBLookupCombo
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      DropDownCount = 11
      DropDownWidth = 280
      DeleteKeyClear = False
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      LookupField = 'STATUS_CODE'
      LookupDisplay = 'STATUS_ABBREV;STATUS_DESCRIPTION'
      LookupSource = dsStatuses
      TabOrder = 1
    end
  end
  inherited alActions: TActionList [8]
    Left = 136
    Top = 65528
    inherited actForm: TAction
      Caption = 
        '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1082#1077#1090#1080' '#1044#1080#1072#1083#1086#1079#1080' '#1089' '#1050#1083#1080#1077#1085#1090#1080' '#1079#1072' '#1055#1088#1086#1076#1072#1078#1073#1072' '#1085#1072' %Produ' +
        'ctClassAbbrev% '#1087#1086' '#1047#1072#1076#1072#1085#1080#1077
    end
  end
  inherited dsData: TDataSource [9]
    Left = 104
    Top = 65528
  end
  inherited cdsData: TAbmesClientDataSet [10]
    Left = 72
    Top = 65528
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [11]
    Top = 376
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 392
  end
  inherited dsFilterVariants: TDataSource
    Top = 376
  end
  object cdsSaleDealTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conSalesCommon
    Params = <>
    ProviderName = 'prvSaleDealTypes'
    Left = 184
    Top = 48
    object cdsSaleDealTypesSALE_DEAL_TYPE_CODE: TAbmesFloatField
      FieldName = 'SALE_DEAL_TYPE_CODE'
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_NAME: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_NAME'
      Size = 100
    end
    object cdsSaleDealTypesSALE_DEAL_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'SALE_DEAL_TYPE_ABBREV'
      Size = 100
    end
  end
  object dsSaleDealTypes: TDataSource
    DataSet = cdsSaleDealTypes
    Left = 200
    Top = 48
  end
  object cdsBranches: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompany
    Filter = '(IS_LOCAL_BRANCH <> 0) and (IS_INACTIVE = 0)'
    Params = <>
    ProviderName = 'prvBranches'
    Left = 256
    Top = 48
    object cdsBranchesBRANCH_CODE: TAbmesFloatField
      FieldName = 'BRANCH_CODE'
    end
    object cdsBranchesBRANCH_NO: TAbmesFloatField
      DisplayWidth = 3
      FieldName = 'BRANCH_NO'
    end
    object cdsBranchesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsBranchesBRANCH_IDENTIFIER: TAbmesWideStringField
      FieldName = 'BRANCH_IDENTIFIER'
      Size = 255
    end
    object cdsBranchesBRANCH_CODE_AND_NAME: TAbmesWideStringField
      FieldName = 'BRANCH_CODE_AND_NAME'
      Size = 255
    end
    object cdsBranchesIS_LOCAL_BRANCH: TAbmesFloatField
      FieldName = 'IS_LOCAL_BRANCH'
    end
    object cdsBranchesIS_INACTIVE: TAbmesFloatField
      FieldName = 'IS_INACTIVE'
    end
  end
  object dsBranches: TDataSource
    DataSet = cdsBranches
    Left = 272
    Top = 48
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 408
    Top = 184
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
    object cdsCountriesCOUNTRY_NAME: TAbmesWideStringField
      FieldName = 'COUNTRY_NAME'
      Required = True
      Size = 50
    end
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 440
    Top = 184
  end
  object cdsDateUnits: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvDateUnits'
    Left = 480
    Top = 48
    object cdsDateUnitsTHE_DATE_UNIT_CODE: TAbmesFloatField
      FieldName = 'THE_DATE_UNIT_CODE'
    end
    object cdsDateUnitsTHE_DATE_UNIT_NAME: TAbmesWideStringField
      FieldName = 'THE_DATE_UNIT_NAME'
      Size = 50
    end
  end
  object dsDateUnits: TDataSource
    DataSet = cdsDateUnits
    Left = 496
    Top = 48
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 40
    object cdsStatusesSTATUS_CODE: TAbmesFloatField
      FieldName = 'STATUS_CODE'
    end
    object cdsStatusesSTATUS_ABBREV: TAbmesWideStringField
      FieldName = 'STATUS_ABBREV'
      Size = 6
    end
    object cdsStatusesSTATUS_DESCRIPTION: TAbmesWideStringField
      FieldName = 'STATUS_DESCRIPTION'
      Size = 100
    end
  end
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 80
    Top = 40
  end
  object cdsStreamTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvStreamTypes'
    Left = 304
    Top = 65528
    object cdsStreamTypesSTREAM_TYPE_CODE: TAbmesFloatField
      FieldName = 'STREAM_TYPE_CODE'
    end
    object cdsStreamTypesSTREAM_TYPE_ABBREV: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_ABBREV'
      Size = 100
    end
    object cdsStreamTypesSTREAM_TYPE_NAME: TAbmesWideStringField
      FieldName = 'STREAM_TYPE_NAME'
    end
  end
  object dsStreamTypes: TDataSource
    DataSet = cdsStreamTypes
    Left = 320
    Top = 65528
  end
end
