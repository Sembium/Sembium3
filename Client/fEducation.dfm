inherited fmEducation: TfmEducation
  Left = 370
  Top = 249
  ActiveControl = edtEducationCode
  Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' - %s'
  ClientHeight = 109
  ClientWidth = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 449
    Height = 58
  end
  object lblEducationCode: TLabel [1]
    Left = 24
    Top = 16
    Width = 19
    Height = 13
    Caption = #1050#1086#1076
  end
  object lblEducationShortName: TLabel [2]
    Left = 96
    Top = 16
    Width = 115
    Height = 13
    Caption = #1050#1088#1072#1090#1082#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object lblEducationName: TLabel [3]
    Left = 232
    Top = 16
    Width = 112
    Height = 13
    Caption = #1055#1098#1083#1085#1086' '#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 465
    TabOrder = 3
    inherited pnlOKCancel: TPanel
      Left = 197
    end
    inherited pnlClose: TPanel
      Left = 108
    end
    inherited pnlApply: TPanel
      Left = 376
      Visible = False
    end
  end
  object edtEducationCode: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'EDUCATION_CODE'
    DataSource = dsData
    TabOrder = 0
  end
  object edtEducationShortName: TDBEdit [6]
    Left = 96
    Top = 32
    Width = 121
    Height = 21
    DataField = 'EDUCATION_SHORT_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtEducationName: TDBEdit [7]
    Left = 232
    Top = 32
    Width = 209
    Height = 21
    DataField = 'EDUCATION_NAME'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 72
    Top = 64
    inherited actForm: TAction
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077' - %s'
    end
  end
  inherited dsData: TDataSource
    Top = 64
  end
  inherited cdsData: TAbmesClientDataSet
    Top = 64
  end
end
