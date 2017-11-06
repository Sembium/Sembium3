inherited fmProductSets: TfmProductSets
  Caption = #1054#1073#1077#1082#1090#1086#1074#1080' '#1085#1072#1073#1086#1088#1080
  ClientHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 314
    inherited pnlOKCancel: TPanel
      Visible = False
    end
    inherited pnlClose: TPanel
      Visible = True
    end
    inherited pnlApply: TPanel
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Height = 314
    inherited pnlGrid: TPanel
      Height = 298
      inherited pnlNavigator: TPanel
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Height = 274
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRODUCT_SET_NO'
            Footers = <>
            Title.Alignment = taCenter
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_SET_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Width = 273
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'BEGIN_DATE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 126
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    ConnectionBroker = dmMain.conProductsTreeEditor
    FieldDefs = <
      item
        Name = 'PRODUCT_SET_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SET_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRODUCT_SET_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
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
      end>
    ProviderName = 'prvProductSets'
    object cdsGridDataPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object cdsGridDataPRODUCT_SET_NO: TAbmesFloatField
      DisplayLabel = #1050#1086#1076
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object cdsGridDataPRODUCT_SET_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
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
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1054#1073#1077#1082#1090#1086#1074#1080' '#1085#1072#1073#1086#1088#1080
    end
  end
end
