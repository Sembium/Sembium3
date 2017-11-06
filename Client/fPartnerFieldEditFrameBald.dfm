inherited frPartnerFieldEditFrameBald: TfrPartnerFieldEditFrameBald
  Height = 22
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  DesignSize = (
    257
    22)
  inherited gbPartner: TGroupBox
    Left = -8
    Top = -15
    Width = 272
    Height = 40
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    inherited pnlNameAndButtons: TPanel
      Width = 183
      Height = 23
      inherited pnlRightButtons: TPanel
        Left = 147
        Height = 23
        inherited tlbDocButton: TToolBar
          Height = 23
        end
      end
      inherited pnlPartnerName: TPanel
        Width = 147
        Height = 23
        DesignSize = (
          147
          23)
        inherited cbPartner: TJvDBLookupCombo
          Width = 148
        end
      end
    end
    inherited pnlPaddingRight: TPanel
      Left = 264
      Height = 23
    end
    inherited pnlPartnerCode: TPanel
      Height = 23
      DesignSize = (
        73
        23)
    end
    inherited pnlPaddingLeft: TPanel
      Height = 23
    end
  end
end
