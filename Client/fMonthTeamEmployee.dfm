inherited fmMonthTeamEmployee: TfmMonthTeamEmployee
  Left = 369
  Top = 316
  ActiveControl = edtWorkdayCount
  Caption = #1059#1095#1072#1089#1090#1080#1077
  ClientHeight = 108
  ClientWidth = 417
  ExplicitWidth = 423
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 401
    Height = 57
    ExplicitWidth = 401
    ExplicitHeight = 57
  end
  object lblEmployeeName: TLabel [1]
    Left = 24
    Top = 16
    Width = 22
    Height = 13
    Caption = #1048#1084#1077
  end
  object lblEfficiency: TLabel [2]
    Left = 200
    Top = 16
    Width = 87
    Height = 13
    Caption = #1050#1086#1077#1092'. '#1085#1072' '#1091#1095#1072#1089#1090#1080#1077
  end
  object lblWorkdayCount: TLabel [3]
    Left = 304
    Top = 16
    Width = 81
    Height = 13
    Caption = #1054#1090#1088#1072#1073#1086#1090#1077#1085#1080' '#1076#1085#1080
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 417
    ExplicitTop = 73
    ExplicitWidth = 417
    inherited pnlOKCancel: TPanel
      Left = 149
      ExplicitLeft = 149
    end
    inherited pnlClose: TPanel
      Left = 60
      ExplicitLeft = 60
    end
    inherited pnlApply: TPanel
      Left = 328
      Visible = False
      ExplicitLeft = 328
    end
  end
  object edtEmployeeName: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 161
    Height = 21
    TabStop = False
    Color = clBtnFace
    DataField = 'EMPLOYEE_NAME'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 1
  end
  object edtEfficiency: TDBEdit [6]
    Left = 200
    Top = 32
    Width = 89
    Height = 21
    DataField = 'EFFICIENCY_COEF'
    DataSource = dsData
    TabOrder = 2
  end
  object edtWorkdayCount: TDBEdit [7]
    Left = 304
    Top = 32
    Width = 89
    Height = 21
    DataField = 'WORKDAY_COUNT'
    DataSource = dsData
    TabOrder = 3
  end
  inherited alActions: TActionList
    Left = 88
    Top = 56
    inherited actForm: TAction
      Caption = #1059#1095#1072#1089#1090#1080#1077
    end
  end
  inherited dsData: TDataSource
    Left = 40
    Top = 56
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 8
    Top = 56
  end
end
