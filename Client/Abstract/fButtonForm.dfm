inherited ButtonForm: TButtonForm
  Caption = 'ButtonForm'
  ClientWidth = 537
  OldCreateOrder = True
  ExplicitWidth = 543
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottomButtons: TPanel [0]
    Left = 0
    Top = 326
    Width = 537
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object pnlOKCancel: TPanel
      Left = 358
      Top = 0
      Width = 179
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnOK: TBitBtn
        Left = 0
        Top = 2
        Width = 81
        Height = 25
        TabOrder = 0
        Kind = bkOK
        Spacing = -1
      end
      object btnCancel: TBitBtn
        Left = 90
        Top = 2
        Width = 81
        Height = 25
        TabOrder = 1
        Kind = bkCancel
        Spacing = -1
      end
    end
    object pnlClose: TPanel
      Left = 269
      Top = 0
      Width = 89
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object btnClose: TBitBtn
        Left = 0
        Top = 2
        Width = 81
        Height = 25
        Cancel = True
        Caption = 'OK'
        ModalResult = 2
        TabOrder = 0
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        Spacing = -1
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = 'ButtonForm'
    end
  end
end
