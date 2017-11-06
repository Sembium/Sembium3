inherited fmCompanyRepresentative: TfmCompanyRepresentative
  Left = 228
  Top = 153
  Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
  ClientHeight = 261
  ClientWidth = 434
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 418
    Height = 210
  end
  object lblFirstName: TLabel [1]
    Left = 24
    Top = 16
    Width = 22
    Height = 13
    Caption = #1048#1084#1077
  end
  object lblMiddleName: TLabel [2]
    Left = 160
    Top = 16
    Width = 46
    Height = 13
    Caption = #1055#1088#1077#1079#1080#1084#1077
  end
  object lblLastName: TLabel [3]
    Left = 288
    Top = 16
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object lblOffice: TLabel [4]
    Left = 24
    Top = 112
    Width = 15
    Height = 13
    Caption = #1058#1055
  end
  object lblOccupaion: TLabel [5]
    Left = 24
    Top = 168
    Width = 53
    Height = 13
    Caption = #1044#1083#1098#1078#1085#1086#1089#1090
  end
  object lblEGN: TLabel [6]
    Left = 152
    Top = 168
    Width = 50
    Height = 13
    Caption = #1045#1043#1053'/'#1051#1053#1063
  end
  object lblLanguage: TLabel [7]
    Left = 232
    Top = 168
    Width = 25
    Height = 13
    Caption = #1045#1079#1080#1082
  end
  object lblGender: TLabel [8]
    Left = 336
    Top = 168
    Width = 20
    Height = 13
    Caption = #1055#1086#1083
    Transparent = False
  end
  object lblILastName: TLabel [9]
    Left = 288
    Top = 72
    Width = 49
    Height = 13
    Caption = 'Last name'
  end
  object lblIMiddleName: TLabel [10]
    Left = 160
    Top = 72
    Width = 60
    Height = 13
    Caption = 'Middle name'
  end
  object lblIFirstName: TLabel [11]
    Left = 24
    Top = 72
    Width = 48
    Height = 13
    Caption = 'First name'
  end
  object btnCopyName: TSpeedButton [12]
    Left = 205
    Top = 55
    Width = 23
    Height = 22
    Action = actCopyName
    Flat = True
    ParentShowHint = False
    ShowHint = True
  end
  inherited pnlBottomButtons: TPanel
    Top = 226
    Width = 434
    TabOrder = 11
    inherited pnlOKCancel: TPanel
      Left = 166
    end
    inherited pnlClose: TPanel
      Left = 77
    end
    inherited pnlApply: TPanel
      Left = 345
    end
  end
  object edtFirstName: TDBEdit [14]
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    DataField = 'FIRST_NAME'
    DataSource = dsData
    TabOrder = 0
  end
  object edtMiddleName: TDBEdit [15]
    Left = 160
    Top = 32
    Width = 113
    Height = 21
    DataField = 'MIDDLE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtLastName: TDBEdit [16]
    Left = 288
    Top = 32
    Width = 121
    Height = 21
    DataField = 'LAST_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object cbOffice: TJvDBLookupCombo [17]
    Left = 24
    Top = 136
    Width = 385
    Height = 21
    DataField = '_OFFICE_NAME'
    DataSource = dsData
    DisplayEmpty = ' '
    TabOrder = 6
  end
  object edtOccupaion: TDBEdit [18]
    Left = 24
    Top = 184
    Width = 113
    Height = 21
    DataField = 'OCCUPATION'
    DataSource = dsData
    TabOrder = 7
  end
  object edtEGN: TDBEdit [19]
    Left = 152
    Top = 184
    Width = 65
    Height = 21
    DataField = 'EGN'
    DataSource = dsData
    TabOrder = 8
  end
  object cbLanguage: TJvDBLookupCombo [20]
    Left = 232
    Top = 184
    Width = 89
    Height = 21
    DataField = '_LANGUAGE_NAME'
    DataSource = dsData
    DisplayEmpty = ' '
    TabOrder = 9
  end
  object cbGender: TJvDBComboBox [21]
    Left = 336
    Top = 184
    Width = 73
    Height = 21
    DataField = 'MALE'
    DataSource = dsData
    Items.Strings = (
      #1084#1098#1078#1082#1080
      #1078#1077#1085#1089#1082#1080)
    TabOrder = 10
    Values.Strings = (
      #1052#1098#1078#1082#1080
      #1046#1077#1085#1089#1082#1080)
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object edtILastName: TDBEdit [22]
    Left = 288
    Top = 88
    Width = 121
    Height = 21
    Color = clInfoBk
    DataField = 'I_LAST_NAME'
    DataSource = dsData
    TabOrder = 5
  end
  object edtIMiddleName: TDBEdit [23]
    Left = 160
    Top = 88
    Width = 113
    Height = 21
    Color = clInfoBk
    DataField = 'I_MIDDLE_NAME'
    DataSource = dsData
    TabOrder = 4
  end
  object edtIFirstName: TDBEdit [24]
    Left = 24
    Top = 88
    Width = 121
    Height = 21
    Color = clInfoBk
    DataField = 'I_FIRST_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    Left = 320
    Top = 88
    inherited actForm: TAction
      Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
    end
    object actCopyName: TAction
      Hint = 
        #1050#1086#1087#1080#1088#1072' '#1048#1084#1077', '#1055#1088#1077#1079#1080#1084#1077', '#1060#1072#1084#1080#1083#1080#1103' '#1074' First name, Middle name, Last nam' +
        'e'
      ImageIndex = 44
      OnExecute = actCopyNameExecute
      OnUpdate = actCopyNameUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 352
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 320
    Top = 56
  end
end
