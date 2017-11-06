inherited fmHyperlink: TfmHyperlink
  ActiveControl = edtHyperlink
  Caption = #1042#1088#1098#1079#1082#1072
  ClientHeight = 108
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 521
    Height = 57
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
  end
  object tlbCommands: TToolBar [1]
    Left = 474
    Top = 31
    Width = 46
    Height = 22
    Align = alNone
    Anchors = [akTop, akRight]
    Caption = 'tlbCommands'
    Images = dmMain.ilActions
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object btnBrowser: TToolButton
      Left = 0
      Top = 0
      Action = actBrowser
    end
    object btnCopyToClipboard: TToolButton
      Left = 23
      Top = 0
      Action = actCopyToClipboard
    end
  end
  object edtHyperlink: TLabeledEdit [2]
    Left = 24
    Top = 32
    Width = 449
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1088#1098#1079#1082#1072
    ReadOnly = True
    TabOrder = 0
  end
  inherited pnlBottomButtons: TPanel
    Top = 73
    TabOrder = 2
    inherited pnlOKCancel: TPanel
      Visible = False
    end
    inherited pnlClose: TPanel
      Visible = True
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 72
    inherited actForm: TAction
      Caption = #1042#1088#1098#1079#1082#1072
    end
    object actBrowser: TAction
      Hint = #1041#1088#1072#1091#1079#1098#1088
      ImageIndex = 208
      OnExecute = actBrowserExecute
    end
    object actCopyToClipboard: TAction
      Hint = #1050#1086#1087#1080#1088#1072#1085#1077' '#1074' '#1041#1091#1092#1077#1088#1072
      ImageIndex = 14
      OnExecute = actCopyToClipboardExecute
    end
  end
end
