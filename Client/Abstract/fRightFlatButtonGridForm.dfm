inherited RightFlatButtonGridForm: TRightFlatButtonGridForm
  ClientHeight = 330
  ClientWidth = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 295
    Width = 509
    inherited pnlOKCancel: TPanel
      Left = 241
    end
    inherited pnlClose: TPanel
      Left = 152
    end
    inherited pnlApply: TPanel
      Left = 420
    end
  end
  inherited pnlMain: TPanel
    Width = 509
    Height = 295
    inherited pnlGrid: TPanel
      Width = 493
      Height = 279
      inherited pnlNavigator: TPanel
        Width = 493
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 468
        Height = 255
      end
      object pnlRightButtons: TPanel
        Left = 468
        Top = 24
        Width = 25
        Height = 255
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object btnInsertRecord: TSpeedButton
          Left = 0
          Top = 0
          Width = 23
          Height = 22
          Action = actInsertRecord
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
        object btnDelRecord: TSpeedButton
          Left = 0
          Top = 22
          Width = 23
          Height = 22
          Action = actDelRecord
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
            0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
        object btnEditRecord: TSpeedButton
          Left = 0
          Top = 44
          Width = 23
          Height = 22
          Action = actEditRecord
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
            FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
            00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
            0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
            00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
            000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
            0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
            000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
      end
    end
  end
  inherited alActions: TActionList
    inherited actInsertRecord: TAction
      Caption = ''
    end
    inherited actDelRecord: TAction
      Caption = ''
    end
    inherited actEditRecord: TAction
      Caption = ''
    end
  end
end
