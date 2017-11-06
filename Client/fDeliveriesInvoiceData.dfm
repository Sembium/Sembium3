inherited fmDeliveriesInvoiceData: TfmDeliveriesInvoiceData
  Caption = #1044#1072#1085#1085#1080' '#1079#1072' '#1060#1072#1082#1090#1091#1088#1072
  ClientHeight = 116
  ClientWidth = 298
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvlMain: TBevel
    Width = 282
    Height = 65
  end
  object lblInvoiceDate: TLabel [1]
    Left = 167
    Top = 20
    Width = 89
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072' '#1060#1072#1082#1090#1091#1088#1072
  end
  object lblIsProformInvoice: TLabel [2]
    Left = 127
    Top = 20
    Width = 19
    Height = 13
    Caption = #1042#1080#1076
  end
  object lbltInvoiceNo: TLabel [3]
    Left = 24
    Top = 20
    Width = 62
    Height = 13
    Caption = #1060#1072#1082#1090#1091#1088#1072' No'
  end
  inherited pnlBottomButtons: TPanel
    Top = 81
    Width = 298
    TabOrder = 4
    inherited pnlOKCancel: TPanel
      Left = 30
    end
    inherited pnlClose: TPanel
      Left = -59
    end
    inherited pnlApply: TPanel
      Left = 209
      Visible = False
    end
  end
  inline frInvoiceDate: TfrDateFieldEditFrame [5]
    Left = 168
    Top = 36
    Width = 105
    Height = 21
    Constraints.MaxHeight = 21
    Constraints.MaxWidth = 105
    Constraints.MinHeight = 21
    Constraints.MinWidth = 105
    TabOrder = 3
    TabStop = True
  end
  object cbIsProformInvoice: TJvDBComboBox [6]
    Left = 128
    Top = 36
    Width = 33
    Height = 21
    DataField = 'IS_PROFORM_INVOICE'
    DataSource = dsData
    Items.Strings = (
      ' '
      #1055
      #1060)
    TabOrder = 2
    Values.Strings = (
      ''
      '1'
      '0')
    ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
    ListSettings.OutfilteredValueFont.Color = clRed
    ListSettings.OutfilteredValueFont.Height = -11
    ListSettings.OutfilteredValueFont.Name = 'Microsoft Sans Serif'
    ListSettings.OutfilteredValueFont.Style = []
  end
  object edtInvoiceAbbrev: TDBEdit [7]
    Left = 96
    Top = 36
    Width = 25
    Height = 21
    DataField = 'INVOICE_ABBREV'
    DataSource = dsData
    TabOrder = 1
  end
  object edtInvoiceNo: TDBEdit [8]
    Left = 24
    Top = 36
    Width = 73
    Height = 21
    DataField = 'INVOICE_NO'
    DataSource = dsData
    TabOrder = 0
  end
  inherited alActions: TActionList [9]
    Left = 104
    inherited actForm: TAction
      Caption = #1044#1072#1085#1085#1080' '#1079#1072' '#1060#1072#1082#1090#1091#1088#1072
    end
  end
  inherited dsData: TDataSource [10]
  end
end
