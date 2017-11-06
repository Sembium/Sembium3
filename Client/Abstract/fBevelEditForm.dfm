inherited BevelEditForm: TBevelEditForm
  Left = 255
  Top = 152
  Caption = 'BevelEditForm'
  ClientHeight = 356
  DesignSize = (
    537
    356)
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 521
    Height = 305
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  inherited pnlBottomButtons: TPanel
    Top = 321
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'BevelEditForm'
    end
  end
end
