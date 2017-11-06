inherited BevelFilterForm: TBevelFilterForm
  Left = 509
  Top = 304
  ClientHeight = 356
  ClientWidth = 537
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
    Width = 537
    inherited pnlOKCancel: TPanel
      Left = 269
    end
    inherited pnlClose: TPanel
      Left = 180
    end
    inherited pnlApply: TPanel
      Left = 448
    end
  end
end
