inherited fmParRelProductStatuses: TfmParRelProductStatuses
  Caption = #1056#1072#1079#1074#1080#1090#1080#1077' '#1085#1072' '#1057#1090#1072#1090#1091#1089
  ClientHeight = 313
  ClientWidth = 355
  ExplicitWidth = 361
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 278
    Width = 355
    ExplicitTop = 278
    ExplicitWidth = 355
    inherited pnlOKCancel: TPanel
      Left = 87
      ExplicitLeft = 87
    end
    inherited pnlClose: TPanel
      Left = -2
      ExplicitLeft = -2
    end
    inherited pnlApply: TPanel
      Left = 266
      Visible = False
      ExplicitLeft = 266
    end
  end
  inherited pnlMain: TPanel
    Width = 355
    Height = 278
    ExplicitWidth = 355
    ExplicitHeight = 278
    inherited pnlGrid: TPanel
      Width = 339
      Height = 262
      ExplicitWidth = 339
      ExplicitHeight = 262
      inherited pnlNavigator: TPanel
        Width = 339
        ExplicitWidth = 339
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 314
        Height = 238
        Columns = <
          item
            EditButtons = <>
            FieldName = '_PAR_REL_PRODUCT_STATUS_NAME'
            Footers = <>
            Width = 150
          end
          item
            Color = 16115403
            EditButtons = <>
            FieldName = 'STATUS_DATE'
            Footers = <>
            Title.Caption = #1042#1088#1084#1048#1085#1090
            Width = 130
          end>
      end
      inherited pnlRightButtons: TPanel
        Left = 314
        Height = 238
        ExplicitLeft = 314
        ExplicitHeight = 238
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    object cdsGridDataPARTNER_CODE: TAbmesFloatField [0]
      FieldName = 'PARTNER_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField [1]
      FieldName = 'BORDER_REL_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPRODUCT_CODE: TAbmesFloatField [2]
      FieldName = 'PRODUCT_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField [3]
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    inherited cdsGridDataSTATUS_DATE: TAbmesSQLTimeStampField
      DisplayLabel = #1054#1090' '#1076#1072#1090#1072
      OnGetText = cdsGridDataSTATUS_DATEGetText
    end
    object cdsGridData_PAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      DisplayLabel = #1057#1090#1072#1090#1091#1089
      FieldKind = fkLookup
      FieldName = '_PAR_REL_PRODUCT_STATUS_NAME'
      LookupDataSet = cdsStatuses
      LookupKeyFields = 'PAR_REL_PRODUCT_STATUS_CODE'
      LookupResultField = 'PAR_REL_PRODUCT_STATUS_NAME'
      KeyFields = 'PAR_REL_PRODUCT_STATUS_CODE'
      Size = 100
      Lookup = True
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1056#1072#1079#1074#1080#1090#1080#1077' '#1085#1072' '#1057#1090#1072#1090#1091#1089
    end
  end
  inherited cdsStatuses: TAbmesClientDataSet
    ProviderName = 'prvParRelProductStatuses'
    ConnectionBroker = dmMain.conParRelProducts
    object cdsStatusesPAR_REL_PRODUCT_STATUS_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PRODUCT_STATUS_CODE'
    end
    object cdsStatusesPAR_REL_PRODUCT_STATUS_NAME: TAbmesWideStringField
      FieldName = 'PAR_REL_PRODUCT_STATUS_NAME'
      Size = 100
    end
  end
end
