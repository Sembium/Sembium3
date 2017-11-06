inherited fmCompanyStatus: TfmCompanyStatus
  Left = 352
  Top = 306
  Caption = #1057#1090#1072#1090#1091#1089' '#1085#1072' '#1055#1072#1088#1090#1085#1100#1086#1088' - '#1047#1072#1076#1072#1074#1072#1085#1077
  ClientHeight = 160
  ClientWidth = 322
  ExplicitWidth = 328
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 306
    Height = 106
    ExplicitWidth = 306
    ExplicitHeight = 106
  end
  inherited pnlBottomButtons: TPanel
    Top = 125
    Width = 322
    ExplicitTop = 125
    ExplicitWidth = 322
    inherited pnlOKCancel: TPanel
      Left = 54
      ExplicitLeft = 54
    end
    inherited pnlClose: TPanel
      Left = -35
      ExplicitLeft = -35
    end
    inherited pnlApply: TPanel
      Left = 233
      Visible = False
      ExplicitLeft = 233
    end
  end
  object gbRoleAndPriority: TGroupBox [2]
    Left = 16
    Top = 60
    Width = 289
    Height = 45
    Caption = ' '#1055#1072#1079#1072#1088#1085#1072' '#1056#1086#1083#1103' '#1080' '#1055#1088#1080#1086#1088#1080#1090#1077#1090' '#1079#1072' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 1
    object edtRole: TDBEdit
      Left = 8
      Top = 16
      Width = 243
      Height = 21
      Color = clBtnFace
      DataField = '_BASE_ROLE_NAME'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 0
    end
    object edtPriority: TDBEdit
      Left = 256
      Top = 16
      Width = 25
      Height = 21
      Color = clBtnFace
      DataField = '_PRIORITY_NO'
      DataSource = dsData
      ReadOnly = True
      TabOrder = 1
    end
  end
  object gbStatus: TGroupBox [3]
    Left = 16
    Top = 13
    Width = 164
    Height = 44
    Caption = ' '#1057#1090#1072#1090#1091#1089' '
    TabOrder = 2
    TabStop = True
    object cbStatus: TJvDBLookupCombo
      Left = 8
      Top = 16
      Width = 148
      Height = 21
      EscapeClear = False
      DataField = '_COMPANY_STATUS_NAME'
      DataSource = dsData
      TabOrder = 0
    end
  end
  object gbFromDate: TGroupBox [4]
    Left = 187
    Top = 13
    Width = 118
    Height = 44
    Caption = ' '#1054#1090' '#1076#1072#1090#1072' '
    TabOrder = 3
    TabStop = True
    inline frFromDate: TfrDateFieldEditFrame
      Left = 7
      Top = 16
      Width = 105
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 105
      Constraints.MinHeight = 21
      Constraints.MinWidth = 105
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 7
      ExplicitTop = 16
    end
  end
end
