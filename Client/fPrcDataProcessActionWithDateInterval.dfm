inherited fmPrcDataProcessActionWithDateInterval: TfmPrcDataProcessActionWithDateInterval
  Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' - %s'
  ClientHeight = 165
  ClientWidth = 353
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 130
    Width = 353
    inherited pnlOKCancel: TPanel
      Left = 85
    end
    inherited pnlClose: TPanel
      Left = -4
    end
    inherited pnlApply: TPanel
      Left = 264
      Visible = False
    end
  end
  object gbDateInterval: TGroupBox [1]
    Left = 8
    Top = 64
    Width = 337
    Height = 57
    Caption = ' '#1042#1088#1077#1084#1077#1074#1080' '#1048#1085#1090#1077#1088#1074#1072#1083' '
    TabOrder = 2
    object pnlToggleDateInterval: TPanel
      Left = 16
      Top = 25
      Width = 157
      Height = 21
      BevelOuter = bvNone
      TabOrder = 0
      object pnlDateInterval: TPanel
        Left = 11
        Top = 0
        Width = 147
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        inline frDateInterval: TfrDateIntervalFrame
          Left = 0
          Top = 0
          Width = 145
          Height = 21
          Constraints.MaxHeight = 21
          Constraints.MaxWidth = 145
          Constraints.MinHeight = 21
          Constraints.MinWidth = 145
          TabOrder = 0
        end
      end
      object pnlToggleDateIntervalButton: TPanel
        Left = 0
        Top = 0
        Width = 11
        Height = 21
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnToggleDateInterval: TSpeedButton
          Left = 0
          Top = 0
          Width = 11
          Height = 21
          Action = actToggleDateInterval
          Align = alLeft
          AllowAllUp = True
          GroupIndex = 1
          Flat = True
        end
      end
    end
  end
  inline frProcessAction: TfrProcessActionFieldEditFrame [2]
    Left = 7
    Top = 8
    Width = 338
    Height = 49
    Constraints.MaxHeight = 49
    Constraints.MinHeight = 49
    TabOrder = 1
  end
  inherited alActions: TActionList [3]
    inherited actForm: TAction
      Caption = #1055#1086#1079#1085#1072#1074#1072#1090#1077#1083#1085#1072' '#1060#1091#1085#1082#1094#1080#1103' - %s'
    end
    object actToggleDateInterval: TAction
      GroupIndex = 1
      ImageIndex = 140
      OnExecute = actToggleDateIntervalExecute
      OnUpdate = actToggleDateIntervalUpdate
    end
  end
  inherited dsData: TDataSource [4]
  end
end
