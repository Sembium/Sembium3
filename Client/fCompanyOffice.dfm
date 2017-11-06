inherited fmCompanyOffice: TfmCompanyOffice
  Left = 288
  Top = 215
  Caption = #1058#1055' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
  ClientHeight = 196
  ClientWidth = 848
  DesignSize = (
    848
    196)
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 832
    Height = 145
  end
  object lblOfficeName: TLabel [1]
    Left = 24
    Top = 16
    Width = 127
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1058#1055
  end
  object lblCountry: TLabel [2]
    Left = 552
    Top = 16
    Width = 48
    Height = 13
    Caption = #1044#1098#1088#1078#1072#1074#1072
  end
  object lblIOfficeName: TLabel [3]
    Left = 304
    Top = 16
    Width = 57
    Height = 13
    Caption = 'Office name'
  end
  object lblZIP: TLabel [4]
    Left = 744
    Top = 16
    Width = 74
    Height = 13
    Caption = #1055#1086#1097#1077#1085#1089#1082#1080' '#1082#1086#1076
    Transparent = True
  end
  object lblState: TLabel [5]
    Left = 24
    Top = 56
    Width = 37
    Height = 13
    Caption = #1054#1073#1083#1072#1089#1090
    Transparent = True
  end
  object lblIState: TLabel [6]
    Left = 24
    Top = 104
    Width = 25
    Height = 13
    Caption = 'State'
    Transparent = True
  end
  object lblIRegion: TLabel [7]
    Left = 144
    Top = 104
    Width = 34
    Height = 13
    Caption = 'Region'
    Transparent = True
  end
  object lblRegion: TLabel [8]
    Left = 144
    Top = 56
    Width = 41
    Height = 13
    Caption = #1054#1073#1097#1080#1085#1072
    Transparent = True
  end
  object lblCity: TLabel [9]
    Left = 264
    Top = 56
    Width = 84
    Height = 13
    Caption = #1053#1072#1089#1077#1083#1077#1085#1086' '#1084#1103#1089#1090#1086
    Transparent = True
  end
  object lblICity: TLabel [10]
    Left = 264
    Top = 104
    Width = 17
    Height = 13
    Caption = 'City'
    Transparent = True
  end
  object lblIAdress: TLabel [11]
    Left = 384
    Top = 104
    Width = 38
    Height = 13
    Caption = 'Address'
    Transparent = True
  end
  object lblAddress: TLabel [12]
    Left = 384
    Top = 56
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
    Transparent = True
  end
  object btnCopyOfficeName: TSpeedButton [13]
    Left = 269
    Top = 31
    Width = 23
    Height = 22
    Action = actCopyOfficeName
    Flat = True
    ParentShowHint = False
    ShowHint = True
  end
  inherited pnlBottomButtons: TPanel
    Top = 161
    Width = 848
    TabOrder = 12
    inherited pnlOKCancel: TPanel
      Left = 580
    end
    inherited pnlClose: TPanel
      Left = 491
    end
    inherited pnlApply: TPanel
      Left = 759
    end
  end
  object edtOfficeName: TDBEdit [15]
    Left = 24
    Top = 32
    Width = 233
    Height = 21
    DataField = 'OFFICE_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  object cbCountry: TJvDBLookupCombo [16]
    Left = 552
    Top = 32
    Width = 186
    Height = 21
    DataField = 'COUNTRY_CODE'
    DataSource = dsData
    DisplayEmpty = ' '
    LookupField = 'COUNTRY_CODE'
    LookupDisplay = 'COUNTRY_NAME'
    LookupSource = dsCountries
    TabOrder = 2
  end
  object edtIOfficeName: TDBEdit [17]
    Left = 304
    Top = 32
    Width = 233
    Height = 21
    Color = clInfoBk
    DataField = 'I_OFFICE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtZIP: TDBEdit [18]
    Left = 744
    Top = 32
    Width = 81
    Height = 21
    BevelWidth = 0
    DataField = 'ZIP'
    DataSource = dsData
    TabOrder = 3
  end
  object edtState: TDBEdit [19]
    Left = 24
    Top = 72
    Width = 114
    Height = 21
    BevelWidth = 0
    DataField = 'STATE'
    DataSource = dsData
    TabOrder = 4
  end
  object edtIState: TDBEdit [20]
    Left = 24
    Top = 120
    Width = 114
    Height = 21
    BevelWidth = 0
    Color = clInfoBk
    DataField = 'I_STATE'
    DataSource = dsData
    TabOrder = 8
  end
  object edtIRegion: TDBEdit [21]
    Left = 144
    Top = 120
    Width = 113
    Height = 21
    BevelWidth = 0
    Color = clInfoBk
    DataField = 'I_REGION'
    DataSource = dsData
    TabOrder = 9
  end
  object edtRegion: TDBEdit [22]
    Left = 144
    Top = 72
    Width = 113
    Height = 21
    BevelWidth = 0
    DataField = 'REGION'
    DataSource = dsData
    TabOrder = 5
  end
  object edtCity: TDBEdit [23]
    Left = 264
    Top = 72
    Width = 115
    Height = 21
    BevelWidth = 0
    DataField = 'CITY'
    DataSource = dsData
    TabOrder = 6
  end
  object edtICity: TDBEdit [24]
    Left = 264
    Top = 120
    Width = 115
    Height = 21
    BevelWidth = 0
    Color = clInfoBk
    DataField = 'I_CITY'
    DataSource = dsData
    TabOrder = 10
  end
  object edtIAddress: TDBEdit [25]
    Left = 384
    Top = 120
    Width = 440
    Height = 21
    BevelWidth = 0
    Color = clInfoBk
    DataField = 'I_ADDRESS'
    DataSource = dsData
    TabOrder = 11
  end
  object edtAddress: TDBEdit [26]
    Left = 384
    Top = 72
    Width = 440
    Height = 21
    BevelWidth = 0
    DataField = 'ADDRESS'
    DataSource = dsData
    TabOrder = 7
  end
  inherited alActions: TActionList
    Left = 416
    Top = 32
    inherited actForm: TAction
      Caption = #1058#1055' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
    end
    object actCopyOfficeName: TAction
      Hint = #1050#1086#1087#1080#1088#1072' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077#1090#1086' '#1085#1072' '#1058#1055' '#1074' Office name'
      ImageIndex = 40
      OnExecute = actCopyOfficeNameExecute
      OnUpdate = actCopyOfficeNameUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 48
    Top = 208
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 16
    Top = 208
  end
  object dsCountries: TDataSource
    DataSet = cdsCountries
    Left = 384
    Top = 32
  end
  object cdsCountries: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conCommon
    Params = <>
    ProviderName = 'prvCountries'
    Left = 352
    Top = 32
    object cdsCountriesCOUNTRY_CODE: TAbmesFloatField
      FieldName = 'COUNTRY_CODE'
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
end
