inherited fmPRPerPriceModifiers: TfmPRPerPriceModifiers
  Caption = '%s'
  ClientWidth = 724
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Align = alNone
    Visible = False
  end
  inherited pnlMain: TPanel
    Width = 724
    Height = 361
    BorderWidth = 5
    inherited pnlGrid: TPanel
      Left = 5
      Top = 5
      Width = 714
      Height = 351
      inherited pnlNavigator: TPanel
        Width = 714
        inherited navData: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 714
        Height = 327
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PRPER_PRICE_MODIFIER_NO'
            Footers = <>
            Title.Caption = #1054#1090#1089#1090#1098#1087#1082#1072'|No'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'PRPER_PRICE_MODIFIER_NAME'
            Footers = <>
            Title.Caption = #1054#1090#1089#1090#1098#1087#1082#1072'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 209
          end
          item
            EditButtons = <>
            FieldName = '_PRODUCT_SET_NO'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Caption = #1054#1073#1077#1082#1090#1086#1074' '#1085#1072#1073#1086#1088'|'#1050#1086#1076
          end
          item
            EditButtons = <>
            FieldName = '_PRODUCT_SET_NAME'
            Footers = <>
            LookupParams.LookupCache = False
            Title.Caption = #1054#1073#1077#1082#1090#1086#1074' '#1085#1072#1073#1086#1088'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 173
          end
          item
            EditButtons = <>
            FieldName = 'ACQUIRE_PRICE_MODIFIER'
            Footers = <>
            Title.Caption = #1054#1090#1089#1090#1098#1087#1082#1072' %|'#1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'LEASE_PRICE_MODIFIER'
            Footers = <>
            Title.Caption = #1054#1090#1089#1090#1098#1087#1082#1072' %|'#1053#1072#1077#1084
            Width = 74
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'PRPER_PRICE_MODIFIER_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PARTNER_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'BORDER_REL_TYPE_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PAR_REL_PERIOD_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRPER_PRICE_MODIFIER_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'PRPER_PRICE_MODIFIER_NAME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PRODUCT_SET_CODE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ACQUIRE_PRICE_MODIFIER'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'LEASE_PRICE_MODIFIER'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'idxUniqueNo'
        Fields = 
          'PARTNER_CODE;BORDER_REL_TYPE_CODE;PAR_REL_PERIOD_CODE;PRPER_PRIC' +
          'E_MODIFIER_NO'
        Options = [ixUnique]
      end
      item
        Name = 'idxUniqueName'
        Fields = 
          'PARTNER_CODE;BORDER_REL_TYPE_CODE;PAR_REL_PERIOD_CODE;PRPER_PRIC' +
          'E_MODIFIER_NAME'
        Options = [ixUnique]
      end
      item
        Name = 'idxUniqueProductSet'
        Fields = 
          'PARTNER_CODE;BORDER_REL_TYPE_CODE;PAR_REL_PERIOD_CODE;PRODUCT_SE' +
          'T_CODE'
        Options = [ixUnique]
      end>
    Params = <
      item
        DataType = ftFloat
        Name = 'PARTNER_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BORDER_REL_TYPE_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAR_REL_PERIOD_CODE'
        ParamType = ptInput
      end>
    BeforePost = cdsGridDataBeforePost
    OnNewRecord = cdsGridDataNewRecord
    object cdsGridDataPRPER_PRICE_MODIFIER_CODE: TAbmesFloatField
      FieldName = 'PRPER_PRICE_MODIFIER_CODE'
      Required = True
    end
    object cdsGridDataPARTNER_CODE: TAbmesFloatField
      FieldName = 'PARTNER_CODE'
      Required = True
    end
    object cdsGridDataBORDER_REL_TYPE_CODE: TAbmesFloatField
      FieldName = 'BORDER_REL_TYPE_CODE'
      Required = True
    end
    object cdsGridDataPAR_REL_PERIOD_CODE: TAbmesFloatField
      FieldName = 'PAR_REL_PERIOD_CODE'
      Required = True
    end
    object cdsGridDataPRPER_PRICE_MODIFIER_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'PRPER_PRICE_MODIFIER_NO'
      Required = True
    end
    object cdsGridDataPRPER_PRICE_MODIFIER_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'PRPER_PRICE_MODIFIER_NAME'
      Required = True
      Size = 100
    end
    object cdsGridDataPRODUCT_SET_CODE: TAbmesFloatField
      DisplayLabel = #1054#1073#1077#1082#1090#1086#1074' '#1085#1072#1073#1086#1088
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object cdsGridDataACQUIRE_PRICE_MODIFIER: TAbmesFloatField
      DisplayLabel = #1055#1088#1080#1076#1086#1073#1080#1074#1072#1085#1077
      FieldName = 'ACQUIRE_PRICE_MODIFIER'
      Required = True
      OnGetText = cdsGridDataACQUIRE_PRICE_MODIFIERGetText
      OnSetText = cdsGridDataACQUIRE_PRICE_MODIFIERSetText
      MaxValue = 1.000000000000000000
    end
    object cdsGridDataLEASE_PRICE_MODIFIER: TAbmesFloatField
      DisplayLabel = #1053#1072#1077#1084
      FieldName = 'LEASE_PRICE_MODIFIER'
      Required = True
      OnGetText = cdsGridDataLEASE_PRICE_MODIFIERGetText
      OnSetText = cdsGridDataLEASE_PRICE_MODIFIERSetText
      MaxValue = 1.000000000000000000
    end
    object cdsGridData_PRODUCT_SET_NO: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_SET_NO'
      LookupDataSet = cdsProductSets
      LookupKeyFields = 'PRODUCT_SET_CODE'
      LookupResultField = 'PRODUCT_SET_NO'
      KeyFields = 'PRODUCT_SET_CODE'
      Lookup = True
    end
    object cdsGridData_PRODUCT_SET_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_PRODUCT_SET_NAME'
      LookupDataSet = cdsProductSets
      LookupKeyFields = 'PRODUCT_SET_CODE'
      LookupResultField = 'PRODUCT_SET_NAME'
      KeyFields = 'PRODUCT_SET_CODE'
      Size = 50
      Lookup = True
    end
    object cdsGridData_MAX_PRPER_PRICE_MODIFIER_NO: TAggregateField
      FieldName = '_MAX_PRPER_PRICE_MODIFIER_NO'
      Active = True
      Expression = 'Max(PRPER_PRICE_MODIFIER_NO)'
    end
  end
  object cdsProductSets: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conProductsTreeEditor
    Params = <>
    ProviderName = 'prvProductSets'
    Left = 128
    Top = 120
    object cdsProductSetsPRODUCT_SET_CODE: TAbmesFloatField
      FieldName = 'PRODUCT_SET_CODE'
      Required = True
    end
    object cdsProductSetsPRODUCT_SET_NO: TAbmesFloatField
      FieldName = 'PRODUCT_SET_NO'
      Required = True
    end
    object cdsProductSetsPRODUCT_SET_NAME: TAbmesWideStringField
      FieldName = 'PRODUCT_SET_NAME'
      Required = True
      Size = 50
    end
  end
end
