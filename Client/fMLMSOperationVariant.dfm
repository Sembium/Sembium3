inherited fmMLMSOperationVariant: TfmMLMSOperationVariant
  Left = 292
  Top = 342
  Caption = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
  ClientHeight = 140
  ClientWidth = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 434
    Height = 89
  end
  object lblVariantDetalTechQuantity: TLabel [1]
    Left = 16
    Top = 70
    Width = 195
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072' '#1086#1073#1088#1072#1073#1086#1090#1082#1072' '#1087#1086' '#1074#1072#1088#1080#1072#1085#1090#1072
    FocusControl = edtVariantDetalTechQuantity
  end
  inherited pnlBottomButtons: TPanel
    Top = 105
    Width = 450
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 182
    end
    inherited pnlClose: TPanel
      Left = 93
    end
    inherited pnlApply: TPanel
      Left = 361
      Visible = False
    end
  end
  object grpWorkdays: TGroupBox [3]
    Left = 16
    Top = 16
    Width = 249
    Height = 41
    Caption = ' '#1044#1085#1080' '#1074' E'#1090#1072#1087#1072' '
    TabOrder = 0
    object lblTreatmentBeginWorkdayNo: TLabel
      Left = 8
      Top = 18
      Width = 37
      Height = 13
      Caption = #1053#1072#1095#1072#1083#1086
      FocusControl = edtTreatmentBeginWorkdayNo
      Transparent = True
    end
    object lblOperationTreatmentWorkdays: TLabel
      Left = 96
      Top = 18
      Width = 93
      Height = 13
      Caption = #1055#1088#1086#1076#1098#1083#1078#1080#1090#1077#1083#1085#1086#1089#1090
      FocusControl = edtOperationTreatmentWorkdays
    end
    object edtTreatmentBeginWorkdayNo: TDBEdit
      Left = 48
      Top = 15
      Width = 41
      Height = 21
      DataField = 'TREATMENT_BEGIN_WORKDAY_NO'
      DataSource = dsData
      TabOrder = 0
    end
    object edtOperationTreatmentWorkdays: TDBEdit
      Left = 192
      Top = 15
      Width = 41
      Height = 21
      DataField = 'TREATMENT_WORKDAYS'
      DataSource = dsData
      TabOrder = 1
    end
  end
  object gbDates: TGroupBox [4]
    Left = 272
    Top = 16
    Width = 161
    Height = 41
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    inline frTreatmentDateInterval: TfrDateIntervalFrame
      Left = 7
      Top = 14
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
    end
  end
  object chbIsActive: TAbmesDBCheckBox [5]
    Left = 311
    Top = 69
    Width = 65
    Height = 17
    Caption = #1040#1082#1090#1080#1074#1077#1085
    DataField = 'IS_ACTIVE'
    DataSource = dsData
    ReadOnly = True
    TabOrder = 3
    ValueChecked = 'True'
    ValueUnchecked = 'False'
    ImmediateUpdateField = True
  end
  object edtVariantDetalTechQuantity: TDBEdit [6]
    Left = 216
    Top = 67
    Width = 81
    Height = 21
    DataField = 'VARIANT_DETAIL_TECH_QUANTITY'
    DataSource = dsData
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 144
    Top = 104
    inherited actForm: TAction
      Caption = #1047#1072#1076#1072#1074#1072#1085#1077' '#1085#1072' '#1042#1072#1088#1080#1072#1085#1090' '#1085#1072' '#1054#1087#1077#1088#1072#1094#1080#1103
    end
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 104
  end
  inherited cdsData: TAbmesClientDataSet
    Left = 24
    Top = 104
  end
end
