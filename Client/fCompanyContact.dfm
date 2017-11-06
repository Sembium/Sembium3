inherited fmCompanyContact: TfmCompanyContact
  Left = 212
  Top = 153
  Caption = #1057#1088#1077#1076#1089#1090#1074#1086' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
  ClientHeight = 204
  ClientWidth = 449
  ExplicitWidth = 455
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 169
    Width = 449
    ExplicitTop = 169
    ExplicitWidth = 449
    inherited pnlOKCancel: TPanel
      Left = 181
      ExplicitLeft = 181
    end
    inherited pnlClose: TPanel
      Left = 92
      ExplicitLeft = 92
    end
    inherited pnlApply: TPanel
      Left = 360
      ExplicitLeft = 360
    end
  end
  object pnlMain: TPanel [1]
    Left = 8
    Top = 8
    Width = 433
    Height = 153
    Anchors = [akLeft, akTop, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object pnlData: TPanel
      Left = 2
      Top = 49
      Width = 429
      Height = 102
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitTop = 2
      ExplicitHeight = 47
      object lblContactType: TLabel
        Left = 14
        Top = 8
        Width = 154
        Height = 13
        Caption = #1042#1080#1076' '#1089#1088#1077#1076#1089#1090#1074#1086' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
      end
      object lblContact: TLabel
        Left = 190
        Top = 8
        Width = 133
        Height = 13
        Caption = #1057#1088#1077#1076#1089#1090#1074#1086' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103
      end
      object lblNotes: TLabel
        Left = 14
        Top = 49
        Width = 45
        Height = 13
        Caption = #1041#1077#1083#1077#1078#1082#1080
      end
      object cbContactType: TJvDBLookupCombo
        Left = 14
        Top = 24
        Width = 161
        Height = 21
        DataField = '_CONTACT_TYPE_NAME'
        DataSource = dsData
        DisplayEmpty = ' '
        TabOrder = 0
      end
      object edtContact: TDBEdit
        Left = 190
        Top = 24
        Width = 225
        Height = 21
        DataField = 'CONTACT_TEXT'
        DataSource = dsData
        TabOrder = 1
      end
      object edtNotes: TDBEdit
        Left = 14
        Top = 65
        Width = 401
        Height = 21
        DataField = 'NOTES'
        DataSource = dsData
        TabOrder = 2
      end
    end
    object pnlHideForPersonCompany: TPanel
      Left = 2
      Top = 2
      Width = 429
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblOfficeName: TLabel
        Left = 14
        Top = 8
        Width = 100
        Height = 13
        Caption = #1058#1055' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      end
      object lblRepresentativeName: TLabel
        Left = 254
        Top = 8
        Width = 139
        Height = 13
        Caption = #1055#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088
      end
      object cbOfficeName: TJvDBLookupCombo
        Left = 14
        Top = 26
        Width = 225
        Height = 21
        DataField = '_OFFICE_NAME'
        DataSource = dsData
        DisplayEmpty = ' '
        TabOrder = 0
      end
      object cbRepresentativeName: TJvDBLookupCombo
        Left = 254
        Top = 26
        Width = 161
        Height = 21
        DataField = '_REPRESENTATIVE_NAME'
        DataSource = dsData
        DisplayEmpty = ' '
        TabOrder = 1
      end
    end
  end
  inherited alActions: TActionList
    Left = 0
    Top = 184
    inherited actForm: TAction
      Caption = #1057#1088#1077#1076#1089#1090#1074#1086' '#1079#1072' '#1082#1086#1084#1091#1085#1080#1082#1072#1094#1080#1103' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
    end
  end
  inherited dsData: TDataSource
    Top = 152
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 152
  end
end
