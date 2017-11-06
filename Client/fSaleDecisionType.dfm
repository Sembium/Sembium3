inherited fmSaleDecisionType: TfmSaleDecisionType
  Caption = #1042#1080#1076' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050' - %s'
  ClientHeight = 164
  ClientWidth = 440
  ExplicitWidth = 446
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 424
    Height = 113
    ExplicitWidth = 449
    ExplicitHeight = 97
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
    Left = 88
    Top = 16
    Width = 76
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    FocusControl = edtName
  end
  object lblAbbrev: TLabel [3]
    Left = 344
    Top = 16
    Width = 65
    Height = 13
    Caption = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
    FocusControl = edtAbbrev
  end
  inherited pnlBottomButtons: TPanel
    Top = 129
    Width = 440
    TabOrder = 7
    ExplicitTop = 129
    ExplicitWidth = 417
    inherited pnlOKCancel: TPanel
      Left = 172
      ExplicitLeft = 149
    end
    inherited pnlClose: TPanel
      Left = 83
      ExplicitLeft = 60
    end
    inherited pnlApply: TPanel
      Left = 351
      Visible = False
      ExplicitLeft = 328
    end
  end
  object edtNo: TDBEdit [5]
    Left = 24
    Top = 32
    Width = 57
    Height = 21
    DataField = 'DECISION_TYPE_NO'
    DataSource = dsData
    TabOrder = 0
  end
  object edtName: TDBEdit [6]
    Left = 88
    Top = 32
    Width = 249
    Height = 21
    DataField = 'DECISION_TYPE_NAME'
    DataSource = dsData
    TabOrder = 1
  end
  object edtAbbrev: TDBEdit [7]
    Left = 344
    Top = 32
    Width = 73
    Height = 21
    DataField = 'DECISION_TYPE_ABBREV'
    DataSource = dsData
    TabOrder = 2
  end
  object chbAllowsSale: TAbmesDBCheckBox [8]
    Left = 296
    Top = 72
    Width = 105
    Height = 17
    Caption = #1055#1086#1079#1074#1086#1083#1103#1074#1072' '#1054#1055#1055
    DataField = 'ALLOWS_SALE'
    DataSource = dsData
    TabOrder = 5
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object chbIsEstimationBound: TAbmesDBCheckBox [9]
    Left = 24
    Top = 72
    Width = 130
    Height = 17
    Caption = #1040#1089#1087#1077#1082#1090' '#1055#1077#1088#1089#1087#1077#1082#1090#1080#1074#1072
    DataField = 'IS_ESTIMATION_BOUND'
    DataSource = dsData
    TabOrder = 3
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object chbIsRealizationBound: TAbmesDBCheckBox [10]
    Left = 160
    Top = 72
    Width = 121
    Height = 17
    Caption = #1040#1089#1087#1077#1082#1090' '#1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
    DataField = 'IS_REALIZATION_BOUND'
    DataSource = dsData
    TabOrder = 4
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object chbRequiresFinishing: TAbmesDBCheckBox [11]
    Left = 24
    Top = 96
    Width = 265
    Height = 17
    Caption = #1048#1079#1080#1089#1082#1074#1072' '#1087#1088#1080#1082#1083#1102#1095#1074#1072#1085#1077' '#1087#1088#1080' '#1074#1079#1077#1084#1072#1085#1077' '#1085#1072' '#1088#1077#1096#1077#1085#1080#1077
    DataField = 'REQUIRES_FINISHING'
    DataSource = dsData
    TabOrder = 6
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1042#1080#1076' '#1056#1077#1096#1077#1085#1080#1077' '#1087#1086' '#1054#1044#1050' - %s'
    end
  end
end
