inherited RightButtonGridForm: TRightButtonGridForm
  Caption = 'RightButtonGridForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    inherited pnlGrid: TPanel
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited pnlDataButtons: TPanel
        Left = 406
        Top = 24
        Width = 115
        Height = 284
        Align = alRight
        inherited btnAddData: TBitBtn
          Left = 10
          Top = 0
        end
        inherited btnDeleteData: TBitBtn
          Left = 10
          Top = 35
        end
        inherited btnEditData: TBitBtn
          Left = 10
          Top = 70
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 406
        Height = 284
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'RightButtonGridForm'
    end
  end
end
