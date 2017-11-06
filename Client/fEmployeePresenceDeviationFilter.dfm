inherited fmEmployeePresenceDeviationFilter: TfmEmployeePresenceDeviationFilter
  Caption = '%s '#1085#1072' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  ClientHeight = 181
  ClientWidth = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 146
    Width = 401
    inherited pnlOKCancel: TPanel
      Left = 133
    end
    inherited pnlClose: TPanel
      Left = 44
    end
    inherited pnlApply: TPanel
      Left = 312
    end
  end
  inline frEmployee: TfrEmployeeFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 385
    Height = 49
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 1
    inherited gbEmployee: TGroupBox
      Width = 385
      inherited pnlEmployeeName: TPanel
        Width = 310
        inherited pnlRightButtons: TPanel
          Left = 274
        end
        inherited pnlEmpoyeeNameInner: TPanel
          Width = 274
          inherited edtEmployeeName: TDBEdit
            Width = 273
          end
          inherited cbEmployee: TJvDBLookupCombo
            Width = 273
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 375
      end
    end
  end
  object gbDates: TGroupBox [2]
    Left = 8
    Top = 64
    Width = 177
    Height = 73
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 2
    inline frDateInterval: TfrDateIntervalFrame
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
    end
  end
  object gbDeviationTypes: TGroupBox [3]
    Left = 192
    Top = 64
    Width = 201
    Height = 73
    Caption = ' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '
    TabOrder = 3
    object chkIsNegativeDeviation: TAbmesDBCheckBox
      Left = 8
      Top = 16
      Width = 169
      Height = 17
      Caption = #1054#1090#1088#1080#1094#1072#1090#1077#1083#1085#1086' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077' (-)'
      DataField = 'IS_NEGATIVE_DEV'
      DataSource = dsData
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsPositiveDeviation: TAbmesDBCheckBox
      Left = 8
      Top = 32
      Width = 169
      Height = 17
      Caption = #1055#1086#1083#1086#1078#1080#1090#1077#1083#1085#1086' '#1086#1090#1082#1083#1086#1085#1077#1085#1080#1077' (+)'
      DataField = 'IS_POSITIVE_DEV'
      DataSource = dsData
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object chkIsApprovedExtraWorkDeviation: TAbmesDBCheckBox
      Left = 8
      Top = 48
      Width = 169
      Height = 17
      Caption = #1048#1079#1074#1098#1085#1088#1077#1076#1085#1080' (!)'
      DataField = 'IS_APPROVED_EXTRA_WORK_DEV'
      DataSource = dsData
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited alActions: TActionList [4]
    Left = 168
    Top = 120
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1054#1090#1082#1083#1086#1085#1077#1085#1080#1103' '#1074' '#1055#1088#1080#1089#1098#1089#1090#1074#1080#1103' '#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
    end
  end
  inherited dsData: TDataSource [6]
    Left = 80
    Top = 120
  end
  inherited cdsData: TAbmesClientDataSet [7]
    Left = 48
    Top = 120
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [8]
    Top = 160
  end
  inherited dsFilterVariants: TDataSource [9]
    Top = 160
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Top = 176
  end
end
