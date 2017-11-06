inherited fmEmployeeDayAbsencesFilter: TfmEmployeeDayAbsencesFilter
  Left = 258
  Top = 175
  Caption = '%s '#1085#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
  ClientHeight = 164
  ClientWidth = 401
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 129
    Width = 401
    TabOrder = 3
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
    TabOrder = 0
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
    Width = 161
    Height = 57
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 1
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
    end
  end
  object grpReason: TGroupBox [3]
    Left = 176
    Top = 64
    Width = 217
    Height = 57
    Caption = ' '#1055#1088#1080#1095#1080#1085#1072' '
    TabOrder = 2
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 201
      Height = 21
      DataField = 'EMP_DAY_ABSENCE_REASON_CODE'
      DataSource = dsData
      DisplayEmpty = '< '#1074#1089#1080#1095#1082#1080' >'
      LookupField = 'EMP_DAY_ABSENCE_REASON_CODE'
      LookupDisplay = 'EMP_DAY_ABSENCE_REASON_NAME'
      LookupSource = dsEmpDayAbsenceReasons
      TabOrder = 0
    end
  end
  inherited alActions: TActionList [4]
    inherited actForm: TAction
      Caption = '%s '#1085#1072' '#1062#1077#1083#1086#1076#1085#1077#1074#1085#1080' '#1054#1090#1089#1098#1089#1090#1074#1080#1103' '#1085#1072' '#1057#1083#1091#1078#1080#1090#1077#1083
    end
  end
  inherited dsData: TDataSource [6]
  end
  inherited cdsData: TAbmesClientDataSet [7]
  end
  inherited cdsFilterVariants: TAbmesClientDataSet [8]
    Left = 0
    Top = 152
  end
  inherited dsFilterVariants: TDataSource [9]
    Top = 152
  end
  inherited cdsFilterVariantFields: TAbmesClientDataSet
    Left = 72
    Top = 152
  end
  object cdsEmpDayAbsenceReasons: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvEmpDayAbsenceReasons'
    ConnectionBroker = dmMain.conEmployeeAvailability
    Left = 304
    Top = 64
    object cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_CODE: TAbmesFloatField
      FieldName = 'EMP_DAY_ABSENCE_REASON_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsEmpDayAbsenceReasonsEMP_DAY_ABSENCE_REASON_NAME: TAbmesWideStringField
      FieldName = 'EMP_DAY_ABSENCE_REASON_NAME'
      Size = 100
    end
    object cdsEmpDayAbsenceReasonsqryEmpDayAbsenceDocTypes: TDataSetField
      FieldName = 'qryEmpDayAbsenceDocTypes'
    end
  end
  object dsEmpDayAbsenceReasons: TDataSource
    DataSet = cdsEmpDayAbsenceReasons
    Left = 336
    Top = 64
  end
end
