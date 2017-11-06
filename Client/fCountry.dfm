inherited fmCountry: TfmCountry
  Left = 333
  Top = 216
  Caption = #1044#1098#1088#1078#1072#1074#1072' - %s'
  ClientHeight = 148
  ClientWidth = 449
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 8
    Top = 8
    Width = 433
    Height = 97
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object lblCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblCountryName: TLabel [2]
    Left = 176
    Top = 16
    Width = 22
    Height = 13
    Caption = #1048#1084#1077
  end
  object lblCountryAbbrev: TLabel [3]
    Left = 96
    Top = 16
    Width = 34
    Height = 13
    Caption = #1040#1073#1088#1077#1074'.'
  end
  object lblICountryAbbrev: TLabel [4]
    Left = 96
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Abbrev.'
  end
  object lblICountryName: TLabel [5]
    Left = 176
    Top = 56
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  inherited pnlBottomButtons: TPanel
    Top = 113
    Width = 449
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 181
    end
    inherited pnlClose: TPanel
      Left = 92
    end
    inherited pnlApply: TPanel
      Left = 360
      Visible = False
    end
  end
  object edtCode: TDBEdit [7]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'COUNTRY_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtCountryName: TDBEdit [8]
    Left = 176
    Top = 32
    Width = 249
    Height = 21
    DataField = 'COUNTRY_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  object edtCountryAbbrev: TDBEdit [9]
    Left = 96
    Top = 32
    Width = 65
    Height = 21
    DataField = 'COUNTRY_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtICountryAbbrev: TDBEdit [10]
    Left = 96
    Top = 72
    Width = 65
    Height = 21
    Color = clInfoBk
    DataField = 'I_COUNTRY_ABBREV'
    DataSource = dsData
    TabOrder = 3
  end
  object edtICountryName: TDBEdit [11]
    Left = 176
    Top = 72
    Width = 249
    Height = 21
    Color = clInfoBk
    DataField = 'I_COUNTRY_NAME'
    DataSource = dsData
    TabOrder = 4
  end
  inherited alActions: TActionList
    Left = 72
    Top = 72
    inherited actForm: TAction
      Caption = #1044#1098#1088#1078#1072#1074#1072' - %s'
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 72
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 8
    Top = 72
  end
end
