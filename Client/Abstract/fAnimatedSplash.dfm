object fmAnimatedSplash: TfmAnimatedSplash
  Left = 379
  Top = 298
  BorderIcons = []
  BorderStyle = bsNone
  Caption = #1052#1086#1083#1103' '#1087#1086#1095#1072#1082#1072#1081#1090#1077'...'
  ClientHeight = 150
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOuter: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 150
    Align = alClient
    BevelWidth = 2
    BorderWidth = 6
    TabOrder = 0
    object pnlInner: TPanel
      Left = 8
      Top = 8
      Width = 317
      Height = 134
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object anmSplashAnimation: TAnimate
        Left = 1
        Top = 25
        Width = 315
        Height = 56
        Align = alTop
        StopFrame = 26
        Visible = False
      end
      object pnlMessage: TPanel
        Left = 1
        Top = 1
        Width = 315
        Height = 24
        Align = alTop
        Caption = #1052#1086#1083#1103' '#1087#1086#1095#1072#1082#1072#1081#1090#1077'...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object btnCancel: TSpeedButton
          Left = 291
          Top = 1
          Width = 23
          Height = 22
          Align = alRight
          Caption = 'r'
          Flat = True
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Webdings'
          Font.Style = []
          ParentFont = False
          OnClick = btnCancelClick
          OnMouseEnter = btnCancelMouseEnter
          OnMouseLeave = btnCancelMouseLeave
        end
      end
      object pbMain: TProgressBar
        Left = 1
        Top = 113
        Width = 315
        Height = 20
        Align = alBottom
        Position = 100
        TabOrder = 2
      end
      object pnlProgressInfo: TPanel
        Left = 1
        Top = 81
        Width = 315
        Height = 19
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 3
        object lblProgressInfo: TLabel
          Left = 3
          Top = 3
          Width = 3
          Height = 13
          Align = alTop
        end
      end
    end
  end
end
