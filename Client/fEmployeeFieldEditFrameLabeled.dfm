inherited frEmployeeFieldEditFrameLabeled: TfrEmployeeFieldEditFrameLabeled
  Width = 241
  Height = 65
  Constraints.MaxHeight = 65
  Constraints.MinHeight = 65
  DesignSize = (
    241
    65)
  inherited gbEmployee: TGroupBox
    Width = 241
    Height = 65
    inherited pnlEmployeeCode: TPanel
      Top = 30
      Height = 33
      DesignSize = (
        56
        33)
    end
    inherited pnlEmployeeName: TPanel
      Top = 30
      Width = 166
      Height = 33
      inherited pnlRightButtons: TPanel
        Left = 130
        Height = 33
      end
      inherited pnlEmpoyeeNameInner: TPanel
        Width = 130
        Height = 33
        DesignSize = (
          130
          33)
        inherited cbEmployee: TJvDBLookupCombo
          Width = 129
        end
      end
    end
    inherited pnlPaddingLeft: TPanel
      Top = 30
      Height = 33
    end
    inherited pnlPaddingRight: TPanel
      Left = 231
      Top = 30
      Height = 33
      TabOrder = 4
    end
    object pnlLabels: TPanel
      Left = 2
      Top = 15
      Width = 237
      Height = 15
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lblCode: TLabel
        Left = 8
        Top = 0
        Width = 19
        Height = 13
        Caption = #1050#1086#1076
      end
      object lblName: TLabel
        Left = 65
        Top = 1
        Width = 22
        Height = 13
        Caption = #1048#1084#1077
      end
    end
  end
  inherited alActions: TActionList
    Left = 88
    Top = 40
  end
  inherited dsData: TDataSource
    Left = 120
    Top = 40
  end
  inherited cdsEmployees: TAbmesClientDataSet
    Left = 168
    Top = 40
  end
  inherited dsEmployees: TDataSource
    Left = 200
    Top = 40
  end
end
