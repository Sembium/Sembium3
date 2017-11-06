inherited fmPRPerPriceModifier: TfmPRPerPriceModifier
  ActiveControl = edtPRPerPriceModifierName
  Caption = #1054#1090#1089#1090#1098#1087#1082#1072' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
  ClientHeight = 299
  ClientWidth = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 264
    Width = 505
    TabOrder = 5
    inherited pnlOKCancel: TPanel
      Left = 237
    end
    inherited pnlClose: TPanel
      Left = 148
    end
    inherited pnlApply: TPanel
      Left = 416
      Visible = False
    end
  end
  inline frParRelPeriodPartner: TfrPartnerFieldEditFrame [1]
    Left = 8
    Top = 8
    Width = 305
    Height = 49
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 0
    inherited gbPartner: TGroupBox
      Width = 305
      inherited pnlNameAndButtons: TPanel
        Width = 216
        inherited pnlRightButtons: TPanel
          Left = 180
          inherited tlbDocButton: TToolBar
            Height = 32
          end
        end
        inherited pnlPartnerName: TPanel
          Width = 180
          inherited edtPartnerName: TDBEdit
            Width = 181
          end
          inherited cbPartner: TJvDBLookupCombo
            Width = 181
          end
        end
      end
      inherited pnlPaddingRight: TPanel
        Left = 297
      end
    end
  end
  object gbParRelPeriodDateInterval: TGroupBox [2]
    Left = 320
    Top = 8
    Width = 177
    Height = 49
    Caption = ' '#1042#1088#1084#1048#1085#1090' '#1085#1072' '#1059#1052' '#1055#1072#1088#1050' '
    TabOrder = 1
    inline frParRelPeriodDateInterval: TfrDateIntervalFrame
      Left = 16
      Top = 16
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
    end
  end
  object gbPRPerPriceModifier: TGroupBox [3]
    Left = 8
    Top = 64
    Width = 489
    Height = 65
    Caption = ' '#1054#1090#1089#1090#1098#1087#1082#1072' '#1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '
    TabOrder = 2
    object lblPRPerPriceModifierNo: TLabel
      Left = 8
      Top = 16
      Width = 14
      Height = 13
      Caption = 'No'
    end
    object lblPRPerPriceModifierName: TLabel
      Left = 96
      Top = 16
      Width = 76
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object edtPRPerPriceModifierName: TDBEdit
      Left = 96
      Top = 32
      Width = 385
      Height = 21
      DataField = 'PRPER_PRICE_MODIFIER_NAME'
      DataSource = dsData
      TabOrder = 1
    end
    object edtPRPerPriceModifierNo: TDBEdit
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      DataField = 'PRPER_PRICE_MODIFIER_NO'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object gbPRPerPriceModifierValues: TGroupBox [4]
    Left = 8
    Top = 192
    Width = 489
    Height = 65
    Caption = ' '#1054#1090#1089#1090#1098#1087#1082#1072' % '
    TabOrder = 4
    object lblAcquirePriceModifier: TLabel
      Left = 8
      Top = 16
      Width = 68
      Height = 13
      Caption = #1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
    end
    object lblLeasePriceModifier: TLabel
      Left = 104
      Top = 16
      Width = 28
      Height = 13
      Caption = #1053#1072#1077#1084
    end
    object edtAcquirePriceModifier: TDBEdit
      Left = 8
      Top = 32
      Width = 81
      Height = 21
      DataField = 'ACQUIRE_PRICE_MODIFIER'
      DataSource = dsData
      TabOrder = 0
    end
    object edtLeasePriceModifier: TDBEdit
      Left = 104
      Top = 32
      Width = 81
      Height = 21
      DataField = 'LEASE_PRICE_MODIFIER'
      DataSource = dsData
      TabOrder = 1
    end
  end
  inline frProductSet: TfrPRPerPriceModifierProductSetFieldEditFrame [5]
    Left = 8
    Top = 136
    Width = 489
    Height = 49
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 3
    inherited gbEnumItem: TGroupBox
      Width = 489
      inherited edtEnumItemName: TDBEdit
        Width = 409
      end
      inherited cbEnumItemName: TJvDBLookupCombo
        Width = 409
      end
    end
  end
  inherited alActions: TActionList [6]
    inherited actForm: TAction
      Caption = #1054#1090#1089#1090#1098#1087#1082#1072' '#1079#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - %s'
    end
  end
end
