inherited fmChangeCurrentPrinter: TfmChangeCurrentPrinter
  Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1087#1088#1080#1085#1090#1077#1088
  ClientHeight = 108
  ClientWidth = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 73
    Width = 417
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      Left = 238
    end
    inherited pnlClose: TPanel
      Left = 149
    end
  end
  object gbPrinter: TGroupBox [1]
    Left = 8
    Top = 8
    Width = 401
    Height = 57
    Caption = ' '#1055#1088#1080#1085#1090#1077#1088' '
    TabOrder = 0
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 385
      Height = 21
      DataField = '_CHOSEN_PRINTER_NAME'
      DataSource = dsChoosenPrinterIndex
      TabOrder = 0
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1048#1079#1073#1086#1088' '#1085#1072' '#1087#1088#1080#1085#1090#1077#1088
    end
  end
  object cdsPrinters: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    object cdsPrintersPRINTER_INDEX: TAbmesFloatField
      FieldName = 'PRINTER_INDEX'
    end
    object cdsPrintersPRINTER_NAME: TAbmesWideStringField
      FieldName = 'PRINTER_NAME'
      Size = 250
    end
  end
  object cdsChoosenPrinterIndex: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    object cdsChoosenPrinterIndexCHOSEN_PRINTER_INDEX: TAbmesFloatField
      FieldName = 'CHOSEN_PRINTER_INDEX'
    end
    object cdsChoosenPrinterIndex_CHOSEN_PRINTER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_CHOSEN_PRINTER_NAME'
      LookupDataSet = cdsPrinters
      LookupKeyFields = 'PRINTER_INDEX'
      LookupResultField = 'PRINTER_NAME'
      KeyFields = 'CHOSEN_PRINTER_INDEX'
      Size = 250
      Lookup = True
    end
  end
  object dsChoosenPrinterIndex: TDataSource
    DataSet = cdsChoosenPrinterIndex
    Left = 264
  end
end
