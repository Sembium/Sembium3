object fmLockAllConnections: TfmLockAllConnections
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lock All Connections'
  ClientHeight = 133
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 315
    Height = 98
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lblLockMessage: TLabel
      Left = 8
      Top = 55
      Width = 66
      Height = 13
      Caption = 'Lock message'
    end
    object lblAccessBanType: TLabel
      Left = 8
      Top = 10
      Width = 24
      Height = 13
      Caption = 'Type'
    end
    object edtLockMessage: TEdit
      Left = 8
      Top = 71
      Width = 297
      Height = 21
      TabOrder = 1
    end
    object cbAccessBanType: TJvDBComboBox
      Left = 8
      Top = 26
      Width = 299
      Height = 21
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
      ListSettings.OutfilteredValueFont.Style = []
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object pnlBottomButtons: TPanel
    Left = 0
    Top = 98
    Width = 315
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object pnlOKCancel: TPanel
      Left = 136
      Top = 0
      Width = 179
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object btnOK: TBitBtn
        Left = 0
        Top = 2
        Width = 81
        Height = 25
        Caption = 'OK'
        Default = True
        DoubleBuffered = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
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
        ModalResult = 1
        NumGlyphs = 2
        ParentDoubleBuffered = False
        Spacing = -1
        TabOrder = 0
      end
      object btnCancel: TBitBtn
        Left = 90
        Top = 2
        Width = 81
        Height = 25
        Cancel = True
        Caption = 'Cancel'
        DoubleBuffered = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        ModalResult = 2
        NumGlyphs = 2
        ParentDoubleBuffered = False
        Spacing = -1
        TabOrder = 1
      end
    end
  end
end
