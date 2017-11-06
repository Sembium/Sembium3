inherited fmFinModelLineReason: TfmFinModelLineReason
  Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' - %s'
  ClientHeight = 108
  ClientWidth = 602
  ExplicitWidth = 608
  ExplicitHeight = 133
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 586
    Height = 57
    ExplicitWidth = 544
    ExplicitHeight = 75
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
    Left = 136
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object lblAbbrev: TLabel [3]
    Left = 376
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
    FocusControl = edtAbbrev
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 602
    TabOrder = 3
    ExplicitTop = 73
    ExplicitWidth = 602
    inherited pnlOKCancel: TPanel
      Left = 334
      ExplicitLeft = 334
    end
    inherited pnlClose: TPanel
      Left = 245
      ExplicitLeft = 245
    end
    inherited pnlApply: TPanel
      Left = 513
      Visible = False
      ExplicitLeft = 513
    end
  end
  object edtNo: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 97
    Height = 21
    DataField = 'FIN_MODEL_LINE_REASON_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [6]
    Left = 136
    Top = 32
    Width = 225
    Height = 21
    DataField = 'FIN_MODEL_LINE_REASON_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtAbbrev: TDBEdit [7]
    Left = 376
    Top = 32
    Width = 201
    Height = 21
    DataField = 'FIN_MODEL_LINE_REASON_ABBREV'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077' '#1079#1072' '#1057#1098#1087#1098#1090#1089#1090#1074#1072#1097#1080' '#1060#1080#1085#1072#1085#1089#1086#1074#1080' '#1044#1074#1080#1078#1077#1085#1080#1103' - %s'
    end
  end
end
