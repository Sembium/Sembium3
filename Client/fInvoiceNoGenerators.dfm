inherited fmInvoiceNoGenerators: TfmInvoiceNoGenerators
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080
  ClientHeight = 372
  ClientWidth = 1017
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 337
    Width = 1017
    inherited pnlOKCancel: TPanel
      Left = 749
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 660
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 928
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 1017
    Height = 337
    inherited pnlGrid: TPanel
      Width = 1001
      Height = 321
      inherited pnlNavigator: TPanel
        Width = 1001
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
        object tlbTime: TToolBar
          Left = 248
          Top = 0
          Width = 77
          Height = 24
          Align = alLeft
          AutoSize = True
          ButtonHeight = 24
          Images = dmMain.ilActions
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          object sepPast: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'sepPast'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object btnPast: TSpeedButton
            Left = 8
            Top = 0
            Width = 23
            Height = 24
            Action = actPast
            AllowAllUp = True
            GroupIndex = 1
            Flat = True
            Transparent = False
          end
          object btnPresent: TSpeedButton
            Left = 31
            Top = 0
            Width = 23
            Height = 24
            Action = actPresent
            AllowAllUp = True
            GroupIndex = 2
            Down = True
            Flat = True
            Transparent = False
          end
          object btnFuture: TSpeedButton
            Left = 54
            Top = 0
            Width = 23
            Height = 24
            Action = actFuture
            AllowAllUp = True
            GroupIndex = 3
            Down = True
            Flat = True
            Transparent = False
          end
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 1001
        Height = 297
        AutoFitColWidths = True
        UseMultiTitle = True
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'INVOICE_NO_GENERATOR_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088
            Width = 40
          end
          item
            AutoFitColWidth = False
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'DEPT_NAME'
            Footers = <>
            Title.Caption = #1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 200
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEPT_IDENTIFIER'
            Footers = <>
            Title.Caption = #1058#1055'|'#1050#1086#1076
            Width = 50
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_PROFORM_INVOICE'
            Footers = <>
            Title.Caption = #1055#1088#1086'- '#1092#1086#1088#1084#1072
            Width = 40
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'IS_APPROVED'
            Footers = <>
            Title.Caption = #1059#1090#1074#1098#1088'- '#1076#1077#1085#1072
            Width = 40
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'INVOICE_TYPE_NAMES'
            Footers = <>
            Title.Caption = #1042#1080#1076#1086#1074#1077' '#1092#1072#1082#1090#1091#1088#1080
            Width = 150
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'CURRENCY_ABBREVS'
            Footers = <>
            Title.Caption = #1042#1072#1083#1091#1090#1080
            Width = 100
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MIN_INVOICE_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080'|'#1054#1090
            Width = 70
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'MAX_INVOICE_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080'|'#1044#1086
            Width = 70
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'CURRENT_INVOICE_NO'
            Footers = <>
            Title.Caption = #1053#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080'|'#1055#1086#1089#1083#1077#1076#1085#1086' '#1080#1079#1076#1072#1076#1077#1085
            Width = 70
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conInvoices
    Filtered = True
    FieldDefs = <
      item
        Name = 'INVOICE_NO_GENERATOR_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_NO_GENERATOR_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'BEGIN_DATE'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'END_DATE'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'DEPT_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DEPT_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'DEPT_IDENTIFIER'
        DataType = ftWideString
        Size = 46
      end
      item
        Name = 'IS_PROFORM_INVOICE'
        DataType = ftFloat
      end
      item
        Name = 'IS_APPROVED'
        DataType = ftFloat
      end
      item
        Name = 'MIN_INVOICE_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'MAX_INVOICE_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CURRENT_INVOICE_NO'
        DataType = ftFloat
      end
      item
        Name = 'INVOICE_TYPE_NAMES'
        DataType = ftWideString
        Size = 4000
      end
      item
        Name = 'CURRENCY_ABBREVS'
        DataType = ftWideString
        Size = 4000
      end>
    ProviderName = 'prvInvoiceNoGenerators'
    OnFilterRecord = cdsGridDataFilterRecord
    object cdsGridDataINVOICE_NO_GENERATOR_CODE: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_CODE'
      Required = True
    end
    object cdsGridDataINVOICE_NO_GENERATOR_NO: TAbmesFloatField
      FieldName = 'INVOICE_NO_GENERATOR_NO'
      Required = True
    end
    object cdsGridDataBEGIN_DATE: TAbmesSQLTimeStampField
      FieldName = 'BEGIN_DATE'
      Required = True
      OnGetText = cdsGridDataBEGIN_DATEGetText
    end
    object cdsGridDataEND_DATE: TAbmesSQLTimeStampField
      FieldName = 'END_DATE'
      Required = True
    end
    object cdsGridDataDEPT_CODE: TAbmesFloatField
      FieldName = 'DEPT_CODE'
      Required = True
    end
    object cdsGridDataDEPT_NAME: TAbmesWideStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataDEPT_IDENTIFIER: TAbmesWideStringField
      FieldName = 'DEPT_IDENTIFIER'
      Size = 46
    end
    object cdsGridDataIS_PROFORM_INVOICE: TAbmesFloatField
      FieldName = 'IS_PROFORM_INVOICE'
      OnGetText = cdsGridDataIS_PROFORM_INVOICEGetText
      FieldValueType = fvtBoolean
    end
    object cdsGridDataIS_APPROVED: TAbmesFloatField
      FieldName = 'IS_APPROVED'
      OnGetText = cdsGridDataIS_APPROVEDGetText
      FieldValueType = fvtBoolean
    end
    object cdsGridDataMIN_INVOICE_NO: TAbmesFloatField
      FieldName = 'MIN_INVOICE_NO'
      Required = True
      DisplayFormat = '0000000000'
    end
    object cdsGridDataMAX_INVOICE_NO: TAbmesFloatField
      FieldName = 'MAX_INVOICE_NO'
      Required = True
      DisplayFormat = '0000000000'
    end
    object cdsGridDataCURRENT_INVOICE_NO: TAbmesFloatField
      FieldName = 'CURRENT_INVOICE_NO'
      OnGetText = cdsGridDataCURRENT_INVOICE_NOGetText
      DisplayFormat = '0000000000'
    end
    object cdsGridDataINVOICE_TYPE_NAMES: TAbmesWideStringField
      FieldName = 'INVOICE_TYPE_NAMES'
      OnGetText = cdsGridDataINVOICE_TYPE_NAMESGetText
      Size = 4000
    end
    object cdsGridDataCURRENCY_ABBREVS: TAbmesWideStringField
      FieldName = 'CURRENCY_ABBREVS'
      OnGetText = cdsGridDataCURRENCY_ABBREVSGetText
      Size = 4000
    end
    object cdsGridData_MAX_INVOICE_NO_GENERATOR_NO: TAggregateField
      FieldName = '_MAX_INVOICE_NO_GENERATOR_NO'
      Active = True
      Expression = 'Max(INVOICE_NO_GENERATOR_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088#1080' '#1085#1072' '#1085#1086#1084#1077#1088#1072' '#1085#1072' '#1092#1072#1082#1090#1091#1088#1080
    end
    object actPast: TAction
      Caption = #1052
      GroupIndex = 1
      Hint = #1052#1080#1085#1072#1083#1080
      OnExecute = TimeActionExecute
    end
    object actPresent: TAction
      Caption = #1053
      Checked = True
      GroupIndex = 2
      Hint = #1053#1072#1089#1090#1086#1103#1097#1080
      OnExecute = TimeActionExecute
    end
    object actFuture: TAction
      Caption = #1041
      Checked = True
      GroupIndex = 3
      Hint = #1041#1098#1076#1077#1097#1080
      OnExecute = TimeActionExecute
    end
  end
end
