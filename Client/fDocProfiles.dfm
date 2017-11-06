inherited fmDocProfiles: TfmDocProfiles
  Caption = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083#1080
  ClientHeight = 462
  ClientWidth = 534
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    Top = 427
    Width = 534
    inherited pnlOKCancel: TPanel
      Left = 266
      Visible = False
    end
    inherited pnlClose: TPanel
      Left = 177
      Visible = True
    end
    inherited pnlApply: TPanel
      Left = 445
      Visible = False
    end
  end
  inherited pnlMain: TPanel
    Width = 534
    Height = 427
    inherited sptDetail: TSplitter
      Top = 239
      Width = 518
    end
    inherited pnlDetailGrid: TPanel
      Top = 242
      Width = 518
      Height = 177
      inherited pnlDetailNavigator: TPanel
        Width = 518
        object lblDocProfiles: TLabel [0]
          Left = 422
          Top = 8
          Width = 94
          Height = 13
          Caption = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited navDetail: TDBColorNavigator
          Hints.Strings = ()
        end
      end
      inherited grdDetail: TAbmesDBGrid
        Width = 518
        Height = 153
        UseMultiTitle = True
        OnGetCellParams = grdDetailGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_PROFILE_NO'
            Footers = <>
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'DOC_PROFILE_NAME'
            Footers = <>
            Width = 304
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'DOC_EMPTINESS_REQ_CODE'
            Footers = <>
            Title.Caption = #1052#1048#1048#1054
            Width = 35
          end
          item
            Alignment = taCenter
            Color = 15532031
            EditButtons = <>
            FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
            Footers = <>
            Title.Caption = #1048#1048#1054
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'AUTHORIZE_EMPLOYEE_ABBREV'
            Footers = <>
            Title.Caption = #1040#1074#1090#1086#1088#1080#1079#1080#1088#1072#1083
            Width = 75
          end>
      end
    end
    inherited pnlGrid: TPanel
      Width = 518
      Height = 231
      inherited pnlNavigator: TPanel
        Width = 518
        object lblDocItemTemplateTypes: TLabel [0]
          Left = 396
          Top = 8
          Width = 120
          Height = 13
          Caption = #1052#1048#1048#1054' '#1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlFilterButton: TPanel
          Left = 96
        end
        inherited navData: TDBColorNavigator
          Width = 96
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Hints.Strings = ()
        end
        inherited tlbTopGridButtons: TToolBar
          Left = 120
        end
      end
      inherited grdData: TAbmesDBGrid
        Width = 518
        Height = 207
        AutoFitColWidths = True
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 310
          end>
      end
    end
  end
  inherited cdsGridData: TAbmesClientDataSet
    ConnectionBroker = dmMain.conDoc
    Filtered = True
    FieldDefs = <
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_NO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'qryDocProfiles'
        DataType = ftDataSet
      end>
    ProviderName = 'prvDocProfilesMaster'
    OnFilterRecord = cdsGridDataFilterRecord
    object cdsGridDataDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridDataDOC_ITEM_TEMPLATE_TYPE_NO: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NO'
      Required = True
    end
    object cdsGridDataDOC_ITEM_TEMPLATE_TYPE_NAME: TAbmesWideStringField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_NAME'
      Size = 100
    end
    object cdsGridDataqryDocProfiles: TDataSetField
      FieldName = 'qryDocProfiles'
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1052#1048#1048#1054' '#1055#1088#1086#1092#1080#1083#1080
    end
  end
  inherited cdsDetail: TAbmesClientDataSet
    AggregatesActive = True
    DataSetField = cdsGridDataqryDocProfiles
    Params = <
      item
        DataType = ftFloat
        Name = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
        ParamType = ptInput
      end>
    object cdsDetailDOC_PROFILE_CODE: TAbmesFloatField
      FieldName = 'DOC_PROFILE_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDetailDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
      Required = True
    end
    object cdsDetailDOC_PROFILE_NO: TAbmesFloatField
      DisplayLabel = 'No'
      FieldName = 'DOC_PROFILE_NO'
      Required = True
    end
    object cdsDetailDOC_PROFILE_NAME: TAbmesWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'DOC_PROFILE_NAME'
      Required = True
      Size = 250
    end
    object cdsDetailDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsDetailDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsDetailHAS_DOC_ITEMS: TAbmesFloatField
      FieldName = 'HAS_DOC_ITEMS'
      FieldValueType = fvtBoolean
    end
    object cdsDetailDOC_EMPTINESS_REQ_CODE: TAbmesFloatField
      FieldName = 'DOC_EMPTINESS_REQ_CODE'
      OnGetText = cdsDetailDOC_EMPTINESS_REQ_CODEGetText
    end
    object cdsDetailDOC_IS_COMPLETE: TAbmesFloatField
      FieldName = 'DOC_IS_COMPLETE'
      FieldValueType = fvtBoolean
    end
    object cdsDetailACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'ACTIVE_DI_COUNT'
    end
    object cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAUTHORIZED_ACTIVE_DI_COUNT'
      OnGetText = cdsDetailUNAUTHORIZED_ACTIVE_DI_COUNTGetText
    end
    object cdsDetailUNAPPROVED_ACTIVE_DI_COUNT: TAbmesFloatField
      FieldName = 'UNAPPROVED_ACTIVE_DI_COUNT'
    end
    object cdsDetailAUTHORIZE_EMPLOYEE_ABBREV: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_ABBREV'
      OnGetText = cdsDetailAUTHORIZE_EMPLOYEE_ABBREVGetText
      Size = 5
    end
    object cdsDetailAUTHORIZE_EMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'AUTHORIZE_EMPLOYEE_NAME'
      Size = 104
    end
    object cdsDetail_MAX_DOC_PROFILE_NO: TAggregateField
      FieldName = '_MAX_DOC_PROFILE_NO'
      Active = True
      Expression = 'Max(DOC_PROFILE_NO)'
    end
  end
  object cdsNewDocProfileDefaults: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 352
    object cdsNewDocProfileDefaultsDOC_ITEM_TEMPLATE_TYPE_CODE: TAbmesFloatField
      FieldName = 'DOC_ITEM_TEMPLATE_TYPE_CODE'
    end
    object cdsNewDocProfileDefaultsDOC_PROFILE_NO: TAbmesFloatField
      FieldName = 'DOC_PROFILE_NO'
    end
  end
end
