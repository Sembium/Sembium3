inherited fmVatPeriod: TfmVatPeriod
  Caption = #1044#1044#1057' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
  ClientHeight = 100
  ClientWidth = 281
  ExplicitWidth = 287
  ExplicitHeight = 126
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 65
    Width = 281
    TabOrder = 2
    ExplicitTop = 65
    ExplicitWidth = 405
    inherited pnlOKCancel: TPanel
      Left = 13
      ExplicitLeft = 137
    end
    inherited pnlClose: TPanel
      Left = -76
      ExplicitLeft = 48
    end
    inherited pnlApply: TPanel
      Left = 192
      Visible = False
      ExplicitLeft = 316
    end
  end
  object gbPeriod: TGroupBox [1]
    Left = 6
    Top = 8
    Width = 163
    Height = 49
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 0
    inline frDateInterval: TfrDateIntervalFrame
      Left = 8
      Top = 18
      Width = 145
      Height = 21
      Constraints.MaxHeight = 21
      Constraints.MaxWidth = 145
      Constraints.MinHeight = 21
      Constraints.MinWidth = 145
      TabOrder = 0
      TabStop = True
      ExplicitLeft = 8
      ExplicitTop = 18
    end
  end
  object gbVatPercent: TGroupBox [2]
    Left = 175
    Top = 8
    Width = 98
    Height = 49
    Anchors = [akLeft, akTop, akRight]
    Caption = ' '#1057#1090#1086#1081#1085#1086#1089#1090' % '
    TabOrder = 1
    ExplicitWidth = 219
    DesignSize = (
      98
      49)
    object edtVatPercent: TDBEdit
      Left = 8
      Top = 18
      Width = 81
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'VAT_PERCENT'
      DataSource = dsData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 204
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1044#1044#1057' '#1074#1098#1074' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' - %s'
    end
  end
end
