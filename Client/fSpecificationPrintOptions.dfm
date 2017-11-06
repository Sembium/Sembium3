inherited fmSpecificationPrintOptions: TfmSpecificationPrintOptions
  Left = 350
  Top = 278
  ActiveControl = rgPaperSize
  Caption = #1055#1077#1095#1072#1090
  ClientHeight = 127
  ClientWidth = 241
  ExplicitWidth = 247
  ExplicitHeight = 153
  DesignSize = (
    241
    127)
  PixelsPerInch = 96
  TextHeight = 13
  object bvlMain: TBevel [0]
    Left = 8
    Top = 8
    Width = 225
    Height = 78
    Anchors = [akLeft, akTop, akRight, akBottom]
    Shape = bsFrame
    ExplicitWidth = 217
    ExplicitHeight = 57
  end
  inherited pnlBottomButtons: TPanel
    Top = 92
    Width = 241
    TabOrder = 4
    ExplicitTop = 92
    ExplicitWidth = 241
    inherited pnlOKCancel: TPanel
      Left = 62
      ExplicitLeft = 62
    end
    inherited pnlClose: TPanel
      Left = -27
      ExplicitLeft = -27
    end
  end
  object chbPrintNotes: TCheckBox [2]
    Left = 144
    Top = 56
    Width = 65
    Height = 17
    Caption = #1041#1077#1083#1077#1078#1082#1080
    TabOrder = 3
  end
  object rgPaperSize: TRadioGroup [3]
    Left = 24
    Top = 16
    Width = 105
    Height = 57
    Caption = ' '#1060#1086#1088#1084#1072#1090' '
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'A3'
      'A4')
    TabOrder = 0
  end
  object chbPrintInvestedValues: TCheckBox [4]
    Left = 144
    Top = 20
    Width = 49
    Height = 17
    Caption = #1062#1077#1085#1080
    TabOrder = 1
  end
  object chbProductNos: TCheckBox [5]
    Left = 144
    Top = 38
    Width = 77
    Height = 17
    Caption = 'id '#1094#1080#1092#1088#1086#1074#1080
    TabOrder = 2
  end
  inherited alActions: TActionList
    Left = 0
  end
end
