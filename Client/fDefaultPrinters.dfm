inherited fmDefaultPrinters: TfmDefaultPrinters
  Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1077#1095#1072#1090' '#1079#1072' %s'
  ClientWidth = 594
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Width = 594
    inherited pnlOKCancel: TPanel
      Left = 326
    end
    inherited pnlClose: TPanel
      Left = 237
    end
    inherited pnlApply: TPanel
      Left = 505
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 594
    inherited pnlGrid: TPanel
      Width = 578
      inherited pnlNavigator: TPanel
        Width = 578
        inherited pnlFilterButton: TPanel
          Left = 216
        end
        inherited navData: TDBColorNavigator
          Width = 216
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 240
        end
        object pnlA5LToA4PConversion: TPanel
          Left = 294
          Top = 0
          Width = 284
          Height = 24
          Align = alRight
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 3
          object lblA5LToA4PConversion: TLabel
            Left = 0
            Top = 0
            Width = 151
            Height = 24
            Align = alLeft
            Caption = 'A5 Landscape '#1082#1098#1084' A4 Portrait  '
            Layout = tlCenter
          end
          object cbA5LToA4PConversion: TJvDBLookupCombo
            Left = 151
            Top = 0
            Width = 133
            Height = 24
            Align = alLeft
            DataField = '_A5L_TO_A4P_PAGE_CONVERSION_NAME'
            DataSource = dsPageConversion
            TabOrder = 0
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 578
        AutoFitColWidths = True
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColLines, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking]
        ReadOnly = False
        TitleParams.VTitleMargin = 5
        Columns = <
          item
            AutoDropDown = True
            AutoFitColWidth = False
            DblClickNextVal = True
            DynProps = <>
            DropDownRows = 10
            EditButtons = <>
            FieldName = '_PAPER_SIZE_NAME'
            Footers = <>
            Title.Caption = #1061#1072#1088#1090#1080#1103
            Width = 150
          end
          item
            AutoDropDown = True
            DblClickNextVal = True
            DynProps = <>
            EditButtons = <>
            FieldName = '_PRINTER_NAME'
            Footers = <>
            Title.Caption = #1055#1088#1080#1085#1090#1077#1088' '#1087#1086' '#1087#1086#1076#1088#1072#1079#1073#1080#1088#1072#1085#1077
            Width = 398
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    IndexDefs = <
      item
        Name = 'idxUnique'
        Fields = 'PAPER_SIZE'
        Options = [ixUnique]
      end>
    object cdsGridDataPAPER_SIZE: TAbmesWideStringField
      DisplayLabel = #1056#1072#1079#1084#1077#1088
      FieldName = 'PAPER_SIZE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object cdsGridDataPRINTER_NAME: TAbmesWideStringField
      DisplayLabel = #1055#1088#1080#1085#1090#1077#1088
      FieldName = 'PRINTER_NAME'
      Required = True
      Size = 250
    end
    object cdsGridData_PAPER_SIZE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PAPER_SIZE_NAME'
      LookupDataSet = cdsPaperSizes
      LookupKeyFields = 'PAPER_SIZE'
      LookupResultField = 'NAME'
      KeyFields = 'PAPER_SIZE'
      Lookup = True
    end
    object cdsGridData_PRINTER_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRINTER_NAME'
      LookupDataSet = cdsPrinters
      LookupKeyFields = 'PRINTER_NAME'
      LookupResultField = 'PRINTER_NAME'
      KeyFields = 'PRINTER_NAME'
      Size = 250
      Lookup = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1050#1086#1085#1092#1080#1075#1091#1088#1080#1088#1072#1085#1077' '#1085#1072' '#1055#1077#1095#1072#1090' '#1079#1072' %s'
    end
    inherited actExcelExport: TAction
      Visible = False
    end
  end
  object cdsPaperSizes: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 80
    object cdsPaperSizesPAPER_SIZE: TAbmesWideStringField
      FieldName = 'PAPER_SIZE'
      Size = 50
    end
    object cdsPaperSizesNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 100
    end
  end
  object cdsPrinters: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 80
    object cdsPrintersPRINTER_NAME: TAbmesWideStringField
      FieldName = 'PRINTER_NAME'
      Size = 250
    end
  end
  object cdsPageConversion: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 16
    Top = 104
    object cdsPageConversionA5L_TO_A4P_PAGE_CONVERSION: TAbmesWideStringField
      FieldName = 'A5L_TO_A4P_PAGE_CONVERSION'
    end
    object cdsPageConversion_A5L_TO_A4P_PAGE_CONVERSION_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_A5L_TO_A4P_PAGE_CONVERSION_NAME'
      LookupDataSet = cdsPageConversions
      LookupKeyFields = 'PAGE_CONVERSION'
      LookupResultField = 'NAME'
      KeyFields = 'A5L_TO_A4P_PAGE_CONVERSION'
      Size = 50
      Lookup = True
    end
  end
  object cdsPageConversions: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 80
    object cdsPageConversionsPAGE_CONVERSION: TAbmesWideStringField
      FieldName = 'PAGE_CONVERSION'
    end
    object cdsPageConversionsNAME: TAbmesWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dsPageConversion: TDataSource
    DataSet = cdsPageConversion
    Left = 48
    Top = 104
  end
end
