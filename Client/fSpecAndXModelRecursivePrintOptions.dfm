inherited fmSpecAndXModelRecursivePrintOptions: TfmSpecAndXModelRecursivePrintOptions
  Left = 305
  Top = 248
  ActiveControl = trbMinWidth
  ClientHeight = 204
  ClientWidth = 289
  ExplicitWidth = 295
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 273
    Height = 153
    ExplicitWidth = 273
    ExplicitHeight = 117
  end
  object lblMinDepth: TLabel [1]
    Left = 24
    Top = 16
    Width = 116
    Height = 13
    Caption = #1052#1080#1085#1080#1084#1072#1083#1085#1072' '#1076#1098#1083#1073#1086#1095#1080#1085#1072
    FocusControl = trbMinWidth
  end
  object lblMinWidth: TLabel [2]
    Left = 191
    Top = 16
    Width = 72
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'lblMinWidth'
  end
  object lblMinWidthMin: TLabel [3]
    Left = 25
    Top = 64
    Width = 88
    Height = 13
    AutoSize = False
    Caption = 'lblMinWidthMin'
  end
  object lblMinWidthMax: TLabel [4]
    Left = 184
    Top = 64
    Width = 78
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'lblMinWidthMax'
  end
  inherited pnlBottomButtons: TPanel
    Top = 169
    Width = 289
    TabOrder = 5
    ExplicitTop = 133
    ExplicitWidth = 289
    inherited pnlOKCancel: TPanel
      Left = 110
      ExplicitLeft = 110
    end
    inherited pnlClose: TPanel
      Left = 21
      ExplicitLeft = 21
    end
  end
  inherited chbPrintNotes: TCheckBox
    Left = 184
    Top = 131
    TabOrder = 4
    ExplicitLeft = 184
    ExplicitTop = 131
  end
  inherited rgPaperSize: TRadioGroup
    Top = 88
    Width = 137
    TabOrder = 1
    ExplicitTop = 88
    ExplicitWidth = 137
  end
  object trbMinWidth: TTrackBar [8]
    Left = 17
    Top = 32
    Width = 253
    Height = 31
    Max = 15
    Min = 1
    PageSize = 1
    Position = 1
    TabOrder = 0
    OnChange = trbMinWidthChange
  end
  inherited chbPrintInvestedValues: TCheckBox
    Left = 184
    Top = 93
    TabOrder = 2
    ExplicitLeft = 184
    ExplicitTop = 93
  end
  inherited chbProductNos: TCheckBox
    Left = 184
    Top = 112
    TabOrder = 3
    ExplicitLeft = 184
    ExplicitTop = 112
  end
  inherited alActions: TActionList
    Top = 200
    inherited actForm: TAction
      Caption = #1055#1077#1095#1072#1090
    end
  end
end
