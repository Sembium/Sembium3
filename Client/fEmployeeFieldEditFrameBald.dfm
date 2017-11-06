inherited frEmployeeFieldEditFrameBald: TfrEmployeeFieldEditFrameBald
  Width = 293
  Height = 22
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Constraints.MaxHeight = 22
  Constraints.MinHeight = 22
  inherited gbEmployee: TGroupBox
    Left = -9
    Top = -16
    Width = 312
    inherited pnlEmployeeName: TPanel
      Width = 237
      inherited pnlRightButtons: TPanel
        Left = 201
      end
      inherited pnlEmpoyeeNameInner: TPanel
        Width = 201
        DesignSize = (
          201
          32)
        inherited cbEmployee: TJvDBLookupCombo
          Width = 200
        end
      end
    end
    inherited pnlPaddingRight: TPanel
      Left = 302
    end
  end
  inherited alActions: TActionList
    Top = 8
  end
  inherited dsData: TDataSource
    Top = 8
  end
  inherited cdsEmployees: TAbmesClientDataSet
    Top = 8
  end
  inherited dsEmployees: TDataSource
    Top = 8
  end
end
