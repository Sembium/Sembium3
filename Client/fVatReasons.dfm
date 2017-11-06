inherited fmVatReasons: TfmVatReasons
  Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082
  ClientHeight = 349
  ClientWidth = 498
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    Width = 498
    inherited pnlOKCancel: TPanel
      Left = 230
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 141
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 409
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 498
    Height = 314
    inherited pnlGrid: TPanel
      Width = 482
      Height = 298
      inherited pnlNavigator: TPanel
        Width = 482
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 482
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'VAT_REASON_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VAT_REASON_NAME'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VAT_REASON_ABBREV'
            Footers = <>
            Width = 79
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conFinance
    FieldDefs = <
      item
        Name = 'VAT_REASON_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VAT_REASON_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VAT_REASON_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'VAT_REASON_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end
      item
        Name = 'VAT_REASON_I_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'VAT_REASON_I_ABBREV'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 5
      end>
    ProviderName = 'prvVatReasons'
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataVAT_REASON_CODE: TAbmesFloatField
      FieldName = 'VAT_REASON_CODE'
      Required = True
    end
    object cdsGridDataVAT_REASON_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'VAT_REASON_NO'
      Required = True
    end
    object cdsGridDataVAT_REASON_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'VAT_REASON_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataVAT_REASON_ABBREV: TAbmesWideStringField
      DisplayLabel = #1040#1073#1088#1077#1074#1080#1072#1090#1091#1088#1072
      FieldName = 'VAT_REASON_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridDataVAT_REASON_I_NAME: TAbmesWideStringField
      DisplayLabel = 'Name'
      FieldName = 'VAT_REASON_I_NAME'
      Required = True
      Size = 50
    end
    object cdsGridDataVAT_REASON_I_ABBREV: TAbmesWideStringField
      DisplayLabel = 'Abbrev'
      FieldName = 'VAT_REASON_I_ABBREV'
      Required = True
      Size = 5
    end
    object cdsGridData_MAX_VAT_REASON_CODE: TAggregateField
      FieldName = '_MAX_VAT_REASON_CODE'
      Active = True
      Expression = 'Max(VAT_REASON_CODE)'
    end
    object cdsGridData_MAX_VAT_REASON_NO: TAggregateField
      FieldName = '_MAX_VAT_REASON_NO'
      Active = True
      Expression = 'Max(VAT_REASON_NO)'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1103' '#1079#1072' '#1087#1088#1080#1083#1072#1075#1072#1085#1077' '#1085#1072' '#1089#1090#1072#1074#1082#1072' '#1080#1083#1080' '#1085#1077#1085#1072#1095#1080#1089#1083#1103#1074#1072#1085#1077' '#1085#1072' '#1076#1072#1085#1098#1082
    end
  end
end
