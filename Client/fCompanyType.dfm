inherited fmCompanyType: TfmCompanyType
  Caption = #1058#1080#1087' '#1050#1086#1084#1087#1072#1085#1080#1103' - %s'
  ClientHeight = 109
  ClientWidth = 626
  ExplicitWidth = 632
  ExplicitHeight = 134
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 610
    Height = 58
    ExplicitWidth = 610
    ExplicitHeight = 58
  end
  object lblNo: TLabel [1]
    Left = 24
    Top = 16
    Width = 14
    Height = 13
    Caption = 'No'
    FocusControl = edtNo
  end
  object lblName: TLabel [2]
    Left = 344
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object lblAbbrev: TLabel [3]
    Left = 96
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
    FocusControl = edtAbbrev
  end
  object lblAbbrevBefore: TLabel [4]
    Left = 184
    Top = 16
    Width = 137
    Height = 13
    Caption = #1055#1086#1079#1080#1094#1080#1103' '#1085#1072' '#1072#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072#1090#1072
  end
  inherited pnlBottomButtons: TPanel
    Top = 74
    Width = 626
    TabOrder = 4
    ExplicitTop = 74
    ExplicitWidth = 626
    inherited pnlOKCancel: TPanel
      Left = 358
      ExplicitLeft = 358
    end
    inherited pnlClose: TPanel
      Left = 269
      ExplicitLeft = 269
    end
    inherited pnlApply: TPanel
      Left = 537
      Visible = False
      ExplicitLeft = 537
    end
  end
  object edtNo: TDBEdit [6]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'COMPANY_TYPE_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [7]
    Left = 344
    Top = 32
    Width = 257
    Height = 21
    DataField = 'COMPANY_TYPE_NAME'
    DataSource = dsData
    TabOrder = 3
  end
  object edtAbbrev: TDBEdit [8]
    Left = 96
    Top = 32
    Width = 73
    Height = 21
    DataField = 'COMPANY_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object cbAbbrevBefore: TJvDBComboBox [9]
    Left = 184
    Top = 32
    Width = 145
    Height = 21
    DataField = 'ABBREV_BEFORE'
    DataSource = dsData
    ItemHeight = 13
    Items.Strings = (
      #1054#1090#1087#1088#1077#1076
      #1054#1090#1079#1072#1076)
    TabOrder = 2
    Values.Strings = (
      'True'
      'False')
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1058#1080#1087' '#1050#1086#1084#1087#1072#1085#1080#1103' - %s'
    end
  end
end
