inherited fmCompaniesFilter: TfmCompaniesFilter
  Left = 291
  Top = 175
  Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
  ClientHeight = 349
  ClientWidth = 647
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 631
    Height = 298
  end
  object pnlCompanyClass: TPanel [1]
    Left = 16
    Top = 96
    Width = 614
    Height = 105
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object pnlPerson: TPanel
      Left = 2
      Top = 2
      Width = 610
      Height = 99
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblAbbrev: TLabel
        Left = 344
        Top = 11
        Width = 34
        Height = 13
        Caption = #1040#1073#1088#1077#1074'.'
      end
      object lblLastName: TLabel
        Left = 256
        Top = 11
        Width = 49
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object lblMiddleName: TLabel
        Left = 168
        Top = 11
        Width = 46
        Height = 13
        Caption = #1055#1088#1077#1079#1080#1084#1077
      end
      object lblFirstName: TLabel
        Left = 80
        Top = 11
        Width = 22
        Height = 13
        Caption = #1048#1084#1077
      end
      object lblEGN: TLabel
        Left = 392
        Top = 11
        Width = 50
        Height = 13
        Caption = #1045#1043#1053'/'#1051#1053#1063
      end
      object lblCode: TLabel
        Left = 8
        Top = 11
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblCountry: TLabel
        Left = 544
        Top = 11
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
        FocusControl = edtCompanyShortName
      end
      object lblGender: TLabel
        Left = 472
        Top = 11
        Width = 20
        Height = 13
        Caption = #1055#1086#1083
      end
      object lblCraftType: TLabel
        Left = 8
        Top = 56
        Width = 180
        Height = 13
        Caption = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      end
      object lblCraft: TLabel
        Left = 312
        Top = 56
        Width = 52
        Height = 13
        Caption = #1055#1088#1086#1092#1077#1089#1080#1103
      end
      object edtMiddleName: TDBEdit
        Left = 168
        Top = 27
        Width = 81
        Height = 21
        DataField = 'MIDDLE_NAME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtLastName: TDBEdit
        Left = 256
        Top = 27
        Width = 81
        Height = 21
        DataField = 'LAST_NAME'
        DataSource = dsData
        TabOrder = 3
      end
      object edtFirstName: TDBEdit
        Left = 80
        Top = 27
        Width = 81
        Height = 21
        DataField = 'FIRST_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtAbbrev: TDBEdit
        Left = 344
        Top = 27
        Width = 41
        Height = 21
        DataField = 'ABBREV'
        DataSource = dsData
        TabOrder = 4
      end
      object edtEGN: TDBEdit
        Left = 392
        Top = 27
        Width = 73
        Height = 21
        DataField = 'EGN'
        DataSource = dsData
        TabOrder = 5
      end
      object edtCode: TDBEdit
        Left = 8
        Top = 27
        Width = 65
        Height = 21
        DataField = 'COMPANY_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object cbCountry: TJvDBLookupCombo
        Left = 544
        Top = 27
        Width = 57
        Height = 20
        DropDownWidth = 250
        DataField = 'COUNTRY_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089' >'
        LookupField = 'COUNTRY_CODE'
        LookupDisplay = 'COUNTRY_ABBREV'
        LookupSource = dsCountries
        TabOrder = 7
      end
      object cbGender: TJvDBComboBox
        Left = 472
        Top = 27
        Width = 65
        Height = 21
        DataField = 'PERSON_GENDER_CODE'
        DataSource = dsData
        ItemHeight = 13
        Items.Strings = (
          '< '#1074#1089' >'
          #1084#1098#1078#1082#1080
          #1078#1077#1085#1089#1082#1080)
        TabOrder = 6
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
      object cbCraftType: TJvDBLookupCombo
        Left = 8
        Top = 72
        Width = 289
        Height = 21
        DropDownWidth = 250
        DataField = 'CRAFT_TYPE_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'CRAFT_TYPE_CODE'
        LookupDisplay = 'CRAFT_TYPE_NAME'
        LookupSource = dsCraftTypes
        TabOrder = 8
      end
      object cbCraft: TJvDBLookupCombo
        Left = 312
        Top = 72
        Width = 289
        Height = 21
        DropDownWidth = 250
        DataField = 'CRAFT_CODE'
        DataSource = dsData
        DisplayEmpty = ' '
        LookupField = 'CRAFT_CODE'
        LookupDisplay = 'CRAFT_NAME'
        LookupSource = dsCrafts
        TabOrder = 9
      end
    end
    object pnlCompany: TPanel
      Left = 2
      Top = 299
      Width = 610
      Height = 99
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblCompanyName: TLabel
        Left = 80
        Top = 11
        Width = 112
        Height = 13
        Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtCompanyName
      end
      object lblCompanyShortName: TLabel
        Left = 288
        Top = 11
        Width = 113
        Height = 13
        Caption = #1050#1088#1072#1090#1082#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtCompanyShortName
      end
      object lblBulstat: TLabel
        Left = 424
        Top = 11
        Width = 51
        Height = 13
        Caption = #1041#1059#1051#1057#1058#1040#1058
        FocusControl = edtCompanyShortName
      end
      object lblCode2: TLabel
        Left = 8
        Top = 11
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblCountry3: TLabel
        Left = 544
        Top = 11
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
        FocusControl = edtCompanyShortName
      end
      object edtCompanyName: TDBEdit
        Left = 80
        Top = 27
        Width = 201
        Height = 21
        DataField = 'COMPANY_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtCompanyShortName: TDBEdit
        Left = 288
        Top = 27
        Width = 129
        Height = 21
        DataField = 'SHORT_NAME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtBulstat: TDBEdit
        Left = 424
        Top = 27
        Width = 73
        Height = 21
        DataField = 'BULSTAT'
        DataSource = dsData
        TabOrder = 3
      end
      object edtCode2: TDBEdit
        Left = 8
        Top = 27
        Width = 65
        Height = 21
        DataField = 'COMPANY_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object cbCountry3: TJvDBLookupCombo
        Left = 544
        Top = 27
        Width = 57
        Height = 20
        DropDownWidth = 250
        DataField = 'COUNTRY_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089' >'
        LookupField = 'COUNTRY_CODE'
        LookupDisplay = 'COUNTRY_ABBREV'
        LookupSource = dsCountries
        TabOrder = 5
      end
      object edtBulstatEx: TDBEdit
        Left = 496
        Top = 27
        Width = 41
        Height = 21
        DataField = 'BULSTAT_EX'
        DataSource = dsData
        TabOrder = 4
      end
    end
    object pnlAll: TPanel
      Left = 2
      Top = 101
      Width = 610
      Height = 99
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lblCode3: TLabel
        Left = 8
        Top = 11
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblCountry2: TLabel
        Left = 544
        Top = 11
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
        FocusControl = edtCompanyShortName
      end
      object edtCode3: TDBEdit
        Left = 8
        Top = 27
        Width = 65
        Height = 21
        DataField = 'COMPANY_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object cbCountry2: TJvDBLookupCombo
        Left = 544
        Top = 27
        Width = 57
        Height = 20
        DropDownWidth = 250
        DataField = 'COUNTRY_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089' >'
        LookupField = 'COUNTRY_CODE'
        LookupDisplay = 'COUNTRY_ABBREV'
        LookupSource = dsCountries
        TabOrder = 1
      end
    end
    object pnlCumulative: TPanel
      Left = 2
      Top = 200
      Width = 610
      Height = 99
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lblCompanyName2: TLabel
        Left = 80
        Top = 11
        Width = 112
        Height = 13
        Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtCompanyName2
      end
      object lblCompanyShortName2: TLabel
        Left = 288
        Top = 11
        Width = 113
        Height = 13
        Caption = #1050#1088#1072#1090#1082#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtCompanyShortName2
      end
      object lblCode4: TLabel
        Left = 8
        Top = 11
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblCountry4: TLabel
        Left = 544
        Top = 11
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
        FocusControl = edtCompanyShortName2
      end
      object edtCompanyName2: TDBEdit
        Left = 80
        Top = 27
        Width = 201
        Height = 21
        DataField = 'COMPANY_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtCompanyShortName2: TDBEdit
        Left = 288
        Top = 27
        Width = 129
        Height = 21
        DataField = 'SHORT_NAME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtCode4: TDBEdit
        Left = 8
        Top = 27
        Width = 65
        Height = 21
        DataField = 'COMPANY_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object cbCountry4: TJvDBLookupCombo
        Left = 544
        Top = 27
        Width = 57
        Height = 20
        DropDownWidth = 250
        DataField = 'COUNTRY_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089' >'
        LookupField = 'COUNTRY_CODE'
        LookupDisplay = 'COUNTRY_ABBREV'
        LookupSource = dsCountries
        TabOrder = 3
      end
    end
    object pnlCommon: TPanel
      Left = 2
      Top = 398
      Width = 610
      Height = 99
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object lblCompanyNameWhenCommon: TLabel
        Left = 80
        Top = 11
        Width = 112
        Height = 13
        Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtCompanyNameWhenCommon
      end
      object lblCompanyShortNameWhenCommon: TLabel
        Left = 288
        Top = 11
        Width = 113
        Height = 13
        Caption = #1050#1088#1072#1090#1082#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        FocusControl = edtCompanyShrotNameWhenCommon
      end
      object lblCodeWhenCommon: TLabel
        Left = 8
        Top = 11
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblCountryWhenCommon: TLabel
        Left = 544
        Top = 11
        Width = 48
        Height = 13
        Caption = #1044#1098#1088#1078#1072#1074#1072
        FocusControl = edtCompanyShrotNameWhenCommon
      end
      object edtCompanyNameWhenCommon: TDBEdit
        Left = 80
        Top = 27
        Width = 201
        Height = 21
        DataField = 'COMPANY_NAME'
        DataSource = dsData
        TabOrder = 1
      end
      object edtCompanyShrotNameWhenCommon: TDBEdit
        Left = 288
        Top = 27
        Width = 129
        Height = 21
        DataField = 'SHORT_NAME'
        DataSource = dsData
        TabOrder = 2
      end
      object edtCodeWhenCommon: TDBEdit
        Left = 8
        Top = 27
        Width = 65
        Height = 21
        DataField = 'COMPANY_NO'
        DataSource = dsData
        TabOrder = 0
      end
      object cbCountryWhenCommon: TJvDBLookupCombo
        Left = 544
        Top = 27
        Width = 57
        Height = 20
        DropDownWidth = 250
        DataField = 'COUNTRY_CODE'
        DataSource = dsData
        DisplayEmpty = '< '#1074#1089' >'
        LookupField = 'COUNTRY_CODE'
        LookupDisplay = 'COUNTRY_ABBREV'
        LookupSource = dsCountries
        TabOrder = 3
      end
    end
  end
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 647
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 379
    end
    inherited pnlClose: TPanel
      Left = 290
    end
    inherited pnlApply: TPanel
      Left = 558
    end
  end
  object pnlIsPersonTitle: TPanel [3]
    Left = 24
    Top = 85
    Width = 483
    Height = 24
    BevelOuter = bvNone
    TabOrder = 1
    object lblCompanyOrPerson: TLabel
      Left = 3
      Top = 5
      Width = 77
      Height = 13
      Caption = #1050#1083#1072#1089' '#1055#1072#1088#1090#1085#1100#1086#1088
    end
    object cbCompanyClasses: TJvDBLookupCombo
      Left = 85
      Top = 1
      Width = 396
      Height = 21
      DeleteKeyClear = False
      DataField = '_COMPANY_CLASS_NAME'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      TabOrder = 0
    end
  end
  object gbStatus: TGroupBox [4]
    Left = 16
    Top = 16
    Width = 614
    Height = 65
    Caption = ' '#1057#1090#1072#1090#1091#1089' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' '
    TabOrder = 0
    object lblStatusCode: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 13
      Caption = #1057#1090#1072#1090#1091#1089
    end
    object lblDash: TLabel
      Left = 115
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblReachMonths: TLabel
      Left = 280
      Top = 16
      Width = 108
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1079#1072' '#1076#1086#1089#1090#1080#1075#1072#1085#1077
    end
    object lblExistanceMonths: TLabel
      Left = 456
      Top = 16
      Width = 130
      Height = 13
      Caption = #1055#1077#1088#1080#1086#1076' '#1085#1072' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072#1085#1077
    end
    object lblDash1: TLabel
      Left = 323
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblMonths2: TLabel
      Left = 557
      Top = 36
      Width = 38
      Height = 13
      Caption = #1084#1077#1089#1077#1094#1072
    end
    object lblDash2: TLabel
      Left = 499
      Top = 35
      Width = 9
      Height = 13
      Caption = '---'
    end
    object lblMonths1: TLabel
      Left = 381
      Top = 36
      Width = 38
      Height = 13
      Caption = #1084#1077#1089#1077#1094#1072
    end
    object cbMinStatusCode: TJvDBLookupCombo
      Left = 8
      Top = 32
      Width = 105
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MIN_STATUS_CODE'
      DataSource = dsData
      LookupField = 'COMPANY_STATUS_CODE'
      LookupDisplay = 'COMPANY_STATUS_NAME'
      LookupSource = dsStatuses
      TabOrder = 0
    end
    object cbMaxStatusCode: TJvDBLookupCombo
      Left = 128
      Top = 32
      Width = 105
      Height = 21
      DropDownWidth = 250
      DeleteKeyClear = False
      DataField = 'MAX_STATUS_CODE'
      DataSource = dsData
      LookupField = 'COMPANY_STATUS_CODE'
      LookupDisplay = 'COMPANY_STATUS_NAME'
      LookupSource = dsStatuses
      TabOrder = 1
    end
    object edtMinReachMonths: TDBEdit
      Left = 280
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MIN_REACH_MONTHS'
      DataSource = dsData
      TabOrder = 2
    end
    object edtMaxReachMonths: TDBEdit
      Left = 336
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MAX_REACH_MONTHS'
      DataSource = dsData
      TabOrder = 3
    end
    object edtMinExistanceMonths: TDBEdit
      Left = 456
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MIN_EXISTANCE_MONTHS'
      DataSource = dsData
      TabOrder = 4
    end
    object edtMaxExistanceMonths: TDBEdit
      Left = 512
      Top = 32
      Width = 41
      Height = 21
      DataField = 'MAX_EXISTANCE_MONTHS'
      DataSource = dsData
      TabOrder = 5
    end
  end
  object gbRoles: TGroupBox [5]
    Left = 16
    Top = 208
    Width = 305
    Height = 89
    Caption = ' '#1055#1072#1079#1072#1088#1085#1072' '#1056#1086#1083#1103' '
    TabOrder = 3
    object pnlRolesWhenCumulative: TPanel
      Left = 2
      Top = 218
      Width = 301
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object rgRolesWhenCumulative: TJvDBRadioPanel
        Left = 0
        Top = 0
        Width = 301
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        DataField = 'ROLE_CODE'
        DataSource = dsData
        Items.Strings = (
          #1074#1089#1080#1095#1082#1080
          #1050#1083#1080#1077#1085#1090
          #1044#1086#1089#1090#1072#1074#1095#1080#1082)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '3')
      end
    end
    object pnlRolesWhenPerson: TPanel
      Left = 2
      Top = 146
      Width = 301
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object rgRolesWhenPerson: TJvDBRadioPanel
        Left = 0
        Top = 0
        Width = 301
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        Columns = 2
        DataField = 'ROLE_CODE'
        DataSource = dsData
        Items.Strings = (
          #1074#1089#1080#1095#1082#1080
          #1050#1083#1080#1077#1085#1090
          #1044#1086#1089#1090#1072#1074#1095#1080#1082
          #1055#1086#1089#1088#1077#1076#1085#1080#1082
          #1057#1083#1091#1078#1080#1090#1077#1083)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '3'
          '2'
          '6')
      end
      object chkIsInternal: TDBCheckBox
        Left = 176
        Top = 29
        Width = 73
        Height = 17
        Caption = #1042#1098#1090#1088#1077#1096#1077#1085
        DataField = 'IS_INTERNAL'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object chkIsExternal: TDBCheckBox
        Left = 176
        Top = 45
        Width = 65
        Height = 17
        Caption = #1042#1098#1085#1096#1077#1085
        DataField = 'IS_EXTERNAL'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object pnlRolesWhenCompany: TPanel
      Left = 2
      Top = 89
      Width = 301
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object rgRolesWhenCompany: TJvDBRadioPanel
        Left = 0
        Top = 0
        Width = 301
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        Columns = 2
        DataField = 'ROLE_CODE'
        DataSource = dsData
        Items.Strings = (
          #1074#1089#1080#1095#1082#1080
          #1050#1083#1080#1077#1085#1090
          #1044#1086#1089#1090#1072#1074#1095#1080#1082
          #1055#1086#1089#1088#1077#1076#1085#1080#1082
          #1044#1098#1088#1078#1072#1074#1085#1072' '#1048#1085#1089#1090#1080#1090#1091#1094#1080#1103
          #1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1048#1085#1089#1090#1080#1090#1091#1094#1080#1103)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '3'
          '2'
          '4'
          '5')
      end
    end
    object pnlRolesWhenAll: TPanel
      Left = 2
      Top = 15
      Width = 301
      Height = 74
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object rgRolesWhenAll: TJvDBRadioPanel
        Left = 0
        Top = 0
        Width = 301
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Columns = 2
        DataField = 'ROLE_CODE'
        DataSource = dsData
        Items.Strings = (
          #1074#1089#1080#1095#1082#1080
          #1050#1083#1080#1077#1085#1090
          #1044#1086#1089#1090#1072#1074#1095#1080#1082
          #1055#1086#1089#1088#1077#1076#1085#1080#1082
          #1044#1098#1088#1078#1072#1074#1085#1072' '#1048#1085#1089#1090#1080#1090#1091#1094#1080#1103
          #1060#1080#1085#1072#1085#1089#1086#1074#1072' '#1048#1085#1089#1090#1080#1090#1091#1094#1080#1103
          #1057#1083#1091#1078#1080#1090#1077#1083)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '3'
          '2'
          '4'
          '5'
          '6')
      end
      object chkIsInternal2: TDBCheckBox
        Left = 157
        Top = 44
        Width = 73
        Height = 17
        Caption = #1042#1098#1090#1088#1077#1096#1077#1085
        DataField = 'IS_INTERNAL'
        DataSource = dsData
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object chkIsExternal2: TDBCheckBox
        Left = 236
        Top = 45
        Width = 65
        Height = 17
        Caption = #1042#1098#1085#1096#1077#1085
        DataField = 'IS_EXTERNAL'
        DataSource = dsData
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object pnlRolesWhenCommon: TPanel
      Left = 2
      Top = 290
      Width = 301
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object rgRolesWhenCommon: TJvDBRadioPanel
        Left = 0
        Top = 0
        Width = 301
        Height = 44
        Align = alTop
        BevelOuter = bvNone
        DataField = 'ROLE_CODE'
        DataSource = dsData
        Items.Strings = (
          #1074#1089#1080#1095#1082#1080
          #1050#1083#1080#1077#1085#1090
          #1044#1086#1089#1090#1072#1074#1095#1080#1082)
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '3')
      end
    end
  end
  object gbCommonPartner: TGroupBox [6]
    Left = 328
    Top = 208
    Width = 302
    Height = 89
    Caption = ' '#1055#1088#1080#1086#1073#1097#1077#1085' '#1082#1098#1084' '
    TabOrder = 4
    object lblCommonPartner: TLabel
      Left = 8
      Top = 24
      Width = 114
      Height = 13
      Caption = #1054#1073#1086#1073#1097#1072#1074#1072#1097' '#1055#1072#1088#1090#1085#1100#1086#1088
    end
    inline frCommonPartner: TfrPartnerFieldEditFrameBald
      Left = 8
      Top = 40
      Width = 284
      Height = 22
      HorzScrollBar.Visible = False
      VertScrollBar.Visible = False
      Constraints.MaxHeight = 22
      Constraints.MinHeight = 22
      TabOrder = 0
      inherited gbPartner: TGroupBox
        Width = 299
        inherited pnlNameAndButtons: TPanel
          Width = 210
          inherited pnlRightButtons: TPanel
            Left = 174
          end
          inherited pnlPartnerName: TPanel
            Width = 174
            inherited edtPartnerName: TDBEdit
              Width = 160
            end
            inherited cbPartner: TJvDBLookupCombo
              Width = 175
            end
          end
        end
        inherited pnlPaddingRight: TPanel
          Left = 291
        end
      end
    end
  end
  inherited alActions: TActionList
    Left = 224
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1056#1077#1075#1080#1089#1090#1098#1088' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088#1080
    end
  end
  inherited dsData: TDataSource
    Left = 176
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 144
  end
  inherited cdsFilterVariants: TAbmesClientDataSet
    Left = 16
  end
  inherited dsFilterVariants: TDataSource
    Left = 40
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 64
  end
  object cdsStatuses: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCompanies
    Params = <>
    ProviderName = 'prvCompanyStatuses'
    Left = 32
    Top = 52
    object cdsStatusesCOMPANY_STATUS_CODE: TAbmesFloatField
      FieldName = 'COMPANY_STATUS_CODE'
    end
    object cdsStatusesCOMPANY_STATUS_NAME: TAbmesWideStringField
      FieldName = 'COMPANY_STATUS_NAME'
      Size = 100
    end
  end
  object dsStatuses: TDataSource
    DataSet = cdsStatuses
    Left = 64
    Top = 53
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvCountries'
    StoreDefs = True
    Left = 560
    Top = 136
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'COUNTRY_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCountriesCOUNTRY_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074'.'
      FieldName = 'COUNTRY_ABBREV'
      Required = True
      Size = 5
    end
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 592
    Top = 136
  end
  object cdsCraftTypes: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_TYPE_NAME'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prvCraftTypes'
    StoreDefs = True
    Left = 104
    Top = 168
    object cdsCraftTypesCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
    object cdsCraftTypesCRAFT_TYPE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_TYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object cdsCrafts: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    FieldDefs = <
      item
        Name = 'CRAFT_CODE'
        DataType = ftFloat
      end
      item
        Name = 'CRAFT_NAME'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CRAFT_TYPE_CODE'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'CRAFT_TYPE_CODE;CRAFT_CODE'
    MasterFields = 'CRAFT_TYPE_CODE'
    MasterSource = dsCraftTypes
    PacketRecords = 0
    Params = <>
    ProviderName = 'prvCrafts'
    StoreDefs = True
    Left = 408
    Top = 168
    object cdsCraftsCRAFT_CODE: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'CRAFT_CODE'
      Required = True
    end
    object cdsCraftsCRAFT_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'CRAFT_NAME'
      Required = True
      Size = 50
    end
    object cdsCraftsCRAFT_TYPE_CODE: TAbmesFloatField
      DisplayLabel = #1050#1083#1072#1089#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072' '#1043#1088#1091#1087#1072' '#1055#1088#1086#1092#1077#1089#1080#1080
      FieldName = 'CRAFT_TYPE_CODE'
      Required = True
    end
  end
  object dsCraftTypes: TDataSource
    DataSet = cdsCraftTypes
    Left = 136
    Top = 168
  end
  object dsCrafts: TDataSource
    DataSet = cdsCrafts
    Left = 440
    Top = 168
  end
end
