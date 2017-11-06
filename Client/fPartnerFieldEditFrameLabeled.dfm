inherited frPartnerFieldEditFrameLabeled: TfrPartnerFieldEditFrameLabeled
  Height = 65
  Constraints.MaxHeight = 65
  Constraints.MinHeight = 65
  inherited gbPartner: TGroupBox
    Height = 65
    inherited pnlNameAndButtons: TPanel
      Top = 30
      Height = 33
      inherited pnlRightButtons: TPanel
        Height = 33
        inherited tlbDocButton: TToolBar
          Height = 33
        end
      end
      inherited pnlPartnerName: TPanel
        Height = 33
        DesignSize = (
          132
          33)
      end
    end
    inherited pnlPaddingRight: TPanel
      Top = 30
      Height = 33
    end
    inherited pnlPartnerCode: TPanel
      Top = 30
      Height = 33
      DesignSize = (
        73
        33)
    end
    inherited pnlPaddingLeft: TPanel
      Top = 30
      Height = 33
    end
    object pnlLabels: TPanel
      Left = 2
      Top = 15
      Width = 253
      Height = 15
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object lblCode: TLabel
        Left = 7
        Top = 0
        Width = 20
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblName: TLabel
        Left = 64
        Top = 0
        Width = 73
        Height = 13
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
    end
  end
end
