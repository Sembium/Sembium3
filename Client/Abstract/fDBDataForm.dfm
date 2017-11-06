inherited DBDataForm: TDBDataForm
  Left = 198
  Top = 189
  Caption = 'DBDataForm'
  PixelsPerInch = 96
  TextHeight = 13
  inherited alActions: TActionList
    object actPrintActiveGrid: TAction [3]
      Hint = #1055#1077#1095#1072#1090
      ImageIndex = 2
      ShortCut = 16464
      OnExecute = actPrintActiveGridExecute
      OnUpdate = actPrintActiveGridUpdate
    end
    inherited actForm: TAction
      Caption = 'DBDataForm'
    end
  end
  object dsData: TDataSource
  end
end
